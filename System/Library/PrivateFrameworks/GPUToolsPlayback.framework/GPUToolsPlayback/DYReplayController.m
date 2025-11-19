@interface DYReplayController
- (BOOL)_loadArchives:(id)a3 error:(id *)a4;
- (BOOL)informReady;
- (BOOL)initializeTransportWith:(id)a3;
- (BOOL)playbackArchive:(id)a3;
- (DYReplayController)init;
- (id)_playbackCurrentArchiveAndExperiments;
- (id)_popMessage;
- (void)_beginDebugArchive;
- (void)_deleteAllArchives;
- (void)_endPlayback;
- (void)_messageLoop;
- (void)_playbackArchiveWithExperiment:(id)a3 passingFuture:(id)a4 resolvingFuture:(BOOL)a5;
- (void)_processMessage:(id)a3;
- (void)_pushMessage:(id)a3;
- (void)_recursivePlaybackWithFuture:(id)a3 usingExperiment:(id)a4 withToplevelFuture:(id)a5;
- (void)dealloc;
@end

@implementation DYReplayController

- (DYReplayController)init
{
  v27.receiver = self;
  v27.super_class = DYReplayController;
  v2 = [(DYReplayController *)&v27 init];
  v3 = v2;
  if (v2)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:object_getClassName(v2)];
    v6 = [v4 stringWithFormat:@"gputools.%@.%p", v5, v3];
    v7 = dispatch_queue_create([v6 UTF8String], 0);
    [(DYReplayController *)v3 setQueue:v7];

    v8 = objc_alloc_init(MEMORY[0x277D0AF50]);
    [(DYReplayController *)v3 setArchiveStack:v8];

    v9 = MEMORY[0x277CCACA8];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:object_getClassName(v3)];
    v11 = [v9 stringWithFormat:@"gputools.%@.%p.%@", v10, v3, @"messageLock"];
    v12 = dispatch_queue_create([v11 UTF8String], 0);
    messageLock = v3->_messageLock;
    v3->_messageLock = v12;

    v14 = MEMORY[0x277CCACA8];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:object_getClassName(v3)];
    v16 = [v14 stringWithFormat:@"gputools.%@.%p.%@", v15, v3, @"messageProcessingQueue"];
    v17 = dispatch_queue_create([v16 UTF8String], 0);
    messageProcessingQueue = v3->_messageProcessingQueue;
    v3->_messageProcessingQueue = v17;

    v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
    messageQueue = v3->_messageQueue;
    v3->_messageQueue = v19;

    v21 = objc_opt_new();
    profileBlockQueue = v3->_profileBlockQueue;
    v3->_profileBlockQueue = v21;

    v23 = objc_opt_new();
    profileBlockBackgroundQueue = v3->_profileBlockBackgroundQueue;
    v3->_profileBlockBackgroundQueue = v23;

    v25 = v3;
  }

  return v3;
}

- (void)dealloc
{
  v3 = [(DYReplayController *)self origSourceMessageHandler];
  v4 = [(DYReplayController *)self source];
  [v4 setMessageHandler:v3];

  [(DYReplayController *)self setQueue:0];
  v5.receiver = self;
  v5.super_class = DYReplayController;
  [(DYReplayController *)&v5 dealloc];
}

- (BOOL)initializeTransportWith:(id)a3
{
  v4 = a3;
  v5 = DYGetGlobalClientTransport();
  [(DYReplayController *)self setTransport:v5];

  v6 = [(DYReplayController *)self transport];

  if (v6 && (DYGetGlobalTransportSource(), v7 = objc_claimAutoreleasedReturnValue(), [(DYReplayController *)self setSource:v7], v7, [(DYReplayController *)self source], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v9 = [(DYReplayController *)self source];
    [v9 suspend];

    v10 = [(DYReplayController *)self source];
    v11 = [v10 messageHandler];
    v12 = [v11 copy];
    [(DYReplayController *)self setOrigSourceMessageHandler:v12];

    objc_initWeak(&location, self);
    v18 = MEMORY[0x277D85DD0];
    objc_copyWeak(&v19, &location);
    v13 = [(DYReplayController *)self source:v18];
    [v13 setMessageHandler:&v18];

    v14 = [(DYReplayController *)self source];
    [v14 resume];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
    v15 = 1;
  }

  else
  {
    v16 = *MEMORY[0x277D0B240];
    _DYOLog();
    v15 = 0;
  }

  return v15;
}

void __46__DYReplayController_initializeTransportWith___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _pushMessage:v3];
}

