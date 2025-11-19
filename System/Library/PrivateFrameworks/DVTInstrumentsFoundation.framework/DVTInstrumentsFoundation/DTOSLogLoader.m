@interface DTOSLogLoader
+ (void)heartbeat;
- (BOOL)_holdReceivedAgent:(id)a3 ticket:(id)a4;
- (DTOSLogLoader)init;
- (DTOSLogLoaderDelegate)delegate;
- (id).cxx_construct;
- (id)_setupLoggedStreamForNextChunk:(id)a3;
- (id)_stackReferenceForRepeatedString:(id)a3;
- (id)_stackReferenceForRepeatedUUID:(id)a3;
- (id)ticketToFetchData:(id)a3 window:(double)a4 fetchStartTime:(double)a5;
- (id)ticketToPrepare:(id)a3 configuration:(id)a4;
- (id)ticketToStartStream:(id)a3;
- (id)ticketToStopStream:(id)a3;
- (void)_escortAgentToExit:(id)a3 withTicket:(id)a4;
- (void)_handleRecord:(id)a3;
- (void)_performResetOnOutputStream;
- (void)_prepareAgentToExecute:(id)a3 withTicket:(id)a4;
- (void)_setupCommonStreamParameters:(id)a3;
- (void)_setupLiveStream:(id)a3;
- (void)dealloc;
- (void)invalidate;
@end

@implementation DTOSLogLoader

+ (void)heartbeat
{
  if (qword_27EE842C0 != -1)
  {
    sub_24802D02C();
  }

  v2 = qword_27EE842B8;
  if (os_log_type_enabled(qword_27EE842B8, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_247F67000, v2, OS_LOG_TYPE_DEFAULT, "Heartbeat", v3, 2u);
  }
}

- (DTOSLogLoader)init
{
  v3 = dispatch_queue_create("com.apple.dt.os_log-loader", 0);
  v19.receiver = self;
  v19.super_class = DTOSLogLoader;
  v4 = [(XRMobileAgentQueueStop *)&v19 initWithDispatchQueue:v3 funnelTarget:v3];
  v5 = v4;
  if (v4)
  {
    pthread_cond_init(&v4->_stateChanged, 0);
    pthread_mutex_init(&v5->_stateLock, 0);
    pthread_mutex_lock(&v5->_stateLock);
    sub_247F8C514(v5);
    v6 = objc_opt_new();
    pushedProcessesByPid = v5->_pushedProcessesByPid;
    v5->_pushedProcessesByPid = v6;

    v8 = objc_opt_new();
    repeatedStrings = v5->_repeatedStrings;
    v5->_repeatedStrings = v8;

    v10 = objc_opt_new();
    repeatedUUIDs = v5->_repeatedUUIDs;
    v5->_repeatedUUIDs = v10;

    v12 = objc_opt_new();
    repeatedPlaceholders = v5->_repeatedPlaceholders;
    v5->_repeatedPlaceholders = v12;

    v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:50];
    argReferenceConstants = v5->_argReferenceConstants;
    v5->_argReferenceConstants = v14;

    v16 = objc_opt_new();
    pidToExecNameMapping = v5->_pidToExecNameMapping;
    v5->_pidToExecNameMapping = v16;

    pthread_mutex_unlock(&v5->_stateLock);
  }

  return v5;
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_stateLock);
  pthread_cond_destroy(&self->_stateChanged);
  v3.receiver = self;
  v3.super_class = DTOSLogLoader;
  [(DTOSLogLoader *)&v3 dealloc];
}

- (BOOL)_holdReceivedAgent:(id)a3 ticket:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    v9 = [v8 needsHold];
    if (v9)
    {
      v10 = [(XRMobileAgentQueueStop *)self _funnelQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_247F8C7BC;
      block[3] = &unk_278EF2008;
      v13 = v8;
      v14 = v6;
      v15 = self;
      dispatch_async(v10, block);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)ticketToStartStream:(id)a3
{
  v3 = objc_opt_new();

  return v3;
}

- (id)ticketToPrepare:(id)a3 configuration:(id)a4
{
  v4 = a4;
  v5 = objc_opt_new();
  [v5 setConfiguration:v4];

  return v5;
}

- (id)ticketToFetchData:(id)a3 window:(double)a4 fetchStartTime:(double)a5
{
  v7 = objc_opt_new();
  [v7 setWindowInSeconds:a4];
  [v7 setFetchStartTime:a5];

  return v7;
}

- (id)ticketToStopStream:(id)a3
{
  v3 = objc_opt_new();

  return v3;
}

- (void)_prepareAgentToExecute:(id)a3 withTicket:(id)a4
{
  v7 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 prepareAgent:v7 loader:self];
  }
}

- (void)_escortAgentToExit:(id)a3 withTicket:(id)a4
{
  v7 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 escortAgent:v7 loader:self];
  }
}

- (id)_stackReferenceForRepeatedString:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v6 = 0;
    goto LABEL_12;
  }

  v5 = [(NSMutableDictionary *)self->_repeatedStrings objectForKeyedSubscript:v4];
  if (!v5)
  {
    v5 = objc_opt_new();
    ptr = self->_tableLoader.__ptr_;
    v8 = [v4 UTF8String];
    if (*(ptr + 8) == 1)
    {
      **(ptr + 2) = 5;
    }

    sub_247F8F338(ptr, v8, 0xFFFFFFFFFFFFFFFFLL);
    v9 = *(ptr + 2);
    if (*v9 != 2)
    {
      v6 = 0;
      v5[2] = 0;
      goto LABEL_11;
    }

    v10 = v9[16];
    v5[2] = v10;
    if (v10 < 0x10000)
    {
      v6 = 0;
      goto LABEL_11;
    }

    [(NSMutableDictionary *)self->_repeatedStrings setObject:v5 forKeyedSubscript:v4];
  }

  v5 = v5;
  v6 = v5;
