@interface GTMTLReplayService
- (BOOL)cancel:(unint64_t)cancel;
- (BOOL)load:(id)load error:(id *)error;
- (BOOL)pause:(unint64_t)pause;
- (BOOL)resume:(unint64_t)resume;
- (GTMTLReplayService)initWithContext:(GTMTLReplayClient *)context;
- (id)decode:(id)decode;
- (id)fetch:(id)fetch;
- (id)fetchInto:(id)into;
- (id)profile:(id)profile;
- (id)query:(id)query;
- (id)raytrace:(id)raytrace;
- (id)shaderdebug:(id)shaderdebug;
- (id)update:(id)update;
- (void)broadcastDisconnect:(id)disconnect path:(id)path;
- (void)display:(id)display;
- (void)fetchIntoOperation:(id)operation completionHandler:(id)handler;
- (void)notifyError:(id)error;
- (void)terminateProcess;
@end

@implementation GTMTLReplayService

- (id)raytrace:(id)raytrace
{
  clientContext = self->_clientContext;
  raytraceCopy = raytrace;
  streamHandler = [raytraceCopy streamHandler];
  dispatchUID = [raytraceCopy dispatchUID];
  streamRef = [raytraceCopy streamRef];
  requestID = [raytraceCopy requestID];

  var0 = clientContext->var7.var0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __31__GTMTLReplayService_raytrace___block_invoke;
  v12[3] = &unk_279657970;
  v15 = dispatchUID;
  v16 = requestID;
  v13 = streamHandler;
  v14 = clientContext;
  v17 = streamRef;
  v10 = streamHandler;
  [var0 addOperationWithBlock:v12];

  return 0;
}

void __31__GTMTLReplayService_raytrace___block_invoke(uint64_t a1)
{
  GTMTLReplayController_debugSubCommandStop(*(*(a1 + 40) + 8), *(a1 + 48), 0);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 56)];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __31__GTMTLReplayService_raytrace___block_invoke_2;
  v14[3] = &unk_279657920;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v16 = *(a1 + 56);
  v17 = v5;
  v15 = v6;
  v7 = *(a1 + 64);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __31__GTMTLReplayService_raytrace___block_invoke_3;
  v10[3] = &unk_279657948;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = v8;
  v12 = v9;
  v13 = *(a1 + 56);
  [GTAccelerationStructureServerSession sessionWithReplayClient:v2 functionIndex:v3 requestID:v4 transport:0 dataHandler:v14 accelerationStructureKey:v7 completionHandler:v10];
}

void __31__GTMTLReplayService_raytrace___block_invoke_2(void *a1, uint64_t a2, void *a3, void *a4)
{
  v20 = a3;
  v6 = a4;
  Operation = GTCoreOperationControl_getOperation(a1[5]);
  if (Operation && *(Operation + 24) == 1)
  {
    v8 = *(a1[6] + 8);
    dispatch_semaphore_wait(*(v8 + 72), 0xFFFFFFFFFFFFFFFFLL);
    if (GTCoreOperationControl_getOperation(a1[5]))
    {
      v9 = objc_autoreleasePoolPush();
      v10 = *(v8 + 80);
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[5]];
      [v10 removeObjectForKey:v11];

      GTCoreOperationControl_removeOperation(a1[5]);
      v12 = a1[4];
      v13 = [objc_alloc(MEMORY[0x277D0B630]) initWithState:2];
      (*(v12 + 16))(v12, v13);

      objc_autoreleasePoolPop(v9);
    }

    dispatch_semaphore_signal(*(v8 + 72));
  }

  else
  {
    v14 = objc_opt_new();
    [v14 setData:v20];
    if (v6)
    {
      v15 = MEMORY[0x277CCA9B8];
      v16 = [v6 domain];
      v17 = [v6 code];
      v18 = [v6 userInfo];
      v19 = [v15 errorWithDomain:v16 code:v17 userInfo:v18];
      [v14 setError:v19];
    }

    else
    {
      [v14 setError:0];
    }

    (*(a1[4] + 16))();
  }
}

void __31__GTMTLReplayService_raytrace___block_invoke_3(void *a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  if (v16)
  {
    v6 = *(a1[5] + 8);
    dispatch_semaphore_wait(*(v6 + 72), 0xFFFFFFFFFFFFFFFFLL);
    v7 = *(v6 + 80);
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[6]];
    [v7 setObject:v16 forKey:v8];

    dispatch_semaphore_signal(*(v6 + 72));
    [v16 setSessionID:a1[6]];
    GTCoreOperationControl_addOperation(a1[6]);
    v9 = a1[4];
    v10 = [objc_alloc(MEMORY[0x277D0B630]) initWithState:1];
    (*(v9 + 16))(v9, v10);
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x277D0B630]) initWithState:2];
    if (v5)
    {
      v11 = MEMORY[0x277CCA9B8];
      v12 = [v5 domain];
      v13 = [v5 code];
      v14 = [v5 userInfo];
      v15 = [v11 errorWithDomain:v12 code:v13 userInfo:v14];
      [v10 setError:v15];
    }

    (*(a1[4] + 16))(a1[4], v10);
  }
}

- (id)shaderdebug:(id)shaderdebug
{
  shaderdebugCopy = shaderdebug;
  v5 = [objc_alloc(MEMORY[0x277D0B620]) initWithService:self andTokenId:{objc_msgSend(shaderdebugCopy, "requestID")}];
  clientContext = self->_clientContext;
  var0 = clientContext->var7.var0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __34__GTMTLReplayService_shaderdebug___block_invoke;
  v13[3] = &unk_279658B00;
  v14 = shaderdebugCopy;
  v16 = clientContext;
  v8 = v5;
  v15 = v8;
  v9 = shaderdebugCopy;
  [var0 addOperationWithBlock:v13];
  v10 = v15;
  v11 = v8;

  return v8;
}

void __34__GTMTLReplayService_shaderdebug___block_invoke(uint64_t a1)
{
  v181[7] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = *(a1 + 32);
    v4 = v3;
    v181[0] = &unk_2860D6668;
    v180[0] = @"Type";
    v180[1] = @"MinPositionX";
    v5 = MEMORY[0x277CCABB0];
    if (v3)
    {
      [v3 minThreadPositionInGrid];
      v6 = v165;
    }

    else
    {
      v6 = 0;
      v166 = 0;
      v165 = 0;
      v167 = 0;
    }

    v10 = [v5 numberWithUnsignedLongLong:v6];
    v181[1] = v10;
    v180[2] = @"MinPositionY";
    v13 = MEMORY[0x277CCABB0];
    if (v4)
    {
      [v4 minThreadPositionInGrid];
      v14 = v163;
    }

    else
    {
      v14 = 0;
      v163 = 0;
      v162 = 0;
      v164 = 0;
    }

    v15 = [v13 numberWithUnsignedLongLong:v14];
    v181[2] = v15;
    v180[3] = @"MinPositionZ";
    v16 = MEMORY[0x277CCABB0];
    if (v4)
    {
      [v4 minThreadPositionInGrid];
      v17 = v161;
    }

    else
    {
      v17 = 0;
      v160 = 0;
      v159 = 0;
      v161 = 0;
    }

    v18 = [v16 numberWithUnsignedLongLong:v17];
    v181[3] = v18;
    v180[4] = @"MaxPositionX";
    v19 = MEMORY[0x277CCABB0];
    if (v4)
    {
      [v4 maxThreadPositionInGrid];
      v20 = v156;
    }

    else
    {
      v20 = 0;
      v156 = 0;
      v157 = 0;
      v158 = 0;
    }

    v21 = [v19 numberWithUnsignedLongLong:v20];
    v181[4] = v21;
    v180[5] = @"MaxPositionY";
    v22 = MEMORY[0x277CCABB0];
    if (v4)
    {
      [v4 maxThreadPositionInGrid];
      v23 = v154;
    }

    else
    {
      v23 = 0;
      v153 = 0;
      v154 = 0;
      v155 = 0;
    }

    v24 = [v22 numberWithUnsignedLongLong:v23];
    v181[5] = v24;
    v180[6] = @"MaxPositionZ";
    v25 = MEMORY[0x277CCABB0];
    if (v4)
    {
      [v4 maxThreadPositionInGrid];
      v26 = v152;
    }

    else
    {
      v26 = 0;
      v150 = 0;
      v151 = 0;
      v152 = 0;
    }

    v27 = [v25 numberWithUnsignedLongLong:v26];
    v181[6] = v27;
    v28 = MEMORY[0x277CBEAC0];
    v29 = v181;
    v30 = v180;
LABEL_46:
    v47 = [v28 dictionaryWithObjects:v29 forKeys:v30 count:7];
LABEL_47:

LABEL_48:
    goto LABEL_49;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = *(a1 + 32);
    v4 = v7;
    v179[0] = &unk_2860D6680;
    v178[0] = @"Type";
    v178[1] = @"MinPositionX";
    v8 = MEMORY[0x277CCABB0];
    if (v7)
    {
      [v7 minThreadPositionInGrid];
      v9 = v147;
    }

    else
    {
      v9 = 0;
      v147 = 0;
      v148 = 0;
      v149 = 0;
    }

    v10 = [v8 numberWithUnsignedLongLong:v9];
    v179[1] = v10;
    v178[2] = @"MinPositionY";
    v37 = MEMORY[0x277CCABB0];
    if (v4)
    {
      [v4 minThreadPositionInGrid];
      v38 = v145;
    }

    else
    {
      v38 = 0;
      v144 = 0;
      v145 = 0;
      v146 = 0;
    }

    v15 = [v37 numberWithUnsignedLongLong:v38];
    v179[2] = v15;
    v178[3] = @"MinPositionZ";
    v39 = MEMORY[0x277CCABB0];
    if (v4)
    {
      [v4 minThreadPositionInGrid];
      v40 = v143;
    }

    else
    {
      v40 = 0;
      v141 = 0;
      v142 = 0;
      v143 = 0;
    }

    v18 = [v39 numberWithUnsignedLongLong:v40];
    v179[3] = v18;
    v178[4] = @"MaxPositionX";
    v41 = MEMORY[0x277CCABB0];
    if (v4)
    {
      [v4 maxThreadPositionInGrid];
      v42 = v138;
    }

    else
    {
      v42 = 0;
      v138 = 0;
      v139 = 0;
      v140 = 0;
    }

    v21 = [v41 numberWithUnsignedLongLong:v42];
    v179[4] = v21;
    v178[5] = @"MaxPositionY";
    v43 = MEMORY[0x277CCABB0];
    if (v4)
    {
      [v4 maxThreadPositionInGrid];
      v44 = v136;
    }

    else
    {
      v44 = 0;
      v135 = 0;
      v136 = 0;
      v137 = 0;
    }

    v24 = [v43 numberWithUnsignedLongLong:v44];
    v179[5] = v24;
    v178[6] = @"MaxPositionZ";
    v45 = MEMORY[0x277CCABB0];
    if (v4)
    {
      [v4 maxThreadPositionInGrid];
      v46 = v134;
    }

    else
    {
      v46 = 0;
      v132 = 0;
      v133 = 0;
      v134 = 0;
    }

    v27 = [v45 numberWithUnsignedLongLong:v46];
    v179[6] = v27;
    v28 = MEMORY[0x277CBEAC0];
    v29 = v179;
    v30 = v178;
    goto LABEL_46;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = *(a1 + 32);
    v177[0] = &unk_2860D6698;
    v176[0] = @"Type";
    v176[1] = @"AmplificationID";
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v4, "amplificationID")}];
    v177[1] = v10;
    v176[2] = @"MinPositionX";
    v11 = MEMORY[0x277CCABB0];
    if (v4)
    {
      [v4 minThreadPositionInGrid];
      v12 = v129;
    }

    else
    {
      v12 = 0;
      v129 = 0;
      v130 = 0;
      v131 = 0;
    }

    v15 = [v11 numberWithUnsignedLongLong:v12];
    v177[2] = v15;
    v176[3] = @"MinPositionY";
    v75 = MEMORY[0x277CCABB0];
    if (v4)
    {
      [v4 minThreadPositionInGrid];
      v76 = v127;
    }

    else
    {
      v76 = 0;
      v126 = 0;
      v127 = 0;
      v128 = 0;
    }

    v18 = [v75 numberWithUnsignedLongLong:v76];
    v177[3] = v18;
    v176[4] = @"MinPositionZ";
    v77 = MEMORY[0x277CCABB0];
    if (v4)
    {
      [v4 minThreadPositionInGrid];
      v78 = v125;
    }

    else
    {
      v78 = 0;
      v123 = 0;
      v124 = 0;
      v125 = 0;
    }

    v104 = [v77 numberWithUnsignedLongLong:v78];
    v177[4] = v104;
    v176[5] = @"MaxPositionX";
    v79 = MEMORY[0x277CCABB0];
    if (v4)
    {
      [v4 maxThreadPositionInGrid];
      v80 = v120;
    }

    else
    {
      v80 = 0;
      v120 = 0;
      v121 = 0;
      v122 = 0;
    }

    v103 = [v79 numberWithUnsignedLongLong:v80];
    v177[5] = v103;
    v176[6] = @"MaxPositionY";
    v81 = MEMORY[0x277CCABB0];
    if (v4)
    {
      [v4 maxThreadPositionInGrid];
      v82 = v118;
    }

    else
    {
      v82 = 0;
      v117 = 0;
      v118 = 0;
      v119 = 0;
    }

    v102 = [v81 numberWithUnsignedLongLong:v82];
    v177[6] = v102;
    v176[7] = @"MaxPositionZ";
    v83 = MEMORY[0x277CCABB0];
    if (v4)
    {
      [v4 maxThreadPositionInGrid];
      v84 = v116;
    }

    else
    {
      v84 = 0;
      v114 = 0;
      v115 = 0;
      v116 = 0;
    }

    v85 = [v83 numberWithUnsignedLongLong:v84];
    v177[7] = v85;
    v176[8] = @"ObjectThreadgroupPosX";
    v86 = MEMORY[0x277CCABB0];
    if (v4)
    {
      [v4 objectThreadgroupPositionInGrid];
      v87 = v111;
    }

    else
    {
      v87 = 0;
      v111 = 0;
      v112 = 0;
      v113 = 0;
    }

    v88 = [v86 numberWithUnsignedLongLong:v87];
    v177[8] = v88;
    v176[9] = @"ObjectThreadgroupPosY";
    v89 = MEMORY[0x277CCABB0];
    if (v4)
    {
      [v4 objectThreadgroupPositionInGrid];
      v90 = v109;
    }

    else
    {
      v90 = 0;
      v108 = 0;
      v109 = 0;
      v110 = 0;
    }

    v91 = [v89 numberWithUnsignedLongLong:v90];
    v177[9] = v91;
    v176[10] = @"ObjectThreadgroupPosZ";
    v92 = MEMORY[0x277CCABB0];
    if (v4)
    {
      [v4 objectThreadgroupPositionInGrid];
      v93 = v107;
    }

    else
    {
      v93 = 0;
      v106[1] = 0;
      v106[2] = 0;
      v107 = 0;
    }

    v94 = [v92 numberWithUnsignedLongLong:v93];
    v177[10] = v94;
    v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v177 forKeys:v176 count:11];

    goto LABEL_48;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v32 = *(a1 + 32);
  if (isKindOfClass)
  {
    v175[0] = &unk_2860D6590;
    v174[0] = @"Type";
    v174[1] = @"InstanceID";
    v33 = MEMORY[0x277CCABB0];
    v4 = v32;
    v10 = [v33 numberWithUnsignedInt:{objc_msgSend(v4, "instanceID")}];
    v175[1] = v10;
    v174[2] = @"AmplificationID";
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v4, "amplificationID")}];
    v175[2] = v15;
    v174[3] = @"VertexIDs";
    v18 = [v4 vertexIDs];
    v175[3] = v18;
    v34 = MEMORY[0x277CBEAC0];
    v35 = v175;
    v36 = v174;
LABEL_60:
    v47 = [v34 dictionaryWithObjects:v35 forKeys:v36 count:4];
    goto LABEL_48;
  }

  objc_opt_class();
  v72 = objc_opt_isKindOfClass();
  v73 = *(a1 + 32);
  if (v72)
  {
    v173[0] = &unk_2860D66B0;
    v172[0] = @"Type";
    v172[1] = @"InstanceID";
    v74 = MEMORY[0x277CCABB0];
    v4 = v73;
    v10 = [v74 numberWithUnsignedInt:{objc_msgSend(v4, "instanceID")}];
    v173[1] = v10;
    v172[2] = @"AmplificationID";
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v4, "amplificationID")}];
    v173[2] = v15;
    v172[3] = @"PatchIDs";
    v18 = [v4 patchIDs];
    v173[3] = v18;
    v34 = MEMORY[0x277CBEAC0];
    v35 = v173;
    v36 = v172;
    goto LABEL_60;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v95 = *(a1 + 32);
    v171[0] = &unk_2860D6578;
    v170[0] = @"Type";
    v170[1] = @"MinPositionX";
    v96 = MEMORY[0x277CCABB0];
    v4 = v95;
    v10 = [v96 numberWithUnsignedLongLong:{objc_msgSend(v4, "minPixelPosition")}];
    v171[1] = v10;
    v170[2] = @"MinPositionY";
    v97 = MEMORY[0x277CCABB0];
    [v4 minPixelPosition];
    v15 = [v97 numberWithUnsignedLongLong:v98];
    v171[2] = v15;
    v170[3] = @"MaxPositionX";
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v4, "maxPixelPosition")}];
    v171[3] = v18;
    v170[4] = @"MaxPositionY";
    v99 = MEMORY[0x277CCABB0];
    [v4 maxPixelPosition];
    v21 = [v99 numberWithUnsignedLongLong:v100];
    v171[4] = v21;
    v170[5] = @"MinSampleID";
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v4, "minSampleID")}];
    v171[5] = v24;
    v170[6] = @"MaxSampleID";
    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v4, "maxSampleID")}];
    v171[6] = v27;
    v170[7] = @"RenderTargetArrayIndex";
    v101 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v4, "renderTargetArrayIndex")}];
    v171[7] = v101;
    v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v171 forKeys:v170 count:8];

    goto LABEL_47;
  }

  v47 = 0;
LABEL_49:
  v48 = objc_alloc_init(MEMORY[0x277D0B628]);
  [v48 setRequestID:{objc_msgSend(*(a1 + 32), "requestID")}];
  if (v47)
  {
    v49 = MEMORY[0x277CBEB98];
    v50 = objc_opt_class();
    v51 = objc_opt_class();
    v52 = objc_opt_class();
    v53 = objc_opt_class();
    v54 = [v49 setWithObjects:{v50, v51, v52, v53, objc_opt_class(), 0}];
    v55 = MEMORY[0x277CCAAC8];
    v56 = [*(a1 + 32) programData];
    v106[0] = 0;
    v57 = [v55 unarchivedObjectOfClasses:v54 fromData:v56 error:v106];
    v58 = v106[0];
    v59 = [v57 mutableCopy];

    v60 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(*(a1 + 32), "dispatchUID")}];
    [v59 setObject:v60 forKeyedSubscript:@"FunctionIndex"];

    v61 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(*(a1 + 32), "dispatchUID") >> 32}];
    [v59 setObject:v61 forKeyedSubscript:@"SubCommandIndex"];

    [v59 setObject:v47 forKeyedSubscript:@"ROI"];
    v62 = *(*(a1 + 48) + 8);
    v63 = [v59 copy];
    v105[1] = v58;
    v64 = GTMTLShaderDebugger_generateTrace();
    v65 = v58;

    if (v64)
    {
      v105[0] = v65;
      v66 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v64 requiringSecureCoding:1 error:v105];
      v67 = v105[0];

      [v48 setData:v66];
      v65 = v67;
    }

    else
    {
      [v48 setData:0];
    }

    [v48 setError:v65];
  }

  else
  {
    [v48 setData:0];
    v68 = objc_alloc(MEMORY[0x277CCA9B8]);
    v168 = *MEMORY[0x277CCA450];
    v169 = @"Invalid request";
    v65 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v169 forKeys:&v168 count:1];
    v54 = [v68 initWithDomain:@"GTReplayerRequestDomain" code:300 userInfo:v65];
    [v48 setError:v54];
  }

  v69 = [*(a1 + 32) completionHandler];
  v70 = v69;
  if (v69)
  {
    (*(v69 + 16))(v69, v48);
  }

  [*(a1 + 40) completed];

  v71 = *MEMORY[0x277D85DE8];
}

