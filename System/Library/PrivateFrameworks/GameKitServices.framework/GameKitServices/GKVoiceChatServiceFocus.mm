@interface GKVoiceChatServiceFocus
+ (id)defaultVoiceChatService;
- (BOOL)hasMic;
- (BOOL)isAudioPausedToParticipantID:(id)a3;
- (BOOL)processCancelDict:(id)a3;
- (BOOL)processFocusChange:(id)a3 fromParticipantID:(id)a4;
- (BOOL)processFocusDict:(id)a3 fromParticipantID:(id)a4;
- (BOOL)processInviteDictionary:(id)a3 fromParticipantID:(id)a4;
- (BOOL)processInviteDictionaryForTie:(id)a3 fromParticipantID:(id)a4;
- (BOOL)processReplyDict:(id)a3;
- (BOOL)startVoiceChatWithParticipantID:(id)a3 error:(id *)a4;
- (GKVoiceChatServiceFocus)init;
- (id)dictionaryForCallID:(unsigned int)a3 isIncomingDictonary:(BOOL)a4;
- (id)dictionaryForNonce:(int64_t)a3 participantID:(id)a4 isIncomingDictonary:(BOOL)a5;
- (id)dictionaryForParticipantID:(id)a3 isIncomingDictonary:(BOOL)a4;
- (id)incomingDictionaryMatchingOriginalCallID:(unsigned int)a3 participantID:(id)a4;
- (id)openOutgoingDictionaryForParticipantID:(id)a3;
- (void)dealloc;
- (void)pauseAudio:(BOOL)a3 toParticipantID:(id)a4;
- (void)receivedData:(id)a3 fromParticipantID:(id)a4;
- (void)remoteCancelled:(id)a3;
- (void)setChatMode:(int)a3;
- (void)setCurrentFocus:(id)a3;
- (void)stopVoiceChatProc:(id)a3 participantDidCancel:(BOOL)a4;
@end

@implementation GKVoiceChatServiceFocus

+ (id)defaultVoiceChatService
{
  result = defaultVoiceChatService__GKVoiceChatServiceFocus;
  if (!defaultVoiceChatService__GKVoiceChatServiceFocus)
  {
    v3 = objc_opt_class();
    objc_sync_enter(v3);
    if (!defaultVoiceChatService__GKVoiceChatServiceFocus)
    {
      defaultVoiceChatService__GKVoiceChatServiceFocus = objc_alloc_init(GKVoiceChatServiceFocus);
    }

    objc_sync_exit(v3);
    return defaultVoiceChatService__GKVoiceChatServiceFocus;
  }

  return result;
}

- (GKVoiceChatServiceFocus)init
{
  v14 = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = GKVoiceChatServiceFocus;
  v2 = [(GKVoiceChatServicePrivate *)&v7 init];
  if (v2)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v9 = v3;
        v10 = 2080;
        v11 = "[GKVoiceChatServiceFocus init]";
        v12 = 1024;
        v13 = 49;
        _os_log_impl(&dword_24E50C000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKVoiceChatServiceFocus...", buf, 0x1Cu);
      }
    }

    v2->outgoingCallDictList = [MEMORY[0x277CBEB18] arrayWithCapacity:10];
    v2->incomingCallDictList = [MEMORY[0x277CBEB18] arrayWithCapacity:10];
    v2->incomingUID = arc4random() % 10000;
    [(GKVoiceChatServiceFocus *)v2 setPacketsPerBundle:4];
    v2->hasMic = 1;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)dealloc
{
  self->outgoingCallDictList = 0;

  self->incomingCallDictList = 0;
  self->currentFocus = 0;
  v3.receiver = self;
  v3.super_class = GKVoiceChatServiceFocus;
  [(GKVoiceChatServicePrivate *)&v3 dealloc];
}