- (BOOL)informReady
{
  v20[3] = *MEMORY[0x277D85DE8];
  v3 = DYGetInterposeVersion();
  v5 = v4;
  v6 = MEMORY[0x277D0AFE0];
  v19[0] = @"version";
  v7 = [MEMORY[0x277CCABB0] numberWithInt:*MEMORY[0x277D0B010]];
  v20[0] = v7;
  v19[1] = @"interpose-feature-version";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3];
  v20[1] = v8;
  v19[2] = @"interpose-patch-version";
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v5];
  v20[2] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];
  v11 = [v6 messageWithKind:4096 attributes:v10];

  v12 = [(DYReplayController *)self transport];
  v18 = 0;
  v13 = [v12 send:v11 error:&v18];
  v14 = v18;

  if ((v13 & 1) == 0)
  {
    v15 = *MEMORY[0x277D0B240];
    _DYOLog();
  }

  v16 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)playbackArchive:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEA60] arrayWithObject:v4];
  v18 = 0;
  v6 = [(DYReplayController *)self _loadArchives:v5 error:&v18];
  v7 = v18;

  if (v6)
  {
    v8 = [(DYReplayController *)self archiveStack];
    v9 = [(DYReplayController *)self _replayerControllerSupportForCaptureStore:v8];
    [(DYReplayController *)self setReplayControllerSupport:v9];

    v10 = [(DYReplayController *)self replayControllerSupport];
    v11 = [(DYReplayController *)self archiveStack];
    v12 = [v10 createArchivePlaybackEngineWithCaptureStore:v11];
    [(DYReplayController *)self setPlaybackEngine:v12];

    [(DYReplayController *)self _displayPlaybackEngine];
    v13 = [(DYReplayController *)self playbackEngine];
    v14 = [v13 playback];

    v15 = [(DYReplayController *)self queue];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __38__DYReplayController_playbackArchive___block_invoke;
    v17[3] = &unk_27930F730;
    v17[4] = self;
    [v14 notifyOnQueue:v15 handler:v17];

    [v14 waitUntilResolved];
  }

  return v6;
}

- (id)_popMessage
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__5;
  v10 = __Block_byref_object_dispose__5;
  v11 = 0;
  messageLock = self->_messageLock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __33__DYReplayController__popMessage__block_invoke;
  v5[3] = &unk_27930F9B0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(messageLock, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __33__DYReplayController__popMessage__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) firstObject];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  result = [*(*(a1 + 32) + 24) count];
  if (result)
  {
    v6 = *(*(a1 + 32) + 24);

    return [v6 removeObjectAtIndex:0];
  }

  return result;
}

- (void)_pushMessage:(id)a3
{
  v4 = a3;
  messageLock = self->_messageLock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__DYReplayController__pushMessage___block_invoke;
  v7[3] = &unk_27930FA00;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(messageLock, v7);
}

void __35__DYReplayController__pushMessage___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) kind] == 4106)
  {
    v2 = *(a1 + 40);
    v3 = *(v2 + 24);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __35__DYReplayController__pushMessage___block_invoke_2;
    v8[3] = &unk_27930F9D8;
    v8[4] = v2;
    v4 = [MEMORY[0x277CCAC30] predicateWithBlock:v8];
    [v3 filterUsingPredicate:v4];
  }

  [*(*(a1 + 40) + 24) addObject:*(a1 + 32)];
  v5 = *(a1 + 40);
  v6 = *(v5 + 16);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__DYReplayController__pushMessage___block_invoke_3;
  v7[3] = &unk_27930F730;
  v7[4] = v5;
  dispatch_async(v6, v7);
}