- (id)profile:(id)profile
{
  profileCopy = profile;
  requestID = [profileCopy requestID];
  v6 = [[GTReplayerOperationBatch alloc] initWithRequestID:requestID];
  clientContext = self->_clientContext;
  v53 = v6;
  defaultDevice = [*(clientContext->var1 + 1) defaultDevice];
  v8 = DEVICEOBJECT(defaultDevice);
  acceleratorPort = [v8 acceleratorPort];

  v77[0] = 0x7FFFFFFF;
  v71 = 0;
  v72 = &v71;
  v73 = 0x3032000000;
  v74 = __Block_byref_object_copy__827;
  v75 = __Block_byref_object_dispose__828;
  v76 = GetMetalPluginName(acceleratorPort, v77);
  v50 = IsAGXMetalPlugin(v72[5], v10);
  v49 = requestID;
  streamHandler = [profileCopy streamHandler];
  v11 = MEMORY[0x277CBEB98];
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = [v11 setWithObjects:{v12, v13, v14, v15, v16, v17, v18, v19, objc_opt_class(), 0}];
  v21 = MEMORY[0x277CCAAC8];
  profileData = [profileCopy profileData];
  v70 = 0;
  v23 = [v21 unarchivedObjectOfClasses:v20 fromData:profileData error:&v70];
  v24 = v70;

  [v23 setObject:v72[5] forKeyedSubscript:@"MetalPluginName"];
  if (v77[0] != 0x7FFFFFFF)
  {
    v25 = [MEMORY[0x277CCABB0] numberWithInt:?];
    [v23 setObject:v25 forKeyedSubscript:@"gpuTarget"];
  }

  defaultDevice2 = [*(clientContext->var1 + 1) defaultDevice];
  GTDeviceCapabilities_fromDevice();

  isAGX = GTDeviceCapabilities_isAGX();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v28 = profileCopy;
    if (isAGX)
    {
      if (v50 && [clientContext->var7.var2 operationCount])
      {
        GTMTLReplayClient_addBatchFilteringRequest(&unk_2860D5FE8);
      }

      if ((GTDeviceCapabilities_isAGX1() & 1) != 0 || GTDeviceCapabilities_isAGX2())
      {
        if ([(GTReplayerOperation *)v28 shaderProfiling]&& [(GTReplayerOperation *)v28 saveProfilerRaw])
        {
          v29 = [GTReplayerOperation alloc];
          v30 = v68;
          v68[0] = MEMORY[0x277D85DD0];
          v68[1] = 3221225472;
          v68[2] = __30__GTMTLReplayService_profile___block_invoke_2;
          v68[3] = &unk_279657830;
          v68[7] = clientContext;
          v68[4] = v23;
          v68[6] = &v71;
          v68[5] = streamHandler;
          v31 = [(GTReplayerOperation *)v29 initWithBatch:v53 withBlock:v68];
LABEL_22:
          v39 = v31;
          v40 = (v30 + 4);
          v41 = (v30 + 5);
LABEL_23:

LABEL_24:
          [(GTReplayerOperationBatch *)v53 addOperation:v39];

          goto LABEL_25;
        }

        if (([(GTReplayerOperation *)v28 shaderProfiling]& 1) != 0 || GTDeviceCapabilities_isAGX1())
        {
          v38 = [GTReplayerOperation alloc];
          v30 = v67;
          v67[0] = MEMORY[0x277D85DD0];
          v67[1] = 3221225472;
          v67[2] = __30__GTMTLReplayService_profile___block_invoke_5;
          v67[3] = &unk_2796577E0;
          v67[6] = clientContext;
          v67[4] = v23;
          v67[5] = streamHandler;
          v31 = [(GTReplayerOperation *)v38 initWithBatch:v53 withBlock:v67];
          goto LABEL_22;
        }

        v48 = [GTReplayerOperation alloc];
        v44 = v66;
        v66[0] = MEMORY[0x277D85DD0];
        v66[1] = 3221225472;
        v66[2] = __30__GTMTLReplayService_profile___block_invoke_7;
        v66[3] = &unk_279657858;
        v66[6] = v49;
        v66[5] = streamHandler;
        v66[7] = clientContext;
        v66[4] = v23;
        v45 = [(GTReplayerOperation *)v48 initWithBatch:v53 withBlock:v66];
      }

      else
      {
        if (!GTDeviceCapabilities_isAGX3())
        {
          v39 = 0;
          goto LABEL_24;
        }

        v43 = [GTReplayerOperation alloc];
        v44 = v65;
        v65[0] = MEMORY[0x277D85DD0];
        v65[1] = 3221225472;
        v65[2] = __30__GTMTLReplayService_profile___block_invoke_9;
        v65[3] = &unk_279657880;
        v65[7] = v49;
        v65[5] = streamHandler;
        v65[8] = clientContext;
        v65[4] = v23;
        v65[6] = &v71;
        v45 = [(GTReplayerOperation *)v43 initWithBatch:v53 withBlock:v65];
      }

      v39 = v45;
      v40 = (v44 + 5);
      v41 = (v44 + 4);
      goto LABEL_23;
    }

    v34 = [GTReplayerOperation alloc];
    v30 = v69;
    v69[0] = MEMORY[0x277D85DD0];
    v69[1] = 3221225472;
    v69[2] = __30__GTMTLReplayService_profile___block_invoke;
    v69[3] = &unk_2796577E0;
    v69[6] = clientContext;
    v69[4] = v23;
    v69[5] = streamHandler;
    v31 = [(GTReplayerOperation *)v34 initWithBatch:v53 withBlock:v69];
    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v32 = [GTReplayerOperation alloc];
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __30__GTMTLReplayService_profile___block_invoke_11;
    v60[3] = &unk_2796578A8;
    v64 = isAGX;
    v63 = clientContext;
    v61 = v23;
    v62 = streamHandler;
    v33 = [(GTReplayerOperation *)v32 initWithBatch:v53 withBlock:v60];
    [(GTReplayerOperationBatch *)v53 addOperation:v33];

    v28 = v61;
LABEL_25:

    goto LABEL_26;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([profileCopy priority])
    {
      v35 = [GTReplayerOperation alloc];
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = __30__GTMTLReplayService_profile___block_invoke_14;
      v54[3] = &unk_2796578F8;
      v55 = v23;
      v56 = streamHandler;
      v28 = [(GTReplayerOperation *)v35 initWithBatch:v53 withBlock:v54];
      v36 = &v55;
      v37 = &v56;
    }

    else
    {
      v46 = [GTReplayerOperation alloc];
      v57[0] = MEMORY[0x277D85DD0];
      v57[1] = 3221225472;
      v57[2] = __30__GTMTLReplayService_profile___block_invoke_12;
      v57[3] = &unk_2796577E0;
      v59[1] = clientContext;
      v58 = v23;
      v59[0] = streamHandler;
      v28 = [(GTReplayerOperation *)v46 initWithBatch:v53 withBlock:v57];
      Operation = GTCoreOperationControl_getOperation(v49);
      v36 = &v58;
      v37 = v59;
      *(Operation + 8) = BatchFilteredPause;
      *(Operation + 16) = BatchFilteredResume;
    }

    [(GTReplayerOperationBatch *)v53 addOperation:v28];
    if ([profileCopy priority] == 1)
    {
      [(GTReplayerOperationBatch *)v53 flush:clientContext->var7.var1];
    }

    goto LABEL_25;
  }

LABEL_26:
  [(GTReplayerOperationBatch *)v53 flush:clientContext->var7.var2];

  _Block_object_dispose(&v71, 8);
  return 0;
}

void __30__GTMTLReplayService_profile___block_invoke(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 24) & 1) == 0)
  {
    v3 = GTMTLReplayClient_queryShaderInfo(*(*(a1 + 48) + 8), (*(a1 + 48) + 280), *(a1 + 32));
    v4 = [v3 mutableCopy];
    [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"isLegacy"];
    v5 = objc_opt_new();
    v6 = MEMORY[0x277CCAAB0];
    v7 = [v4 copy];
    v10 = 0;
    v8 = [v6 archivedDataWithRootObject:v7 requiringSecureCoding:1 error:&v10];
    v9 = v10;
    [v5 setData:v8];

    [v5 setError:v9];
    (*(*(a1 + 40) + 16))();
  }
}

void __30__GTMTLReplayService_profile___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v43[1] = *MEMORY[0x277D85DE8];
  if ((*(a2 + 24) & 1) == 0)
  {
    v3 = GTMTLReplayHost_generateDerivedDataPayload(**(*(a1 + 56) + 8), 1);
    [*(a1 + 32) addEntriesFromDictionary:v3];
    v4 = **(*(a1 + 56) + 8);
    v5 = GTShaderProfilerStreamDataFromReplayDataSource();
    [v5 setMetalPluginName:*(*(*(a1 + 48) + 8) + 40)];
    v6 = [*(*(*(a1 + 56) + 8) + 8) defaultDevice];
    v7 = [v6 name];
    [v5 setMetalDeviceName:v7];

    v8 = [*(a1 + 32) objectForKeyedSubscript:@"SupportsFileFormatV2"];
    [v5 setSupportsFileFormatV2:{objc_msgSend(v8, "BOOLValue")}];

    v9 = [*(a1 + 32) objectForKeyedSubscript:@"GPUState"];

    if (v9)
    {
      v10 = [*(a1 + 32) objectForKeyedSubscript:@"GPUState"];
      [v5 setProfiledPerformanceState:{objc_msgSend(v10, "intValue")}];
    }

    else
    {
      [v5 setProfiledPerformanceState:2];
    }

    v11 = [*(a1 + 32) objectForKeyedSubscript:@"useOverlap"];

    if (v11)
    {
      v12 = [*(a1 + 32) objectForKeyedSubscript:@"useOverlap"];
      v13 = [v12 BOOLValue];

      v14 = v13 ^ 1u;
    }

    else
    {
      v14 = 0;
    }

    [v5 setProfiledExecutionMode:v14];
    [v5 setProfiledProfilerMode:0];
    v15 = dispatch_semaphore_create(0);
    if (!v5)
    {
      goto LABEL_15;
    }

    v33 = v3;
    v16 = *(a1 + 56);
    v17 = *(v16 + 8);
    v18 = *(a1 + 32);
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __30__GTMTLReplayService_profile___block_invoke_3;
    v39[3] = &unk_279657808;
    v19 = v5;
    v40 = v19;
    v20 = v15;
    v41 = v20;
    GTMTLReplayClient_collectGPUShaderTimelineData(v17, (v16 + 280), v18, v39);
    dispatch_semaphore_wait(v20, 0xFFFFFFFFFFFFFFFFLL);
    v21 = *(a1 + 56);
    v22 = *(v21 + 8);
    v23 = *(a1 + 32);
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __30__GTMTLReplayService_profile___block_invoke_4;
    v36[3] = &unk_279657808;
    v24 = v19;
    v37 = v24;
    v25 = v20;
    v38 = v25;
    GTMTLReplayClient_streamShaderProfilingData(v22, (v21 + 280), v23, v36);
    dispatch_semaphore_wait(v25, 0xFFFFFFFFFFFFFFFFLL);
    [v24 addPipelinePerformanceStatisticsData:*(*(*(a1 + 56) + 8) + 64)];
    v35 = 0;
    v26 = [v24 encode:0 error:&v35];
    v27 = v35;
    if (v27)
    {
      v28 = v27;
      v29 = objc_opt_new();
      [v29 setError:v28];
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      if (![v24 supportsFileFormatV2])
      {
        v28 = 0;
        v3 = v33;
        goto LABEL_14;
      }

      v29 = objc_opt_new();
      v42 = @"Profiler Raw URL";
      v43[0] = v26;
      v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:&v42 count:1];
      v34 = 0;
      v31 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v30 requiringSecureCoding:1 error:&v34];
      v28 = v34;
      [v29 setData:v31];

      [v29 setError:v28];
      (*(*(a1 + 40) + 16))();
    }

    v3 = v33;

LABEL_14:
LABEL_15:
  }

  v32 = *MEMORY[0x277D85DE8];
}

void __30__GTMTLReplayService_profile___block_invoke_5(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 24) & 1) == 0)
  {
    v3 = GTMTLReplayClient_embeddedQueryShaderInfo(*(*(a1 + 48) + 8), (*(a1 + 48) + 280), *(a1 + 32));
    v4 = objc_opt_new();
    v16 = 0;
    v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v16];
    v6 = v16;
    [v4 setData:v5];

    [v4 setError:v6];
    (*(*(a1 + 40) + 16))();

    v7 = dispatch_semaphore_create(0);
    v8 = [v3 objectForKeyedSubscript:@"Streaming Shader Profiling Data"];

    if (v8)
    {
      v9 = *(a1 + 48);
      v10 = *(v9 + 8);
      v11 = *(a1 + 32);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __30__GTMTLReplayService_profile___block_invoke_6;
      v13[3] = &unk_2796578D0;
      v12 = v7;
      v14 = v12;
      v15 = *(a1 + 40);
      GTMTLReplayClient_streamShaderProfilingData(v10, (v9 + 280), v11, v13);
      dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
    }
  }
}

void __30__GTMTLReplayService_profile___block_invoke_7(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 24) & 1) == 0)
  {
    v3 = objc_opt_new();
    [v3 setRequestID:*(a1 + 48)];
    v14 = 0;
    v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:&unk_2860D5F98 requiringSecureCoding:1 error:&v14];
    v5 = v14;
    [v3 setData:v4];

    [v3 setError:v5];
    (*(*(a1 + 40) + 16))();

    v6 = dispatch_semaphore_create(0);
    v7 = *(a1 + 56);
    v8 = *(v7 + 8);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __30__GTMTLReplayService_profile___block_invoke_8;
    v11[3] = &unk_2796578D0;
    v12 = v6;
    v9 = *(a1 + 32);
    v13 = *(a1 + 40);
    v10 = v6;
    GTMTLReplayClient_collectGPUShaderTimelineData(v8, (v7 + 280), v9, v11);
    dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  }
}

void __30__GTMTLReplayService_profile___block_invoke_9(uint64_t a1, uint64_t a2)
{
  v55[1] = *MEMORY[0x277D85DE8];
  if ((*(a2 + 24) & 1) == 0)
  {
    v34 = dispatch_queue_create("gputools.apsreply", 0);
    v3 = objc_opt_new();
    [v3 setRequestID:*(a1 + 56)];
    v51 = 0;
    v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:&unk_2860D5FC0 requiringSecureCoding:1 error:&v51];
    v5 = v51;
    [v3 setData:v4];

    [v3 setError:v5];
    (*(*(a1 + 40) + 16))();

    v6 = **(*(a1 + 64) + 8);
    v7 = GTShaderProfilerStreamDataFromReplayDataSource();
    v8 = dispatch_semaphore_create(0);
    v49[0] = 0;
    v49[1] = v49;
    v49[2] = 0x2020000000;
    v50 = 0;
    v47[0] = 0;
    v47[1] = v47;
    v47[2] = 0x2020000000;
    v48 = 0;
    v45[0] = 0;
    v45[1] = v45;
    v45[2] = 0x2020000000;
    v46 = 0;
    v9 = [*(a1 + 32) objectForKeyedSubscript:@"SupportsFileFormatV2"];
    [v7 setSupportsFileFormatV2:{objc_msgSend(v9, "BOOLValue")}];

    v10 = [*(a1 + 32) objectForKeyedSubscript:@"GPUState"];

    if (v10)
    {
      v11 = [*(a1 + 32) objectForKeyedSubscript:{@"GPUState", v34}];
      [v7 setProfiledPerformanceState:{objc_msgSend(v11, "intValue")}];
    }

    else
    {
      [v7 setProfiledPerformanceState:{2, v34}];
    }

    v12 = [*(a1 + 32) objectForKeyedSubscript:@"useOverlap"];

    if (v12)
    {
      v13 = [*(a1 + 32) objectForKeyedSubscript:@"useOverlap"];
      v14 = [v13 BOOLValue];

      [v7 setProfiledExecutionMode:v14 ^ 1u];
    }

    else
    {
      [v7 setProfiledExecutionMode:0];
    }

    v15 = *(a1 + 64);
    v16 = *(v15 + 8);
    v17 = *(a1 + 32);
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __30__GTMTLReplayService_profile___block_invoke_10;
    v39[3] = &unk_279658440;
    v18 = v8;
    v40 = v18;
    v42 = v49;
    v43 = v47;
    v44 = v45;
    v19 = v7;
    v41 = v19;
    GTMTLReplayClient_collectAPSData(v16, (v15 + 280), v17, v39);
    dispatch_semaphore_wait(v18, 0xFFFFFFFFFFFFFFFFLL);
    [v19 setMetalPluginName:*(*(*(a1 + 48) + 8) + 40)];
    v20 = [*(*(*(a1 + 64) + 8) + 8) defaultDevice];
    v21 = [v20 name];
    [v19 setMetalDeviceName:v21];

    [v19 addPipelinePerformanceStatisticsData:*(*(*(a1 + 64) + 8) + 64)];
    v38 = 0;
    v22 = [v19 encode:0 error:&v38];
    v23 = v38;
    if (v23)
    {
      v24 = v23;
      v25 = objc_opt_new();
      [v25 setError:v24];
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      if ([v19 supportsFileFormatV2])
      {
        v25 = objc_opt_new();
        v54 = @"Profiler Raw URL";
        v55[0] = v22;
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:&v54 count:1];
        v37 = 0;
        v27 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v26 requiringSecureCoding:1 error:&v37];
        v24 = v37;
        [v25 setData:v27];

        [v25 setError:v24];
        (*(*(a1 + 40) + 16))();
      }

      else
      {
        v25 = objc_opt_new();
        v28 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v22 options:8 error:0];
        v26 = v28;
        if (v28)
        {
          v52 = @"Profiler Raw";
          v53 = v28;
          v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
        }

        else
        {
          v29 = MEMORY[0x277CBEC10];
        }

        v36 = 0;
        v30 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v29 requiringSecureCoding:1 error:&v36];
        v24 = v36;
        [v25 setData:v30];

        [v25 setError:v24];
        (*(*(a1 + 40) + 16))();
        v31 = *(a1 + 40);
        v32 = objc_opt_new();
        (*(v31 + 16))(v31, v32);
      }
    }

    _Block_object_dispose(v45, 8);
    _Block_object_dispose(v47, 8);
    _Block_object_dispose(v49, 8);
  }

  v33 = *MEMORY[0x277D85DE8];
}

void __30__GTMTLReplayService_profile___block_invoke_11(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 24) & 1) == 0)
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 48);
    v5 = *(v4 + 8);
    v6 = *(a1 + 32);
    v7 = (v4 + 280);
    if (v3 == 1)
    {
      GTMTLReplayClient_embeddedDerivedCounterData(v5, v7, v6);
    }

    v8 = GTMTLReplayClient_derivedCounterData(v5, v7, v6);
    v9 = objc_opt_new();
    v14 = 0;
    v10 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v8 requiringSecureCoding:1 error:&v14];
    v11 = v14;
    [v9 setData:v10];

    [v9 setError:v11];
    (*(*(a1 + 40) + 16))();
    v12 = *(a1 + 40);
    v13 = objc_opt_new();
    (*(v12 + 16))(v12, v13);
  }
}

void __30__GTMTLReplayService_profile___block_invoke_12(uint64_t a1, uint64_t a2)
{
  v21[1] = *MEMORY[0x277D85DE8];
  if ((*(a2 + 24) & 1) == 0)
  {
    v3 = dispatch_semaphore_create(0);
    v4 = *(a1 + 48);
    v5 = *(v4 + 8);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __30__GTMTLReplayService_profile___block_invoke_13;
    v17[3] = &unk_2796578D0;
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v18 = v3;
    v19 = v7;
    v8 = v3;
    v9 = GTMTLReplayClient_streamBatchFilteredData(v5, (v4 + 280), v6, v17);
    v20 = @"Batch Filtering Started";
    v10 = [MEMORY[0x277CCABB0] numberWithBool:v9];
    v21[0] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];

    v12 = objc_opt_new();
    v16 = 0;
    v13 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v11 requiringSecureCoding:1 error:&v16];
    v14 = v16;
    [v12 setData:v13];

    [v12 setError:v14];
    (*(*(a1 + 40) + 16))();

    dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __30__GTMTLReplayService_profile___block_invoke_14(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 24) & 1) == 0)
  {
    GTMTLReplayClient_addBatchFilteringRequest(*(a1 + 32));
    v4 = *(a1 + 40);
    v5 = objc_opt_new();
    (*(v4 + 16))(v4, v5);
  }
}

void __30__GTMTLReplayService_profile___block_invoke_13(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v5 = v4;
  if (v3)
  {
    v8 = 0;
    v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v8];
    v7 = v8;
    [v5 setData:v6];
  }

  else
  {
    [v4 setData:0];
    v7 = 0;
  }

  [v5 setError:v7];
  (*(*(a1 + 40) + 16))();
  if (!v3)
  {
    dispatch_semaphore_signal(*(a1 + 32));
  }
}