- (BOOL)startVoiceChatWithParticipantID:(id)a3 error:(id *)a4
{
  v33 = *MEMORY[0x277D85DE8];
  [(NSRecursiveLock *)self->super.stateLock lock];
  if (!self->super.client)
  {
LABEL_5:
    v10 = @"Client is not set.";
    v9 = @"Client is nil.";
LABEL_6:
    v11 = self;
    v12 = a4;
    v13 = 32006;
    goto LABEL_7;
  }

  v7 = [(VideoConference *)self->super.conf matchesOpenSessionForParticipantID:a3];
  client = self->super.client;
  if (v7)
  {
    if (client)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Already in conference with %@", a3];
      v10 = @"Cannot do startVoiceChatWithParticipantID:error:";
      v11 = self;
      v12 = a4;
      v13 = 32012;
LABEL_7:
      [(GKVoiceChatServicePrivate *)v11 getNSError:v12 code:v13 description:v10 reason:v9];
      [(NSRecursiveLock *)self->super.stateLock unlock];
      v14 = 0;
      goto LABEL_8;
    }

    goto LABEL_5;
  }

  if (![(GKVoiceChatClient *)client participantID])
  {
    v10 = @"Client participantID is not set.";
    v9 = @"participantID is nil.";
    goto LABEL_6;
  }

  v24 = 0;
  v17 = [(GKVoiceChatServicePrivate *)self createInvite:a4 toParticipant:a3 callID:&v24];
  v18 = [v17 createBlob];
  if (v17)
  {
    v19 = v18 == 0;
  }

  else
  {
    v19 = 1;
  }

  v14 = !v19;
  if (!v19)
  {
    v20 = v18;
    [(GKVoiceChatServicePrivate *)self setState:3];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v23 = [objc_msgSend(v17 "description")];
        *buf = 136315906;
        v26 = v21;
        v27 = 2080;
        v28 = "[GKVoiceChatServiceFocus startVoiceChatWithParticipantID:error:]";
        v29 = 1024;
        v30 = 106;
        v31 = 2080;
        v32 = v23;
        _os_log_impl(&dword_24E50C000, v22, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d OutgoingcallDict = %s", buf, 0x26u);
      }
    }

    [(GKVoiceChatClient *)self->super.client voiceChatService:self->super.wrapperService sendData:v20 toParticipantID:a3];
    [(NSMutableArray *)self->outgoingCallDictList addObject:v17];
  }

  [(NSRecursiveLock *)self->super.stateLock unlock];
LABEL_8:
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (id)dictionaryForNonce:(int64_t)a3 participantID:(id)a4 isIncomingDictonary:(BOOL)a5
{
  v5 = a5;
  v24 = *MEMORY[0x277D85DE8];
  [(NSRecursiveLock *)self->super.stateLock lock];
  v9 = &OBJC_IVAR___GKVoiceChatServiceFocus_outgoingCallDictList;
  if (v5)
  {
    v9 = &OBJC_IVAR___GKVoiceChatServiceFocus_incomingCallDictList;
  }

  v10 = *(&self->super.super.isa + *v9);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
LABEL_5:
    v14 = 0;
    while (1)
    {
      if (*v20 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v19 + 1) + 8 * v14);
      if ([v15 matchesNonce:a3])
      {
        v16 = (v5 ? [v15 fromParticipantID] : objc_msgSend(v15, "participantID"));
        if ([v16 isEqualToString:a4])
        {
          break;
        }
      }

      if (v12 == ++v14)
      {
        v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v12)
        {
          goto LABEL_5;
        }

        goto LABEL_15;
      }
    }
  }

  else
  {
LABEL_15:
    v15 = 0;
  }

  [(NSRecursiveLock *)self->super.stateLock unlock];
  result = v15;
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)dictionaryForParticipantID:(id)a3 isIncomingDictonary:(BOOL)a4
{
  v4 = a4;
  v22 = *MEMORY[0x277D85DE8];
  [(NSRecursiveLock *)self->super.stateLock lock];
  v7 = &OBJC_IVAR___GKVoiceChatServiceFocus_outgoingCallDictList;
  if (v4)
  {
    v7 = &OBJC_IVAR___GKVoiceChatServiceFocus_incomingCallDictList;
  }

  v8 = *(&self->super.super.isa + *v7);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
LABEL_5:
    v12 = 0;
    while (1)
    {
      if (*v18 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v17 + 1) + 8 * v12);
      v14 = (v4 ? [v13 fromParticipantID] : objc_msgSend(v13, "participantID"));
      if ([v14 isEqualToString:a3])
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v10)
        {
          goto LABEL_5;
        }

        goto LABEL_14;
      }
    }
  }

  else
  {
LABEL_14:
    v13 = 0;
  }

  [(NSRecursiveLock *)self->super.stateLock unlock];
  result = v13;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)dictionaryForCallID:(unsigned int)a3 isIncomingDictonary:(BOOL)a4
{
  v4 = a4;
  v21 = *MEMORY[0x277D85DE8];
  [(NSRecursiveLock *)self->super.stateLock lock];
  v7 = &OBJC_IVAR___GKVoiceChatServiceFocus_outgoingCallDictList;
  if (v4)
  {
    v7 = &OBJC_IVAR___GKVoiceChatServiceFocus_incomingCallDictList;
  }

  v8 = *(&self->super.super.isa + *v7);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
LABEL_5:
    v12 = 0;
    while (1)
    {
      if (*v17 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v16 + 1) + 8 * v12);
      if ([v13 callID] == a3)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v10)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    v13 = 0;
  }

  [(NSRecursiveLock *)self->super.stateLock unlock];
  result = v13;
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)remoteCancelled:(id)a3
{
  if (self->super.client)
  {
    [MEMORY[0x277CCACC8] detachNewThreadSelector:sel_remoteCancelledProc_ toTarget:self withObject:a3];
  }
}