LABEL_11:

LABEL_12:

  return v6;
}

- (id)_stackReferenceForRepeatedUUID:(id)a3
{
  v10[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v7 = 0;
    goto LABEL_9;
  }

  v5 = [(NSMutableDictionary *)self->_repeatedUUIDs objectForKeyedSubscript:v4];
  if (v5)
  {
    goto LABEL_7;
  }

  v10[0] = 0;
  v10[1] = 0;
  [v4 getUUIDBytes:v10];
  v5 = objc_opt_new();
  v6 = sub_247F8CCF0(self->_tableLoader.__ptr_, v10);
  v5[2] = v6;
  if (v6 >= 0x10000)
  {
    [(NSMutableDictionary *)self->_repeatedUUIDs setObject:v5 forKeyedSubscript:v4];
LABEL_7:
    v5 = v5;
    v7 = v5;
    goto LABEL_8;
  }

  v7 = 0;
LABEL_8:

LABEL_9:
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)_handleRecord:(id)a3
{
  v258 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v216 = self;
  v204 = v4;
  pthread_mutex_lock(&self->_stateLock);
  self->_didHandleRecord = 1;
  v5 = [v4 subsystem];
  if (([v5 isEqualToString:@"com.apple.dt.Instruments"] & 1) == 0)
  {

    goto LABEL_10;
  }

  v6 = [v4 category];
  v7 = [v6 isEqualToString:@"heartbeat"];

  if (!v7)
  {
LABEL_10:
    v13 = [v4 type];
    v201 = v13 == 1536;
    if (v13 == 1536 || [(DTOSLogLoaderConfiguration *)v216->_configuration signpostConfig]!= 1)
    {
      v14 = v216;
      if (!v216->_deserializedEventStream || (endTime = v216->_endTime, [v4 date], v16 = objc_claimAutoreleasedReturnValue(), v17 = -[NSDate compare:](endTime, "compare:", v16), v16, v14 = v216, v17 != -1))
      {
        if (v14->_ignoreNextRecord)
        {
          if (v14->_encoder._state != 5)
          {
            v14->_ignoreNextRecord = 0;
          }

LABEL_217:
          pthread_mutex_unlock(&v14->_stateLock);
          goto LABEL_218;
        }

        if (v14->_liveStream && !v14->_calledForHelp && (*(*(v14->_tableLoader.__ptr_ + 2) + 24) - *(*(v14->_tableLoader.__ptr_ + 2) + 16)) <= 2047)
        {
          v14->_calledForHelp = 1;
          WeakRetained = objc_loadWeakRetained(&v14->_delegate);
          [WeakRetained logLoaderNeedsFetchNow:v14];
        }

        ptr = v216->_tableLoader.__ptr_;
        if (*(*(ptr + 16) + 64) >= 0x13890000u)
        {
          [(DTOSLogLoader *)v216 _performResetOnOutputStream];
          ptr = v216->_tableLoader.__ptr_;
        }

        sub_247F8F118(ptr, 1);
        v20 = [v4 threadIdentifier];
        v21 = [v4 processIdentifier];
        v252 = v20;
        v253 = v21;
        v22 = sub_247F95358(&v216->_pushedThreadsAndProcesses.__table_.__bucket_list_.__ptr_, &v252);
        v23 = v22;
        if (v22)
        {
          v24 = v22[4];
          v25 = v23[5];
          v203 = v24;
          v199 = v25;
        }

        else
        {
          v26 = v21;
          v200 = [(XRIntKeyedDictionary *)v216->_pushedProcessesByPid objectAtIndexedSubscript:v21];
          if (!v200)
          {
            v27 = objc_opt_new();
            LODWORD(v255) = v216->_encoder._topOfStackRef;
            v28 = v216->_tableLoader.__ptr_;
            LODWORD(v250) = v21;
            v29 = *(v28 + 16);
            *(v29 + 32) = &v250;
            *(v29 + 40) = &v250 + 4;
            sub_247F93B74(v28);
            sub_247F8CFB0(v216->_tableLoader.__ptr_, &v216->_deviceSessionRef._generation);
            sub_247F8D190(v216->_tableLoader.__ptr_, &v255);
            *(v27 + 8) = *(*(v216->_tableLoader.__ptr_ + 2) + 64);
            [(XRIntKeyedDictionary *)v216->_pushedProcessesByPid setObject:v27 atIndexedSubscript:v21];
            if ([(DTOSLogLoaderConfiguration *)v216->_configuration trackPidToExecNameMapping])
            {
              v30 = [v204 process];
              [(XRIntKeyedDictionary *)v216->_pidToExecNameMapping setObject:v30 atIndexedSubscript:v26];
            }

            v200 = v27;
          }

          v31 = objc_opt_new();
          LODWORD(v255) = v216->_encoder._topOfStackRef;
          v32 = v216->_tableLoader.__ptr_;
          v250 = v20;
          v33 = *(v32 + 16);
          *(v33 + 32) = &v250;
          *(v33 + 40) = v251;
          sub_247F93B74(v32);
          sub_247F8CFB0(v216->_tableLoader.__ptr_, v200 + 4);
          sub_247F8D190(v216->_tableLoader.__ptr_, &v255);
          v31[2] = *(*(v216->_tableLoader.__ptr_ + 2) + 64);
          v34 = v31;
          v35 = v200;
          v250 = &v252;
          v36 = sub_247F9541C(&v216->_pushedThreadsAndProcesses.__table_.__bucket_list_.__ptr_, &v252);
          v37 = v36[4];
          v203 = v34;
          v36[4] = v34;

          v38 = v36[5];
          v36[5] = v35;

          v199 = v35;
        }

        sub_247F8F118(v216->_tableLoader.__ptr_, 2);
        v196 = [v204 signpostName];
        v39 = [v204 signpostType];
        v191 = [v204 formatString];
        if ([v191 length])
        {
          v182 = [(DTOSLogLoader *)v216 _stackReferenceForRepeatedString:v191];
        }

        else
        {
          v182 = 0;
        }

        v40 = [v204 subsystem];
        v179 = v39;
        v41 = v40 == 0;

        if (v41)
        {
          v43 = [v204 sender];
          v44 = v43;
          if (v43)
          {
            v45 = v43;
          }

          else
          {
            v45 = @"Default";
          }

          v198 = v45;

          v42 = v204;
          [(DTOSLogLoader *)v216 _stackReferenceForRepeatedString:v198];
        }

        else
        {
          v42 = v204;
          v198 = [v204 subsystem];
          [(DTOSLogLoader *)v216 _stackReferenceForRepeatedString:v198];
        }
        v180 = ;
        v46 = [v42 category];
        v47 = v46;
        if (v46)
        {
          v48 = v46;
        }

        else
        {
          v48 = @"Default";
        }

        v197 = v48;

        v177 = [(DTOSLogLoader *)v216 _stackReferenceForRepeatedString:v197];
        v49 = v204;
        v175 = [v204 senderImagePath];
        v178 = [(DTOSLogLoader *)v216 _stackReferenceForRepeatedString:?];
        v176 = [v204 processImagePath];
        v181 = [(DTOSLogLoader *)v216 _stackReferenceForRepeatedString:?];
        if (([(DTOSLogLoaderConfiguration *)v216->_configuration columnInclusions]& 1) != 0 || ([(DTOSLogLoaderConfiguration *)v216->_configuration columnInclusions]& 2) != 0)
        {
          v50 = [v204 senderImageUUID];
          v183 = [(DTOSLogLoader *)v216 _stackReferenceForRepeatedUUID:v50];
          v51 = [v204 sender];
          v184 = [(DTOSLogLoader *)v216 _stackReferenceForRepeatedString:v51];

          v49 = v204;
        }

        else
        {
          v183 = 0;
          v184 = 0;
        }

        if (([(DTOSLogLoaderConfiguration *)v216->_configuration columnInclusions]& 2) != 0)
        {
          v52 = [v49 timeZone];
          v53 = [v52 name];
          v185 = [(DTOSLogLoader *)v216 _stackReferenceForRepeatedString:v53];

          v49 = v204;
        }

        else
        {
          v185 = 0;
        }

        v54 = [v49 machContinuousTimestamp];
        machTimeAdjustment = v216->_machTimeAdjustment;
        v56 = [v49 decomposedMessage];
        v209 = v56;
        if (v56)
        {
          v57 = [v56 placeholderCount];
        }

        else
        {
          v57 = 0;
        }

        v250 = 0;
        v251[0] = &v250;
        v251[1] = 0x2020000000;
        v251[2] = v57;
        v58 = [v209 literalPrefixAtIndex:v57];
        v189 = v58;
        if (v58 && [v58 length])
        {
          v186 = [(DTOSLogLoader *)v216 _stackReferenceForRepeatedString:v189];
        }

        else
        {
          v186 = 0;
        }

        v192 = machTimeAdjustment + v54;
        v212 = v57;
        while (v57 > [(NSMutableArray *)v216->_argReferenceConstants count])
        {
          argReferenceConstants = v216->_argReferenceConstants;
          v60 = objc_opt_new();
          [(NSMutableArray *)argReferenceConstants addObject:v60];

          v57 = v212;
        }

        if (v57)
        {
          v190 = 0;
          v193 = 0uLL;
          v188 = 0;
          v61 = 0;
          v62 = v209;
          while (1)
          {
            v205 = [(NSMutableArray *)v216->_argReferenceConstants objectAtIndexedSubscript:v61];
            v63 = [v62 placeholderAtIndex:v61];
            v248 = 0u;
            v249 = 0u;
            v246 = 0u;
            v247 = 0u;
            v207 = v63;
            v64 = [v63 tokens];
            v65 = [v64 countByEnumeratingWithState:&v246 objects:v257 count:16];
            v210 = v61;
            if (v65)
            {
              v214 = 0;
              v66 = 0;
              v67 = 0;
              v68 = *v247;
              do
              {
                for (i = 0; i != v65; ++i)
                {
                  if (*v247 != v68)
                  {
                    objc_enumerationMutation(v64);
                  }

                  v70 = *(*(&v246 + 1) + 8 * i);
                  v71 = [(NSMutableDictionary *)v216->_repeatedPlaceholders objectForKeyedSubscript:v70];
                  if (v71 || (v71 = [[DTOSLogArgumentPlaceholderDescription alloc] initWithPlaceholderToken:v70], [(NSMutableDictionary *)v216->_repeatedPlaceholders setObject:v71 forKeyedSubscript:v70], v71))
                  {
                    v72 = [(DTOSLogArgumentPlaceholderDescription *)v71 placeholderKind];
                    v73 = v72;
                    if (v67 || v72 != 2)
                    {
                      if (v66 || v72 != 1)
                      {
                        if ((v72 - 3) < 2 || [(DTOSLogArgumentPlaceholderDescription *)v71 placeholderKind]== 5)
                        {
                          v216->_encounteredBackdatedEvent = 1;
                          v214 = v73;
                        }
                      }

                      else
                      {
                        v66 = [(DTOSLogArgumentPlaceholderDescription *)v71 placeholderObjectValue];
                      }
                    }

                    else
                    {
                      v67 = [(DTOSLogArgumentPlaceholderDescription *)v71 placeholderObjectValue];
                    }
                  }
                }

                v65 = [v64 countByEnumeratingWithState:&v246 objects:v257 count:16];
              }

              while (v65);
            }

            else
            {
              v214 = 0;
              v66 = 0;
              v67 = 0;
            }

            aBlock[0] = MEMORY[0x277D85DD0];
            aBlock[1] = 3221225472;
            aBlock[2] = sub_247F8F1EC;
            aBlock[3] = &unk_278EF2030;
            v74 = v205;
            v244 = v74;
            v245 = &v250;
            v75 = _Block_copy(aBlock);
            v76 = [v209 argumentAtIndex:v210];
            if (!v207)
            {
              goto LABEL_139;
            }

            v77 = [v209 literalPrefixAtIndex:v210];
            v78 = [(DTOSLogLoader *)v216 _stackReferenceForRepeatedString:v77];
            v79 = *(v74 + 3);
            *(v74 + 3) = v78;

            v80 = *(v74 + 2);
            *(v74 + 2) = 0;

            v81 = *(v74 + 1);
            *(v74 + 1) = 0;

            v82 = *(v74 + 4);
            *(v74 + 4) = 0;

            *(v74 + 50) = 0;
            *(v74 + 24) = 0;
            v83 = v67;
            if (v67)
            {
              goto LABEL_88;
            }

            if (v210 <= 0x12)
            {
              break;
            }

            v84 = [MEMORY[0x277CCACA8] stringWithFormat:@"arg%d", v210];
LABEL_89:
            v85 = v84;
            v86 = [(DTOSLogLoader *)v216 _stackReferenceForRepeatedString:?];
            v87 = *(v74 + 4);
            *(v74 + 4) = v86;

            v88 = v66;
            if (v88)
            {
              goto LABEL_90;
            }

            v96 = [v76 category];
            switch(v96)
            {
              case 1:
                v109 = [v76 scalarCategory];
                if ((v109 - 3) < 2)
                {
                  v88 = @"fixed-decimal";
                }

                else
                {
                  if ((v109 - 1) > 1)
                  {
                    goto LABEL_134;
                  }

                  v110 = [v207 rawString];
                  v111 = [v110 isEqualToString:@"%p"];

                  v88 = @"address";
                  if ((v111 & 1) == 0)
                  {
                    v112 = [v207 rawString];
                    if ([v112 containsString:@"x"])
                    {

                      v88 = @"uint64-hex-lowercase";
                    }

                    else
                    {
                      v113 = [v207 rawString];
                      v114 = [v113 containsString:@"X"];

                      if (v114)
                      {
                        v88 = @"uint64-hex-lowercase";
                      }

                      else
                      {
                        v88 = @"uint64";
                      }
                    }
                  }
                }

                break;
              case 2:
                v88 = @"string";
                break;
              case 3:
                v97 = [v76 objectRepresentation];
                objc_opt_class();
                isKindOfClass = objc_opt_isKindOfClass();

                if (isKindOfClass)
                {
                  v88 = @"data";
                }

                else
                {
                  v88 = @"string";
                }

                break;
              default:
LABEL_134:
                v88 = 0;
                break;
            }

LABEL_90:
            if ([v76 availability] == 2)
            {

              v88 = @"private";
LABEL_93:
              v89 = XREngineeringTypeIDForMnemonic();
              goto LABEL_94;
            }

            if (v88)
            {
              goto LABEL_93;
            }

            v89 = 0;
LABEL_94:
            v90 = [(DTOSLogLoader *)v216 _stackReferenceForRepeatedString:v88];
            v91 = *(v74 + 1);
            *(v74 + 1) = v90;

            *(v74 + 24) = v89;
            if (*(v74 + 1) && v76)
            {
              v92 = [v76 category];
              if (v92 == 1)
              {
                switch(v214)
                {
                  case 5:
                    v75[2](v75);
                    v188 = v216->_machTimeAdjustment + [v76 unsignedInt64Value];
                    break;
                  case 4:
                    v75[2](v75);
                    *&v193 = v216->_machTimeAdjustment + [v76 unsignedInt64Value];
                    break;
                  case 3:
                    v75[2](v75);
                    *(&v193 + 1) = v216->_machTimeAdjustment + [v76 unsignedInt64Value];
                    break;
                }
              }

              else if (v92 == 3)
              {
                if (v89 == 163 && [v76 category] == 3)
                {
                  v215 = [v76 objectRepresentation];
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v173 = v215;
                    v99 = [(DTOSLogLoaderConfiguration *)v216->_configuration enableBacktraceReplacement];
                    if (v190)
                    {
                      v100 = 0;
                    }

                    else
                    {
                      v100 = v99;
                    }

                    if (v100)
                    {
                      v190 = v173;
                      v75[2](v75);
                    }

                    v101 = [v173 length];
                    v102 = v173;
                    v103 = [v173 bytes];
                    if (v101 >= 0x14)
                    {
                      v104 = v103;
                      v105 = v101 / 0x14;
                      do
                      {
                        v106 = *v104;
                        v256 = *(v104 + 16);
                        v255 = v106;
                        v107 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:&v255];
                        v108 = [(DTOSLogLoader *)v216 _stackReferenceForRepeatedUUID:v107];

                        v104 += 20;
                        --v105;
                      }

                      while (v105);
                    }
                  }
                }
              }

              else if (v92 == 2 && v89 != 193)
              {
                v93 = [v76 objectRepresentation];
                if ([v93 length] >= 0x11)
                {
                  v94 = [(DTOSLogLoader *)v216 _stackReferenceForRepeatedString:v93];
                  v95 = *(v74 + 2);
                  *(v74 + 2) = v94;
                }
              }
            }

LABEL_139:
            v61 = v210 + 1;
            v62 = v209;
            if (v210 + 1 == v212)
            {
              goto LABEL_145;
            }
          }

          v83 = off_278EF2050[v210];
LABEL_88:
          v84 = v83;
          goto LABEL_89;
        }

        v188 = 0;
        v193 = 0uLL;
        v190 = 0;
LABEL_145:
        v115 = [(DTOSLogLoader *)v216 _stackReferenceForRepeatedString:@"narrative-text"];
        v208 = v115[2];

        if (v196)
        {
          v117 = v203;
          v116 = v204;
          v211 = [(DTOSLogLoader *)v216 _stackReferenceForRepeatedString:?];
        }

        else
        {
          v211 = 0;
          v117 = v203;
          v116 = v204;
        }

        v118 = v212;
        v119 = [v116 backtrace];
        v120 = v119;
        if (!v119)
        {
          goto LABEL_153;
        }

        v121 = [v119 frames];
        v122 = [v121 count] < 2;

        if (v122)
        {
          v123 = v120;
          v120 = 0;
        }

        else
        {
          v117 = v203;
          v116 = v204;
          v118 = v212;
          if (v190)
          {
            goto LABEL_153;
          }

          v241 = 0u;
          v242 = 0u;
          v239 = 0u;
          v240 = 0u;
          v123 = [v120 frames];
          v167 = [v123 countByEnumeratingWithState:&v239 objects:v254 count:16];
          if (v167)
          {
            v168 = *v240;
            do
            {
              for (j = 0; j != v167; ++j)
              {
                if (*v240 != v168)
                {
                  objc_enumerationMutation(v123);
                }

                v170 = [*(*(&v239 + 1) + 8 * j) imageUUID];
                v171 = [(DTOSLogLoader *)v216 _stackReferenceForRepeatedUUID:v170];
              }

              v167 = [v123 countByEnumeratingWithState:&v239 objects:v254 count:16];
            }

            while (v167);
          }
        }

        v117 = v203;
        v116 = v204;
        v118 = v212;
LABEL_153:
        sub_247F8F118(v216->_tableLoader.__ptr_, 100);
        if (!v118)
        {
LABEL_194:
          v217[0] = MEMORY[0x277D85DD0];
          v217[1] = 3221225472;
          v217[2] = sub_247F8F3AC;
          v217[3] = &unk_278EF20F0;
          v217[4] = v216;
          v174 = v199;
          v218 = v174;
          v172 = v117;
          v219 = v172;
          v237 = v201;
          v220 = v116;
          v187 = v182;
          v221 = v187;
          v151 = v190;
          v222 = v151;
          v152 = v120;
          v223 = v152;
          v195 = v180;
          v224 = v195;
          v202 = v177;
          v225 = v202;
          v206 = v178;
          v226 = v206;
          v213 = v181;
          v227 = v213;
          v235 = v212;
          v236 = v208;
          v153 = v186;
          v228 = v153;
          v234 = &v250;
          v154 = v211;
          v229 = v154;
          v155 = v183;
          v230 = v155;
          v156 = v184;
          v231 = v156;
          v157 = v185;
          v232 = v157;
          v158 = v209;
          v233 = v158;
          v159 = _Block_copy(v217);
          v160 = v159;
          if (v179 || v193 == 0)
          {
            v163 = v193;
            if (*(&v193 + 1) > v193)
            {
              v163 = *(&v193 + 1);
            }

            if (v163 <= v188)
            {
              v163 = v188;
            }

            if (v163)
            {
              v164 = v163;
            }

            else
            {
              v164 = v192;
            }

            (*(v159 + 2))(v159, v164);
          }

          else
          {
            if (*(&v193 + 1))
            {
              v161 = *(&v193 + 1);
            }

            else
            {
              v161 = v192;
            }

            (*(v159 + 2))(v159, v161, 1);
            if (v193)
            {
              v162 = v193;
            }

            else
            {
              v162 = v192;
            }

            v160[2](v160, v162, 2);
          }

          sub_247F93D94(*(v216->_tableLoader.__ptr_ + 2), (*(v251[0] + 24) << 8) | 0x6A, *(v251[0] + 24), 0);
          v165 = v216->_tableLoader.__ptr_;
          if (**(v165 + 16) == 5)
          {
            v216->_ignoreNextRecord = 1;
          }

          sub_247F8F118(v165, 200);
          if (!v216->_slackInMachTimeUnits && v216->_lastMachTime < v192)
          {
            v216->_lastMachTime = v192;
          }

          _Block_object_dispose(&v250, 8);
          v4 = v204;
          v14 = v216;
          goto LABEL_217;
        }

        v124 = 0;
        while (1)
        {
          v125 = [v209 placeholderAtIndex:v124];
          v126 = [v209 argumentAtIndex:v124];
          v127 = [(NSMutableArray *)v216->_argReferenceConstants objectAtIndexedSubscript:v124];
          v128 = v216->_tableLoader.__ptr_;
          v238 = *(*(v128 + 16) + 64);
          if ((*(v127 + 50) & 1) == 0)
          {
            break;
          }

LABEL_166:

          ++v124;
          v117 = v203;
          v116 = v204;
          if (v212 == v124)
          {
            goto LABEL_194;
          }
        }

        if (!v125 || !v126)
        {
          sub_247F8D0F8(v128);
LABEL_165:
          v133 = objc_opt_new();
          v134 = *(v127 + 40);
          *(v127 + 40) = v133;

          *(*(v127 + 40) + 8) = *(*(v216->_tableLoader.__ptr_ + 2) + 64);
          goto LABEL_166;
        }

        v129 = *(v127 + 48);
        v130 = *(v127 + 8);
        if (v130)
        {
          sub_247F8CFB0(v128, (v130 + 8));
        }

        else
        {
          sub_247F8D0F8(v128);
        }

        if (*(v127 + 48) == 248)
        {
          v131 = v216->_tableLoader.__ptr_;
          LODWORD(v255) = 0;
          v132 = *(v131 + 16);
          *(v132 + 32) = &v255;
          *(v132 + 40) = &v255 + 4;
          sub_247F93B74(v131);
LABEL_164:
          sub_247F8D190(v216->_tableLoader.__ptr_, &v238);
          goto LABEL_165;
        }

        v135 = [v126 category];
        if ((v135 - 2) >= 2)
        {
          if (v135)
          {
            if (v135 == 1)
            {
              v136 = [v126 scalarType] - 13;
              v137 = v216->_tableLoader.__ptr_;
              if (v136 > 1)
              {
                *&v255 = [v126 unsignedInt64Value];
              }

              else
              {
                [v126 doubleValue];
                *&v255 = v138;
              }

              v139 = *(v137 + 16);
              *(v139 + 32) = &v255;
              *(v139 + 40) = &v255 + 8;
              sub_247F93B74(v137);
            }
          }

          else
          {
            sub_247F8D0F8(v216->_tableLoader.__ptr_);
          }

          goto LABEL_164;
        }

        v140 = *(v127 + 16);
        if (v140)
        {
          sub_247F8CFB0(v216->_tableLoader.__ptr_, (v140 + 8));
          goto LABEL_164;
        }

        v141 = [v126 objectRepresentation];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v142 = v141;
          v143 = v142;
          if (v129 == 163)
          {
            sub_247F8CDCC(v216, v142);
          }

          else if (v129 == 135 && [v142 length] == 16)
          {
            v255 = 0uLL;
            [v143 getBytes:&v255 length:16];
            sub_247F8CCF0(v216->_tableLoader.__ptr_, &v255);
          }

          else
          {
            v147 = v216->_tableLoader.__ptr_;
            v148 = v143;
            sub_247F8F210(v147, [v143 bytes], objc_msgSend(v143, "length"));
          }
        }

        else
        {
          if (!v141)
          {
            sub_247F8D0F8(v216->_tableLoader.__ptr_);
LABEL_193:

            goto LABEL_164;
          }

          v144 = [v141 description];
          v143 = v144;
          if (v144)
          {
            if (v129 == 193)
            {
              v145 = [v144 dataUsingEncoding:4];
              v194 = v216->_tableLoader.__ptr_;
              v146 = v145;
              sub_247F8F210(v194, [v145 bytes], objc_msgSend(v145, "length"));
            }

            else
            {
              v149 = v216->_tableLoader.__ptr_;
              v150 = v144;
              sub_247F8F338(v149, [v143 UTF8String], 0xFFFFFFFFFFFFFFFFLL);
            }
          }

          else
          {
            sub_247F8D0F8(v216->_tableLoader.__ptr_);
          }
        }

        goto LABEL_193;
      }

      [(OSLogEventStreamBase *)v216->_deserializedEventStream invalidate];
    }

    pthread_mutex_unlock(&v216->_stateLock);
    goto LABEL_218;
  }

  v8 = v216;
  if (v216->_slackInMachTimeUnits)
  {
    v9 = [v4 machContinuousTimestamp];
    v8 = v216;
    slackInMachTimeUnits = v216->_slackInMachTimeUnits;
    v11 = v9 >= slackInMachTimeUnits;
    v12 = v9 - slackInMachTimeUnits;
    if (!v11)
    {
      v12 = 0;
    }

    if (v216->_lastMachTime < v12)
    {
      v216->_lastMachTime = v12;
    }
  }

  pthread_mutex_unlock(&v8->_stateLock);