void __30__GTMTLReplayService_profile___block_invoke_10(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = v3;
  if (!v3)
  {
    dispatch_semaphore_signal(*(a1 + 32));
    goto LABEL_12;
  }

  v4 = [v3 objectForKeyedSubscript:@"Streaming APS Profiling"];
  v5 = v4;
  if (!v4)
  {
    v6 = [v11 objectForKeyedSubscript:@"Remove APS Data"];

    if (v6)
    {
      [*(a1 + 40) removeAPSData];
    }

    else
    {
      v8 = [v11 objectForKeyedSubscript:@"Remove APS Timeline"];

      if (v8)
      {
        [*(a1 + 40) removeAPSTimelineData];
        v7 = *(a1 + 56);
        goto LABEL_10;
      }

      v9 = [v11 objectForKeyedSubscript:@"Streaming APS Counters"];

      if (!v9)
      {
        v10 = [v11 objectForKeyedSubscript:@"Remove APS Counters"];

        if (!v10)
        {
          if (*(*(*(a1 + 64) + 8) + 24) == 1)
          {
            [*(a1 + 40) addAPSData:v11];
          }

          else if (*(*(*(a1 + 56) + 8) + 24) == 1)
          {
            [*(a1 + 40) addAPSTimelineData:v11];
          }

          else if (*(*(*(a1 + 48) + 8) + 24) == 1)
          {
            [*(a1 + 40) addAPSCounterData:v11];
          }

          goto LABEL_11;
        }

        [*(a1 + 40) removeAPSCounterData];
        v7 = *(a1 + 48);
        goto LABEL_10;
      }

      *(*(*(a1 + 48) + 8) + 24) = 1;
      *(*(*(a1 + 56) + 8) + 24) = 0;
    }

    v7 = *(a1 + 64);
LABEL_10:
    *(*(v7 + 8) + 24) = 0;
    goto LABEL_11;
  }

  *(*(*(a1 + 48) + 8) + 24) = 0;
  *(*(*(a1 + 56) + 8) + 24) = [v4 isEqualToString:@"Timeline"];
  *(*(*(a1 + 64) + 8) + 24) = [v5 isEqualToString:@"Profiling"];
LABEL_11:

LABEL_12:
}

void __30__GTMTLReplayService_profile___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  if (v3)
  {
    v7 = 0;
    v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v7];
    v6 = v7;
    [v4 setData:v5];

    [v4 setError:v6];
  }

  else
  {
    dispatch_semaphore_signal(*(a1 + 32));
    v6 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

void __30__GTMTLReplayService_profile___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  if (v3)
  {
    v7 = 0;
    v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v7];
    v6 = v7;
    [v4 setData:v5];

    [v4 setError:v6];
  }

  else
  {
    dispatch_semaphore_signal(*(a1 + 32));
    v6 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

intptr_t __30__GTMTLReplayService_profile___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return [*(a1 + 32) addGPUTimelineData:a2];
  }

  else
  {
    return dispatch_semaphore_signal(*(a1 + 40));
  }
}

intptr_t __30__GTMTLReplayService_profile___block_invoke_4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return [*(a1 + 32) addShaderProfilerData:a2];
  }

  else
  {
    return dispatch_semaphore_signal(*(a1 + 40));
  }
}

- (BOOL)resume:(unint64_t)resume
{
  Operation = GTCoreOperationControl_getOperation(resume);
  if (Operation)
  {
    v4 = *(Operation + 16);
    if (v4)
    {
      v4();
      LOBYTE(Operation) = 1;
    }

    else
    {
      LOBYTE(Operation) = 0;
    }
  }

  return Operation;
}

- (BOOL)pause:(unint64_t)pause
{
  Operation = GTCoreOperationControl_getOperation(pause);
  if (Operation)
  {
    v4 = *(Operation + 8);
    if (v4)
    {
      v4();
      LOBYTE(Operation) = 1;
    }

    else
    {
      LOBYTE(Operation) = 0;
    }
  }

  return Operation;
}

- (BOOL)cancel:(unint64_t)cancel
{
  Operation = GTCoreOperationControl_getOperation(cancel);
  if (Operation)
  {
    *(Operation + 24) = 1;
  }

  return Operation != 0;
}

- (id)decode:(id)decode
{
  v92[1] = *MEMORY[0x277D85DE8];
  decodeCopy = decode;
  v5 = [objc_alloc(MEMORY[0x277D0B620]) initWithService:self andTokenId:{objc_msgSend(decodeCopy, "requestID")}];
  v6 = v5;
  var1 = self->_clientContext->var1;
  if (var1)
  {
    clientContext = self->_clientContext;
    v64 = v5;
    v8 = *var1;
    v9 = objc_opt_new();
    v69 = objc_opt_new();
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v65 = decodeCopy;
    requests = [decodeCopy requests];
    v11 = [requests countByEnumeratingWithState:&v78 objects:v90 count:16];
    if (!v11)
    {
      goto LABEL_29;
    }

    v12 = v11;
    v13 = 0x277CBE000uLL;
    v71 = requests;
    v72 = *v79;
    v14 = *MEMORY[0x277CCA450];
    v67 = *MEMORY[0x277CCA450];
    v68 = *MEMORY[0x277CCA050];
    v66 = v9;
    while (1)
    {
      v15 = 0;
      v70 = v12;
      do
      {
        if (*v79 != v72)
        {
          objc_enumerationMutation(requests);
        }

        v16 = *(*(&v78 + 1) + 8 * v15);
        v17 = objc_alloc_init(*(v13 + 2872));
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = v16;
          streamRef = [v18 streamRef];
          dispatchUID = [v18 dispatchUID];
          dispatchUID2 = [v18 dispatchUID];
          Object = GTMTLSMContext_getObject(**(v8 + 40), streamRef, *(v8 + 88) + dispatchUID);
          if (Object && *Object == 57)
          {
            find_entry(*(v8 + 8), &streamRef, 8uLL, 0);
            v88[0] = @"requestID";
            v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v18, "requestID")}];
            v89[0] = v22;
            v88[1] = @"functionIndex";
            v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:dispatchUID2 & 0xFFFFFFFF00000000 | dispatchUID];
            v89[1] = v23;
            v88[2] = @"streamref";
            v12 = v70;
            v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:streamRef];
            v88[3] = @"type";
            v89[2] = v24;
            v89[3] = &unk_2860D6650;
            v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v89 forKeys:v88 count:4];
            [v9 addObject:v25];

            requests = v71;
LABEL_26:
            v13 = 0x277CBE000;
          }
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v18 = objc_opt_new();
              [v18 setRequestID:{objc_msgSend(v16, "requestID", clientContext)}];
              v42 = objc_alloc(MEMORY[0x277CCA9B8]);
              v82 = v67;
              v83 = @"unknown request";
              v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
              v44 = [v42 initWithDomain:v68 code:1 userInfo:v43];
              [v18 setError:v44];

              [v69 addObject:v18];
              goto LABEL_27;
            }

            v18 = v16;
            requestID = [v18 requestID];
            dispatchUID3 = [v18 dispatchUID];
            dispatchUID4 = [v18 dispatchUID];
            streamRef = [v18 streamRef];
            v39 = GTMTLSMContext_getObject(**(v8 + 40), streamRef, *(v8 + 88) + dispatchUID3);
            if (v39 && *v39 == 16)
            {
              entry = find_entry(*(v8 + 8), &streamRef, 8uLL, 0);
              if (*entry)
              {
                v41 = *(*entry + 32);
              }

              else
              {
                v41 = 0;
              }

              v84[0] = @"requestID";
              v45 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{requestID, clientContext}];
              v85[0] = v45;
              v84[1] = @"functionIndex";
              v46 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:dispatchUID4 & 0xFFFFFFFF00000000 | dispatchUID3];
              v85[1] = v46;
              v84[2] = @"streamref";
              v47 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:streamRef];
              v85[2] = v47;
              v84[3] = @"object";
              if (v41)
              {
                v48 = atomic_load((v41 + 56));
                v49 = v41 + (~(v48 >> 2) & 8);
              }

              else
              {
                v49 = 8;
              }

              v50 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*v49];
              v84[4] = @"type";
              v85[3] = v50;
              v85[4] = &unk_2860D6668;
              v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v85 forKeys:v84 count:5];

              [v66 addObject:v51];
              v9 = v66;
              requests = v71;
            }

            goto LABEL_26;
          }

          v18 = v16;
          dispatchUID5 = [v18 dispatchUID];
          dispatchUID6 = [v18 dispatchUID];
          v28 = [v18 type] - 1;
          if (v28 <= 7u && ((0xC7u >> v28) & 1) != 0)
          {
            v29 = dispatchUID6 & 0xFFFFFFFF00000000;
            v30 = qword_24DA90E48[v28];
            v31 = v30 + [v18 index];
            v86[0] = @"requestID";
            v32 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v18, "requestID")}];
            v87[0] = v32;
            v86[1] = @"functionIndex";
            v33 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v29 | dispatchUID5];
            v87[1] = v33;
            v86[2] = @"object";
            v12 = v70;
            v34 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v31];
            v86[3] = @"type";
            v87[2] = v34;
            v87[3] = &unk_2860D6578;
            v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v87 forKeys:v86 count:4];
            [v9 addObject:v35];

            requests = v71;
            v13 = 0x277CBE000;
          }
        }

LABEL_27:

        ++v15;
      }

      while (v12 != v15);
      v12 = [requests countByEnumeratingWithState:&v78 objects:v90 count:16];
      if (!v12)
      {
LABEL_29:

        decodeCopy = v65;
        completionHandler = [v65 completionHandler];
        v73[0] = MEMORY[0x277D85DD0];
        v73[1] = 3221225472;
        v73[2] = __29__GTMTLReplayService_decode___block_invoke;
        v73[3] = &unk_2796577B8;
        v74 = v69;
        v76 = completionHandler;
        v6 = v64;
        v53 = v64;
        v75 = v53;
        v54 = completionHandler;
        v55 = v69;
        FetchResourceObjectBatch(clientContext, v9, v73);
        v56 = v53;

        goto LABEL_31;
      }
    }
  }

  v9 = objc_opt_new();
  [v9 setRequestID:{objc_msgSend(decodeCopy, "requestID")}];
  v57 = objc_alloc(MEMORY[0x277CCA9B8]);
  v91 = *MEMORY[0x277CCA450];
  v92[0] = @"Decode request happened before replayer data source is loaded";
  v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v92 forKeys:&v91 count:1];
  v59 = [v57 initWithDomain:@"com.apple.gputools.MTLReplayer" code:104 userInfo:v58];
  [v9 setError:v59];

  completionHandler2 = [decodeCopy completionHandler];
  (completionHandler2)[2](completionHandler2, v9);

  [v6 completed];
  v56 = 0;
LABEL_31:

  v61 = *MEMORY[0x277D85DE8];

  return v56;
}

void __29__GTMTLReplayService_decode___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v69 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v53 = a3;
  v5 = MEMORY[0x277CCAAC8];
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v6 setWithObjects:{v7, v8, v9, objc_opt_class(), 0}];
  v67 = 0;
  v54 = v4;
  v11 = [v5 unarchivedObjectOfClasses:v10 fromData:v4 error:&v67];
  v12 = v67;

  v13 = MEMORY[0x277CCAAC8];
  v14 = MEMORY[0x277CBEB98];
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = [v14 setWithObjects:{v15, v16, v17, v18, objc_opt_class(), 0}];
  v51 = v11;
  v20 = [v11 objectForKeyedSubscript:@"object"];
  v66 = v12;
  v21 = [v13 unarchivedObjectOfClasses:v19 fromData:v20 error:&v66];
  v50 = v66;

  v56 = [v21 objectForKeyedSubscript:@"object"];
  v55 = [v21 objectForKeyedSubscript:@"requestID"];
  v22 = [v21 objectForKeyedSubscript:@"functionIndex"];
  v23 = [v22 bytes];
  v24 = [v21 objectForKeyedSubscript:@"stream"];
  v25 = [v24 count];

  v65 = 0;
  v26 = 1280 * v25;
  v27 = GTCoreAlloc(1280 * v25);
  bzero(v27, 1280 * v25);
  concat = MEMORY[0x277D85CC8];
  v29 = MEMORY[0x277D85CC8];
  v49 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v30 = [v21 objectForKeyedSubscript:@"stream"];
  v31 = [v30 countByEnumeratingWithState:&v61 objects:v68 count:16];
  if (v31)
  {
    v32 = v31;
    v46 = v26;
    v47 = v22;
    v48 = v21;
    v33 = *v62;
    do
    {
      v34 = 0;
      v35 = concat;
      do
      {
        if (*v62 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v36 = *(*(&v61 + 1) + 8 * v34);
        v59[0] = GTMTLTextureDescriptorDefaults;
        v59[1] = unk_24DA92D40;
        v59[2] = xmmword_24DA92D50;
        v60 = 512;
        v37 = *v23++;
        v38 = NewResourceData(v36, v56, v55, 0, v59, v27, &v65, v37, v35);
        concat = dispatch_data_create_concat(v35, v38);

        ++v34;
        v35 = concat;
      }

      while (v32 != v34);
      v32 = [v30 countByEnumeratingWithState:&v61 objects:v68 count:16];
    }

    while (v32);
    v39 = 80 * v65;
    v22 = v47;
    v21 = v48;
    v26 = v46;
  }

  else
  {
    v39 = 0;
  }

  destructor[0] = MEMORY[0x277D85DD0];
  destructor[1] = 3221225472;
  destructor[2] = __29__GTMTLReplayService_decode___block_invoke_2;
  destructor[3] = &__block_descriptor_48_e5_v8__0l;
  destructor[4] = v27;
  destructor[5] = v26;
  v40 = dispatch_data_create(v27, v39, 0, destructor);
  [v49 setObject:v40 forKey:@"info"];
  [v49 setObject:concat forKey:@"data"];
  v41 = [*(a1 + 32) copy];
  [v49 setObject:v41 forKey:@"unknown"];

  v42 = objc_opt_new();
  v57 = 0;
  v43 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v49 requiringSecureCoding:1 error:&v57];
  v44 = v57;
  [v42 setData:v43];

  [v42 setError:v44];
  (*(*(a1 + 48) + 16))();
  [*(a1 + 40) completed];

  v45 = *MEMORY[0x277D85DE8];
}

uint64_t __29__GTMTLReplayService_decode___block_invoke_2(uint64_t a1)
{
  result = MEMORY[0x253034350](*MEMORY[0x277D85F48], *(a1 + 32), *(a1 + 40));
  *(a1 + 32) = 0;
  return result;
}

- (id)update:(id)update
{
  v117[1] = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v78 = [objc_alloc(MEMORY[0x277D0B620]) initWithService:self andTokenId:{objc_msgSend(updateCopy, "requestID")}];
  val = self;
  clientContext = self->_clientContext;
  var1 = clientContext->var1;
  if (var1)
  {
    v81 = *var1;
  }

  else
  {
    v81 = 0;
  }

  v77 = objc_opt_new();
  v83 = -[GTReplayerOperationBatch initWithRequestID:]([GTReplayerOperationBatch alloc], "initWithRequestID:", [updateCopy requestID]);
  v84 = objc_opt_new();
  v6 = objc_alloc(MEMORY[0x277CBEB18]);
  requests = [updateCopy requests];
  v8 = [v6 initWithCapacity:{objc_msgSend(requests, "count")}];

  requests2 = [updateCopy requests];
  v10 = [requests2 count];

  if (v10)
  {
    v11 = 0;
    do
    {
      v12 = objc_opt_new();
      [v8 setObject:v12 atIndexedSubscript:v11];

      requests3 = [updateCopy requests];
      ++v11;
      v14 = [requests3 count];
    }

    while (v14 > v11);
  }

  requests4 = [updateCopy requests];
  v16 = [requests4 count];

  if (v16)
  {
    v17 = 0;
    v79 = *MEMORY[0x277CCA050];
    v82 = *MEMORY[0x277CCA450];
    while (1)
    {
      requests5 = [updateCopy requests];
      v19 = [requests5 objectAtIndexedSubscript:v17];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v31 = v19;
          data = [v31 data];
          uuid = [v31 uuid];
          [v84 setObject:data forKeyedSubscript:uuid];

          if ([v84 count] == 1)
          {
            v34 = [GTReplayerOperation alloc];
            v102[0] = MEMORY[0x277D85DD0];
            v102[1] = 3221225472;
            v102[2] = __29__GTMTLReplayService_update___block_invoke;
            v102[3] = &unk_279657718;
            v106 = v81;
            v103 = v84;
            v107 = clientContext;
            v104 = v31;
            v105 = v8;
            v108 = v17;
            v35 = [(GTReplayerOperation *)v34 initWithBatch:v83 withBlock:v102];
            [(GTReplayerOperationBatch *)v83 addOperation:v35];
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (v81)
            {
              objc_initWeak(&location, val);
              v36 = [GTReplayerOperation alloc];
              v96[0] = MEMORY[0x277D85DD0];
              v96[1] = 3221225472;
              v96[2] = __29__GTMTLReplayService_update___block_invoke_2;
              v96[3] = &unk_279657740;
              objc_copyWeak(v99, &location);
              v97 = v19;
              v99[1] = v81;
              v99[2] = clientContext;
              v98 = v8;
              v100 = v17;
              v37 = [(GTReplayerOperation *)v36 initWithBatch:v83 withBlock:v96];
              [(GTReplayerOperationBatch *)v83 addOperation:v37];

              objc_destroyWeak(v99);
              objc_destroyWeak(&location);
            }

            else
            {
              v60 = objc_opt_new();
              [v60 setRequestID:{objc_msgSend(v19, "requestID")}];
              v61 = objc_alloc(MEMORY[0x277CCA9B8]);
              v112 = v82;
              v113 = @"Update request happened before replayer data source is loaded";
              v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v113 forKeys:&v112 count:1];
              v63 = [v61 initWithDomain:@"com.apple.gputools.MTLReplayer" code:104 userInfo:v62];
              [v60 setError:v63];

              [v8 setObject:v60 atIndexedSubscript:v17];
            }
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v41 = v19;
              configuration = [v41 configuration];
              [v41 requestID];
              v43 = val->_gputrace != 0;
              v44 = [GTReplayerOperation alloc];
              v90[0] = MEMORY[0x277D85DD0];
              v90[1] = 3221225472;
              v90[2] = __29__GTMTLReplayService_update___block_invoke_3;
              v90[3] = &unk_279657768;
              v95 = v43;
              v91 = configuration;
              v92 = v41;
              v93 = v8;
              v94 = v17;
              v45 = v41;
              v46 = configuration;
              v47 = [(GTReplayerOperation *)v44 initWithBatch:v83 withBlock:v90];
              [(GTReplayerOperationBatch *)v83 addOperation:v47];
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v52 = v19;
                v53 = val->_terminateConnection == 0;
                connection = [v52 connection];
                terminateConnection = val->_terminateConnection;
                val->_terminateConnection = connection;

                if (v53)
                {
                  path = [v52 path];
                  terminatePath = val->_terminatePath;
                  val->_terminatePath = path;
                }

                else
                {
                  v56 = val->_terminatePath;
                  terminatePath = [v52 path];
                  v58 = MessagePathMerge();
                  v59 = val->_terminatePath;
                  val->_terminatePath = v58;
                }
              }

              else
              {
                v64 = objc_opt_new();
                [v64 setRequestID:{objc_msgSend(v19, "requestID")}];
                v65 = objc_alloc(MEMORY[0x277CCA9B8]);
                v110 = v82;
                v111 = @"unknown request";
                v66 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v111 forKeys:&v110 count:1];
                v67 = [v65 initWithDomain:v79 code:1 userInfo:v66];
                [v64 setError:v67];

                [v8 setObject:v64 atIndexedSubscript:v17];
              }
            }
          }
        }

        goto LABEL_25;
      }

      v20 = v19;
      v21 = objc_opt_new();
      [v21 setRequestID:{objc_msgSend(v20, "requestID")}];
      v22 = clientContext->var1;
      if (!v22)
      {
        break;
      }

      v24 = *(v22 + 9);
      v23 = v22 + 72;
      dispatch_semaphore_wait(v24, 0xFFFFFFFFFFFFFFFFLL);
      v25 = *(v23 + 1);
      v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v20, "sessionsID")}];
      v27 = [v25 objectForKey:v26];

      dispatch_semaphore_signal(*v23);
      if (!v27)
      {
        v48 = objc_alloc(MEMORY[0x277CCA9B8]);
        v114 = v82;
        v115 = @"ASV viewer session does not exist";
        v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v115 forKeys:&v114 count:1];
        v40 = [v48 initWithDomain:v79 code:1 userInfo:v39];
        goto LABEL_24;
      }

      v109 = 0;
      v28 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:MEMORY[0x277CBEC38] requiringSecureCoding:1 error:&v109];
      v29 = v109;
      [v21 setData:v28];

      [v21 setError:v29];
      [v8 setObject:v21 atIndexedSubscript:v17];
      data2 = [v20 data];

      [v27 receiveData:data2];