- (void)stopVoiceChatProc:(id)a3 participantDidCancel:(BOOL)a4
{
  *&v30[5] = *MEMORY[0x277D85DE8];
  v7 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      if (a3)
      {
        v10 = [objc_msgSend(a3 "description")];
      }

      else
      {
        v10 = "<nil>";
      }

      *buf = 136315906;
      v24 = v8;
      v25 = 2080;
      v26 = "[GKVoiceChatServiceFocus stopVoiceChatProc:participantDidCancel:]";
      v27 = 1024;
      v28 = 218;
      v29 = 2080;
      *v30 = v10;
      _os_log_impl(&dword_24E50C000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d stopVoiceChatProc1>:P%s", buf, 0x26u);
    }
  }

  [(NSRecursiveLock *)self->super.stateLock lock];
  v11 = [(GKVoiceChatServiceFocus *)self openOutgoingDictionaryForParticipantID:a3];
  if (v11)
  {
    v12 = v11;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        curCallID = self->super.curCallID;
        state = self->super.state;
        *buf = 136316162;
        v24 = v13;
        v25 = 2080;
        v26 = "[GKVoiceChatServiceFocus stopVoiceChatProc:participantDidCancel:]";
        v27 = 1024;
        v28 = 230;
        v29 = 1024;
        *v30 = curCallID;
        v30[2] = 1024;
        *&v30[3] = state;
        _os_log_impl(&dword_24E50C000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d stopVoiceChatProc2>: curCallID = %d, state %d", buf, 0x28u);
      }
    }

    v17 = [v12 callID];
    v18 = [(VideoConference *)self->super.conf stateForCallID:v17];
    conf = self->super.conf;
    if (a4)
    {
      [(VideoConference *)conf remoteCancelledCallID:v17];
    }

    else
    {
      [(VideoConference *)conf stopCallID:v17];
    }

    if (v18 <= 6 && ((1 << v18) & 0x68) != 0)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __66__GKVoiceChatServiceFocus_stopVoiceChatProc_participantDidCancel___block_invoke;
      block[3] = &unk_279682C18;
      block[4] = self;
      block[5] = v12;
      block[6] = a3;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    [(GKVoiceChatServicePrivate *)self resetState];
  }

  [(NSRecursiveLock *)self->super.stateLock unlock];

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __66__GKVoiceChatServiceFocus_stopVoiceChatProc_participantDidCancel___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  v4 = *(v2 + 384);
  v5 = [objc_msgSend(*(a1 + 40) "cancelDictionary")];
  v6 = *(a1 + 48);

  return [v3 voiceChatService:v4 sendData:v5 toParticipantID:v6];
}