uint64_t __35__DYReplayController__pushMessage___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 kind];
  switch(v4)
  {
    case 1026:
      v5 = [*(a1 + 32) transport];
      v6 = [MEMORY[0x277D0AFE0] messageWithKind:1026 attributes:0 payload:0];
      [v5 send:v6 inReplyTo:v3 error:0];
      break;
    case 4106:
      v5 = [*(a1 + 32) transport];
      v7 = MEMORY[0x277D0AFE0];
      v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
      v8 = [v7 messageWithKind:4105 objectPayload:v6];
      [v5 send:v8 inReplyTo:v3 error:0];

      break;
    case 4121:
      v5 = [*(a1 + 32) transport];
      v6 = [MEMORY[0x277D0AFE0] messageWithKind:4121 attributes:0 payload:0];
      [v5 send:v6 inReplyTo:v3 error:0];
      break;
    default:
      v9 = 1;
      goto LABEL_9;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

- (void)_messageLoop
{
  v3 = [(DYReplayController *)self _popMessage];
  if (v3 || [(DYReplayControllerQueue *)self->_profileBlockQueue count]|| [(DYReplayControllerQueue *)self->_profileBlockBackgroundQueue count])
  {
    p_profileBlockQueue = &self->_profileBlockQueue;
    p_profileBlockBackgroundQueue = &self->_profileBlockBackgroundQueue;
    v6 = 0xFFFFFFFFLL;
    while (1)
    {
      if (v3)
      {
        if (v6 != -1)
        {
          v7 = [(DYReplayController *)self playbackEngine];
          [v7 playbackToFunction:v6 withLoops:0];
        }

        [(DYReplayController *)self _processMessage:v3];
        v6 = 0xFFFFFFFFLL;
      }

      else
      {
        if ([(DYReplayControllerQueue *)*p_profileBlockQueue count])
        {
          v8 = &self->_profileBlockQueue;
        }

        else
        {
          v8 = &self->_profileBlockBackgroundQueue;
        }

        v9 = *v8;
        v10 = [(DYReplayControllerQueue *)v9 front];
        [(DYReplayControllerQueue *)v9 dequeBlock];
        if (v6 == -1)
        {
          v11 = [(DYReplayController *)self playbackEngine];
          v6 = [v11 targetFunctionIndex];
        }

        v10[2](v10);
        if (![(DYReplayControllerQueue *)*p_profileBlockQueue count]&& ![(DYReplayControllerQueue *)*p_profileBlockBackgroundQueue count]&& v6 != -1)
        {
          v12 = [(DYReplayController *)self playbackEngine];
          [v12 playbackToFunction:v6 withLoops:0];

          v6 = 0xFFFFFFFFLL;
        }
      }

      v13 = [(DYReplayController *)self _popMessage];

      v3 = v13;
      if (!v13)
      {
        v3 = 0;
        if (![(DYReplayControllerQueue *)*p_profileBlockQueue count])
        {
          v3 = 0;
          if (![(DYReplayControllerQueue *)*p_profileBlockBackgroundQueue count])
          {
            break;
          }
        }
      }
    }
  }
}

- (void)_processMessage:(id)a3
{
  v177 = *MEMORY[0x277D85DE8];
  v156 = a3;
  v4 = [v156 kind];
  if (v4 > 4097)
  {
    v155 = self;
    switch(v4)
    {
      case 4098:
        if (![(DYReplayController *)self _handleArchiveLoadingForPlaybackRequest:v156 replyKind:4100])
        {
          goto LABEL_54;
        }

        [(DYReplayController *)self setReplayMessage:v156];
        v5 = [v156 attributeForKey:*MEMORY[0x277D0B028]];
        obj = v5;
        if (v5)
        {
          v6 = MEMORY[0x277D0AFD8];
          v7 = MEMORY[0x277CBEB98];
          v8 = objc_opt_class();
          v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
          v170 = 0;
          v10 = [v6 unarchivedObjectOfClasses:v9 fromData:v5 error:&v170];
          v11 = v170;

          if (v10)
          {
            v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v10];
            [(DYReplayController *)self setExperiments:v12];
          }
        }

        else
        {
          v11 = 0;
        }

        v137 = *MEMORY[0x277D0B488];
        v138 = [v156 attributeForKey:*MEMORY[0x277D0B488]];
        v139 = *MEMORY[0x277D0B480];
        v140 = [v156 attributeForKey:*MEMORY[0x277D0B480]];
        v160 = v140;
        if (v138)
        {
          v141 = objc_opt_new();
          [(DYReplayController *)self setProfileInfo:v141];

          v142 = [(DYReplayController *)self profileInfo];
          [v142 setObject:v138 forKey:v137];
        }

        else
        {
          if (![v140 count])
          {
            goto LABEL_63;
          }

          v143 = objc_opt_new();
          [(DYReplayController *)self setProfileInfo:v143];

          v142 = [(DYReplayController *)self profileInfo];
          [v142 setObject:v160 forKey:v139];
        }

LABEL_63:
        v144 = [(DYReplayController *)self _playbackCurrentArchiveAndExperiments];
        [v144 waitUntilResolved];
        v145 = [(DYReplayController *)self profileInfo];
        v146 = v145 == 0;

        if (v146)
        {
          v149 = [(DYReplayController *)self transport];
          v154 = MEMORY[0x277D0AFE0];
          v151 = [MEMORY[0x277CCABB0] numberWithBool:1];
          v152 = [v154 messageWithKind:4100 objectPayload:v151];
          v153 = [(DYReplayController *)self replayMessage];
          [v149 send:v152 inReplyTo:v153 error:0];
        }

        else
        {
          v147 = MEMORY[0x277CCAAB0];
          v148 = [v144 result];
          v169 = v11;
          v149 = [v147 archivedDataWithRootObject:v148 requiringSecureCoding:1 error:&v169];
          v150 = v169;

          v151 = [(DYReplayController *)self transport];
          v152 = [MEMORY[0x277D0AFE0] messageWithKind:4100 objectPayload:v149];
          v153 = [(DYReplayController *)self replayMessage];
          [v151 send:v152 inReplyTo:v153 error:0];
          v11 = v150;
        }

        [(DYReplayController *)self setReplayMessage:0];
        [(DYReplayController *)self setExperiments:0];
        [(DYReplayController *)self setProfileInfo:0];

        goto LABEL_54;
      case 4099:
      case 4100:
      case 4101:
      case 4105:
      case 4113:
      case 4117:
      case 4118:
      case 4123:
      case 4124:
      case 4125:
        goto LABEL_49;
      case 4102:
        [(DYReplayController *)self _deleteAllArchives];
        v22 = [(DYReplayController *)self transport];
        v23 = [MEMORY[0x277D0AFE0] messageWithKind:4102];
        [v22 send:v23 inReplyTo:v156 error:0];
        goto LABEL_52;
      case 4103:
        if (![(DYReplayController *)self _handleArchiveLoadingForPlaybackRequest:v156 replyKind:4105])
        {
          goto LABEL_54;
        }

        v109 = [(DYReplayController *)self transport];
        v110 = MEMORY[0x277D0AFE0];
        v111 = [MEMORY[0x277CCABB0] numberWithBool:1];
        v112 = [v110 messageWithKind:4105 objectPayload:v111];
        [v109 send:v112 inReplyTo:v156 error:0];

        [(DYReplayController *)self _beginDebugArchive];
        v82 = v156;
LABEL_45:
        [(DYReplayController *)self setReplayMessage:v82];
        goto LABEL_54;
      case 4104:
        [(DYReplayController *)self _endPlayback];
        v82 = 0;
        goto LABEL_45;
      case 4106:
        v92 = [(DYReplayController *)self replayControllerSupport];
        v93 = [(DYReplayController *)self playbackEngine];
        v94 = [v92 isDebugPlaybackEngine:v93];

        if (v94)
        {
          v95 = [(DYReplayController *)self transport];
          v96 = MEMORY[0x277D0AFE0];
          v97 = [MEMORY[0x277CCABB0] numberWithBool:1];
          v98 = [v96 messageWithKind:4105 objectPayload:v97];
          [v95 send:v98 inReplyTo:v156 error:0];

          v99 = [v156 objectPayload];
          v100 = [v99 unsignedLongLongValue];

          v22 = [(DYReplayController *)self playbackEngine];
          [v22 playbackToFunction:v100 subCommandIndex:HIDWORD(v100) withLoops:0];
          goto LABEL_53;
        }

        v22 = [(DYReplayController *)self transport];
        v127 = MEMORY[0x277D0AFE0];
        v23 = [MEMORY[0x277CCABB0] numberWithBool:0];
        v71 = [v127 messageWithKind:4105 objectPayload:v23];
        [v22 send:v71 inReplyTo:v156 error:0];
        goto LABEL_51;
      case 4107:
        v113 = [(DYReplayController *)self transport];
        v114 = MEMORY[0x277D0AFE0];
        v115 = [MEMORY[0x277CCABB0] numberWithBool:1];
        v116 = [v114 messageWithKind:4105 objectPayload:v115];
        [v113 send:v116 inReplyTo:v156 error:0];

        v117 = [(DYReplayController *)self replayControllerSupport];
        v118 = [v156 objectPayload];
        v119 = [v118 BOOLValue];
        v120 = [(DYReplayController *)self playbackEngine];
        [v117 enableDebugWireframePresent:v119 playbackEngine:v120];

        v22 = [(DYReplayController *)self playbackEngine];
        v23 = [(DYReplayController *)self playbackEngine];
        [v22 playbackToFunction:objc_msgSend(v23 withLoops:{"targetFunctionIndex"), 0}];
        goto LABEL_52;
      case 4108:
        v101 = [(DYReplayController *)self transport];
        v102 = MEMORY[0x277D0AFE0];
        v103 = [MEMORY[0x277CCABB0] numberWithBool:1];
        v104 = [v102 messageWithKind:4105 objectPayload:v103];
        [v101 send:v104 inReplyTo:v156 error:0];

        v105 = [(DYReplayController *)self replayControllerSupport];
        v106 = [v156 objectPayload];
        v107 = [v106 BOOLValue];
        v108 = [(DYReplayController *)self playbackEngine];
        [v105 enableDebugDrawCallPresent:v107 playbackEngine:v108];

        v22 = [(DYReplayController *)self playbackEngine];
        v23 = [(DYReplayController *)self playbackEngine];
        [v22 playbackToFunction:objc_msgSend(v23 withLoops:{"targetFunctionIndex"), 0}];
        goto LABEL_52;
      case 4109:
        v44 = [(DYReplayController *)self transport];
        v45 = MEMORY[0x277D0AFE0];
        v46 = [MEMORY[0x277CCABB0] numberWithBool:1];
        v47 = [v45 messageWithKind:4105 objectPayload:v46];
        [v44 send:v47 inReplyTo:v156 error:0];

        v48 = [(DYReplayController *)self replayControllerSupport];
        v49 = [v156 objectPayload];
        [v49 floatValue];
        v51 = v50;
        v52 = [(DYReplayController *)self playbackEngine];
        LODWORD(v53) = v51;
        [v48 setDebugWireframeLineWidth:v52 playbackEngine:v53];

        v22 = [(DYReplayController *)self playbackEngine];
        v23 = [(DYReplayController *)self playbackEngine];
        [v22 playbackToFunction:objc_msgSend(v23 withLoops:{"targetFunctionIndex"), 0}];
        goto LABEL_52;
      case 4110:
        v61 = [(DYReplayController *)self transport];
        v62 = MEMORY[0x277D0AFE0];
        v63 = [MEMORY[0x277CCABB0] numberWithBool:1];
        v64 = [v62 messageWithKind:4105 objectPayload:v63];
        [v61 send:v64 inReplyTo:v156 error:0];

        v65 = [(DYReplayController *)self replayControllerSupport];
        v66 = [v156 objectPayload];
        v67 = [v66 unsignedIntValue];
        v68 = [(DYReplayController *)self playbackEngine];
        [v65 setWireframeLineColor:v67 playbackEngine:v68];

        v22 = [(DYReplayController *)self playbackEngine];
        v23 = [(DYReplayController *)self playbackEngine];
        [v22 playbackToFunction:objc_msgSend(v23 withLoops:{"targetFunctionIndex"), 0}];
        goto LABEL_52;
      case 4111:
        v54 = [(DYReplayController *)self transport];
        v55 = MEMORY[0x277D0AFE0];
        v56 = [MEMORY[0x277CCABB0] numberWithBool:1];
        v57 = [v55 messageWithKind:4105 objectPayload:v56];
        [v54 send:v57 inReplyTo:v156 error:0];

        v58 = [(DYReplayController *)self replayControllerSupport];
        v59 = [v156 objectPayload];
        v60 = [(DYReplayController *)self playbackEngine];
        [v58 disableDebugFunctions:v59 playbackEngine:v60];

        v22 = [(DYReplayController *)self playbackEngine];
        v23 = [(DYReplayController *)self playbackEngine];
        [v22 playbackToFunction:objc_msgSend(v23 withLoops:{"targetFunctionIndex"), 0}];
        goto LABEL_52;
      case 4112:
        v83 = [(DYReplayController *)self transport];
        v84 = MEMORY[0x277D0AFE0];
        v85 = [MEMORY[0x277CCABB0] numberWithBool:1];
        v86 = [v84 messageWithKind:4105 objectPayload:v85];
        [v83 send:v86 inReplyTo:v156 error:0];

        v87 = [(DYReplayController *)self replayControllerSupport];
        v88 = [v156 objectPayload];
        v89 = [(DYReplayController *)self playbackEngine];
        [v87 enableDebugFunctions:v88 playbackEngine:v89];

        v22 = [(DYReplayController *)self playbackEngine];
        v23 = [(DYReplayController *)self playbackEngine];
        [v22 playbackToFunction:objc_msgSend(v23 withLoops:{"targetFunctionIndex"), 0}];
        goto LABEL_52;
      case 4114:
        v69 = [(DYReplayController *)self replayMessage];

        if (!v69)
        {
          v129 = [v156 plistPayload];
          v175 = 0;
          v130 = [(DYReplayController *)self _loadArchives:v129 error:&v175];
          v131 = v175;

          v132 = [(DYReplayController *)self transport];
          v133 = MEMORY[0x277D0AFE0];
          v134 = DYDictionaryFromError();
          v135 = [MEMORY[0x277CCABB0] numberWithBool:v130];
          v136 = [v133 messageWithKind:4114 attributes:v134 objectPayload:v135];
          [v132 send:v136 inReplyTo:v156 error:0];

          goto LABEL_54;
        }

        v22 = [MEMORY[0x277D0AFC0] errorWithDomain:*MEMORY[0x277D0AFB8] code:2048 userInfo:0];
        v23 = [(DYReplayController *)self transport];
        v70 = MEMORY[0x277D0AFE0];
        v71 = DYDictionaryFromError();
        v72 = [MEMORY[0x277CCABB0] numberWithBool:0];
        v73 = [v70 messageWithKind:4100 attributes:v71 objectPayload:v72];
        [v23 send:v73 inReplyTo:v156 error:0];

LABEL_51:
LABEL_52:

        break;
      case 4115:
        v159 = objc_opt_new();
        v26 = [(DYReplayController *)self archiveStack];
        v27 = [v26 allObjects];

        v173 = 0u;
        v174 = 0u;
        v171 = 0u;
        v172 = 0u;
        obja = v27;
        v28 = [obja countByEnumeratingWithState:&v171 objects:v176 count:16];
        if (v28)
        {
          v29 = *v172;
          v30 = *MEMORY[0x277CBECE8];
          do
          {
            for (i = 0; i != v28; ++i)
            {
              if (*v172 != v29)
              {
                objc_enumerationMutation(obja);
              }

              v32 = *(*(&v171 + 1) + 8 * i);
              v33 = CFUUIDCreateString(v30, [v32 uuid]);
              if (!v33)
              {
                __assert_rtn("[DYReplayController _processMessage:]", ", 0, "uuidString"");
              }

              v34 = objc_alloc(MEMORY[0x277CBEAC0]);
              v35 = [v32 path];
              v36 = [v35 lastPathComponent];
              v37 = [v34 initWithObjectsAndKeys:{v36, @"filename", v33, @"uuid", 0}];

              [v159 addObject:v37];
            }

            v28 = [obja countByEnumeratingWithState:&v171 objects:v176 count:16];
          }

          while (v28);
        }

        v38 = [(DYReplayController *)v155 transport];
        v39 = [MEMORY[0x277D0AFE0] messageWithKind:4115 attributes:0 plistPayload:v159];
        [v38 send:v39 inReplyTo:v156 error:0];

        goto LABEL_54;
      case 4116:
        v90 = MEMORY[0x277D0AFE0];
        v91 = [(DYReplayController *)self _archiveDirectory];
        v22 = [v90 messageWithKind:4116 attributes:0 stringPayload:v91];

        v23 = [(DYReplayController *)self transport];
        [v23 send:v22 inReplyTo:v156 error:0];
        goto LABEL_52;
      case 4119:
        v42 = [(DYReplayController *)self replayControllerSupport];
        v43 = [(DYReplayController *)self playbackEngine];
        v167[0] = MEMORY[0x277D85DD0];
        v167[1] = 3221225472;
        v167[2] = __38__DYReplayController__processMessage___block_invoke;
        v167[3] = &unk_27930FA28;
        v167[4] = self;
        v168 = v156;
        [v42 generateThumbnailsWithPlaybackEngine:v43 forMessage:v168 onReady:v167];

        goto LABEL_54;
      case 4120:
        v40 = [(DYReplayController *)self replayControllerSupport];
        v41 = [(DYReplayController *)self playbackEngine];
        v163[0] = MEMORY[0x277D85DD0];
        v163[1] = 3221225472;
        v163[2] = __38__DYReplayController__processMessage___block_invoke_3;
        v163[3] = &unk_27930FA28;
        v163[4] = self;
        v164 = v156;
        [v40 generateDependencyGraphThumbnailsWithPlaybackEngine:v41 forMessage:v164 onReady:v163];

        goto LABEL_54;
      case 4121:
        goto LABEL_11;
      case 4122:
        v74 = [(DYReplayController *)self transport];
        v75 = MEMORY[0x277D0AFE0];
        v76 = [MEMORY[0x277CCABB0] numberWithBool:1];
        v77 = [v75 messageWithKind:4105 objectPayload:v76];
        [v74 send:v77 inReplyTo:v156 error:0];

        v78 = [(DYReplayController *)self replayControllerSupport];
        v79 = [v156 objectPayload];
        v80 = [v79 BOOLValue];
        v81 = [(DYReplayController *)self playbackEngine];
        [v78 enableDebugOutlinePresent:v80 playbackEngine:v81];

        v22 = [(DYReplayController *)self playbackEngine];
        v23 = [(DYReplayController *)self playbackEngine];
        [v22 playbackToFunction:objc_msgSend(v23 withLoops:{"targetFunctionIndex"), 0}];
        goto LABEL_52;
      case 4126:
        v24 = [(DYReplayController *)self replayControllerSupport];
        v25 = [(DYReplayController *)self playbackEngine];
        v161[0] = MEMORY[0x277D85DD0];
        v161[1] = 3221225472;
        v161[2] = __38__DYReplayController__processMessage___block_invoke_4;
        v161[3] = &unk_27930FA28;
        v161[4] = self;
        v162 = v156;
        [v24 generatePixelHistoryWithPlaybackEngine:v25 forMessage:v162 onReady:v161];

        goto LABEL_54;
      default:
        if (v4 != 4611)
        {
          goto LABEL_49;
        }

        v22 = [(DYReplayController *)self transport];
        v23 = [MEMORY[0x277D0AFE0] messageWithKind:4611];
        [v22 send:v23 inReplyTo:v156 error:0];
        goto LABEL_52;
    }

    goto LABEL_53;
  }

  if (v4 == 1026)
  {
LABEL_11:
    v15 = [v156 attributes];
    v16 = [v15 objectForKeyedSubscript:*MEMORY[0x277D0B4B8]];
    v17 = [v16 unsignedLongLongValue];

    if (v17 != -1)
    {
      v18 = [(DYReplayController *)self playbackEngine];
      v19 = HIDWORD(v17);
      if ([v18 currentFunctionIndex] == v17)
      {
        v20 = [(DYReplayController *)self playbackEngine];
        v21 = [v20 targetSubCommandIndex];

        if (v21 == HIDWORD(v17))
        {
          goto LABEL_49;
        }
      }

      else
      {
      }

      v121 = [(DYReplayController *)self playbackEngine];
      [v121 setTargetFunctionIndex:v17];

      v122 = [(DYReplayController *)self playbackEngine];
      [v122 setTargetSubCommandIndex:v19];

      v123 = [(DYReplayController *)self playbackEngine];
      v124 = [(DYReplayController *)self playbackEngine];
      v125 = [v124 targetFunctionIndex];
      v126 = [(DYReplayController *)self playbackEngine];
      [v123 playbackToFunction:v125 subCommandIndex:objc_msgSend(v126 withLoops:{"targetSubCommandIndex"), 0}];
    }

LABEL_49:
    v22 = [(DYReplayController *)self origSourceMessageHandler];
    (v22)[2](v22, v156);
LABEL_53:

    goto LABEL_54;
  }

  if (v4 != 1030)
  {
    goto LABEL_49;
  }

  v13 = [(DYReplayController *)self replayControllerSupport];
  v14 = [(DYReplayController *)self playbackEngine];
  v165[0] = MEMORY[0x277D85DD0];
  v165[1] = 3221225472;
  v165[2] = __38__DYReplayController__processMessage___block_invoke_2;
  v165[3] = &unk_27930FA28;
  v165[4] = self;
  v166 = v156;
  [v13 generateShaderDebuggerTraceForMessage:v166 playbackEngine:v14 onReady:v165];

LABEL_54:
  v128 = *MEMORY[0x277D85DE8];
}