LABEL_25:

      requests6 = [updateCopy requests];
      v51 = [requests6 count];

      if (v51 <= ++v17)
      {
        goto LABEL_34;
      }
    }

    v38 = objc_alloc(MEMORY[0x277CCA9B8]);
    v116 = v82;
    v117[0] = @"Update request happened before replayer data source is loaded";
    v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v117 forKeys:&v116 count:1];
    v40 = [v38 initWithDomain:@"com.apple.gputools.MTLReplayer" code:104 userInfo:v39];
LABEL_24:
    v49 = v40;
    [v21 setError:v40];

    [v8 setObject:v21 atIndexedSubscript:v17];
    goto LABEL_25;
  }

LABEL_34:
  v69 = [GTReplayerOperation alloc];
  v86[0] = MEMORY[0x277D85DD0];
  v86[1] = 3221225472;
  v86[2] = __29__GTMTLReplayService_update___block_invoke_4;
  v86[3] = &unk_279657790;
  v87 = v8;
  v88 = updateCopy;
  v70 = v78;
  v89 = v70;
  v71 = updateCopy;
  v72 = v8;
  v73 = [(GTReplayerOperation *)v69 initWithBatch:v83 withBlock:v86];
  [(GTReplayerOperationBatch *)v83 addOperation:v73];
  [(GTReplayerOperationBatch *)v83 finish:clientContext->var7.var0];
  v74 = v70;

  v75 = *MEMORY[0x277D85DE8];
  return v70;
}

void __29__GTMTLReplayService_update___block_invoke_4(id *a1)
{
  v2 = objc_opt_new();
  v3 = MEMORY[0x277CCAAB0];
  v4 = [a1[4] copy];
  v8 = 0;
  v5 = [v3 archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v8];
  v6 = v8;
  [v2 setData:v5];

  [v2 setError:v6];
  v7 = [a1[5] completionHandler];
  (v7)[2](v7, v2);

  [a1[6] completed];
}

void __29__GTMTLReplayService_update___block_invoke(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 24) & 1) == 0)
  {
    v3 = *(a1 + 32);
    if (*(a1 + 56))
    {
      v4 = *(*(a1 + 64) + 8);
      v5 = *(v4 + 160);
      v6 = *(v4 + 168);
      v7 = GTTransportArchiveDirectory();
      UpdateDebugFileCache(v3, v5, v6, v7);
    }

    else
    {
      v8 = GTTransportArchiveDirectory();
      v9 = v3;
      v10 = v8;
      if (v9)
      {
        v11 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v10 isDirectory:1];
        v12 = [MEMORY[0x277CCAA00] defaultManager];
        v24 = 0;
        [v12 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:&v24];
        v13 = v24;

        v22[0] = 0;
        v22[1] = v22;
        v22[2] = 0x2020000000;
        v23 = 1;
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __StoreDebugFileCache_block_invoke;
        v19[3] = &unk_279657998;
        v14 = v11;
        v20 = v14;
        v21 = v22;
        [v9 enumerateKeysAndObjectsUsingBlock:v19];

        _Block_object_dispose(v22, 8);
      }
    }

    v15 = objc_opt_new();
    [v15 setRequestID:{objc_msgSend(*(a1 + 40), "requestID")}];
    v18 = 0;
    v16 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:MEMORY[0x277CBEC38] requiringSecureCoding:1 error:&v18];
    v17 = v18;
    [v15 setData:v16];

    [v15 setError:v17];
    [*(a1 + 48) setObject:v15 atIndexedSubscript:*(a1 + 72)];
  }
}

void __29__GTMTLReplayService_update___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v254[16] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!WeakRetained || (*(a2 + 24) & 1) != 0)
  {
    goto LABEL_31;
  }

  v179 = WeakRetained;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v182 = a1;
  v6 = *(a1 + 32);
  v7 = [v6 streamRef];
  [v6 dispatchUID];
  [v6 dispatchUID];
  v186 = v6;
  v8 = [v6 shaderURL];

  if (v8)
  {
    v9 = [v186 shaderURL];
    v10 = [v9 startAccessingSecurityScopedResource];

    if (v10)
    {
      v11 = **(v179 + 1);
      v12 = [v186 shaderURL];
      apr_pool_cleanup_register(v11, v12, CleanupSandboxExtensionURL_884, apr_pool_cleanup_null);
    }

    v13 = [v186 shaderURL];
    v14 = *(*(*(v182 + 64) + 8) + 160);
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v7];
    [v14 setObject:v13 forKeyedSubscript:v15];

    v245 = @"streamref";
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v186, "streamRef")}];
    v246 = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v246 forKeys:&v245 count:1];

    v18 = [v186 shaderURL];
  }

  else
  {
    v19 = [v186 shaderIR];

    if (v19)
    {
      v243[0] = @"streamref";
      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v186, "streamRef")}];
      v244[0] = v20;
      v243[1] = @"IR";
      v21 = [v186 shaderIR];
      v244[1] = v21;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v244 forKeys:v243 count:2];
    }

    else
    {
      v17 = [v186 shaderSource];

      if (v17)
      {
        v241[0] = @"streamref";
        v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v186, "streamRef")}];
        v242[0] = v22;
        v241[1] = @"source";
        v23 = [v186 shaderSource];
        v242[1] = v23;
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v242 forKeys:v241 count:2];
      }
    }

    v18 = 0;
  }

  v185 = objc_opt_new();
  [v185 setRequestID:{objc_msgSend(*(v182 + 32), "requestID")}];
  v24 = *(*(v182 + 64) + 8);
  v25 = v17;
  v184 = v5;
  v180 = v25;
  v181 = v18;
  if (v181)
  {
    v26 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfURL:v181 options:0 error:0];
    v27 = [v25 mutableCopy];
    v28 = v27;
    if (v26)
    {
      [v27 setObject:v26 forKeyedSubscript:@"IR"];
    }

    else
    {
      v29 = [MEMORY[0x277CBEA90] data];
      [v28 setObject:v29 forKeyedSubscript:@"IR"];
    }

    v25 = [v28 copy];
  }

  v197 = 0;
  v202[0] = 0;
  v206 = 0u;
  v207 = 0u;
  v208 = 0;
  v183 = v25;
  GTMTLReplayController_rewind(v24);
  v30 = v24[1];
  obj = v30;
  v31 = *v24;
  v32 = *(*v24 + 5);
  v33 = *(*v24 + 11);
  v34 = *(*v24 + 12);
  v35 = [v183 objectForKeyedSubscript:@"streamref"];
  v36 = [v35 unsignedLongLongValue];

  v254[0] = v36;
  entry = find_entry(*v32, v254, 8uLL, 0);
  if (!*entry || (v38 = *(*entry + 32)) == 0)
  {
LABEL_21:
    v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"Internal error: Unable to find object (%llu)", v36];
    v40 = GTUpdateShaderMakeError(1u, v39, 0, 0);
    goto LABEL_22;
  }

  while (v38[2] > v34 + v33)
  {
    v38 = v38[4];
    if (!v38)
    {
      goto LABEL_21;
    }
  }

  v201 = v32;
  objc_storeStrong(v202, v30);
  v51 = *(v31 + 8);
  v203 = v51;
  *v204 = v33;
  v205 = v34 + v33;
  v202[1] = v24;
  v52 = *v38;
  if (v52 != 43)
  {
    if (v52 == 62)
    {
      v176 = v183;
      v191 = v38[1];
      v53 = obj;
      if (v38[2] >= v33)
      {
        v54 = objc_alloc(MEMORY[0x277CBEB58]);
        v55 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v191];
        v56 = [v54 initWithObjects:{v55, 0}];
        v57 = v208;
        v208 = v56;

        v53 = v202[0];
      }

      v174 = [v53 defaultDevice];
      v178 = [v176 objectForKeyedSubscript:@"source"];
      if (v178)
      {
        v58 = v38[15];
        if (v58)
        {
          v59 = [v202[0] dynamicLibraries];
          v60 = MakeMTLCompileOptions(v58, v59);
        }

        else
        {
          v60 = objc_alloc_init(MEMORY[0x277CD6D10]);
        }

        [v60 setDebuggingEnabled:1];
        v177 = [v174 newLibraryWithSource:v178 options:v60 error:&v197];

        if (v177)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v75 = [v176 objectForKeyedSubscript:@"IR"];
        v177 = GTCreateMTLLibrary(v24, v38, v75, &v197);

        if (v177)
        {
LABEL_50:
          v175 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v76 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v191];
          [v175 setObject:v177 forKeyedSubscript:v76];

          v77 = [v175 copy];
          v78 = v206;
          *&v206 = v77;

          v189 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v79 = [v24[1] functionMap];
          [v189 addEntriesFromDictionary:v79];

          [v189 addEntriesFromDictionary:v175];
          newpool[0] = 0;
          apr_pool_create_ex(newpool, 0, 0, v80);
          p = newpool[0];
          v81 = apr_array_make(newpool[0], 128, 8);
          v187 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v82 = v201;
          v83 = *v204;
          GTMTLSMContext_getObjects(v201[30], *v204, v81);
          nelts = v81->nelts;
          if (nelts >= 1)
          {
            for (i = 0; i < nelts; ++i)
            {
              v86 = *&v81->elts[8 * i];
              if (v86[5] == v191)
              {
                v87 = [v189 copy];
                v88 = GTCreateMTLFunction(v24, v86, v87, &v197);

                if (!v88)
                {
LABEL_69:
                  v108 = 0;
                  goto LABEL_82;
                }

                v89 = v86[1];
                v90 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v89];
                [v189 setObject:v88 forKeyedSubscript:v90];

                v91 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v89];
                [v187 setObject:v88 forKeyedSubscript:v91];

                nelts = v81->nelts;
              }
            }
          }

          v92 = [v187 copy];
          v93 = *(&v207 + 1);
          *(&v207 + 1) = v92;

          v81->nelts = 0;
          v187 = objc_alloc_init(MEMORY[0x277CBEB38]);
          GTMTLSMContext_getObjects(v82[15], v83, v81);
          v94 = v81->nelts;
          if (v94 >= 1)
          {
            for (j = 0; j < v94; ++j)
            {
              v96 = *&v81->elts[8 * j];
              if (*(v96 + 56) == v191)
              {
                v97 = MEMORY[0x277CCABB0];
                v98 = v189;
                v99 = [v97 numberWithUnsignedLongLong:v191];
                v100 = [v98 objectForKeyedSubscript:v99];

                if (!v100)
                {
                  GTUpdateShaderMakeError(1u, @"Internal error: Failed to find runtime library for dylib", 0, 0);
                  v197 = v108 = 0;
                  goto LABEL_82;
                }

                v101 = [v24[1] defaultDevice];
                v254[0] = 0;
                v102 = [v101 newDynamicLibrary:v100 error:v254];
                v103 = v254[0];
                if (v102)
                {
                  v104 = v102;
                }

                else
                {
                  v197 = GTUpdateShaderMakeError(4u, @"Failed to instantiate dynamic library", 0, v103);
                }

                if (!v102)
                {
                  goto LABEL_69;
                }

                v105 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v96 + 8)];
                [v187 setObject:v102 forKeyedSubscript:v105];

                v94 = v81->nelts;
              }
            }
          }

          v106 = [v187 copy];
          v107 = *(&v206 + 1);
          *(&v206 + 1) = v106;

          if (v178)
          {
            apr_pool_destroy(p);
            goto LABEL_68;
          }

          v187 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v109 = v38[15];
          if (v109)
          {
            v110 = *(v109 + 32);
            if (v110)
            {
              v111 = *(v109 + 40);
              if (v111 >= 1)
              {
                v112 = v111 & 0x7FFFFFFF;
                v113 = v202[0];
                do
                {
                  v114 = *v110++;
                  v115 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v114];
                  v116 = [v113 dynamicLibraries];
                  v117 = [v116 objectForKeyedSubscript:v115];

                  if (v117)
                  {
                    [v187 setObject:v117 forKeyedSubscript:v115];
                  }

                  --v112;
                }

                while (v112);
              }
            }
          }

          v118 = [v187 copy];
          v119 = v207;
          *&v207 = v118;

          v108 = 1;
LABEL_82:

          apr_pool_destroy(p);
          if (v108)
          {
            goto LABEL_83;
          }

          goto LABEL_23;
        }
      }

      goto LABEL_23;
    }

    v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"Internal error: Unknown object type (%llu:%u)", v36, v52];
    v40 = GTUpdateShaderMakeError(1u, v39, 0, 0);
LABEL_22:
    v197 = v40;

    goto LABEL_23;
  }

  v192 = v51;
  v61 = v183;
  if (v38[2] >= v33)
  {
    v71 = MEMORY[0x277CCACA8];
    v72 = _GTMTLSMFunctionDisplayLabel(v38, v192);
    v73 = [v71 stringWithFormat:@"Ensure the modified function '%@' isn't created during the capture", v72];

    v74 = GTUpdateShaderMakeError(5u, @"Unable to update shader function", v73, 0);
LABEL_71:
    v197 = v74;

    goto LABEL_23;
  }

  Function = GTMTLSMContext_lastFunction(*v32, v38[5], v33);
  if (!Function)
  {
    v73 = [MEMORY[0x277CCACA8] stringWithFormat:@"Internal error: Unable to find library (%llu)", v38[5]];
    v74 = GTUpdateShaderMakeError(1u, v73, 0, 0);
    goto LABEL_71;
  }

  v63 = Function;
  v174 = [v61 objectForKeyedSubscript:@"IR"];
  v178 = GTCreateMTLLibrary(v24, v63, v174, &v197);
  if (v178)
  {
    v64 = [v24[1] functionMap];
    v177 = [v64 mutableCopy];

    v65 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v38[5]];
    [v177 setObject:v178 forKeyedSubscript:v65];

    v66 = [v177 copy];
    v175 = GTCreateMTLFunction(v24, v38, v66, &v197);

    if (v175)
    {
      v67 = v38[1];
      v189 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v68 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v67];
      [v189 setObject:v175 forKeyedSubscript:v68];

      v69 = [v189 copy];
      v70 = *(&v207 + 1);
      *(&v207 + 1) = v69;

LABEL_68:
LABEL_83:
      v199 = 0u;
      v200 = 0u;
      v198 = 0u;
      if (GTUpdateShaderPipelines(&v201, &v198, &v197))
      {
        v120 = v24[1];
        v121 = *(&v207 + 1);
        v237 = 0u;
        v238 = 0u;
        v239 = 0u;
        v240 = 0u;
        obja = v121;
        v122 = [v121 countByEnumeratingWithState:&v237 objects:v254 count:16];
        if (v122)
        {
          v123 = *v238;
          v124 = v208;
          do
          {
            for (k = 0; k != v122; ++k)
            {
              if (*v238 != v123)
              {
                objc_enumerationMutation(obja);
              }

              v126 = *(*(&v237 + 1) + 8 * k);
              v127 = [v124 containsObject:v126];
              v128 = [obja objectForKeyedSubscript:v126];
              if (v127)
              {
                [v24[22] setObject:v128 forKeyedSubscript:v126];
              }

              else
              {
                [v120 setFunction:v128 forKey:{objc_msgSend(v126, "unsignedLongLongValue")}];
              }
            }

            v122 = [obja countByEnumeratingWithState:&v237 objects:v254 count:16];
          }

          while (v122);
        }

        v129 = v206;
        v233 = 0u;
        v234 = 0u;
        v235 = 0u;
        v236 = 0u;
        v193 = v129;
        v130 = [v129 countByEnumeratingWithState:&v233 objects:newpool count:16];
        if (v130)
        {
          v131 = *v234;
          v132 = v208;
          do
          {
            for (m = 0; m != v130; ++m)
            {
              if (*v234 != v131)
              {
                objc_enumerationMutation(v193);
              }

              v134 = *(*(&v233 + 1) + 8 * m);
              v135 = [v132 containsObject:v134];
              v136 = [v193 objectForKeyedSubscript:v134];
              if (v135)
              {
                [v24[22] setObject:v136 forKeyedSubscript:v134];
              }

              else
              {
                [v120 setLibrary:v136 forKey:{objc_msgSend(v134, "unsignedLongLongValue")}];
              }
            }

            v130 = [v193 countByEnumeratingWithState:&v233 objects:newpool count:16];
          }

          while (v130);
        }

        v137 = *(&v206 + 1);
        v229 = 0u;
        v230 = 0u;
        v231 = 0u;
        v232 = 0u;
        v190 = v137;
        v138 = [v137 countByEnumeratingWithState:&v229 objects:v252 count:16];
        if (v138)
        {
          v139 = *v230;
          do
          {
            for (n = 0; n != v138; ++n)
            {
              if (*v230 != v139)
              {
                objc_enumerationMutation(v190);
              }

              v141 = *(*(&v229 + 1) + 8 * n);
              v142 = [v190 objectForKeyedSubscript:v141];
              [v120 setDynamicLibrary:v142 forKey:{objc_msgSend(v141, "unsignedLongLongValue")}];
            }

            v138 = [v190 countByEnumeratingWithState:&v229 objects:v252 count:16];
          }

          while (v138);
        }

        v143 = v198;
        v225 = 0u;
        v226 = 0u;
        v227 = 0u;
        v228 = 0u;
        v188 = v143;
        v144 = [v188 countByEnumeratingWithState:&v225 objects:v251 count:16];
        if (v144)
        {
          v145 = *v226;
          do
          {
            for (ii = 0; ii != v144; ++ii)
            {
              if (*v226 != v145)
              {
                objc_enumerationMutation(v188);
              }

              v147 = *(*(&v225 + 1) + 8 * ii);
              v148 = [v188 objectForKeyedSubscript:v147];
              [v120 setRenderPipelineState:v148 forKey:{objc_msgSend(v147, "unsignedLongLongValue")}];
            }

            v144 = [v188 countByEnumeratingWithState:&v225 objects:v251 count:16];
          }

          while (v144);
        }

        v149 = *(&v198 + 1);
        v221 = 0u;
        v222 = 0u;
        v223 = 0u;
        v224 = 0u;
        v150 = [v149 countByEnumeratingWithState:&v221 objects:v250 count:16];
        if (v150)
        {
          v151 = *v222;
          do
          {
            for (jj = 0; jj != v150; ++jj)
            {
              if (*v222 != v151)
              {
                objc_enumerationMutation(v149);
              }

              v153 = *(*(&v221 + 1) + 8 * jj);
              v154 = [v149 objectForKeyedSubscript:v153];
              [v120 setComputePipelineState:v154 forKey:{objc_msgSend(v153, "unsignedLongLongValue")}];
            }

            v150 = [v149 countByEnumeratingWithState:&v221 objects:v250 count:16];
          }

          while (v150);
        }

        v155 = v199;
        v217 = 0u;
        v218 = 0u;
        v219 = 0u;
        v220 = 0u;
        v156 = [v155 countByEnumeratingWithState:&v217 objects:v249 count:16];
        if (v156)
        {
          v157 = *v218;
          do
          {
            for (kk = 0; kk != v156; ++kk)
            {
              if (*v218 != v157)
              {
                objc_enumerationMutation(v155);
              }

              v159 = *(*(&v217 + 1) + 8 * kk);
              v160 = [v155 objectForKeyedSubscript:v159];
              [v120 setFunctionHandle:v160 forKey:{objc_msgSend(v159, "unsignedLongLongValue")}];
            }

            v156 = [v155 countByEnumeratingWithState:&v217 objects:v249 count:16];
          }

          while (v156);
        }

        v161 = *(&v199 + 1);
        v213 = 0u;
        v214 = 0u;
        v215 = 0u;
        v216 = 0u;
        v162 = [v161 countByEnumeratingWithState:&v213 objects:v248 count:16];
        if (v162)
        {
          v163 = *v214;
          do
          {
            for (mm = 0; mm != v162; ++mm)
            {
              if (*v214 != v163)
              {
                objc_enumerationMutation(v161);
              }

              v165 = *(*(&v213 + 1) + 8 * mm);
              v166 = [v161 objectForKeyedSubscript:v165];
              [v120 setVisibleFunctionTable:v166 forKey:{objc_msgSend(v165, "unsignedLongLongValue")}];
            }

            v162 = [v161 countByEnumeratingWithState:&v213 objects:v248 count:16];
          }

          while (v162);
        }

        v167 = v200;
        v209 = 0u;
        v210 = 0u;
        v211 = 0u;
        v212 = 0u;
        v168 = [v167 countByEnumeratingWithState:&v209 objects:v247 count:16];
        if (v168)
        {
          v169 = *v210;
          do
          {
            for (nn = 0; nn != v168; ++nn)
            {
              if (*v210 != v169)
              {
                objc_enumerationMutation(v167);
              }

              v171 = *(*(&v209 + 1) + 8 * nn);
              v172 = [v167 objectForKeyedSubscript:v171];
              [v120 setIntersectionFunctionTable:v172 forKey:{objc_msgSend(v171, "unsignedLongLongValue")}];
            }

            v168 = [v167 countByEnumeratingWithState:&v209 objects:v247 count:16];
          }

          while (v168);
        }

        v41 = *(&v200 + 1);
      }

      else
      {
        v41 = 0;
      }

      __destructor_8_s0_s8_s16_s24_s32_s40(&v198);
      goto LABEL_24;
    }
  }

  else
  {
  }