- (void)receivedData:(id)a3 fromParticipantID:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  if (!self->super.client)
  {
LABEL_19:
    v15 = *MEMORY[0x277D85DE8];
    return;
  }

  [(NSRecursiveLock *)self->super.stateLock lock];
  v7 = [GKVoiceChatDictionary dictionaryFromData:a3];
  if (v7)
  {
    v8 = v7;
    if ([v7 isInviteDictionary])
    {
      [(GKVoiceChatServiceFocus *)self processInviteDictionary:v8 fromParticipantID:a4];
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v16 = 136315650;
          v17 = v9;
          v18 = 2080;
          v19 = "[GKVoiceChatServiceFocus receivedData:fromParticipantID:]";
          v20 = 1024;
          v21 = 364;
          _os_log_impl(&dword_24E50C000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Finished processing Invite Dictionary...", &v16, 0x1Cu);
        }
      }
    }

    else if ([v8 isReplyDictionary])
    {
      [(GKVoiceChatServiceFocus *)self processReplyDict:v8];
    }

    else if ([v8 isCancelDictionary])
    {
      [(GKVoiceChatServiceFocus *)self processCancelDict:v8];
    }

    else if ([v8 isFocusDictionary])
    {
      [(GKVoiceChatServiceFocus *)self processFocusDict:v8 fromParticipantID:a4];
    }

    [(NSRecursiveLock *)self->super.stateLock unlock];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v16 = 136315650;
        v17 = v13;
        v18 = 2080;
        v19 = "[GKVoiceChatServiceFocus receivedData:fromParticipantID:]";
        v20 = 1024;
        v21 = 380;
        _os_log_impl(&dword_24E50C000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Finished receivedData...", &v16, 0x1Cu);
      }
    }

    goto LABEL_19;
  }

  stateLock = self->super.stateLock;
  v12 = *MEMORY[0x277D85DE8];

  [(NSRecursiveLock *)stateLock unlock];
}

- (BOOL)processInviteDictionaryForTie:(id)a3 fromParticipantID:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v9 = [-[GKVoiceChatClient participantID](self->super.client "participantID")] == -1;
      v10 = [-[GKVoiceChatClient participantID](self->super.client "participantID")];
      *v23 = 136316162;
      *&v23[4] = v7;
      v24 = 2080;
      v25 = "[GKVoiceChatServiceFocus processInviteDictionaryForTie:fromParticipantID:]";
      v26 = 1024;
      v27 = 387;
      v28 = 1024;
      v29 = v9;
      v30 = 1024;
      v31 = v10 == 1;
      _os_log_impl(&dword_24E50C000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [self inviteIsValid:calleeResponse] is YES:isCaller=%d, %d", v23, 0x28u);
    }
  }

  v11 = [(GKVoiceChatServiceFocus *)self openOutgoingDictionaryForParticipantID:a4, *v23];
  if (v11)
  {
    v12 = v11;
    if ([-[GKVoiceChatClient participantID](self->super.client "participantID")] == -1)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v17 = VRTraceErrorLogLevelToCSTR();
        v18 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *v23 = 136315650;
          *&v23[4] = v17;
          v24 = 2080;
          v25 = "[GKVoiceChatServiceFocus processInviteDictionaryForTie:fromParticipantID:]";
          v26 = 1024;
          v27 = 398;
          _os_log_impl(&dword_24E50C000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d I am the caller starting ice check", v23, 0x1Cu);
        }
      }

      [(GKVoiceChatServicePrivate *)self setState:5];
      -[GKVoiceChatServicePrivate startICEConnectionCheck:isCaller:withCallID:](self, "startICEConnectionCheck:isCaller:withCallID:", a3, 1, [v12 callID]);
      v15 = [v12 nonce];
      v16 = a3;
    }

    else if ([-[GKVoiceChatClient participantID](self->super.client "participantID")] == 1)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *v23 = 136315650;
          *&v23[4] = v13;
          v24 = 2080;
          v25 = "[GKVoiceChatServiceFocus processInviteDictionaryForTie:fromParticipantID:]";
          v26 = 1024;
          v27 = 408;
          _os_log_impl(&dword_24E50C000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d I am the callee starting ice check", v23, 0x1Cu);
        }
      }

      [(GKVoiceChatServicePrivate *)self setState:6];
      -[GKVoiceChatServicePrivate startICEConnectionCheck:isCaller:withCallID:](self, "startICEConnectionCheck:isCaller:withCallID:", a3, 0, [v12 callID]);
      v15 = [a3 nonce];
      v16 = v12;
    }

    else
    {
      v19 = [a3 nonce];
      v20 = [v12 nonce];
      ++self->incomingUID;
      [a3 setCallID:?];
      if (v20 >= v19)
      {
        if (v20 <= v19)
        {
          LOBYTE(v11) = 0;
          goto LABEL_20;
        }

        -[GKVoiceChatServicePrivate startICEConnectionCheck:isCaller:withCallID:](self, "startICEConnectionCheck:isCaller:withCallID:", a3, 0, [v12 callID]);
        v16 = v12;
        v15 = v19;
      }

      else
      {
        -[GKVoiceChatServicePrivate startICEConnectionCheck:isCaller:withCallID:](self, "startICEConnectionCheck:isCaller:withCallID:", a3, 1, [v12 callID]);
        v16 = a3;
        v15 = v20;
      }
    }

    [v16 setNonce:v15];
    [(NSMutableArray *)self->incomingCallDictList addObject:a3];
    LOBYTE(v11) = 1;
  }