void __38__DYReplayController__processMessage___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277D0AFE0] messageWithKind:4119 objectPayload:a2];
  v3 = [*(a1 + 32) transport];
  [v3 send:v4 inReplyTo:*(a1 + 40) error:0];
}

void __38__DYReplayController__processMessage___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277D0AFE0] messageWithKind:1030 objectPayload:a2];
  v3 = [*(a1 + 32) transport];
  [v3 send:v4 inReplyTo:*(a1 + 40) error:0];
}

void __38__DYReplayController__processMessage___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277D0AFE0] messageWithKind:4120 objectPayload:a2];
  v3 = [*(a1 + 32) transport];
  [v3 send:v4 inReplyTo:*(a1 + 40) error:0];
}

void __38__DYReplayController__processMessage___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277D0AFE0] messageWithKind:4126 objectPayload:a2];
  v3 = [*(a1 + 32) transport];
  [v3 send:v4 inReplyTo:*(a1 + 40) error:0];
}

- (BOOL)_loadArchives:(id)a3 error:(id *)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (!v6)
  {
    __assert_rtn("[DYReplayController _loadArchives:error:]", ", 0, "filenames"");
  }

  v7 = [(DYReplayController *)self archiveStack];
  [v7 close];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v21 = v6;
    v9 = *v24;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        if ([v11 isAbsolutePath])
        {
          v12 = v11;
        }

        else
        {
          v13 = [(DYReplayController *)self _archiveDirectory];
          v12 = [v13 stringByAppendingPathComponent:v11];
        }

        v14 = objc_alloc(MEMORY[0x277D0AF48]);
        v15 = [MEMORY[0x277CBEBC0] fileURLWithPath:v12];
        v16 = [v14 initWithURL:v15 options:0 error:a4];

        if (!v16)
        {

          v18 = 0;
          goto LABEL_15;
        }

        v17 = [(DYReplayController *)self archiveStack];
        [v17 push:v16];
      }

      v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v18 = 1;