LABEL_218:

  v166 = *MEMORY[0x277D85DE8];
}

- (void)_performResetOnOutputStream
{
  v54[1] = *MEMORY[0x277D85DE8];
  sub_247F90900(self->_tableLoader.__ptr_);
  v3 = MEMORY[0x277D86220];
  v4 = MEMORY[0x277D86220];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_24802D098();
  }

  v50 = xmmword_278EF2130;
  v51 = *&off_278EF2140;
  v52 = xmmword_278EF2150;
  *&v53[0] = "message";
  v48 = xmmword_278EF2110;
  v49 = *&off_278EF2120;
  v46 = 0;
  v47 = 0;
  v45 = 0;
  sub_247F949B8(&v45, &v48, v53 + 8, 0xBuLL);
  v52 = xmmword_278EF21A8;
  v53[0] = *&off_278EF21B8;
  v53[1] = xmmword_278EF21C8;
  v48 = xmmword_278EF2168;
  v49 = *&off_278EF2178;
  v50 = xmmword_278EF2188;
  v51 = *&off_278EF2198;
  v43 = 0;
  v44 = 0;
  __p = 0;
  sub_247F949B8(&__p, &v48, v54, 0xEuLL);
  if (([(DTOSLogLoaderConfiguration *)self->_configuration columnInclusions]& 1) != 0)
  {
    *&v48 = "sender-image-uuid";
    sub_247F909AC(&v45, &v48);
    *&v48 = "sender-image-offset";
    sub_247F909AC(&v45, &v48);
    *&v48 = "sender-image-name";
    sub_247F909AC(&v45, &v48);
    *&v48 = "sender-image-uuid";
    sub_247F909AC(&__p, &v48);
    *&v48 = "sender-image-offset";
    sub_247F909AC(&__p, &v48);
    *&v48 = "sender-image-name";
    sub_247F909AC(&__p, &v48);
  }

  if (([(DTOSLogLoaderConfiguration *)self->_configuration columnInclusions]& 2) != 0)
  {
    *&v48 = "timezone-name";
    sub_247F909AC(&v45, &v48);
    *&v48 = "unix-time-interval";
    sub_247F909AC(&v45, &v48);
    *&v48 = "timezone-name";
    sub_247F909AC(&__p, &v48);
    *&v48 = "unix-time-interval";
    sub_247F909AC(&__p, &v48);
  }

  if (([(DTOSLogLoaderConfiguration *)self->_configuration columnInclusions]& 2) != 0)
  {
    *&v48 = "emit-location";
    sub_247F909AC(&v45, &v48);
    *&v48 = "sender-image-name";
    sub_247F909AC(&v45, &v48);
    *&v48 = "emit-location";
    sub_247F909AC(&__p, &v48);
    *&v48 = "sender-image-name";
    sub_247F909AC(&__p, &v48);
  }

  sub_247F90A80(self->_tableLoader.__ptr_, 0, "os-log", 6, 0, 0, v45, ((v46 - v45) >> 3));
  sub_247F90A80(self->_tableLoader.__ptr_, 1u, "os-log-arg", 10, 0, 0, off_278EF21D8, 8u);
  sub_247F90A80(self->_tableLoader.__ptr_, 2u, "os-signpost", 11, 0, 0, __p, ((v43 - __p) >> 3));
  sub_247F90A80(self->_tableLoader.__ptr_, 3u, "os-signpost-arg", 15, 0, 0, off_278EF2218, 0xAu);
  ptr = self->_tableLoader.__ptr_;
  if (*(ptr + 8) == 1)
  {
    **(ptr + 2) = 5;
  }

  sub_247F8F338(ptr, "TODO", 0xFFFFFFFFFFFFFFFFLL);
  v6 = *(ptr + 2);
  if (*v6 == 2)
  {
    v7 = v6[16];
  }

  else
  {
    v7 = 0;
  }

  self->_deviceSessionRef = v7;
  v8 = self->_tableLoader.__ptr_;
  if (*(v8 + 8) == 1)
  {
    **(v8 + 2) = 5;
  }

  sub_247F8F338(v8, "Default", 0xFFFFFFFFFFFFFFFFLL);
  v9 = *(v8 + 2);
  if (*v9 == 2)
  {
    v10 = v9[16];
  }

  else
  {
    v10 = 0;
  }

  self->_defaultLevelRef = v10;
  v11 = self->_tableLoader.__ptr_;
  if (*(v11 + 8) == 1)
  {
    **(v11 + 2) = 5;
  }

  sub_247F8F338(v11, "Debug", 0xFFFFFFFFFFFFFFFFLL);
  v12 = *(v11 + 2);
  if (*v12 == 2)
  {
    v13 = v12[16];
  }

  else
  {
    v13 = 0;
  }

  self->_debugLevelRef = v13;
  v14 = self->_tableLoader.__ptr_;
  if (*(v14 + 8) == 1)
  {
    **(v14 + 2) = 5;
  }

  sub_247F8F338(v14, "Info", 0xFFFFFFFFFFFFFFFFLL);
  v15 = *(v14 + 2);
  if (*v15 == 2)
  {
    v16 = v15[16];
  }

  else
  {
    v16 = 0;
  }

  self->_infoLevelRef = v16;
  v17 = self->_tableLoader.__ptr_;
  if (*(v17 + 8) == 1)
  {
    **(v17 + 2) = 5;
  }

  sub_247F8F338(v17, "Error", 0xFFFFFFFFFFFFFFFFLL);
  v18 = *(v17 + 2);
  if (*v18 == 2)
  {
    v19 = v18[16];
  }

  else
  {
    v19 = 0;
  }

  self->_errorLevelRef = v19;
  v20 = self->_tableLoader.__ptr_;
  if (*(v20 + 8) == 1)
  {
    **(v20 + 2) = 5;
  }

  sub_247F8F338(v20, "Fault", 0xFFFFFFFFFFFFFFFFLL);
  v21 = *(v20 + 2);
  if (*v21 == 2)
  {
    v22 = v21[16];
  }

  else
  {
    v22 = 0;
  }

  self->_faultLevelRef = v22;
  v23 = self->_tableLoader.__ptr_;
  if (*(v23 + 8) == 1)
  {
    **(v23 + 2) = 5;
  }

  sub_247F8F338(v23, "Begin", 0xFFFFFFFFFFFFFFFFLL);
  v24 = *(v23 + 2);
  if (*v24 == 2)
  {
    v25 = v24[16];
  }

  else
  {
    v25 = 0;
  }

  self->_beginRef = v25;
  v26 = self->_tableLoader.__ptr_;
  if (*(v26 + 8) == 1)
  {
    **(v26 + 2) = 5;
  }

  sub_247F8F338(v26, "Event", 0xFFFFFFFFFFFFFFFFLL);
  v27 = *(v26 + 2);
  if (*v27 == 2)
  {
    v28 = v27[16];
  }

  else
  {
    v28 = 0;
  }

  self->_emitRef = v28;
  v29 = self->_tableLoader.__ptr_;
  if (*(v29 + 8) == 1)
  {
    **(v29 + 2) = 5;
  }

  sub_247F8F338(v29, "End", 0xFFFFFFFFFFFFFFFFLL);
  v30 = *(v29 + 2);
  if (*v30 == 2)
  {
    v31 = v30[16];
  }

  else
  {
    v31 = 0;
  }

  self->_endRef = v31;
  v32 = self->_tableLoader.__ptr_;
  if (*(v32 + 8) == 1)
  {
    **(v32 + 2) = 5;
  }

  sub_247F8F338(v32, "Thread", 0xFFFFFFFFFFFFFFFFLL);
  v33 = *(v32 + 2);
  if (*v33 == 2)
  {
    v34 = v33[16];
  }

  else
  {
    v34 = 0;
  }

  self->_threadScopeRef = v34;
  v35 = self->_tableLoader.__ptr_;
  if (*(v35 + 8) == 1)
  {
    **(v35 + 2) = 5;
  }

  sub_247F8F338(v35, "Process", 0xFFFFFFFFFFFFFFFFLL);
  v36 = *(v35 + 2);
  if (*v36 == 2)
  {
    v37 = v36[16];
  }

  else
  {
    v37 = 0;
  }

  self->_processScopeRef = v37;
  v38 = self->_tableLoader.__ptr_;
  if (*(v38 + 8) == 1)
  {
    **(v38 + 2) = 5;
  }

  sub_247F8F338(v38, "System", 0xFFFFFFFFFFFFFFFFLL);
  v39 = *(v38 + 2);
  if (*v39 == 2)
  {
    v40 = v39[16];
  }

  else
  {
    v40 = 0;
  }

  self->_systemScopeRef = v40;
  [(NSMutableDictionary *)self->_repeatedStrings removeAllObjects];
  [(NSMutableDictionary *)self->_repeatedUUIDs removeAllObjects];
  [(NSMutableArray *)self->_argReferenceConstants removeAllObjects];
  [(XRIntKeyedDictionary *)self->_pushedProcessesByPid removeAllObjects];
  sub_247F95934(&self->_pushedThreadsAndProcesses);
  if (__p)
  {
    v43 = __p;
    operator delete(__p);
  }

  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (void)_setupCommonStreamParameters:(id)a3
{
  v23[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DTOSLogLoaderConfiguration *)self->_configuration signpostConfig];
  if (v5)
  {
    if (v5 == 1)
    {
      v7 = self->_liveStream == v4;
      v6 = 1012;
      v8 = 500;
    }

    else
    {
      v6 = 212;
      v7 = v5 == 2;
      v8 = 215;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6;
    }
  }

  else
  {
    v9 = 247;
  }

  v10 = [(DTOSLogLoaderConfiguration *)self->_configuration loaderExclusions];
  v11 = [(DTOSLogLoaderConfiguration *)self->_configuration loaderExclusions];
  v12 = v9 & 0x3F6;
  if ((v10 & 1) == 0)
  {
    v12 = v9;
  }

  if ((v11 & 2) != 0)
  {
    v13 = v12 & 0x3F5;
  }

  else
  {
    v13 = v12;
  }

  v14 = [(DTOSLogLoaderConfiguration *)self->_configuration filterPredicate];
  [(OSLogEventLiveStream *)v4 setFilterPredicate:v14];
  v15 = [(OSLogEventLiveStream *)v4 filterPredicate];

  [(DTOSLogLoaderConfiguration *)self->_configuration setFilterPredicate:v15];
  if (v15)
  {
    if (self->_liveStream == v4)
    {
      v17 = +[DTOSLogLoader heartbeatPredicate];
      v18 = MEMORY[0x277CCA920];
      v23[0] = v15;
      v23[1] = v17;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
      v16 = [v18 orPredicateWithSubpredicates:v19];
    }

    else
    {
      v16 = v15;
    }
  }

  else
  {
    v16 = 0;
  }

  [(OSLogEventLiveStream *)v4 setFilterPredicate:v16];
  [(OSLogEventLiveStream *)v4 setFlags:v13];
  [(OSLogEventLiveStream *)v4 setTarget:MEMORY[0x277D85CD0]];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_247F90F68;
  v22[3] = &unk_278EF2270;
  v22[4] = self;
  [(OSLogEventLiveStream *)v4 setEventHandler:v22];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_247F911D8;
  v21[3] = &unk_278EF22C0;
  v21[4] = self;
  [(OSLogEventLiveStream *)v4 setInvalidationHandler:v21];

  v20 = *MEMORY[0x277D85DE8];
}