LABEL_20:
  v21 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)openOutgoingDictionaryForParticipantID:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  [(NSRecursiveLock *)self->super.stateLock lock];
  outgoingCallDictList = self->outgoingCallDictList;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(NSMutableArray *)outgoingCallDictList countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(outgoingCallDictList);
      }

      v10 = *(*(&v13 + 1) + 8 * v9);
      if ([objc_msgSend(v10 "participantID")])
      {
        if (-[VideoConference stateForCallID:](self->super.conf, "stateForCallID:", [v10 callID]) != 7 && -[VideoConference stateForCallID:](self->super.conf, "stateForCallID:", objc_msgSend(v10, "callID")) != 8)
        {
          break;
        }
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableArray *)outgoingCallDictList countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    v10 = 0;
  }

  [(NSRecursiveLock *)self->super.stateLock unlock];
  result = v10;
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)processInviteDictionary:(id)a3 fromParticipantID:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = [(GKVoiceChatServiceFocus *)self openOutgoingDictionaryForParticipantID:a4];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      if (v7)
      {
        v10 = [objc_msgSend(v7 "description")];
      }

      else
      {
        v10 = "<nil>";
      }

      v11 = -[VideoConference stateForCallID:](self->super.conf, "stateForCallID:", [v7 callID]);
      *v18 = 136316162;
      *&v18[4] = v8;
      v19 = 2080;
      v20 = "[GKVoiceChatServiceFocus processInviteDictionary:fromParticipantID:]";
      v21 = 1024;
      v22 = 465;
      v23 = 2080;
      v24 = v10;
      v25 = 1024;
      v26 = v11;
      _os_log_impl(&dword_24E50C000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d processInviteDictionary:outDict = %s, state = %d", v18, 0x2Cu);
    }
  }

  if (v7)
  {
    if (-[VideoConference stateForCallID:](self->super.conf, "stateForCallID:", [v7 callID]) == 3 && -[GKVoiceChatServiceFocus processInviteDictionaryForTie:fromParticipantID:](self, "processInviteDictionaryForTie:fromParticipantID:", a3, a4))
    {
      goto LABEL_20;
    }
  }

  else
  {
    v12 = [(GKVoiceChatServiceFocus *)self dictionaryForParticipantID:a4 isIncomingDictonary:1];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        if (v12)
        {
          v15 = [objc_msgSend(v12 "description")];
        }

        else
        {
          v15 = "<nil>";
        }

        *v18 = 136315906;
        *&v18[4] = v13;
        v19 = 2080;
        v20 = "[GKVoiceChatServiceFocus processInviteDictionary:fromParticipantID:]";
        v21 = 1024;
        v22 = 485;
        v23 = 2080;
        v24 = v15;
        _os_log_impl(&dword_24E50C000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d processInviteDictionary:otherDict = %s", v18, 0x26u);
      }
    }

    if (!v12)
    {
      ++self->incomingUID;
      [a3 setCallID:?];
      [(NSMutableArray *)self->incomingCallDictList addObject:a3];
      [(GKVoiceChatServiceFocus *)self performSelectorOnMainThread:sel_informClientOfInviteFromParticipant_ withObject:a3 waitUntilDone:0];
LABEL_20:
      result = 1;
      goto LABEL_21;
    }
  }

  *v18 = 0;
  -[GKVoiceChatClient voiceChatService:sendData:toParticipantID:](self->super.client, "voiceChatService:sendData:toParticipantID:", self->super.wrapperService, [-[GKVoiceChatServicePrivate createReplyUsingDictionary:replyCode:error:](self createReplyUsingDictionary:a3 replyCode:3 error:{v18), "createBlob"}], a4);
  result = 0;