LABEL_15:

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (void)_deleteAllArchives
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(DYReplayController *)self replayMessage];

  if (!v3)
  {
    v4 = [(DYReplayController *)self archiveStack];
    [v4 close];
  }

  v5 = objc_opt_new();
  v6 = MEMORY[0x277CBEBC0];
  v7 = [(DYReplayController *)self _archiveDirectory];
  v8 = [v6 fileURLWithPath:v7];

  [v5 contentsOfDirectoryAtURL:v8 includingPropertiesForKeys:MEMORY[0x277CBEBF8] options:0 error:0];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v9 = v18 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [v13 pathExtension];
        v15 = [v14 caseInsensitiveCompare:@"gputrace"] == 0;

        if (v15)
        {
          [v5 removeItemAtURL:v13 error:0];
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_endPlayback
{
  v3 = [(DYReplayController *)self replayControllerSupport];
  [v3 endPlayback];

  [(DYReplayController *)self setPlaybackEngine:0];
}

- (id)_playbackCurrentArchiveAndExperiments
{
  v3 = [(DYReplayController *)self archiveStack];
  if ([v3 empty])
  {
    __assert_rtn("[DYReplayController _playbackCurrentArchiveAndExperiments]", ", 0, "![self.archiveStack empty]"");
  }

  v4 = [MEMORY[0x277D0AFC8] future];
  v5 = [(DYReplayController *)self experiments];

  if (v5)
  {
    [(DYReplayController *)self _recursivePlaybackWithFuture:0 usingExperiment:0 withToplevelFuture:v4];
  }

  else
  {
    [(DYReplayController *)self _playbackArchiveWithExperiment:0 passingFuture:v4 resolvingFuture:1];
  }

  return v4;
}

- (void)_recursivePlaybackWithFuture:(id)a3 usingExperiment:(id)a4 withToplevelFuture:(id)a5
{
  v17 = a3;
  v8 = a4;
  v9 = a5;
  if (v8)
  {
    v10 = [(DYReplayController *)self experiments];
    [v10 removeObjectAtIndex:0];
  }

  v11 = [(DYReplayController *)self experiments];
  if ([v11 count])
  {
    v12 = [(DYReplayController *)self experiments];
    v13 = [v12 objectAtIndex:0];

    v14 = v13;
  }

  else
  {
    v12 = v8;
    v14 = 0;
  }

  if (v17)
  {
    v15 = [v17 BOOLResult];
    if (!v14)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v15 = 1;
    if (!v14)
    {
      goto LABEL_12;
    }
  }

  if (v15)
  {
    [(DYReplayController *)self _playbackArchiveWithExperiment:v14 passingFuture:v9 resolvingFuture:0];
    goto LABEL_13;
  }

LABEL_12:
  v16 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [v9 setResult:v16];

LABEL_13:
}

- (void)_playbackArchiveWithExperiment:(id)a3 passingFuture:(id)a4 resolvingFuture:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(DYReplayController *)self archiveStack];
  if ([v10 empty])
  {
    __assert_rtn("[DYReplayController _playbackArchiveWithExperiment:passingFuture:resolvingFuture:]", ", 0, "![self.archiveStack empty]"");
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__DYReplayController__playbackArchiveWithExperiment_passingFuture_resolvingFuture___block_invoke;
  block[3] = &unk_27930FA00;
  block[4] = self;
  v11 = v8;
  v30 = v11;
  dispatch_sync(MEMORY[0x277D85CD0], block);
  v12 = [(DYReplayController *)self replayControllerSupport];
  v13 = [(DYReplayController *)self playbackEngine];
  v14 = [v12 experimentResultsGeneratorForPlaybackEngine:v13];

  [v14 begin];
  v15 = [(DYReplayController *)self playbackEngine];
  v16 = [v15 playback];

  v17 = [(DYReplayController *)self queue];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __83__DYReplayController__playbackArchiveWithExperiment_passingFuture_resolvingFuture___block_invoke_2;
  v22[3] = &unk_27930FA50;
  v18 = v14;
  v23 = v18;
  v19 = v11;
  v24 = v19;
  v25 = self;
  v28 = a5;
  v20 = v9;
  v26 = v20;
  v21 = v16;
  v27 = v21;
  [v21 notifyOnQueue:v17 handler:v22];
}