LABEL_23:
  v41 = 0;
LABEL_24:
  __destructor_8_s8_S_s56_s64_s72_s80_s88(&v201);

  v42 = v197;
  v43 = v42;
  if (v41)
  {
    [v184 setObject:v41 forKeyedSubscript:@"updatedPipelines"];
  }

  else
  {
    v44 = [v42 localizedDescription];
    [v184 setObject:v44 forKeyedSubscript:@"propagate"];

    [v184 setObject:v43 forKeyedSubscript:@"error"];
  }

  if (v41)
  {
    v45 = MEMORY[0x277CCAAB0];
    v46 = [v184 objectForKeyedSubscript:@"updatedPipelines"];
    v47 = [v46 copy];
    v196 = 0;
    v48 = [v45 archivedDataWithRootObject:v47 requiringSecureCoding:1 error:&v196];
    v49 = v196;
    [v185 setData:v48];
  }

  else
  {
    v49 = [v184 objectForKeyedSubscript:@"error"];
  }

  [v185 setError:v49];

  [*(v182 + 40) setObject:v185 atIndexedSubscript:*(v182 + 72)];
  WeakRetained = v179;
LABEL_31:

  v50 = *MEMORY[0x277D85DE8];
}

void __29__GTMTLReplayService_update___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 24) & 1) == 0)
  {
    if ((*(a1 + 60) & 1) == 0)
    {
      v3 = [*(a1 + 32) forceLoadUnusedResources];
      v4 = 1024;
      if (!v3)
      {
        v4 = 0;
      }

      qword_27F09CF90 = qword_27F09CF90 & 0xFFFFFFFFFFFFFBFFLL | v4;
      v5 = [*(a1 + 32) forceResourcesResident];
      v6 = 2048;
      if (!v5)
      {
        v6 = 0;
      }

      qword_27F09CF90 = qword_27F09CF90 & 0xFFFFFFFFFFFFF7FFLL | v6;
      v7 = [*(a1 + 32) enableReplayFromOtherPlatforms];
      v8 = 0x200000;
      if (!v7)
      {
        v8 = 0;
      }

      qword_27F09CF90 = qword_27F09CF90 & 0xFFFFFFFFFFDFFFFFLL | v8;
      v9 = [*(a1 + 32) enableCapture];
      v10 = 0x4000000;
      if (!v9)
      {
        v10 = 0;
      }

      qword_27F09CF90 = qword_27F09CF90 & 0xFFFFFFFFFBFFFFFFLL | v10;
      v11 = [*(a1 + 32) enableHUD];
      v12 = 0x8000000;
      if (!v11)
      {
        v12 = 0;
      }

      qword_27F09CF90 = qword_27F09CF90 & 0xFFFFFFFFF7FFFFFFLL | v12;
    }

    v13 = [*(a1 + 32) forceLoadActionClear];
    qword_27F09CF90 = qword_27F09CF90 & 0xFFFFFFFFFFFFFFFELL | v13;
    v14 = [*(a1 + 32) forceWaitUntilCompleted];
    v15 = 2;
    if (!v14)
    {
      v15 = 0;
    }

    qword_27F09CF90 = qword_27F09CF90 & 0xFFFFFFFFFFFFFFFDLL | v15;
    v16 = [*(a1 + 32) disableOptimizeRestores];
    v17 = 16;
    if (!v16)
    {
      v17 = 0;
    }

    qword_27F09CF90 = qword_27F09CF90 & 0xFFFFFFFFFFFFFFEFLL | v17;
    v18 = [*(a1 + 32) enableDisplayOnDevice];
    v19 = 32;
    if (v18)
    {
      v19 = 0;
    }

    qword_27F09CF90 = qword_27F09CF90 & 0xFFFFFFFFFFFFFFDFLL | v19;
    v20 = [*(a1 + 32) disableHeapTextureCompression];
    v21 = 0x4000;
    if (!v20)
    {
      v21 = 0;
    }

    qword_27F09CF90 = qword_27F09CF90 & 0xFFFFFFFFFFFFBFFFLL | v21;
    v22 = [*(a1 + 32) enableLiveICBs];
    v23 = 0x100000000;
    if (!v22)
    {
      v23 = 0;
    }

    qword_27F09CF90 = qword_27F09CF90 & 0xFFFFFFFEFFFFFFFFLL | v23;
    v24 = [*(a1 + 32) enableStopOnError];
    v25 = 0x10000000;
    if (!v24)
    {
      v25 = 0;
    }

    qword_27F09CF90 = qword_27F09CF90 & 0xFFFFFFFFEFFFFFFFLL | v25;
    v26 = objc_opt_new();
    [v26 setRequestID:{objc_msgSend(*(a1 + 40), "requestID")}];
    v29 = 0;
    v27 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:MEMORY[0x277CBEC38] requiringSecureCoding:1 error:&v29];
    v28 = v29;
    [v26 setData:v27];

    [v26 setError:v28];
    [*(a1 + 48) setObject:v26 atIndexedSubscript:*(a1 + 56)];
  }
}

- (void)display:(id)display
{
  displayCopy = display;
  v5 = displayCopy;
  var1 = self->_clientContext->var1;
  if (var1)
  {
    v7 = *var1;
    if (*var1)
    {
      if ((qword_27F09CF90 & 0x20) == 0)
      {
        v8 = MEMORY[0x277CCA8C8];
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = __30__GTMTLReplayService_display___block_invoke;
        v10[3] = &unk_279658B00;
        v10[4] = self;
        v11 = displayCopy;
        v12 = v7;
        v9 = [v8 blockOperationWithBlock:v10];
        [v9 setQueuePriority:-4];
        [self->_clientContext->var7.var0 addOperation:v9];
      }
    }
  }
}

void __30__GTMTLReplayService_display___block_invoke(uint64_t a1)
{
  v15 = GTTransportServiceDaemonConnectionNew();
  v2 = allServices();
  v3 = filteredArrayByService();
  getpid();
  v4 = filteredArrayByPID();
  v5 = [v4 firstObject];

  v6 = objc_alloc(MEMORY[0x277D0B518]);
  v7 = [v5 serviceProperties];
  v8 = [v6 initWithConnection:v15 remoteProperties:v7];

  v9 = objc_opt_new();
  [v9 setReplayServicePort:*(*(a1 + 32) + 48)];
  [v9 setDispatchUID:{objc_msgSend(*(a1 + 40), "dispatchUID")}];
  [v9 setStreamRef:{objc_msgSend(*(a1 + 40), "streamRef")}];
  v10 = *(*(a1 + 48) + 88);
  v11 = v10 + [*(a1 + 40) dispatchUID] - 1;
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  GTMTLSMContext_getTextureDescriptor(*(*(a1 + 48) + 40), [*(a1 + 40) streamRef], v11, &v16);
  [v9 setPixelFormat:WORD1(v18)];
  [v9 setWidth:DWORD2(v17)];
  [v9 setHeight:v18];
  v12 = [v8 show:v9 completionHandler:&__block_literal_global_236];

  v13 = objc_opt_new();
  [v13 setOverlays:{objc_msgSend(*(a1 + 40), "filters")}];
  v14 = [v8 update:v13 completionHandler:&__block_literal_global_239];
}

- (void)fetchIntoOperation:(id)operation completionHandler:(id)handler
{
  operationCopy = operation;
  handlerCopy = handler;
  v8 = MEMORY[0x277CCA8C8];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59__GTMTLReplayService_fetchIntoOperation_completionHandler___block_invoke;
  v12[3] = &unk_279657CD0;
  v12[4] = self;
  v13 = operationCopy;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = operationCopy;
  v11 = [v8 blockOperationWithBlock:v12];
  [v11 setQueuePriority:-4];
  [self->_clientContext->var7.var0 addOperation:v11];
}

void __59__GTMTLReplayService_fetchIntoOperation_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 8);
  GTMTLReplayController_debugSubCommandStop(v2, [*(a1 + 40) dispatchUID], objc_msgSend(*(a1 + 40), "dispatchUID") >> 32);
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 8);
  v9 = 0;
  v5 = [v3 encodeFetchIntoOperation:v4 error:&v9];
  v6 = v9;
  if (v5)
  {
    v7 = 0;
    v7 = [*(a1 + 40) event];
    atomic_store(0x100uLL, &v8);

    [*(v2 + 24) commitCommandBufferWithExternalSync:&v7];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (id)fetchInto:(id)into
{
  v53[1] = *MEMORY[0x277D85DE8];
  intoCopy = into;
  v35 = [objc_alloc(MEMORY[0x277D0B620]) initWithService:self andTokenId:{objc_msgSend(intoCopy, "requestID")}];
  selfCopy = self;
  var1 = self->_clientContext->var1;
  if (var1 && *var1)
  {
    v5 = objc_alloc(MEMORY[0x277CBEB18]);
    requests = [intoCopy requests];
    v7 = [v5 initWithCapacity:{objc_msgSend(requests, "count")}];

    requests2 = [intoCopy requests];
    v9 = [requests2 count];

    if (v9)
    {
      for (i = 0; i < v13; ++i)
      {
        v11 = objc_opt_new();
        [v7 setObject:v11 atIndexedSubscript:i];

        requests3 = [intoCopy requests];
        v13 = [requests3 count];
      }
    }

    v48[0] = 0;
    v48[1] = v48;
    v48[2] = 0x2020000000;
    requests4 = [intoCopy requests];
    v15 = [requests4 count];

    v49 = v15;
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __32__GTMTLReplayService_fetchInto___block_invoke;
    v43[3] = &unk_2796576A8;
    v47 = v48;
    v16 = intoCopy;
    v44 = v16;
    v17 = v7;
    v45 = v17;
    v46 = v35;
    v18 = MEMORY[0x253033CF0](v43);
    v37 = objc_opt_new();
    v19 = 0;
    v36 = *MEMORY[0x277CCA050];
    v20 = *MEMORY[0x277CCA450];
    while (1)
    {
      requests5 = [v16 requests];
      v22 = [requests5 count] > v19;

      if (!v22)
      {
        break;
      }

      requests6 = [v16 requests];
      v24 = [requests6 objectAtIndexedSubscript:v19];

      v25 = [v17 objectAtIndexedSubscript:v19];
      [v25 setRequestID:{objc_msgSend(v24, "requestID")}];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 3221225472;
        v40[2] = __32__GTMTLReplayService_fetchInto___block_invoke_2;
        v40[3] = &unk_2796576D0;
        v41 = v25;
        v42 = v18;
        [(GTMTLReplayService *)selfCopy fetchIntoOperation:v24 completionHandler:v40];
      }

      else
      {
        v26 = objc_alloc(MEMORY[0x277CCA9B8]);
        v50 = v20;
        v51 = @"unknown request";
        v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
        v28 = [v26 initWithDomain:v36 code:1 userInfo:v27];
        [v25 setError:v28];

        [v37 addObject:v25];
        v18[2](v18);
      }

      ++v19;
    }

    _Block_object_dispose(v48, 8);
  }

  else
  {
    v17 = objc_opt_new();
    [v17 setRequestID:{objc_msgSend(intoCopy, "requestID")}];
    v29 = objc_alloc(MEMORY[0x277CCA9B8]);
    v52 = *MEMORY[0x277CCA450];
    v53[0] = @"FetchInto request happened before replayer data source is loaded";
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:&v52 count:1];
    v31 = [v29 initWithDomain:@"com.apple.gputools.MTLReplayer" code:104 userInfo:v30];
    [v17 setError:v31];

    completionHandler = [intoCopy completionHandler];
    (completionHandler)[2](completionHandler, v17);

    [v35 completed];
  }

  v33 = *MEMORY[0x277D85DE8];
  return 0;
}

void __32__GTMTLReplayService_fetchInto___block_invoke(uint64_t a1)
{
  if (!--*(*(*(a1 + 56) + 8) + 24))
  {
    v9[5] = v1;
    v9[6] = v2;
    v4 = objc_opt_new();
    [v4 setRequestID:{objc_msgSend(*(a1 + 32), "requestID")}];
    v5 = *(a1 + 40);
    v9[0] = 0;
    v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:v9];
    v7 = v9[0];
    [v4 setData:v6];

    [v4 setError:v7];
    v8 = [*(a1 + 32) completionHandler];
    (v8)[2](v8, v4);

    [*(a1 + 48) completed];
  }
}

void __32__GTMTLReplayService_fetchInto___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x277CCAAB0];
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithBool:a2];
  v11 = v7;
  v9 = [v5 archivedDataWithRootObject:v8 requiringSecureCoding:1 error:&v11];
  v10 = v11;

  [*(a1 + 32) setData:v9];
  [*(a1 + 32) setError:v10];
  (*(*(a1 + 40) + 16))();
}

- (id)fetch:(id)fetch
{
  v277[1] = *MEMORY[0x277D85DE8];
  fetchCopy = fetch;
  v5 = [objc_alloc(MEMORY[0x277D0B620]) initWithService:self andTokenId:{objc_msgSend(fetchCopy, "requestID")}];
  v6 = v5;
  var1 = self->_clientContext->var1;
  if (var1)
  {
    v8 = *var1;
    if (*var1)
    {
      clientContext = self->_clientContext;
      v202 = v5;
      v9 = objc_alloc(MEMORY[0x277CBEB38]);
      requests = [fetchCopy requests];
      v211 = [v9 initWithCapacity:{objc_msgSend(requests, "count")}];

      v11 = objc_opt_new();
      v203 = objc_opt_new();
      v245 = 0u;
      v246 = 0u;
      v247 = 0u;
      v248 = 0u;
      obj = [fetchCopy requests];
      v218 = [obj countByEnumeratingWithState:&v245 objects:v275 count:16];
      if (!v218)
      {
        goto LABEL_121;
      }

      v217 = *v246;
      v12 = *MEMORY[0x277CCA450];
      v199 = *MEMORY[0x277CCA450];
      v200 = *MEMORY[0x277CCA050];
      v204 = fetchCopy;
      v212 = v11;
      v210 = v8;
      while (1)
      {
        v13 = 0;
        do
        {
          if (*v246 != v217)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v245 + 1) + 8 * v13);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = v14;
            requestID = [v15 requestID];
            streamRef = [v15 streamRef];
            dispatchUID = [v15 dispatchUID];
            dispatchUID2 = [v15 dispatchUID];
            Object = GTMTLSMContext_getObject(**(v8 + 40), [v15 streamRef], *(v8 + 88) + dispatchUID);
            if (Object)
            {
              v20 = Object;
              if (*Object == 80)
              {
                entry = find_entry(*(v8 + 8), &streamRef, 8uLL, 0);
                if (*entry)
                {
                  v22 = *(*entry + 32);
                }

                else
                {
                  v22 = 0;
                }

                v228 = 0uLL;
                *&v229 = 0;
                if (v15)
                {
                  [v15 size];
                }

                v273[0] = @"requestID";
                v209 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:requestID];
                v274[0] = v209;
                v273[1] = @"functionIndex";
                v208 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:dispatchUID2 & 0xFFFFFFFF00000000 | dispatchUID];
                v274[1] = v208;
                v273[2] = @"streamref";
                v207 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:streamRef];
                v274[2] = v207;
                v273[3] = @"object";
                if (v22)
                {
                  v52 = atomic_load((v22 + 56));
                  v53 = v22 + (~(v52 >> 2) & 8);
                }

                else
                {
                  v53 = 8;
                }

                v215 = v13;
                v206 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*v53];
                v274[3] = v206;
                v274[4] = &unk_2860D6590;
                v273[4] = @"type";
                v273[5] = @"DependencyGraphRequestedTextureLevel";
                v205 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v15, "level")}];
                v274[5] = v205;
                v273[6] = @"DependencyGraphRequestedTextureSlice";
                v54 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v15, "slice")}];
                v274[6] = v54;
                v273[7] = @"DependencyGraphRequestedTextureDepthPlane";
                v55 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v15, "depth")}];
                v274[7] = v55;
                v273[8] = @"DependencyGraphRequestedTextureAttachmentIndex";
                v56 = MEMORY[0x277CCABB0];
                plane = [v15 plane];
                v58 = plane;
                v59 = v20[14];
                if (v59)
                {
                  v60 = (v59 + 34);
                }

                else
                {
                  v60 = (v20 + 20);
                }

                v61 = *v60;
                if (v61 == 260 || v61 == 255)
                {
                  if (plane)
                  {
                    v58 = 9;
                  }

                  else
                  {
                    v58 = 8;
                  }
                }

                v62 = [v56 numberWithInt:v58];
                v274[8] = v62;
                v273[9] = @"resolveMultisampleTexture";
                v63 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v15, "resolveMultisampleTexture")}];
                v274[9] = v63;
                v273[10] = @"resolution";
                v271[0] = @"width";
                v64 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v228];
                v272[0] = v64;
                v271[1] = @"height";
                v65 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(&v228 + 1)];
                v271[2] = @"format";
                v272[1] = v65;
                v272[2] = &unk_2860D65A8;
                v66 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v272 forKeys:v271 count:3];
                v274[10] = v66;
                v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v274 forKeys:v273 count:11];

                v11 = v212;
                [v212 addObject:v67];
                v68 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:requestID];
                [v211 setObject:v67 forKeyedSubscript:v68];

                goto LABEL_62;
              }
            }
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = v14;
              requestID2 = [v15 requestID];
              *&v228 = [v15 streamRef];
              dispatchUID3 = [v15 dispatchUID];
              dispatchUID4 = [v15 dispatchUID];
              v26 = GTMTLSMContext_getObject(**(v8 + 40), [v15 streamRef], *(v8 + 88) + dispatchUID3);
              if (v26 && *v26 == 22)
              {
                v27 = find_entry(*(v8 + 8), &v228, 8uLL, 0);
                if (*v27)
                {
                  v28 = *(*v27 + 32);
                }

                else
                {
                  v28 = 0;
                }

                v74 = dispatchUID4 & 0xFFFFFFFF00000000;
                v269[0] = @"requestID";
                v75 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:requestID2];
                v270[0] = v75;
                v269[1] = @"functionIndex";
                v76 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v74 | dispatchUID3];
                v270[1] = v76;
                v269[2] = @"streamref";
                v77 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v228];
                v270[2] = v77;
                v269[3] = @"object";
                v215 = v13;
                if (v28)
                {
                  v78 = atomic_load((v28 + 56));
                  v79 = v28 + (~(v78 >> 2) & 8);
                }

                else
                {
                  v79 = 8;
                }

                v80 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*v79];
                v270[3] = v80;
                v270[4] = &unk_2860D6578;
                v269[4] = @"type";
                v269[5] = @"range.location";
                v81 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v15, "range")}];
                v270[5] = v81;
                v269[6] = @"range.length";
                v82 = MEMORY[0x277CCABB0];
                [v15 range];
                v84 = [v82 numberWithUnsignedLongLong:v83];
                v270[6] = v84;
                v85 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v270 forKeys:v269 count:7];

                [v212 addObject:v85];
                v86 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:requestID2];
                [v211 setObject:v85 forKeyedSubscript:v86];

                v11 = v212;
LABEL_62:
                fetchCopy = v204;
                v8 = v210;
                v13 = v215;
              }
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v15 = v14;
                requestID3 = [v15 requestID];
                streamRef = [v15 streamRef];
                dispatchUID5 = [v15 dispatchUID];
                dispatchUID6 = [v15 dispatchUID];
                v32 = *(v8 + 88);
                v33 = *(v8 + 40);
                *&v228 = streamRef;
                v34 = find_entry(*v33, &v228, 8uLL, 0);
                if (*v34)
                {
                  v35 = *(*v34 + 32);
                  if (v35)
                  {
                    v36 = 0;
                    v37 = dispatchUID6 & 0xFFFFFFFF00000000;
                    v38 = v32 + dispatchUID5;
                    do
                    {
                      if (v35[2] > v38 || (v39 = v35, v35[3] <= v38))
                      {
                        if (v36)
                        {
                          goto LABEL_28;
                        }

                        v39 = 0;
                      }

                      v35 = v35[4];
                      v36 = v39;
                    }

                    while (v35);
                    if (!v39)
                    {
                      goto LABEL_80;
                    }

LABEL_28:
                    v40 = find_entry(*(v8 + 8), &streamRef, 8uLL, 0);
                    if (*v40)
                    {
                      v41 = *(*v40 + 32);
                    }

                    else
                    {
                      v41 = 0;
                    }

                    v243 = 0u;
                    v244 = 0u;
                    v241 = 0u;
                    v242 = 0u;
                    v239 = 0u;
                    v240 = 0u;
                    v237 = 0u;
                    v238 = 0u;
                    v235 = 0u;
                    v236 = 0u;
                    v233 = 0u;
                    v234 = 0u;
                    v231 = 0u;
                    v232 = 0u;
                    v229 = 0u;
                    v230 = 0u;
                    v228 = 0u;
                    if (v15)
                    {
                      [v15 slice];
                    }

                    v267[0] = @"requestID";
                    v108 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:requestID3];
                    v268[0] = v108;
                    v267[1] = @"functionIndex";
                    v109 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v37 | dispatchUID5];
                    v268[1] = v109;
                    v267[2] = @"streamref";
                    v110 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:streamRef];
                    v268[2] = v110;
                    v267[3] = @"object";
                    if (v41)
                    {
                      v111 = atomic_load((v41 + 56));
                      v112 = v41 + (~(v111 >> 2) & 8);
                    }

                    else
                    {
                      v112 = 8;
                    }

                    v113 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*v112];
                    v268[3] = v113;
                    v268[4] = &unk_2860D65C0;
                    v267[4] = @"type";
                    v267[5] = @"tensorSlice";
                    v114 = [MEMORY[0x277CBEA90] dataWithBytes:&v228 length:272];
                    v268[5] = v114;
                    v115 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v268 forKeys:v267 count:6];

                    [v212 addObject:v115];
                    v116 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:requestID3];
                    [v211 setObject:v115 forKeyedSubscript:v116];

                    v8 = v210;
                  }
                }