LABEL_21:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)processReplyDict:(id)a3
{
  v15[2] = *MEMORY[0x277D85DE8];
  v5 = -[GKVoiceChatServiceFocus dictionaryForNonce:participantID:isIncomingDictonary:](self, "dictionaryForNonce:participantID:isIncomingDictonary:", [a3 nonce], objc_msgSend(a3, "fromParticipantID"), 0);
  if (v5)
  {
    -[VideoConference matchesOpenSessionForParticipantID:](self->super.conf, "matchesOpenSessionForParticipantID:", [a3 fromParticipantID]);
    v13 = 0;
    v6 = [a3 fromParticipantID];
    v7 = [a3 response];
    if (v7 == 2)
    {
      v8 = @"%@ has declined your request.";
      v9 = 32011;
    }

    else
    {
      if (v7 != 3)
      {
        goto LABEL_8;
      }

      v8 = @"%@ is currently busy in another call.";
      v9 = 32008;
    }

    -[VideoConference stopCallID:](self->super.conf, "stopCallID:", [v5 callID]);
    -[GKVoiceChatServicePrivate getNSError:code:description:reason:](self, "getNSError:code:description:reason:", &v13, v9, [MEMORY[0x277CCACA8] stringWithFormat:v8, v6], @"Request declined.");
    if (v13)
    {
      v14[0] = @"participantID";
      v14[1] = @"error";
      v15[0] = v6;
      v15[1] = v13;
      -[GKVoiceChatServicePrivate informClientVoiceChatDidNotStart:](self, "informClientVoiceChatDidNotStart:", [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2]);
      [(GKVoiceChatServicePrivate *)self resetState];
      [(NSMutableArray *)self->outgoingCallDictList removeObject:v5];
      LOBYTE(v5) = 0;
      goto LABEL_9;
    }

LABEL_8:
    v10 = [v5 callID];
    LOBYTE(v5) = 1;
    [(GKVoiceChatServicePrivate *)self startICEConnectionCheck:a3 isCaller:1 withCallID:v10];
    [(NSMutableArray *)self->incomingCallDictList addObject:a3];
  }

LABEL_9:
  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)incomingDictionaryMatchingOriginalCallID:(unsigned int)a3 participantID:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  [(NSRecursiveLock *)self->super.stateLock lock];
  incomingCallDictList = self->incomingCallDictList;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [(NSMutableArray *)incomingCallDictList countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v16 != v10)
      {
        objc_enumerationMutation(incomingCallDictList);
      }

      v12 = *(*(&v15 + 1) + 8 * v11);
      if ([objc_msgSend(v12 "fromParticipantID")])
      {
        if ([v12 originalCallID] == a3)
        {
          break;
        }
      }

      if (v9 == ++v11)
      {
        v9 = [(NSMutableArray *)incomingCallDictList countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v12 = 0;
  }

  [(NSRecursiveLock *)self->super.stateLock unlock];
  result = v12;
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)processCancelDict:(id)a3
{
  v13[2] = *MEMORY[0x277D85DE8];
  v5 = [a3 fromParticipantID];
  v6 = -[GKVoiceChatServiceFocus dictionaryForNonce:participantID:isIncomingDictonary:](self, "dictionaryForNonce:participantID:isIncomingDictonary:", [a3 nonce], v5, 0);
  if (!v6)
  {
    v6 = [(GKVoiceChatServiceFocus *)self openOutgoingDictionaryForParticipantID:v5];
  }

  v7 = -[GKVoiceChatServiceFocus dictionaryForNonce:participantID:isIncomingDictonary:](self, "dictionaryForNonce:participantID:isIncomingDictonary:", [a3 nonce], v5, 1);
  if (v7 || (v7 = -[GKVoiceChatServiceFocus incomingDictionaryMatchingOriginalCallID:participantID:](self, "incomingDictionaryMatchingOriginalCallID:participantID:", [a3 callID], v5)) != 0)
  {
    v8 = v7;
    if (v6)
    {
      [(NSMutableArray *)self->outgoingCallDictList removeObject:v6];
      -[VideoConference remoteCancelledCallID:](self->super.conf, "remoteCancelledCallID:", [v6 callID]);
    }

    v11 = 0;
    [(NSMutableArray *)self->incomingCallDictList removeObject:v8];
    -[GKVoiceChatServicePrivate getNSError:code:description:reason:](self, "getNSError:code:description:reason:", &v11, 32009, [MEMORY[0x277CCACA8] stringWithFormat:@"%@ has cancelled this request.", v5], @"This request was cancelled.");
    v12[0] = @"participantID";
    v12[1] = @"error";
    v13[0] = v5;
    v13[1] = v11;
    -[GKVoiceChatServicePrivate informClientVoiceChatDidNotStart:](self, "informClientVoiceChatDidNotStart:", [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2]);
    [(GKVoiceChatServicePrivate *)self resetState];
    LOBYTE(v7) = 1;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)processFocusDict:(id)a3 fromParticipantID:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  if (-[GKVoiceChatServiceFocus dictionaryForNonce:participantID:isIncomingDictonary:](self, "dictionaryForNonce:participantID:isIncomingDictonary:", [a3 nonce], a4, 0))
  {
    v7 = 1;
  }

  else
  {
    v7 = [(GKVoiceChatServiceFocus *)self openOutgoingDictionaryForParticipantID:a4]!= 0;
  }

  if (-[GKVoiceChatServiceFocus dictionaryForNonce:participantID:isIncomingDictonary:](self, "dictionaryForNonce:participantID:isIncomingDictonary:", [a3 nonce], a4, 1) || -[GKVoiceChatServiceFocus incomingDictionaryMatchingOriginalCallID:participantID:](self, "incomingDictionaryMatchingOriginalCallID:participantID:", objc_msgSend(a3, "callID"), a4) != 0 || v7)
  {
    v8 = *MEMORY[0x277D85DE8];

    return [(GKVoiceChatServiceFocus *)self processFocusChange:a3 fromParticipantID:a4];
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        if (a4)
        {
          v12 = [objc_msgSend(a4 "description")];
        }

        else
        {
          v12 = "<nil>";
        }

        v14 = 136315906;
        v15 = v10;
        v16 = 2080;
        v17 = "[GKVoiceChatServiceFocus processFocusDict:fromParticipantID:]";
        v18 = 1024;
        v19 = 612;
        v20 = 2080;
        v21 = v12;
        _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Got focus dict from %s but not in call with them!", &v14, 0x26u);
      }
    }

    v13 = *MEMORY[0x277D85DE8];
    return 0;
  }
}