uint64_t __83__DYReplayController__playbackArchiveWithExperiment_passingFuture_resolvingFuture___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 archiveStack];
  v4 = [v2 _replayerControllerSupportForCaptureStore:v3];
  [*(a1 + 32) setReplayControllerSupport:v4];

  v5 = [*(a1 + 32) replayControllerSupport];
  v6 = [*(a1 + 32) archiveStack];
  v7 = [v5 createOverridingPlaybackEngineWithCaptureStore:v6 experiment:*(a1 + 40)];
  [*(a1 + 32) setPlaybackEngine:v7];

  v8 = *(a1 + 32);

  return [v8 _displayPlaybackEngine];
}

uint64_t __83__DYReplayController__playbackArchiveWithExperiment_passingFuture_resolvingFuture___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 end];
    v3 = [MEMORY[0x277D0AFE0] messageWithKind:4099 objectPayload:*(a1 + 40)];
    if (!v3)
    {
      __assert_rtn("[DYReplayController _playbackArchiveWithExperiment:passingFuture:resolvingFuture:]_block_invoke_2", ", 0, "result_message"");
    }

    v4 = [*(a1 + 48) replayMessage];
    if (!v4)
    {
      __assert_rtn("[DYReplayController _playbackArchiveWithExperiment:passingFuture:resolvingFuture:]_block_invoke_2", ", 0, "self.replayMessage"");
    }

    v5 = [*(a1 + 48) transport];
    v6 = [*(a1 + 48) replayMessage];
    [v5 send:v3 inReplyTo:v6 error:0];
  }

  [*(a1 + 48) _endPlayback];
  if (*(a1 + 72) == 1)
  {
    v7 = *(a1 + 56);
    v8 = *(a1 + 64);

    return [v7 resolveWithFuture:v8];
  }

  else
  {
    v11 = *(a1 + 40);
    v10 = *(a1 + 48);
    v13 = *(a1 + 56);
    v12 = *(a1 + 64);

    return [v10 _recursivePlaybackWithFuture:v12 usingExperiment:v11 withToplevelFuture:v13];
  }
}

- (void)_beginDebugArchive
{
  v3 = [(DYReplayController *)self archiveStack];
  if ([v3 empty])
  {
    __assert_rtn("[DYReplayController _beginDebugArchive]", ", 0, "![self.archiveStack empty]"");
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__DYReplayController__beginDebugArchive__block_invoke;
  block[3] = &unk_27930F730;
  block[4] = self;
  dispatch_sync(MEMORY[0x277D85CD0], block);
}

uint64_t __40__DYReplayController__beginDebugArchive__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 archiveStack];
  v4 = [v2 _replayerControllerSupportForCaptureStore:v3];
  [*(a1 + 32) setReplayControllerSupport:v4];

  v5 = [*(a1 + 32) replayControllerSupport];
  v6 = [*(a1 + 32) archiveStack];
  v7 = [v5 createDebugPlaybackEngineWithCaptureStore:v6];
  [*(a1 + 32) setPlaybackEngine:v7];

  v8 = *(a1 + 32);

  return [v8 _displayPlaybackEngine];
}

@end