LABEL_80:
                v11 = v212;
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v15 = v14;
                  requestID4 = [v15 requestID];
                  *&v228 = [v15 pipelineRef];
                  dispatchUID7 = [v15 dispatchUID];
                  dispatchUID8 = [v15 dispatchUID];
                  if (!GTMTLSMContext_getObject(**(v8 + 40), v228, *(v8 + 88) + dispatchUID7))
                  {
                    goto LABEL_90;
                  }

                  v45 = find_entry(*(v8 + 8), &v228, 8uLL, 0);
                  if (*v45)
                  {
                    v46 = *(*v45 + 32);
                  }

                  else
                  {
                    v46 = 0;
                  }

                  v99 = dispatchUID8 & 0xFFFFFFFF00000000;
                  v265[0] = @"requestID";
                  v100 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:requestID4];
                  v266[0] = v100;
                  v265[1] = @"functionIndex";
                  v101 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v99 | dispatchUID7];
                  v266[1] = v101;
                  v265[2] = @"streamref";
                  v102 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v228];
                  v266[2] = v102;
                  v265[3] = @"object";
                  if (v46)
                  {
                    v103 = atomic_load((v46 + 56));
                    v104 = v46 + (~(v103 >> 2) & 8);
                  }

                  else
                  {
                    v104 = 8;
                  }

                  v105 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*v104];
                  v265[4] = @"type";
                  v266[3] = v105;
                  v266[4] = &unk_2860D65D8;
                  v106 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v266 forKeys:v265 count:5];

                  [v11 addObject:v106];
                  v107 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:requestID4];
                  [v211 setObject:v106 forKeyedSubscript:v107];

LABEL_89:
                  v8 = v210;
                  goto LABEL_90;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v15 = v14;
                  requestID5 = [v15 requestID];
                  *&v228 = [v15 pipelineRef];
                  dispatchUID9 = [v15 dispatchUID];
                  dispatchUID10 = [v15 dispatchUID];
                  if (!GTMTLSMContext_getObject(**(v8 + 40), v228, *(v8 + 88) + dispatchUID9))
                  {
                    goto LABEL_90;
                  }

                  v50 = find_entry(*(v8 + 8), &v228, 8uLL, 0);
                  if (*v50)
                  {
                    v51 = *(*v50 + 32);
                  }

                  else
                  {
                    v51 = 0;
                  }

                  v121 = dispatchUID10 & 0xFFFFFFFF00000000;
                  v263[0] = @"requestID";
                  v213 = requestID5;
                  v122 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:requestID5];
                  v264[0] = v122;
                  v263[1] = @"functionIndex";
                  v123 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v121 | dispatchUID9];
                  v264[1] = v123;
                  v263[2] = @"streamref";
                  v124 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v228];
                  v264[2] = v124;
                  v263[3] = @"object";
                  v125 = v11;
                  if (v51)
                  {
                    v126 = atomic_load((v51 + 56));
                    v127 = v51 + (~(v126 >> 2) & 8);
                  }

                  else
                  {
                    v127 = 8;
                  }

                  v128 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*v127];
                  v264[3] = v128;
                  v264[4] = &unk_2860D65F0;
                  v263[4] = @"type";
                  v263[5] = @"mlModule";
                  mlModuleKey = [v15 mlModuleKey];
                  v264[5] = mlModuleKey;
                  v263[6] = @"mlResource";
                  mlResourceKey = [v15 mlResourceKey];
                  v264[6] = mlResourceKey;
                  v131 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v264 forKeys:v263 count:7];

                  [v125 addObject:v131];
                  v132 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v213];
                  [v211 setObject:v131 forKeyedSubscript:v132];

                  v11 = v125;
                  fetchCopy = v204;
                  goto LABEL_89;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v15 = v14;
                  requestID6 = [v15 requestID];
                  *&v228 = [v15 pipelineRef];
                  dispatchUID11 = [v15 dispatchUID];
                  dispatchUID12 = [v15 dispatchUID];
                  if (!GTMTLSMContext_getObject(**(v8 + 40), v228, *(v8 + 88) + dispatchUID11))
                  {
                    goto LABEL_90;
                  }

                  v72 = find_entry(*(v8 + 8), &v228, 8uLL, 0);
                  if (*v72)
                  {
                    v73 = *(*v72 + 32);
                  }

                  else
                  {
                    v73 = 0;
                  }

                  v142 = dispatchUID12 & 0xFFFFFFFF00000000;
                  v261[0] = @"requestID";
                  v143 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:requestID6];
                  v262[0] = v143;
                  v261[1] = @"functionIndex";
                  v144 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v142 | dispatchUID11];
                  v262[1] = v144;
                  v261[2] = @"streamref";
                  v145 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v228];
                  v262[2] = v145;
                  v261[3] = @"object";
                  if (v73)
                  {
                    v146 = atomic_load((v73 + 56));
                    v147 = v73 + (~(v146 >> 2) & 8);
                  }

                  else
                  {
                    v147 = 8;
                  }

                  v148 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*v147];
                  v262[3] = v148;
                  v262[4] = &unk_2860D6608;
                  v261[4] = @"type";
                  v261[5] = @"mlIntermediateOps";
                  intermediateOps = [v15 intermediateOps];
                  v262[5] = intermediateOps;
                  v150 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v262 forKeys:v261 count:6];

                  [v11 addObject:v150];
                  v151 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:requestID6];
                  [v211 setObject:v150 forKeyedSubscript:v151];

LABEL_99:
                  v8 = v210;
LABEL_100:
                  fetchCopy = v204;
                  goto LABEL_90;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v87 = v14;
                  requestID7 = [v87 requestID];
                  dispatchUID13 = [v87 dispatchUID];
                  dispatchUID14 = [v87 dispatchUID];
                  if ([v87 solid])
                  {
                    v91 = -3;
                  }

                  else
                  {
                    v91 = -1;
                  }

                  v259[0] = @"requestID";
                  v92 = v13;
                  v93 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:requestID7];
                  v260[0] = v93;
                  v259[1] = @"functionIndex";
                  v117 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:dispatchUID14 & 0xFFFFFFFF00000000 | dispatchUID13];
                  v260[1] = v117;
                  v259[2] = @"object";
                  v95 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v91];
                  v260[2] = v95;
                  v260[3] = &unk_2860D6590;
                  v259[3] = @"type";
                  v259[4] = @"resolution";
                  v260[4] = &unk_2860D5F48;
                  v96 = MEMORY[0x277CBEAC0];
                  v97 = v260;
                  v98 = v259;
                  goto LABEL_83;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v87 = v14;
                  requestID7 = [v87 requestID];
                  dispatchUID15 = [v87 dispatchUID];
                  dispatchUID16 = [v87 dispatchUID];
                  v119 = [v87 index] - 513;
                  v257[0] = @"requestID";
                  v92 = v13;
                  v93 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:requestID7];
                  v258[0] = v93;
                  v257[1] = @"functionIndex";
                  v117 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:dispatchUID16 & 0xFFFFFFFF00000000 | dispatchUID15];
                  v258[1] = v117;
                  v257[2] = @"object";
                  v95 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v119];
                  v258[2] = v95;
                  v258[3] = &unk_2860D6590;
                  v257[3] = @"type";
                  v257[4] = @"resolution";
                  v258[4] = &unk_2860D5F70;
                  v96 = MEMORY[0x277CBEAC0];
                  v97 = v258;
                  v98 = v257;
LABEL_83:
                  v15 = [v96 dictionaryWithObjects:v97 forKeys:v98 count:5];

                  v8 = v210;
                  [v11 addObject:v15];
                  v13 = v92;
                  fetchCopy = v204;
                  v120 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:requestID7];
                  [v211 setObject:v15 forKeyedSubscript:v120];

                  goto LABEL_90;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v133 = v14;
                  requestID8 = [v133 requestID];
                  dispatchUID17 = [v133 dispatchUID];
                  dispatchUID18 = [v133 dispatchUID];
                  v137 = [v133 index] - 1025;
                  v255[0] = @"requestID";
                  v138 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:requestID8];
                  v256[0] = v138;
                  v255[1] = @"functionIndex";
                  v135 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:dispatchUID18 & 0xFFFFFFFF00000000 | dispatchUID17];
                  v256[1] = v135;
                  v255[2] = @"object";
                  v140 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v137];
                  v255[3] = @"type";
                  v256[2] = v140;
                  v256[3] = &unk_2860D6638;
                  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v256 forKeys:v255 count:4];

                  v8 = v210;
                  [v11 addObject:v15];
                  v141 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:requestID8];
                  [v211 setObject:v15 forKeyedSubscript:v141];

                  goto LABEL_100;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v15 = v14;
                  requestID9 = [v15 requestID];
                  dispatchUID19 = [v15 dispatchUID];
                  dispatchUID20 = [v15 dispatchUID];
                  objectShaderThreadgroupBoundsPresent = [v15 objectShaderThreadgroupBoundsPresent];
                  v156 = MEMORY[0x277CBEB38];
                  v253[0] = @"requestID";
                  v214 = requestID9;
                  v157 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:requestID9];
                  v254[0] = v157;
                  v253[1] = @"functionIndex";
                  v153 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:dispatchUID20 & 0xFFFFFFFF00000000 | dispatchUID19];
                  v254[1] = v153;
                  v253[2] = @"object";
                  v159 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:-1026];
                  v253[3] = @"type";
                  v254[2] = v159;
                  v254[3] = &unk_2860D6578;
                  [MEMORY[0x277CBEAC0] dictionaryWithObjects:v254 forKeys:v253 count:4];
                  v161 = v160 = v11;
                  v162 = [v156 dictionaryWithDictionary:v161];

                  v11 = v160;
                  if (objectShaderThreadgroupBoundsPresent)
                  {
                    v228 = 0uLL;
                    *&v229 = 0;
                    if (v15)
                    {
                      [v15 objectShaderThreadgroupBeginBounds];
                      streamRef = 0;
                      v226 = 0;
                      v227 = 0;
                      [v15 objectShaderThreadgroupEndBounds];
                    }

                    else
                    {
                      streamRef = 0;
                      v226 = 0;
                      v227 = 0;
                    }

                    data = [MEMORY[0x277CBEB28] data];
                    [data appendBytes:&v228 length:12];
                    [data appendBytes:&streamRef length:12];
                    v174 = [data copy];
                    [v162 setObject:v174 forKeyedSubscript:@"objectThreadgroupRange"];
                  }

                  [v160 addObject:v162];
                  v175 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v214];
                  [v211 setObject:v162 forKeyedSubscript:v175];

                  goto LABEL_99;
                }

                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v15 = objc_opt_new();
                  [v15 setRequestID:{objc_msgSend(v14, "requestID")}];
                  v170 = objc_alloc(MEMORY[0x277CCA9B8]);
                  v249 = v199;
                  v250 = @"unknown request";
                  v171 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v250 forKeys:&v249 count:1];
                  v172 = [v170 initWithDomain:v200 code:1 userInfo:v171];
                  [v15 setError:v172];

                  [v203 addObject:v15];
                  goto LABEL_100;
                }

                v15 = v14;
                requestID10 = [v15 requestID];
                *&v228 = [v15 streamRef];
                dispatchUID21 = [v15 dispatchUID];
                dispatchUID22 = [v15 dispatchUID];
                v166 = GTMTLSMContext_getObject(**(v8 + 40), [v15 streamRef], *(v8 + 88) + dispatchUID21);
                fetchCopy = v204;
                if (v166)
                {
                  v167 = v166;
                  if (*v166 == 71 || *v166 == 29)
                  {
                    v168 = find_entry(*(v8 + 8), &v228, 8uLL, 0);
                    if (*v168)
                    {
                      v169 = *(*v168 + 32);
                    }

                    else
                    {
                      v169 = 0;
                    }

                    v176 = dispatchUID22 & 0xFFFFFFFF00000000;
                    v251[0] = @"requestID";
                    v177 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:requestID10];
                    v252[0] = v177;
                    v251[1] = @"functionIndex";
                    v164 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v176 | dispatchUID21];
                    v252[1] = v164;
                    v251[2] = @"streamref";
                    v179 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v228];
                    v252[2] = v179;
                    v251[3] = @"object";
                    if (v169)
                    {
                      v180 = atomic_load((v169 + 56));
                      v181 = v169 + (~(v180 >> 2) & 8);
                    }

                    else
                    {
                      v181 = 8;
                    }

                    v182 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*v181];
                    v252[3] = v182;
                    v252[4] = &unk_2860D65A8;
                    v251[4] = @"type";
                    v251[5] = @"context";
                    v183 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*v167];
                    v252[5] = v183;
                    v184 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v252 forKeys:v251 count:6];

                    [v212 addObject:v184];
                    v185 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:requestID10];
                    [v211 setObject:v184 forKeyedSubscript:v185];

                    v8 = v210;
                    v11 = v212;
                    goto LABEL_100;
                  }
                }
              }
            }
          }

LABEL_90:

          ++v13;
        }

        while (v13 != v218);
        v186 = [obj countByEnumeratingWithState:&v245 objects:v275 count:16];
        v218 = v186;
        if (!v186)
        {
LABEL_121:

          completionHandler = [fetchCopy completionHandler];
          v219[0] = MEMORY[0x277D85DD0];
          v219[1] = 3221225472;
          v219[2] = __28__GTMTLReplayService_fetch___block_invoke;
          v219[3] = &unk_279657680;
          v220 = fetchCopy;
          v224 = completionHandler;
          v6 = v202;
          v188 = v202;
          v221 = v188;
          v222 = v211;
          v223 = v203;
          v189 = v203;
          v190 = v211;
          v191 = completionHandler;
          FetchResourceObjectBatch(clientContext, v11, v219);
          v192 = v188;

          goto LABEL_123;
        }
      }
    }
  }

  v11 = objc_opt_new();
  [v11 setRequestID:{objc_msgSend(fetchCopy, "requestID")}];
  v193 = objc_alloc(MEMORY[0x277CCA9B8]);
  v276 = *MEMORY[0x277CCA450];
  v277[0] = @"Fetch request happened before replayer data source is loaded";
  v194 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v277 forKeys:&v276 count:1];
  v195 = [v193 initWithDomain:@"com.apple.gputools.MTLReplayer" code:104 userInfo:v194];
  [v11 setError:v195];

  completionHandler2 = [fetchCopy completionHandler];
  (completionHandler2)[2](completionHandler2, v11);

  [v6 completed];
  v192 = 0;
LABEL_123:

  v197 = *MEMORY[0x277D85DE8];

  return v192;
}

void __28__GTMTLReplayService_fetch___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v75 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v62 = a1;
    v58 = v6;
    v8 = MEMORY[0x277CCAAC8];
    v9 = MEMORY[0x277CBEB98];
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [v9 setWithObjects:{v10, v11, v12, objc_opt_class(), 0}];
    v73 = 0;
    v59 = v5;
    v14 = [v8 unarchivedObjectOfClasses:v13 fromData:v5 error:&v73];
    v15 = v73;

    v16 = MEMORY[0x277CCAAC8];
    v17 = MEMORY[0x277CBEB98];
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = [v17 setWithObjects:{v18, v19, v20, v21, objc_opt_class(), 0}];
    v57 = v14;
    v23 = [v14 objectForKeyedSubscript:@"object"];
    v72 = v15;
    v24 = [v16 unarchivedObjectOfClasses:v22 fromData:v23 error:&v72];
    v56 = v72;

    v61 = [v24 objectForKeyedSubscript:@"object"];
    v60 = [v24 objectForKeyedSubscript:@"requestID"];
    v25 = [v24 objectForKeyedSubscript:@"functionIndex"];
    v26 = [v25 bytes];
    v27 = [v24 objectForKeyedSubscript:@"stream"];
    v28 = [v27 count];

    v71 = 0;
    v29 = 1280 * v28;
    v30 = GTCoreAlloc(1280 * v28);
    bzero(v30, 1280 * v28);
    concat = MEMORY[0x277D85CC8];
    v32 = MEMORY[0x277D85CC8];
    v33 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v34 = [v24 objectForKeyedSubscript:@"stream"];
    v35 = [v34 countByEnumeratingWithState:&v67 objects:v74 count:16];
    if (v35)
    {
      v36 = v35;
      v53 = v29;
      v54 = v33;
      v55 = v24;
      v37 = *v68;
      do
      {
        v38 = 0;
        v39 = concat;
        do
        {
          if (*v68 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v40 = *(*(&v67 + 1) + 8 * v38);
          v65[0] = GTMTLTextureDescriptorDefaults;
          v65[1] = unk_24DA92D40;
          v65[2] = xmmword_24DA92D50;
          v66 = 512;
          v41 = *v26++;
          v42 = NewResourceData(v40, v61, v60, *(v62 + 48), v65, v30, &v71, v41, v39);
          concat = dispatch_data_create_concat(v39, v42);

          ++v38;
          v39 = concat;
        }

        while (v36 != v38);
        v36 = [v34 countByEnumeratingWithState:&v67 objects:v74 count:16];
      }

      while (v36);
      v43 = 80 * v71;
      v24 = v55;
      v29 = v53;
      v33 = v54;
    }

    else
    {
      v43 = 0;
    }

    destructor[0] = MEMORY[0x277D85DD0];
    destructor[1] = 3221225472;
    destructor[2] = __28__GTMTLReplayService_fetch___block_invoke_2;
    destructor[3] = &__block_descriptor_48_e5_v8__0l;
    destructor[4] = v30;
    destructor[5] = v29;
    v45 = dispatch_data_create(v30, v43, 0, destructor);
    [v33 setObject:v45 forKey:@"info"];
    [v33 setObject:concat forKey:@"data"];
    v46 = [*(v62 + 56) copy];
    [v33 setObject:v46 forKey:@"unknown"];

    v47 = objc_opt_new();
    [v47 setRequestID:{objc_msgSend(*(v62 + 32), "requestID")}];
    v48 = MEMORY[0x277CCAAB0];
    v49 = [v33 copy];
    v63 = 0;
    v50 = [v48 archivedDataWithRootObject:v49 requiringSecureCoding:1 error:&v63];
    v51 = v63;
    [v47 setData:v50];

    [v47 setError:v51];
    (*(*(v62 + 64) + 16))();
    [*(v62 + 40) completed];

    v7 = v58;
    v5 = v59;
  }

  else
  {
    v44 = objc_opt_new();
    [v44 setRequestID:{objc_msgSend(*(a1 + 32), "requestID")}];
    [v44 setData:0];
    [v44 setError:v7];
    (*(*(a1 + 64) + 16))();
    [*(a1 + 40) completed];
  }

  v52 = *MEMORY[0x277D85DE8];
}

uint64_t __28__GTMTLReplayService_fetch___block_invoke_2(uint64_t a1)
{
  result = MEMORY[0x253034350](*MEMORY[0x277D85F48], *(a1 + 32), *(a1 + 40));
  *(a1 + 32) = 0;
  return result;
}