- (BOOL)processFocusChange:(id)a3 fromParticipantID:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  if ([a3 isFocus] && !-[NSString isEqualToString:](self->currentFocus, "isEqualToString:", a4))
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_23;
    }

    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x277CE5818];
    if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    currentFocus = self->currentFocus;
    if (currentFocus)
    {
      v13 = [[(NSString *)currentFocus description] UTF8String];
      if (a4)
      {
LABEL_13:
        v14 = [objc_msgSend(a4 "description")];
LABEL_22:
        v25 = 136316162;
        v26 = v10;
        v27 = 2080;
        v28 = "[GKVoiceChatServiceFocus processFocusChange:fromParticipantID:]";
        v29 = 1024;
        v30 = 621;
        v31 = 2080;
        v32 = v13;
        v33 = 2080;
        v34 = v14;
        _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Setting currentFocus from %s to %s", &v25, 0x30u);
LABEL_23:
        v21 = self->currentFocus;
        v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithString:a4];
        self->currentFocus = v22;
        [(VideoConference *)self->super.conf setCurrentFocus:v22];
        if ([(GKVoiceChatServicePrivate *)self isFocus])
        {
          [(GKVoiceChatServiceFocus *)self setFocus:0];
        }

        goto LABEL_29;
      }
    }

    else
    {
      v13 = "<nil>";
      if (a4)
      {
        goto LABEL_13;
      }
    }

    v14 = "<nil>";
    goto LABEL_22;
  }

  if (-[NSString isEqualToString:](self->currentFocus, "isEqualToString:", a4) && ([a3 isFocus] & 1) == 0)
  {
    [(VideoConference *)self->super.conf setCurrentFocus:0];

    self->currentFocus = 0;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        if (a4)
        {
          v17 = [objc_msgSend(a4 "description")];
        }

        else
        {
          v17 = "<nil>";
        }

        v25 = 136315906;
        v26 = v15;
        v27 = 2080;
        v28 = "[GKVoiceChatServiceFocus processFocusChange:fromParticipantID:]";
        v29 = 1024;
        v30 = 636;
        v31 = 2080;
        v32 = v17;
        v18 = " [%s] %s:%d Setting currentFocus from %s to none";
        v19 = v16;
        v20 = 38;
        goto LABEL_28;
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      if (a4)
      {
        v9 = [objc_msgSend(a4 "description")];
      }

      else
      {
        v9 = "<nil>";
      }

      v25 = 136316162;
      v26 = v7;
      v27 = 2080;
      v28 = "[GKVoiceChatServiceFocus processFocusChange:fromParticipantID:]";
      v29 = 1024;
      v30 = 638;
      v31 = 2080;
      v32 = v9;
      v33 = 1024;
      LODWORD(v34) = [a3 isFocus];
      v18 = " [%s] %s:%d Focus dict from %s is %d";
      v19 = v8;
      v20 = 44;
LABEL_28:
      _os_log_impl(&dword_24E50C000, v19, OS_LOG_TYPE_DEFAULT, v18, &v25, v20);
    }
  }