- (id)_setupLoggedStreamForNextChunk:(id)a3
{
  v4 = a3;
  v5 = [(DTOSLogLoaderConfiguration *)self->_configuration signpostConfig];
  switch(v5)
  {
    case 0uLL:
      goto LABEL_4;
    case 1uLL:
      v6 = [objc_alloc(MEMORY[0x277D24440]) initWithSource:v4 skipNonSignpostFiles:1];
      goto LABEL_6;
    case 2uLL:
LABEL_4:
      v6 = [objc_alloc(MEMORY[0x277D24440]) initWithSource:v4];
LABEL_6:
      v7 = v6;
      goto LABEL_8;
  }

  v7 = 0;
LABEL_8:
  objc_storeStrong(&self->_loggedStream, v7);
  [(DTOSLogLoader *)self _setupCommonStreamParameters:v7];

  return v7;
}

- (void)_setupLiveStream:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277D24420]) initWithLiveSource:v4];
  liveStream = self->_liveStream;
  self->_liveStream = v5;

  objc_initWeak(&location, self);
  v7 = self->_liveStream;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_247F91710;
  v10[3] = &unk_278EF22E8;
  objc_copyWeak(&v11, &location);
  [(OSLogEventLiveStream *)v7 setDroppedEventHandler:v10];
  [(DTOSLogLoader *)self _setupCommonStreamParameters:self->_liveStream];
  if (mach_timebase_info(&info))
  {
    v8 = 0;
  }

  else
  {
    v8 = 5000000 * info.denom / info.numer;
  }

  self->_slackInMachTimeUnits = v8;
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)invalidate
{
  pthread_mutex_lock(&self->_stateLock);
  self->_workingBufferCanBeReplaced = 0;
  pthread_cond_signal(&self->_stateChanged);

  pthread_mutex_unlock(&self->_stateLock);
}

- (DTOSLogLoaderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 32) = 0;
  *(self + 66) = 0;
  *(self + 35) = 0;
  *(self + 36) = 0;
  *(self + 34) = 0;
  *(self + 82) = 0;
  *(self + 92) = 0;
  *(self + 93) = 0;
  *(self + 94) = 0;
  *(self + 95) = 0;
  *(self + 96) = 0;
  *(self + 97) = 0;
  *(self + 98) = 0;
  *(self + 99) = 0;
  *(self + 100) = 0;
  *(self + 101) = 0;
  *(self + 102) = 0;
  *(self + 103) = 0;
  *(self + 424) = 0u;
  *(self + 440) = 0u;
  *(self + 114) = 1065353216;
  return self;
}

@end