- (id)query:(id)query
{
  v138[4] = *MEMORY[0x277D85DE8];
  queryCopy = query;
  v88 = [objc_alloc(MEMORY[0x277D0B620]) initWithService:self andTokenId:{objc_msgSend(queryCopy, "requestID")}];
  selfCopy = self;
  clientContext = self->_clientContext;
  requestID = [queryCopy requestID];
  v5 = [[GTReplayerOperationBatch alloc] initWithRequestID:requestID];
  group = dispatch_group_create();
  v6 = objc_alloc(MEMORY[0x277CBEB18]);
  requests = [queryCopy requests];
  v8 = [v6 initWithCapacity:{objc_msgSend(requests, "count")}];

  requests2 = [queryCopy requests];
  v10 = [requests2 count];

  if (v10)
  {
    v11 = 0;
    do
    {
      v12 = objc_opt_new();
      [v8 setObject:v12 atIndexedSubscript:v11];

      requests3 = [queryCopy requests];
      ++v11;
      v14 = [requests3 count];
    }

    while (v14 > v11);
  }

  requests4 = [queryCopy requests];
  v16 = [requests4 count];

  if (v16)
  {
    v17 = 0;
    v18 = *MEMORY[0x277CCA050];
    v84 = *MEMORY[0x277CCA050];
    v85 = *MEMORY[0x277CCA450];
    do
    {
      requests5 = [queryCopy requests];
      v20 = [requests5 objectAtIndexedSubscript:v17];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = v20;
        [v21 dispatchUID];
        [v21 dispatchUID];
        streamRef = [v21 streamRef];
        requestID2 = [v21 requestID];

        v24 = [GTReplayerOperation alloc];
        v121[0] = MEMORY[0x277D85DD0];
        v121[1] = 3221225472;
        v121[2] = __28__GTMTLReplayService_query___block_invoke;
        v121[3] = &unk_279657570;
        v121[5] = clientContext;
        v121[6] = streamRef;
        v121[7] = requestID2;
        v121[4] = v8;
        v122 = v17;
        v25 = [(GTReplayerOperation *)v24 initWithBatch:v5 withBlock:v121];
        [(GTReplayerOperationBatch *)v5 addOperation:v25];

        v26 = v121;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v27 = v20;
          dispatchUID = [v27 dispatchUID];
          v29 = [v27 dispatchUID] >> 32;
          requestID3 = [v27 requestID];

          v31 = [GTReplayerOperation alloc];
          v117[0] = MEMORY[0x277D85DD0];
          v117[1] = 3221225472;
          v117[2] = __28__GTMTLReplayService_query___block_invoke_2;
          v117[3] = &unk_279657570;
          v117[5] = requestID3;
          v117[6] = clientContext;
          v118 = dispatchUID;
          v119 = v29;
          v117[4] = v8;
          v120 = v17;
          v32 = [(GTReplayerOperation *)v31 initWithBatch:v5 withBlock:v117];
          [(GTReplayerOperationBatch *)v5 addOperation:v32];

          v26 = v117;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            requestID4 = [v20 requestID];
            v34 = [GTReplayerOperation alloc];
            v115[0] = MEMORY[0x277D85DD0];
            v115[1] = 3221225472;
            v115[2] = __28__GTMTLReplayService_query___block_invoke_3;
            v115[3] = &unk_279657598;
            v115[5] = requestID4;
            v115[4] = v8;
            v116 = v17;
            v35 = [(GTReplayerOperation *)v34 initWithBatch:v5 withBlock:v115];
            [(GTReplayerOperationBatch *)v5 addOperation:v35];

            v26 = v115;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              requestID5 = [v20 requestID];
              v37 = [GTReplayerOperation alloc];
              v113[0] = MEMORY[0x277D85DD0];
              v113[1] = 3221225472;
              v113[2] = __28__GTMTLReplayService_query___block_invoke_4;
              v113[3] = &unk_2796575C0;
              v113[5] = clientContext;
              v113[6] = requestID5;
              v113[4] = v8;
              v114 = v17;
              v38 = [(GTReplayerOperation *)v37 initWithBatch:v5 withBlock:v113];
              [(GTReplayerOperationBatch *)v5 addOperation:v38];

              v26 = v113;
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                requestID6 = [v20 requestID];
                v40 = [GTReplayerOperation alloc];
                v111[0] = MEMORY[0x277D85DD0];
                v111[1] = 3221225472;
                v111[2] = __28__GTMTLReplayService_query___block_invoke_5;
                v111[3] = &unk_2796575C0;
                v111[5] = clientContext;
                v111[6] = requestID6;
                v111[4] = v8;
                v112 = v17;
                v41 = [(GTReplayerOperation *)v40 initWithBatch:v5 withBlock:v111];
                [(GTReplayerOperationBatch *)v5 addOperation:v41];

                v26 = v111;
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v45 = v20;
                  requestID7 = [v45 requestID];
                  dispatchUID2 = [v45 dispatchUID];
                  v137[0] = @"requestID";
                  v47 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:requestID7];
                  v138[0] = v47;
                  v137[1] = @"functionIndex";
                  v48 = MEMORY[0x277CCABB0];
                  dispatchUID3 = [v45 dispatchUID];

                  v50 = [v48 numberWithUnsignedLongLong:dispatchUID3];
                  v138[1] = v50;
                  v138[2] = &unk_2860D6560;
                  v137[2] = @"object";
                  v137[3] = @"type";
                  v138[3] = &unk_2860D6578;
                  v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v138 forKeys:v137 count:4];

                  dispatch_group_enter(group);
                  v104[0] = MEMORY[0x277D85DD0];
                  v104[1] = 3221225472;
                  v104[2] = __28__GTMTLReplayService_query___block_invoke_93;
                  v104[3] = &unk_2796575E8;
                  v105 = v51;
                  v108 = requestID7;
                  v109 = dispatchUID2;
                  v106 = v8;
                  v110 = v17;
                  v107 = group;
                  v52 = v51;
                  v83 = v104;
                  v81 = os_signpost_id_make_with_pointer(g_signpostLog, v52);
                  v53 = objc_alloc_init(MEMORY[0x277CCABD0]);
                  objc_initWeak(&location, v53);
                  v54 = MEMORY[0x277D85CD0];
                  v55 = MEMORY[0x277D85CD0];
                  v56 = MEMORY[0x277D85DD0];
                  block[0] = MEMORY[0x277D85DD0];
                  block[1] = 3221225472;
                  block[2] = __FetchResourceObject_block_invoke;
                  block[3] = &unk_279658AD8;
                  v133 = clientContext;
                  v57 = v53;
                  v132 = v57;
                  dispatch_async(v54, block);
                  v128[0] = v56;
                  v128[1] = 3221225472;
                  v128[2] = __FetchResourceObject_block_invoke_2;
                  v128[3] = &unk_279658508;
                  v58 = v54;
                  v129 = v54;
                  v130[1] = clientContext;
                  objc_copyWeak(v130, &location);
                  [v57 setCompletionBlock:v128];
                  objc_destroyWeak(v130);

                  v59 = MEMORY[0x277CCA8C8];
                  v123[0] = MEMORY[0x277D85DD0];
                  v123[1] = 3221225472;
                  v123[2] = __FetchResourceObject_block_invoke_4;
                  v123[3] = &unk_279658530;
                  objc_copyWeak(v126, &location);
                  v126[1] = clientContext;
                  v42 = v52;
                  v124 = v42;
                  v60 = v83;
                  v125 = v60;
                  v126[2] = v81;
                  v127 = 0;
                  v61 = [v59 blockOperationWithBlock:v123];
                  [clientContext->var7.var0 addOperation:v61];
                  [v57 addDependency:v61];
                  [clientContext->var7.var1 addOperation:v57];

                  objc_destroyWeak(v126);
                  objc_destroyWeak(&location);

                  goto LABEL_17;
                }

                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    requestID8 = [v20 requestID];
                    v66 = selfCopy->_gputrace;
                    v67 = [GTReplayerOperation alloc];
                    v97[0] = MEMORY[0x277D85DD0];
                    v97[1] = 3221225472;
                    v97[2] = __28__GTMTLReplayService_query___block_invoke_4_112;
                    v97[3] = &unk_279657610;
                    v98 = v66;
                    v100 = requestID8;
                    v99 = v8;
                    v101 = v17;
                    v42 = v66;
                    v68 = [(GTReplayerOperation *)v67 initWithBatch:v5 withBlock:v97];
                    [(GTReplayerOperationBatch *)v5 addOperation:v68];
                  }

                  else
                  {
                    v42 = objc_opt_new();
                    -[NSURL setRequestID:](v42, "setRequestID:", [v20 requestID]);
                    v69 = objc_alloc(MEMORY[0x277CCA9B8]);
                    v135 = v85;
                    v136 = @"unknown request";
                    v70 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v136 forKeys:&v135 count:1];
                    v71 = [v69 initWithDomain:v84 code:1 userInfo:v70];
                    [(NSURL *)v42 setError:v71];

                    [v8 setObject:v42 atIndexedSubscript:v17];
                  }

                  goto LABEL_17;
                }

                requestID9 = [v20 requestID];
                v63 = [GTReplayerOperation alloc];
                v102[0] = MEMORY[0x277D85DD0];
                v102[1] = 3221225472;
                v102[2] = __28__GTMTLReplayService_query___block_invoke_3_109;
                v102[3] = &unk_279657598;
                v102[5] = requestID9;
                v102[4] = v8;
                v103 = v17;
                v64 = [(GTReplayerOperation *)v63 initWithBatch:v5 withBlock:v102];
                [(GTReplayerOperationBatch *)v5 addOperation:v64];

                v26 = v102;
              }
            }
          }
        }
      }

      v42 = v26[4];
LABEL_17:

      requests6 = [queryCopy requests];
      v44 = [requests6 count];

      ++v17;
    }

    while (v44 > v17);
  }

  v72 = [GTReplayerOperation alloc];
  v91[0] = MEMORY[0x277D85DD0];
  v91[1] = 3221225472;
  v91[2] = __28__GTMTLReplayService_query___block_invoke_5_117;
  v91[3] = &unk_279657638;
  v92 = group;
  v93 = v8;
  v96 = requestID;
  v94 = queryCopy;
  v73 = v88;
  v95 = v73;
  v74 = queryCopy;
  v75 = v8;
  v76 = group;
  v77 = [(GTReplayerOperation *)v72 initWithBatch:v5 withBlock:v91];
  [(GTReplayerOperationBatch *)v5 addOperation:v77];
  [(GTReplayerOperationBatch *)v5 finish:clientContext->var7.var0];
  v78 = v73;

  v79 = *MEMORY[0x277D85DE8];
  return v73;
}

void __28__GTMTLReplayService_query___block_invoke_5_117(uint64_t a1)
{
  dispatch_group_wait(*(a1 + 32), 0xFFFFFFFFFFFFFFFFLL);
  v2 = objc_opt_new();
  v3 = MEMORY[0x277CCAAB0];
  v4 = [*(a1 + 40) copy];
  v8 = 0;
  v5 = [v3 archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v8];
  v6 = v8;
  [v2 setData:v5];

  [v2 setError:v6];
  [v2 setRequestID:*(a1 + 64)];
  v7 = [*(a1 + 48) completionHandler];
  (v7)[2](v7, v2);
  [*(a1 + 56) completed];
}

void __28__GTMTLReplayService_query___block_invoke(uint64_t a1, uint64_t a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  if ((*(a2 + 24) & 1) == 0)
  {
    v3 = *(*(a1 + 40) + 8);
    if (v3)
    {
      v4 = *(a1 + 48);
      v13 = 0;
      v5 = GTMTLReplayClient_queryRasterMap(v3, v4, &v13);
      v6 = v13;
    }

    else
    {
      v7 = objc_alloc(MEMORY[0x277CCA9B8]);
      v14 = *MEMORY[0x277CCA450];
      v15[0] = @"Query request happened before replayer data source is loaded";
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      v6 = [v7 initWithDomain:@"com.apple.gputools.MTLReplayer" code:104 userInfo:v8];

      v5 = 0;
    }

    v9 = objc_alloc_init(MEMORY[0x277D0B628]);
    [v9 setRequestID:*(a1 + 56)];
    if (v6)
    {
      [v9 setData:0];
    }

    else
    {
      v12 = 0;
      v10 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v12];
      v6 = v12;
      [v9 setData:v10];
    }

    [v9 setError:v6];
    [*(a1 + 32) setObject:v9 atIndexedSubscript:*(a1 + 64)];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __28__GTMTLReplayService_query___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v28[2] = *MEMORY[0x277D85DE8];
  if ((*(a2 + 24) & 1) == 0)
  {
    v3 = objc_alloc_init(MEMORY[0x277D0B628]);
    [v3 setRequestID:*(a1 + 40)];
    v4 = *(*(a1 + 48) + 8);
    if (v4)
    {
      v5 = *(a1 + 60);
      v6 = *(a1 + 56);
      v24 = MEMORY[0x277CBEBF8];
      v7 = *(*v4 + 128);
      if (*(v7 + 12) <= v6)
      {
        v10 = MEMORY[0x277CBEBF8];
        v16 = MEMORY[0x277CBEBF8];
      }

      else
      {
        v8 = (*(v7 + 24) + (v6 << 6));
        GTMTLReplayController_debugSubCommandResume(v4, *v8 - *(*v4 + 88) + 1, v5 + 1);
        v9 = GTMTLReplayClient_generateFunctionResourceUsageInfoV2_impl(v4, v8, v5, &v24);
        v10 = v24;
        if (v9)
        {
          v23 = 0;
          v11 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v10 requiringSecureCoding:1 error:&v23];
          v12 = v23;
          [v3 setData:v11];

          [v3 setError:v12];
LABEL_9:
          [*(a1 + 32) setObject:v3 atIndexedSubscript:*(a1 + 64)];

          goto LABEL_10;
        }
      }

      v17 = objc_alloc(MEMORY[0x277CCA9B8]);
      v18 = *MEMORY[0x277CCA050];
      v19 = *MEMORY[0x277CCA498];
      v27[0] = *MEMORY[0x277CCA450];
      v27[1] = v19;
      v28[0] = @"resource usage error";
      v28[1] = @"query again?";
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
      v21 = [v17 initWithDomain:v18 code:1 userInfo:v20];
      [v3 setError:v21];

      v12 = 0;
      goto LABEL_9;
    }

    v13 = objc_alloc(MEMORY[0x277CCA9B8]);
    v25 = *MEMORY[0x277CCA450];
    v26 = @"Query request happened before replayer data source is loaded";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v15 = [v13 initWithDomain:@"com.apple.gputools.MTLReplayer" code:104 userInfo:v14];
    [v3 setError:v15];

    v12 = 0;
    v10 = 0;
    goto LABEL_9;
  }

LABEL_10:
  v22 = *MEMORY[0x277D85DE8];
}

void __28__GTMTLReplayService_query___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 24) & 1) == 0)
  {
    v4 = GTMTLDeviceCapabilitiesQuery();
    v6 = objc_alloc_init(MEMORY[0x277D0B628]);
    [v6 setRequestID:*(a1 + 40)];
    v5 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v4 length:GTMTLDeviceCapabilitiesSize() freeWhenDone:0];
    [v6 setData:v5];

    [v6 setError:0];
    [*(a1 + 32) setObject:v6 atIndexedSubscript:*(a1 + 48)];
  }
}

void __28__GTMTLReplayService_query___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  if ((*(a2 + 24) & 1) == 0)
  {
    v3 = *(*(a1 + 40) + 8);
    if (v3)
    {
      v4 = [*(v3 + 8) defaultDevice];
      v5 = DYMTLReplayFrameProfiler_loadAnalysis(v4);

      v6 = 0;
    }

    else
    {
      v7 = objc_alloc(MEMORY[0x277CCA9B8]);
      v13 = *MEMORY[0x277CCA450];
      v14[0] = @"Query request happened before replayer data source is loaded";
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      v6 = [v7 initWithDomain:@"com.apple.gputools.MTLReplayer" code:104 userInfo:v8];

      v5 = 0;
    }

    v9 = objc_opt_new();
    [v9 setRequestID:*(a1 + 48)];
    if (v6)
    {
      [v9 setData:0];
    }

    else
    {
      v12 = 0;
      v10 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v12];
      v6 = v12;
      [v9 setData:v10];
    }

    [v9 setError:v6];
    [*(a1 + 32) setObject:v9 atIndexedSubscript:*(a1 + 56)];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __28__GTMTLReplayService_query___block_invoke_5(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
  if (*(a2 + 24))
  {
    goto LABEL_24;
  }

  v3 = *(*(a1 + 40) + 8);
  if (v3)
  {
    v4 = [*(v3 + 8) defaultDevice];
    GTDeviceCapabilities_fromDevice();

    if (!GTDeviceCapabilities_isAGX())
    {
      v6 = [*(v3 + 8) defaultDevice];
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        v10 = &unk_2860D6268;
LABEL_19:

        v9 = 0;
        goto LABEL_20;
      }

      v11 = [v6 currentPerformanceState];
      v24[0] = @"enabled";
      v12 = [MEMORY[0x277CCABB0] numberWithBool:v11 != 0];
      v25 = v12;
      v26 = MEMORY[0x277CBEC38];
      v24[1] = @"supported";
      v24[2] = @"PerformanceStateAssertion";
      v13 = [MEMORY[0x277CCABB0] numberWithInteger:v11];
      v27 = v13;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:v24 count:3];

LABEL_18:
      goto LABEL_19;
    }

    IOAccelerator = GetIOAccelerator();
    if (IOAccelerator)
    {
      v6 = GTProfilerConfigurationVariables(IOAccelerator);
    }

    else
    {
      v6 = MEMORY[0x277CBEC10];
    }

    v12 = ExpectedState(v3);
    v27 = 0;
    LOBYTE(v26) = 0;
    v25 = 0;
    v14 = [*(v3 + 8) defaultDevice];
    GTAGXPerfStateControl::InitWithDevice(&v25, v14);

    v15 = GTAGXPerfStateControl::ConsistentGPUPerfStateLevel(&v25, v12);
    if (GTDeviceCapabilities_isAGX3())
    {
      v16 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v15];
      [v16 setObject:&unk_2860D68C0 forKeyedSubscript:@"gen"];
      [v16 setObject:v6 forKeyedSubscript:@"Configuration"];
      v17 = [v16 copy];
    }

    else
    {
      if (!GTDeviceCapabilities_isAGX2())
      {
        v10 = v15;
        goto LABEL_17;
      }

      v16 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v15];
      [v16 setObject:&unk_2860D68D8 forKeyedSubscript:@"gen"];
      [v16 setObject:v6 forKeyedSubscript:@"Configuration"];
      v17 = [v16 copy];
    }

    v10 = v17;

LABEL_17:
    GTAGXPerfStateControl::~GTAGXPerfStateControl(&v25);
    goto LABEL_18;
  }

  v7 = objc_alloc(MEMORY[0x277CCA9B8]);
  v22 = *MEMORY[0x277CCA450];
  v23 = @"Query request happened before replayer data source is loaded";
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v9 = [v7 initWithDomain:@"com.apple.gputools.MTLReplayer" code:104 userInfo:v8];

  v10 = 0;
LABEL_20:
  v18 = objc_opt_new();
  [v18 setRequestID:*(a1 + 48)];
  if (v9)
  {
    [v18 setData:0];
  }

  else
  {
    v21 = 0;
    v19 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v10 requiringSecureCoding:1 error:&v21];
    v9 = v21;
    [v18 setData:v19];
  }

  [v18 setError:v9];
  [*(a1 + 32) setObject:v18 atIndexedSubscript:*(a1 + 56)];

LABEL_24:
  v20 = *MEMORY[0x277D85DE8];
}

void __28__GTMTLReplayService_query___block_invoke_93(uint64_t a1, void *a2, void *a3)
{
  v28[1] = *MEMORY[0x277D85DE8];
  v24 = 0;
  memset(buffer, 0, sizeof(buffer));
  v27 = @"MTLBuffer-0xfffffffffffffabd-Fetch";
  v5 = MEMORY[0x277CCABB0];
  v6 = *(a1 + 56);
  v7 = a3;
  v8 = a2;
  v9 = [v5 numberWithUnsignedLongLong:v6];
  v28[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 56)];
  v25 = v11;
  v26 = *(a1 + 32);
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  v13 = NewResourceData(v8, v7, v10, v12, 0, buffer, &v24, *(a1 + 64), MEMORY[0x277D85CC8]);

  v14 = dispatch_data_create(buffer, 0x50uLL, 0, &__block_literal_global_99);
  v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v15 setObject:v14 forKey:@"info"];
  [v15 setObject:v13 forKey:@"data"];
  v16 = objc_alloc_init(MEMORY[0x277D0B628]);
  [v16 setRequestID:*(a1 + 56)];
  v17 = MEMORY[0x277CCAAB0];
  v18 = [v15 copy];
  v22 = 0;
  v19 = [v17 archivedDataWithRootObject:v18 requiringSecureCoding:1 error:&v22];
  v20 = v22;
  [v16 setData:v19];

  [v16 setError:v20];
  [*(a1 + 40) setObject:v16 atIndexedSubscript:*(a1 + 72)];
  dispatch_group_leave(*(a1 + 48));

  v21 = *MEMORY[0x277D85DE8];
}