LABEL_29:
  v23 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)setChatMode:(int)a3
{
  if (self->super.chatMode != a3)
  {
    self->super.chatMode = a3;
    [(VideoConference *)self->super.conf setChatMode:?];
  }
}

- (void)setCurrentFocus:(id)a3
{
  [(NSRecursiveLock *)self->super.stateLock lock];
  if (([a3 isEqualToString:{-[VideoConference currentFocus](self->super.conf, "currentFocus")}] & 1) == 0)
  {

    v5 = [a3 copy];
    self->currentFocus = v5;
    [(VideoConference *)self->super.conf setCurrentFocus:v5];
  }

  stateLock = self->super.stateLock;

  [(NSRecursiveLock *)stateLock unlock];
}

- (BOOL)hasMic
{
  result = [(VideoConference *)self->super.conf hasMic];
  self->hasMic = result;
  return result;
}

- (BOOL)isAudioPausedToParticipantID:(id)a3
{
  [(NSRecursiveLock *)self->super.stateLock lock];
  v5 = [-[GKVoiceChatServiceFocus openOutgoingDictionaryForParticipantID:](self openOutgoingDictionaryForParticipantID:{a3), "callID"}];
  v6 = self->super.conf;
  [(NSRecursiveLock *)self->super.stateLock unlock];
  LOBYTE(v5) = [(VideoConference *)self->super.conf shouldSendAudioForCallID:v5];

  return v5 ^ 1;
}

- (void)pauseAudio:(BOOL)a3 toParticipantID:(id)a4
{
  v5 = a3;
  [(NSRecursiveLock *)self->super.stateLock lock];
  v7 = [(GKVoiceChatServiceFocus *)self openOutgoingDictionaryForParticipantID:a4];
  v8 = self->super.conf;
  v9 = [v7 callID];
  [(NSRecursiveLock *)self->super.stateLock unlock];

  conf = self->super.conf;

  [(VideoConference *)conf setSendAudio:!v5 forCallID:v9];
}

@end