void __28__GTMTLReplayService_query___block_invoke_3_109(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 24) & 1) == 0)
  {
    v3 = objc_alloc_init(MEMORY[0x277D0B548]);
    [v3 setForceLoadActionClear:qword_27F09CF90 & 1];
    [v3 setForceLoadUnusedResources:(qword_27F09CF90 >> 10) & 1];
    [v3 setForceResourcesResident:(qword_27F09CF90 >> 11) & 1];
    [v3 setForceWaitUntilCompleted:(qword_27F09CF90 >> 1) & 1];
    [v3 setDisableOptimizeRestores:(qword_27F09CF90 >> 4) & 1];
    [v3 setEnableDisplayOnDevice:(qword_27F09CF90 & 0x20) == 0];
    [v3 setDisableHeapTextureCompression:(qword_27F09CF90 >> 14) & 1];
    [v3 setEnableReplayFromOtherPlatforms:(qword_27F09CF90 >> 21) & 1];
    [v3 setEnableCapture:(qword_27F09CF90 >> 26) & 1];
    [v3 setEnableHUD:(qword_27F09CF90 >> 27) & 1];
    [v3 setEnableLiveICBs:HIDWORD(qword_27F09CF90) & 1];
    [v3 setEnableStopOnError:(qword_27F09CF90 >> 28) & 1];
    v4 = objc_opt_new();
    [v4 setRequestID:*(a1 + 40)];
    v7 = 0;
    v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v7];
    v6 = v7;
    [v4 setData:v5];

    [v4 setError:v6];
    [*(a1 + 32) setObject:v4 atIndexedSubscript:*(a1 + 48)];
  }
}

void __28__GTMTLReplayService_query___block_invoke_4_112(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 24) & 1) == 0)
  {
    v3 = objc_opt_new();
    [v3 setGputraceURL:*(a1 + 32)];
    [v3 setShaderDebuggerVersion:3];
    [v3 setShaderProfilerVersion:5];
    [v3 setAccelerationViewerVersion:11];
    v4 = objc_opt_new();
    [v4 setRequestID:*(a1 + 48)];
    v7 = 0;
    v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v7];
    v6 = v7;
    [v4 setData:v5];

    [v4 setError:v6];
    [*(a1 + 40) setObject:v4 atIndexedSubscript:*(a1 + 56)];
  }
}

- (void)notifyError:(id)error
{
  errorCopy = error;
  observers = self->_observers;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__GTMTLReplayService_notifyError___block_invoke;
  v7[3] = &unk_279657548;
  v8 = errorCopy;
  v6 = errorCopy;
  [(GTObservableService *)observers notifyAll:v7];
}

- (void)broadcastDisconnect:(id)disconnect path:(id)path
{
  pathCopy = path;
  connection = [disconnect connection];
  v7 = connection;
  if (connection == self->_terminateConnection)
  {
    terminatePath = self->_terminatePath;
    v9 = MessagePathEndsWith();

    if (v9)
    {
      [(GTMTLReplayService *)self terminateProcess];
    }
  }

  else
  {
  }
}

- (void)terminateProcess
{
  clientContext = self->_clientContext;
  if (clientContext && clientContext->var0)
  {
    apr_pool_destroy(clientContext->var0);
    v2 = vars8;
  }

  v4 = MEMORY[0x277D85CD0];

  dispatch_async(v4, &__block_literal_global_51);
}

- (BOOL)load:(id)load error:(id *)error
{
  loadCopy = load;
  clientContext = self->_clientContext;
  objc_storeStrong(&self->_gputrace, load);
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  var0 = clientContext->var7.var0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __33__GTMTLReplayService_load_error___block_invoke;
  v11[3] = &unk_279658938;
  v13 = &v15;
  v14 = clientContext;
  v9 = loadCopy;
  v12 = v9;
  [var0 addOperationWithBlock:v11];
  [clientContext->var7.var0 waitUntilAllOperationsAreFinished];
  LOBYTE(var0) = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return var0;
}

void __33__GTMTLReplayService_load_error___block_invoke(uint64_t a1)
{
  v1 = a1;
  v153 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  v4 = GTTransportArchiveDirectory();
  v5 = v3;
  v122 = v4;
  v6 = &__block_literal_global_957;
  if (!v5)
  {
    LOBYTE(v8) = 0;
    goto LABEL_114;
  }

  v7 = [v5 scheme];
  LODWORD(v8) = [v7 isEqualToString:*MEMORY[0x277CCA778]];

  if (!v8)
  {
    goto LABEL_114;
  }

  if ([v5 startAccessingSecurityScopedResource])
  {
    apr_pool_cleanup_register(*v2, v5, CleanupSandboxExtensionURL, apr_pool_cleanup_null);
  }

  v9 = [v5 path];
  v121 = v122;
  v10 = &__block_literal_global_957;
  DataSource = GTMTLReplayController_makeDataSource([v9 UTF8String], *v2);
  LOBYTE(v8) = DataSource != 0;
  if (DataSource)
  {
    v12 = DataSource;
    v116 = DataSource != 0;
    v117 = v9;
    v119 = v5;
    v120 = v1;
    v13 = GTMTLReplayClient_preferDevice(DataSource);
    v14 = *v2;
    v15 = MEMORY[0x277CCAC38];
    v16 = v13;
    v17 = [v15 processInfo];
    v18 = [v17 operatingSystemVersionString];
    v19 = apr_pstrdup(v14, [v18 UTF8String]);

    v20 = apr_palloc(v14, 0x30uLL);
    v21 = v20;
    if (v20)
    {
      *v20 = 0u;
      v20[1] = 0u;
    }

    *(v20 + 4) = "iOS";
    *(v20 + 5) = v19;
    v22 = [v16 targetDeviceArchitecture];
    *v21 = [v22 cpuType];
    *(v21 + 1) = [v22 subType];
    *(v21 + 4) = [v22 version];
    *(v21 + 10) = [v22 version] >> 16;
    *(v21 + 11) = [v22 version] >> 24;
    *(v21 + 3) = [v22 versionCombined];
    *(v21 + 2) = [v22 driverVersion];

    v115 = v16;
    if (*v21 != 16777235)
    {
      goto LABEL_49;
    }

    v23 = 0;
    v24 = *(v21 + 1) & 0xFFFFFF;
    if (v24 > 0x162)
    {
      if ((*(v21 + 1) & 0xFFFFFFu) > 0x1B2)
      {
        if ((*(v21 + 1) & 0xFFFFFFu) > 0x231)
        {
          v28 = v24 - 562;
          if (v28 <= 0x30 && ((1 << v28) & 0x1000100010001) != 0)
          {
            goto LABEL_50;
          }

          goto LABEL_49;
        }

        if (v24 - 498 <= 0x30 && ((1 << (v24 + 14)) & 0x1000100010001) != 0)
        {
          goto LABEL_50;
        }

        if (v24 != 435)
        {
          if (v24 != 482)
          {
            goto LABEL_49;
          }

          goto LABEL_50;
        }

        goto LABEL_46;
      }

      v27 = v24 - 355;
      if (v27 <= 0x3F)
      {
        if (((1 << (v24 - 99)) & 0x8000800080008000) != 0)
        {
          goto LABEL_50;
        }

        if (((1 << (v24 - 99)) & 0x100010001) != 0)
        {
          goto LABEL_23;
        }

        if (v27 == 48)
        {
LABEL_46:
          v23 = 2;
          goto LABEL_50;
        }
      }

      if (v24 != 419)
      {
        if (v24 != 434)
        {
LABEL_49:
          v23 = 0xFFFFFFFFLL;
        }

LABEL_50:
        *(v21 + 3) = v23;

        v118 = v2;
        v128 = v12;
        if (*(v12 + 6))
        {
          v29 = objc_alloc_init(GTCaptureArchiveOverrideKey);
          v138 = 0u;
          v139 = 0u;
          v140 = 0u;
          v141 = 0u;
          obj = [*(v12 + 6) filenameOverrides];
          v132 = [obj countByEnumeratingWithState:&v138 objects:v142 count:16];
          if (v132)
          {
            v129 = *v139;
            v124 = v29;
            v126 = v21;
            do
            {
              for (i = 0; i != v132; ++i)
              {
                if (*v139 != v129)
                {
                  objc_enumerationMutation(obj);
                }

                v31 = *(*(&v138 + 1) + 8 * i);
                v32 = [*(v12 + 6) filenameOverrides];
                v33 = [v32 objectForKeyedSubscript:v31];

                v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:*(v21 + 4)];
                [(GTCaptureArchiveOverrideKey *)v29 setPlatform:v34];
                v35 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v21 + 3)];
                [(GTCaptureArchiveOverrideKey *)v29 setRiaGeneration:v35];

                v36 = [v33 objectForKeyedSubscript:v29];
                v135 = v34;
                if (v36)
                {
                  goto LABEL_59;
                }

                [(GTCaptureArchiveOverrideKey *)v29 setPlatform:0];
                v37 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v21 + 3)];
                [(GTCaptureArchiveOverrideKey *)v29 setRiaGeneration:v37];

                v36 = [v33 objectForKeyedSubscript:v29];
                if (v36 || (-[GTCaptureArchiveOverrideKey setPlatform:](v29, "setPlatform:", v34), -[GTCaptureArchiveOverrideKey setRiaGeneration:](v29, "setRiaGeneration:", 0), [v33 objectForKeyedSubscript:v29], (v36 = objc_claimAutoreleasedReturnValue()) != 0))
                {
LABEL_59:
                  v38 = v36;
                  v39 = *v12;
                  v40 = [v36 originalFilename];
                  v41 = [v40 UTF8String];
                  v42 = [v38 overrideFilename];
                  v43 = [v42 UTF8String];
                  pthread_mutex_lock((v39 + 16));
                  newpool[0] = 0;
                  apr_pool_create_ex(newpool, *(v39 + 8), 0, v44);
                  v45 = newpool[0];
                  v46 = gt_filepath_merge(*v39, v43, newpool[0]);
                  v47 = fopen(v46, "r");
                  v48 = v47;
                  if (v47)
                  {
                    memset(&v152, 0, sizeof(v152));
                    v49 = fileno(v47);
                    if (!fstat(v49, &v152))
                    {
                      v50 = apr_pstrdup(*(v39 + 8), v41);
                      v51 = apr_pstrdup(*(v39 + 8), v43);
                      v52 = apr_palloc(*(v39 + 8), 0x20uLL);
                      if (v52)
                      {
                        v52[1] = 0;
                        v52[2] = 0;
                        v52[3] = 0;
                      }

                      *v52 = v51;
                      *(v52 + 6) = 2;
                      *(v52 + 2) = (LODWORD(v152.st_size) + *MEMORY[0x277D85FA0] - 1) & -*MEMORY[0x277D85FA0];
                      apr_hash_set(*(v39 + 136), v50, -1, v52);
                    }
                  }

                  fclose(v48);
                  apr_pool_destroy(v45);
                  pthread_mutex_unlock((v39 + 16));

                  v21 = v126;
                  v12 = v128;
                  v29 = v124;
                  v34 = v135;
                }
              }

              v132 = [obj countByEnumeratingWithState:&v138 objects:v142 count:16];
            }

            while (v132);
          }
        }

        v53 = v115;
        v54 = objc_alloc_init(MEMORY[0x277CBEB18]);
        for (j = 0; j != 19; ++j)
        {
          v56 = qword_24DA90DB0[j];
          if ([v53 supportsFamily:v56])
          {
            v57 = [MEMORY[0x277CCABB0] numberWithInteger:v56];
            [v54 addObject:v57];
          }
        }

        newpool[0] = @"argumentBuffersSupport";
        v58 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v53, "argumentBuffersSupport")}];
        *&v152.st_dev = v58;
        newpool[1] = @"supportsTLS";
        v59 = MEMORY[0x277CCABB0];
        if (objc_opt_respondsToSelector())
        {
          v60 = [v53 supportsTLS];
        }

        else
        {
          v60 = 0;
        }

        v61 = [v59 numberWithInt:v60];
        v152.st_ino = v61;
        *&v148 = @"supportsGlobalVariableRelocation";
        v62 = MEMORY[0x277CCABB0];
        if (objc_opt_respondsToSelector())
        {
          v63 = [v53 supportsGlobalVariableRelocation];
        }

        else
        {
          v63 = 0;
        }

        v64 = [v62 numberWithInt:v63];
        *&v152.st_uid = v64;
        *(&v148 + 1) = @"supportsGlobalVariableRelocationCompute";
        v65 = MEMORY[0x277CCABB0];
        if (objc_opt_respondsToSelector())
        {
          v66 = [v53 supportsGlobalVariableRelocationCompute];
        }

        else
        {
          v66 = 0;
        }

        v130 = [v65 numberWithInt:v66];
        *&v152.st_rdev = v130;
        *&v149 = @"supportsGlobalVariableRelocationRender";
        v67 = MEMORY[0x277CCABB0];
        v136 = v58;
        if (objc_opt_respondsToSelector())
        {
          v68 = [v53 supportsGlobalVariableRelocationRender];
        }

        else
        {
          v68 = 0;
        }

        v69 = [v67 numberWithInt:v68];
        v152.st_atimespec.tv_sec = v69;
        *(&v149 + 1) = @"supportsDynamicLibraries";
        v70 = MEMORY[0x277CCABB0];
        v133 = v64;
        if (objc_opt_respondsToSelector())
        {
          v71 = [v53 supportsDynamicLibraries];
        }

        else
        {
          v71 = 0;
        }

        v72 = [v70 numberWithInt:v71];
        v152.st_atimespec.tv_nsec = v72;
        *&v150 = @"supportsRenderDynamicLibraries";
        v73 = MEMORY[0x277CCABB0];
        if (objc_opt_respondsToSelector())
        {
          v74 = [v53 supportsRenderDynamicLibraries];
        }

        else
        {
          v74 = 0;
        }

        v75 = [v73 numberWithInt:v74];
        v152.st_mtimespec.tv_sec = v75;
        *(&v150 + 1) = @"supportsFunctionPointers";
        v76 = MEMORY[0x277CCABB0];
        if (objc_opt_respondsToSelector())
        {
          v77 = [v53 supportsFunctionPointers];
        }

        else
        {
          v77 = 0;
        }

        v78 = [v76 numberWithInt:v77];
        v152.st_mtimespec.tv_nsec = v78;
        v151 = @"supportsFunctionPointersFromRender";
        v79 = MEMORY[0x277CCABB0];
        if (objc_opt_respondsToSelector())
        {
          v80 = [v53 supportsFunctionPointersFromRender];
        }

        else
        {
          v80 = 0;
        }

        v81 = [v79 numberWithInt:v80];
        v152.st_ctimespec.tv_sec = v81;
        v82 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v152 forKeys:newpool count:9];

        v145[0] = @"shaderDebuggerSupport";
        v145[1] = @"deviceVendorName";
        v146[0] = &unk_2860D6548;
        v83 = [v53 vendorName];
        v146[1] = v83;
        v84 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v146 forKeys:v145 count:2];

        v85 = [v53 argumentBuffersSupport] != 0;
        LODWORD(v83) = objc_opt_respondsToSelector();
        v86 = [v53 supportsFamily:1006];
        v143[0] = @"SupportedFamilies";
        v143[1] = @"FeatureSupport";
        v144[0] = v54;
        v144[1] = v82;
        v144[2] = v84;
        v143[2] = @"DebugSupport";
        v143[3] = @"ResourceAccessTrackingSupport";
        v87 = [MEMORY[0x277CCABB0] numberWithBool:v85 & v86 & v83];
        v144[3] = v87;
        v134 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v144 forKeys:v143 count:4];

        v88 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v89 = *(*(v128 + 5) + 112);
        v90 = *(v89 + 12);
        if (v90 >= 1)
        {
          for (k = 0; k < v90; ++k)
          {
            v92 = *(*(v89 + 24) + 8 * k);
            if (*(v92 + 144))
            {
              v93 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v92 + 8)];
              v94 = [MEMORY[0x277CCACA8] stringWithUTF8String:*(v92 + 144)];
              [v88 setObject:v93 forKey:v94];

              v90 = *(v89 + 12);
            }
          }
        }

        v137 = v53;
        v95 = v121;
        v96 = v88;
        v131 = v95;
        v97 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v95];
        v98 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v96, "count")}];
        v99 = [MEMORY[0x277CCAA00] defaultManager];
        v144[0] = *MEMORY[0x277CBE8E8];
        v100 = [MEMORY[0x277CBEA60] arrayWithObjects:v144 count:1];
        v125 = v99;
        v127 = v97;
        v101 = [v99 enumeratorAtURL:v97 includingPropertiesForKeys:v100 options:0 errorHandler:0];

        v149 = 0u;
        v150 = 0u;
        *newpool = 0u;
        v148 = 0u;
        v102 = v101;
        v103 = [v102 countByEnumeratingWithState:newpool objects:&v152 count:16];
        if (v103)
        {
          v104 = v103;
          v105 = *v148;
          do
          {
            for (m = 0; m != v104; ++m)
            {
              if (*v148 != v105)
              {
                objc_enumerationMutation(v102);
              }

              v107 = *(newpool[1] + m);
              v108 = [v107 pathExtension];
              v109 = [v108 isEqualToString:@"metallib"];

              if (v109)
              {
                v110 = [v107 lastPathComponent];
                v111 = [v110 stringByDeletingPathExtension];

                v112 = [v96 objectForKeyedSubscript:v111];
                if (v112)
                {
                  [v98 setObject:v107 forKeyedSubscript:v112];
                }
              }
            }

            v104 = [v102 countByEnumeratingWithState:newpool objects:&v152 count:16];
          }

          while (v104);
        }

        UpdateDebugFileCache(0, v98, v96, v131);
        v113 = [[GTMTLReplayObjectMap alloc] initWithDevice:v137];
        GTMTLReplaySupport_init(v137);
        GTMTLReplayController_initializeArgumentBufferSupport(v128, v137, v113);
        GTMTLReplayController_populateUnusedResources(v128, v113);
        *(v118 + 8) = GTMTLReplayController_makeController(v128, *v118, v137, v113, v96, v98);
        GTMTLReplayWireframeRenderer_initWithDevice(v118 + 96, v137);
        *&v152.st_dev = MEMORY[0x277D85DD0];
        v152.st_ino = 3221225472;
        *&v152.st_uid = __BeginDebugArchivePath_block_invoke;
        *&v152.st_rdev = &__block_descriptor_40_e5_v8__0l;
        v152.st_atimespec.tv_sec = v118;
        v8 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:&v152];
        [v8 setQueuePriority:-8];
        [*(v118 + 280) addOperation:v8];

        v5 = v119;
        v1 = v120;
        v9 = v117;
        LOBYTE(v8) = v116;
        goto LABEL_113;
      }
    }

    else if ((*(v21 + 1) & 0xFFFFFFu) <= 0xD1)
    {
      if ((*(v21 + 1) & 0xFFFFFFu) > 0xA2)
      {
        if (v24 != 163 && v24 != 179)
        {
          if (v24 != 194)
          {
            goto LABEL_49;
          }

          goto LABEL_50;
        }
      }

      else if (v24 - 67 > 0x30 || ((1 << (v24 - 67)) & 0x1000100010001) == 0)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v25 = *(v21 + 4) + 29;
      if (v24 - 227 > 0x3F)
      {
        goto LABEL_12;
      }

      if (((1 << v25) & 0x100010000) != 0)
      {
        goto LABEL_46;
      }

      if (((1 << v25) & 0x1000000000001) == 0)
      {
        if (((1 << v25) & 0x8000800000000000) != 0)
        {
          goto LABEL_50;
        }

LABEL_12:
        v26 = v24 - 291;
        if (v26 > 0x3F)
        {
          goto LABEL_16;
        }

        if (((1 << (v24 - 35)) & 0x8000000080008000) != 0)
        {
          goto LABEL_50;
        }

        if (((1 << (v24 - 35)) & 0x100000001) == 0)
        {
          if (v26 != 48)
          {
LABEL_16:
            if (v24 != 210)
            {
              goto LABEL_49;
            }

            goto LABEL_50;
          }

LABEL_23:
          v23 = 3;
          goto LABEL_50;
        }

        goto LABEL_46;
      }
    }

    v23 = 1;
    goto LABEL_50;
  }

LABEL_113:

LABEL_114:
  *(*(*(v1 + 40) + 8) + 24) = v8;
  v114 = *MEMORY[0x277D85DE8];
}

- (GTMTLReplayService)initWithContext:(GTMTLReplayClient *)context
{
  v10.receiver = self;
  v10.super_class = GTMTLReplayService;
  v4 = [(GTMTLReplayService *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_clientContext = context;
    v6 = objc_opt_new();
    observers = v5->_observers;
    v5->_observers = v6;

    var0 = context->var0;
    control = apr_palloc(var0, 0x48uLL);
    pthread_mutex_init((control + 8), 0);
    *control = apr_hash_make(var0);
  }

  return v5;
}

@end