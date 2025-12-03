@interface CMContinuityCaptureRapportTransportBase
- (CMContinuityCaptureRapportTransportBase)initWithRapportDevice:(id)device queue:(id)queue taskDelegate:(id)delegate;
- (id)incomingStreamRequestHandler;
- (void)_bindClock:(unint64_t)clock peerAddress:(id)address retries:(int64_t)retries completion:(id)completion;
- (void)_enqueueResponse:(id)response identifier:(id)identifier;
- (void)createTimeSyncClockWithPeerAddress:(id)address completion:(id)completion;
- (void)disposeTimeSyncClock;
- (void)enqueueResponse:(id)response identifier:(id)identifier;
- (void)setIncomingStreamRequestHandler:(id)handler;
- (void)setTaskDelegate:(id)delegate;
@end

@implementation CMContinuityCaptureRapportTransportBase

- (void)setIncomingStreamRequestHandler:(id)handler
{
  obj = self;
  handlerCopy = handler;
  objc_sync_enter(obj);
  v5 = MEMORY[0x245D12020](handlerCopy);

  incomingStreamRequestHandler = obj->_incomingStreamRequestHandler;
  obj->_incomingStreamRequestHandler = v5;

  objc_sync_exit(obj);
}

- (id)incomingStreamRequestHandler
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = MEMORY[0x245D12020](selfCopy->_incomingStreamRequestHandler);
  objc_sync_exit(selfCopy);

  v4 = MEMORY[0x245D12020](v3);

  return v4;
}

- (void)setTaskDelegate:(id)delegate
{
  obj = delegate;
  if ([(CMContinuityCaptureTransportRapportDevice *)self->_device remote])
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"%@ ContinuityCapture error : can't update task delegate for client", self}];
  }

  objc_storeWeak(&self->_delegate, obj);
}

- (void)enqueueResponse:(id)response identifier:(id)identifier
{
  responseCopy = response;
  identifierCopy = identifier;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __70__CMContinuityCaptureRapportTransportBase_enqueueResponse_identifier___block_invoke;
  v11[3] = &unk_278D5C120;
  objc_copyWeak(&v14, &location);
  v12 = responseCopy;
  v13 = identifierCopy;
  v9 = identifierCopy;
  v10 = responseCopy;
  dispatch_async(queue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __70__CMContinuityCaptureRapportTransportBase_enqueueResponse_identifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _enqueueResponse:*(a1 + 32) identifier:*(a1 + 40)];
    WeakRetained = v3;
  }
}

- (void)_enqueueResponse:(id)response identifier:(id)identifier
{
  responseCopy = response;
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    objc_initWeak(location, self);
    dispatch_assert_queue_V2(self->_queue);
    v9 = [responseCopy objectForKeyedSubscript:@"ContinuityCaptureSelector"];
    if (v9)
    {
      v10 = [responseCopy objectForKeyedSubscript:@"ContinuityCaptureArgs"];

      if (v10)
      {
        v11 = [responseCopy objectForKeyedSubscript:@"ContinuityCaptureSelector"];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v13 = CMContinuityCaptureLog(2);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = [responseCopy objectForKeyedSubscript:@"ContinuityCaptureSelector"];
            v15 = [responseCopy objectForKeyedSubscript:@"ContinuityCaptureGID"];
            *buf = 138544130;
            selfCopy9 = self;
            v136 = 2114;
            *v137 = identifierCopy;
            *&v137[8] = 2114;
            v138 = v14;
            v139 = 2114;
            v140 = v15;
            _os_log_impl(&dword_242545000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ enqueueResponse identifier:%{public}@ selector %{public}@ gid %{public}@", buf, 0x2Au);
          }

          v16 = [responseCopy objectForKeyedSubscript:@"ContinuityCaptureArgs"];
          objc_opt_class();
          v17 = objc_opt_isKindOfClass();

          if (v17)
          {
            v18 = [responseCopy objectForKeyedSubscript:@"ContinuityCaptureArgs"];
            if (![identifierCopy isEqualToString:@"ContinuityCaptureCommand"])
            {
              if ([identifierCopy isEqualToString:@"ContinuityCaptureControl"])
              {
                v23 = [responseCopy objectForKeyedSubscript:@"ContinuityCaptureSelector"];
                unsignedIntegerValue = [v23 unsignedIntegerValue];

                if (unsignedIntegerValue == 2)
                {
                  if ([v18 count] == 2)
                  {
                    v56 = [v18 objectAtIndexedSubscript:0];
                    objc_opt_class();
                    v57 = objc_opt_isKindOfClass();

                    if (v57)
                    {
                      v58 = [v18 objectAtIndexedSubscript:1];
                      objc_opt_class();
                      v59 = objc_opt_isKindOfClass();

                      if (v59)
                      {
                        v60 = [v18 objectAtIndexedSubscript:0];
                        unsignedIntValue = [v60 unsignedIntValue];
                        v62 = [v18 objectAtIndexedSubscript:1];
                        [WeakRetained handleAVCNegotiation:unsignedIntValue data:v62];
                      }
                    }
                  }

                  goto LABEL_107;
                }

                if (unsignedIntegerValue == 1)
                {
                  if (v18)
                  {
                    if ([v18 count] == 1)
                    {
                      v25 = [v18 objectAtIndexedSubscript:0];
                      objc_opt_class();
                      v26 = objc_opt_isKindOfClass();

                      if (v26)
                      {
                        v27 = MEMORY[0x277CCAAC8];
                        v28 = objc_opt_class();
                        v29 = [v18 objectAtIndexedSubscript:0];
                        v120 = 0;
                        v10 = [v27 unarchivedObjectOfClass:v28 fromData:v29 error:&v120];
                        v22 = v120;

                        if (v10)
                        {
                          v30 = CMContinuityCaptureLog(2);
                          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 138543618;
                            selfCopy9 = self;
                            v136 = 2114;
                            *v137 = v10;
                            _os_log_impl(&dword_242545000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ dispatch update for %{public}@", buf, 0x16u);
                          }

                          [WeakRetained setValueForControl:v10 completion:&__block_literal_global_394];
                          goto LABEL_108;
                        }

                        v116 = CMContinuityCaptureLog(2);
                        [CMContinuityCaptureRapportTransportBase _enqueueResponse:v116 identifier:?];
                        goto LABEL_83;
                      }
                    }
                  }
                }
              }

              else if ([identifierCopy isEqualToString:@"ContinuityCaptureData"])
              {
                v31 = [responseCopy objectForKeyedSubscript:@"ContinuityCaptureSelector"];
                unsignedIntegerValue2 = [v31 unsignedIntegerValue];

                v10 = 0;
                if (unsignedIntegerValue2 || !v18)
                {
                  goto LABEL_55;
                }

                if ([v18 count] != 2)
                {
                  goto LABEL_107;
                }

                v33 = [v18 objectAtIndexedSubscript:0];
                objc_opt_class();
                v34 = objc_opt_isKindOfClass();

                if ((v34 & 1) == 0)
                {
                  goto LABEL_107;
                }

                v35 = [v18 objectAtIndexedSubscript:1];
                objc_opt_class();
                v36 = objc_opt_isKindOfClass();

                if ((v36 & 1) == 0)
                {
                  goto LABEL_107;
                }

                v37 = MEMORY[0x277CCAAC8];
                v38 = objc_opt_class();
                v39 = [v18 objectAtIndexedSubscript:0];
                v119 = 0;
                v40 = [v37 unarchivedObjectOfClass:v38 fromData:v39 error:&v119];
                v22 = v119;

                if (v40)
                {
                  v41 = [v18 objectAtIndexedSubscript:1];
                  [WeakRetained didCaptureStillImage:v40 entity:{-[NSObject unsignedIntValue](v41, "unsignedIntValue")}];
                }

                else
                {
                  v41 = CMContinuityCaptureLog(2);
                  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
                  {
                    [CMContinuityCaptureRapportTransportBase _enqueueResponse:identifier:];
                  }
                }

                goto LABEL_82;
              }

LABEL_107:
              v10 = 0;
              v22 = 0;
              goto LABEL_108;
            }

            v19 = [responseCopy objectForKeyedSubscript:@"ContinuityCaptureSelector"];
            unsignedIntegerValue3 = [v19 unsignedIntegerValue];

            v10 = 0;
            if (unsignedIntegerValue3 <= 3)
            {
              if (unsignedIntegerValue3 != 1)
              {
                if (unsignedIntegerValue3 == 2)
                {
                  if ([v18 count] == 3)
                  {
                    v91 = [v18 objectAtIndexedSubscript:0];
                    objc_opt_class();
                    v92 = objc_opt_isKindOfClass();

                    if (v92)
                    {
                      v93 = [v18 objectAtIndexedSubscript:1];
                      objc_opt_class();
                      v94 = objc_opt_isKindOfClass();

                      if (v94)
                      {
                        v95 = [v18 objectAtIndexedSubscript:2];
                        objc_opt_class();
                        v96 = objc_opt_isKindOfClass();

                        if ((v96 & 1) != 0 && ![(CMContinuityCaptureTransportRapportDevice *)self->_device remote])
                        {
                          v97 = CMContinuityCaptureLog(2);
                          if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
                          {
                            v98 = [v18 objectAtIndexedSubscript:0];
                            unsignedIntValue2 = [v98 unsignedIntValue];
                            v100 = [v18 objectAtIndexedSubscript:1];
                            unsignedIntValue3 = [v100 unsignedIntValue];
                            *buf = 138543874;
                            selfCopy9 = self;
                            v136 = 1024;
                            *v137 = unsignedIntValue2;
                            *&v137[4] = 1024;
                            *&v137[6] = unsignedIntValue3;
                            _os_log_impl(&dword_242545000, v97, OS_LOG_TYPE_DEFAULT, "%{public}@ StopStream entity %u option %u", buf, 0x18u);
                          }

                          incomingStreamRequestHandler = [(CMContinuityCaptureRapportTransportBase *)self incomingStreamRequestHandler];

                          if (incomingStreamRequestHandler)
                          {
                            incomingStreamRequestHandler2 = [(CMContinuityCaptureRapportTransportBase *)self incomingStreamRequestHandler];
                            incomingStreamRequestHandler2[2](incomingStreamRequestHandler2, 0);
                          }

                          v104 = [v18 objectAtIndexedSubscript:0];
                          unsignedIntValue4 = [v104 unsignedIntValue];
                          v106 = [v18 objectAtIndexedSubscript:1];
                          unsignedIntValue5 = [v106 unsignedIntValue];
                          v121[0] = MEMORY[0x277D85DD0];
                          v121[1] = 3221225472;
                          v121[2] = __71__CMContinuityCaptureRapportTransportBase__enqueueResponse_identifier___block_invoke_390;
                          v121[3] = &unk_278D5C660;
                          objc_copyWeak(&v123, location);
                          v18 = v18;
                          v122 = v18;
                          [WeakRetained stopStream:unsignedIntValue4 option:unsignedIntValue5 completion:v121];

                          objc_destroyWeak(&v123);
                        }
                      }
                    }
                  }

                  goto LABEL_107;
                }

                if (unsignedIntegerValue3 == 3)
                {
                  if (v18)
                  {
                    if ([v18 count] == 2)
                    {
                      v42 = [v18 objectAtIndexedSubscript:0];
                      objc_opt_class();
                      v43 = objc_opt_isKindOfClass();

                      if (v43)
                      {
                        v44 = [v18 objectAtIndexedSubscript:1];
                        objc_opt_class();
                        v45 = objc_opt_isKindOfClass();

                        if (v45)
                        {
                          v9 = [v18 objectAtIndexedSubscript:0];
                          if ([v9 isEqualToString:@"kCMContinuityCaptureEventConnectionDisconnect"])
                          {
                            v46 = CMContinuityCaptureLog(2);
                            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
                            {
                              *buf = 138543618;
                              selfCopy9 = self;
                              v136 = 2114;
                              *v137 = WeakRetained;
                              _os_log_impl(&dword_242545000, v46, OS_LOG_TYPE_DEFAULT, "%{public}@ Session Interrupted for %{public}@", buf, 0x16u);
                            }

                            v47 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ContinuityCapture" code:-1009 userInfo:0];
                            [WeakRetained connectionInterrupted:v47 forDevice:self->_device];
                          }

                          else
                          {
                            v108 = [v18 objectAtIndexedSubscript:1];
                            unsignedIntValue6 = [v108 unsignedIntValue];
                            v132 = @"CMContinuityCaptureStateMachineEventDataKeyPostTime";
                            v110 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:mach_continuous_time()];
                            v133 = v110;
                            v111 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v133 forKeys:&v132 count:1];
                            [WeakRetained postEvent:v9 entity:unsignedIntValue6 data:v111];
                          }

                          v10 = 0;
                          v22 = 0;
                          goto LABEL_112;
                        }
                      }
                    }
                  }

                  goto LABEL_107;
                }

                goto LABEL_55;
              }

              if ([v18 count] != 3)
              {
                goto LABEL_107;
              }

              v63 = [v18 objectAtIndexedSubscript:0];
              objc_opt_class();
              v64 = objc_opt_isKindOfClass();

              if ((v64 & 1) == 0)
              {
                goto LABEL_107;
              }

              v65 = [v18 objectAtIndexedSubscript:1];
              objc_opt_class();
              v66 = objc_opt_isKindOfClass();

              if ((v66 & 1) == 0)
              {
                goto LABEL_107;
              }

              v67 = [v18 objectAtIndexedSubscript:2];
              objc_opt_class();
              v68 = objc_opt_isKindOfClass();

              if ((v68 & 1) == 0 || [(CMContinuityCaptureTransportRapportDevice *)self->_device remote])
              {
                goto LABEL_107;
              }

              v69 = MEMORY[0x277CCAAC8];
              v70 = objc_opt_class();
              v71 = [v18 objectAtIndexedSubscript:0];
              v127 = 0;
              v72 = [v69 unarchivedObjectOfClass:v70 fromData:v71 error:&v127];
              v22 = v127;

              if (!v72)
              {
                v118 = CMContinuityCaptureLog(2);
                [CMContinuityCaptureRapportTransportBase _enqueueResponse:v118 identifier:?];
                goto LABEL_83;
              }

              v73 = CMContinuityCaptureLog(2);
              if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
              {
                v74 = [v18 objectAtIndexedSubscript:1];
                unsignedIntValue7 = [v74 unsignedIntValue];
                *buf = 138543874;
                selfCopy9 = self;
                v136 = 2114;
                *v137 = v72;
                *&v137[8] = 1024;
                LODWORD(v138) = unsignedIntValue7;
                _os_log_impl(&dword_242545000, v73, OS_LOG_TYPE_DEFAULT, "%{public}@ StartStream Configuration %{public}@ option %u", buf, 0x1Cu);
              }

              incomingStreamRequestHandler3 = [(CMContinuityCaptureRapportTransportBase *)self incomingStreamRequestHandler];

              if (incomingStreamRequestHandler3)
              {
                incomingStreamRequestHandler4 = [(CMContinuityCaptureRapportTransportBase *)self incomingStreamRequestHandler];
                incomingStreamRequestHandler4[2](incomingStreamRequestHandler4, 1);
              }

              v78 = [v18 objectAtIndexedSubscript:1];
              unsignedIntValue8 = [v78 unsignedIntValue];
              v124[0] = MEMORY[0x277D85DD0];
              v124[1] = 3221225472;
              v124[2] = __71__CMContinuityCaptureRapportTransportBase__enqueueResponse_identifier___block_invoke_389;
              v124[3] = &unk_278D5C660;
              objc_copyWeak(&v126, location);
              v40 = v72;
              v125 = v40;
              [WeakRetained startStream:v40 option:unsignedIntValue8 completion:v124];

              v80 = &v126;
            }

            else
            {
              if (unsignedIntegerValue3 <= 5)
              {
                if (unsignedIntegerValue3 != 4)
                {
                  v21 = CMContinuityCaptureLog(2);
                  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138543362;
                    selfCopy9 = self;
                    _os_log_impl(&dword_242545000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ SynchronizeAudioClockComplete", buf, 0xCu);
                  }

                  [WeakRetained handleSynchronizeAudioClockCompletion];
                  goto LABEL_107;
                }

                if ([v18 count])
                {
                  v52 = [v18 objectAtIndexedSubscript:0];
                }

                else
                {
                  v52 = 0;
                }

                if ([v18 count] < 2)
                {
                  v112 = 0;
                }

                else
                {
                  v112 = [v18 objectAtIndexedSubscript:1];
                }

                if ([v18 count] < 3)
                {
                  v113 = 0;
                }

                else
                {
                  v113 = [v18 objectAtIndexedSubscript:2];
                }

                v114 = CMContinuityCaptureLog(2);
                if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
                {
                  v115 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v113, "unsignedLongLongValue")}];
                  *buf = 138544130;
                  selfCopy9 = self;
                  v136 = 2112;
                  *v137 = v52;
                  *&v137[8] = 2112;
                  v138 = v112;
                  v139 = 2112;
                  v140 = v115;
                  _os_log_impl(&dword_242545000, v114, OS_LOG_TYPE_DEFAULT, "%{public}@ Received synchronize audio clock with sampleTime %@ networkTime %@ grandmaster %@", buf, 0x2Au);
                }

                [WeakRetained synchronizeAudioClockWithSampleTime:objc_msgSend(v52 networkTime:"unsignedLongLongValue") clockGrandMasterIdentifier:{objc_msgSend(v112, "unsignedLongLongValue"), objc_msgSend(v113, "unsignedLongLongValue")}];
LABEL_106:

                goto LABEL_107;
              }

              if (unsignedIntegerValue3 != 6)
              {
                if (unsignedIntegerValue3 == 9)
                {
                  if (!v18)
                  {
                    goto LABEL_107;
                  }

                  if ([v18 count] != 2)
                  {
                    goto LABEL_107;
                  }

                  v48 = [v18 objectAtIndexedSubscript:0];
                  objc_opt_class();
                  v49 = objc_opt_isKindOfClass();

                  if ((v49 & 1) == 0)
                  {
                    goto LABEL_107;
                  }

                  v50 = [v18 objectAtIndexedSubscript:1];
                  objc_opt_class();
                  v51 = objc_opt_isKindOfClass();

                  if ((v51 & 1) == 0)
                  {
                    goto LABEL_107;
                  }

                  v52 = [v18 objectAtIndexedSubscript:0];
                  v53 = [v18 objectAtIndexedSubscript:1];
                  unsignedIntValue9 = [v53 unsignedIntValue];

                  v55 = CMContinuityCaptureLog(2);
                  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138543874;
                    selfCopy9 = self;
                    v136 = 2112;
                    *v137 = v52;
                    *&v137[8] = 2048;
                    v138 = unsignedIntValue9;
                    _os_log_impl(&dword_242545000, v55, OS_LOG_TYPE_DEFAULT, "%{public}@ EnqueueReactionEffect %@ entity %ld", buf, 0x20u);
                  }

                  [WeakRetained enqueueReactionEffect:v52 entity:unsignedIntValue9];
                  goto LABEL_106;
                }

LABEL_55:
                v22 = 0;
                v9 = 0;
LABEL_112:
                objc_destroyWeak(location);

                goto LABEL_113;
              }

              if (!v18)
              {
                goto LABEL_107;
              }

              if ([v18 count] != 2)
              {
                goto LABEL_107;
              }

              v81 = [v18 objectAtIndexedSubscript:0];
              objc_opt_class();
              v82 = objc_opt_isKindOfClass();

              if ((v82 & 1) == 0)
              {
                goto LABEL_107;
              }

              v83 = [v18 objectAtIndexedSubscript:1];
              objc_opt_class();
              v84 = objc_opt_isKindOfClass();

              if ((v84 & 1) == 0)
              {
                goto LABEL_107;
              }

              v85 = MEMORY[0x277CCAAC8];
              v86 = objc_opt_class();
              v87 = [v18 objectAtIndexedSubscript:0];
              v131 = 0;
              v40 = [v85 unarchivedObjectOfClass:v86 fromData:v87 error:&v131];
              v22 = v131;

              if (!v40)
              {
                v117 = CMContinuityCaptureLog(2);
                [CMContinuityCaptureRapportTransportBase _enqueueResponse:v117 identifier:?];
                goto LABEL_82;
              }

              v88 = [v18 objectAtIndexedSubscript:1];
              unsignedIntValue10 = [v88 unsignedIntValue];

              v90 = CMContinuityCaptureLog(2);
              if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543874;
                selfCopy9 = self;
                v136 = 2112;
                *v137 = v40;
                *&v137[8] = 2048;
                v138 = unsignedIntValue10;
                _os_log_impl(&dword_242545000, v90, OS_LOG_TYPE_DEFAULT, "%{public}@ CaptureStillImage %@ entity %ld", buf, 0x20u);
              }

              v128[0] = MEMORY[0x277D85DD0];
              v128[1] = 3221225472;
              v128[2] = __71__CMContinuityCaptureRapportTransportBase__enqueueResponse_identifier___block_invoke;
              v128[3] = &unk_278D5CAC8;
              objc_copyWeak(v130, location);
              v129 = v40;
              v130[1] = unsignedIntValue10;
              [WeakRetained captureStillImage:v129 entity:unsignedIntValue10 completion:v128];

              v80 = v130;
            }

            objc_destroyWeak(v80);
LABEL_82:

LABEL_83:
            v10 = 0;
LABEL_108:
            v9 = 0;
            goto LABEL_112;
          }
        }

        v10 = 0;
      }

      v22 = 0;
      v9 = 0;
    }

    else
    {
      v10 = 0;
      v22 = 0;
    }

    v18 = 0;
    goto LABEL_112;
  }

  v22 = 0;
  v9 = 0;
  v18 = 0;
LABEL_113:
}

void __71__CMContinuityCaptureRapportTransportBase__enqueueResponse_identifier___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (a2 && WeakRetained)
  {
    v5 = WeakRetained;
    [*(a1 + 32) setError:a2];
    [v5[3] didCaptureStillImage:*(a1 + 32) entity:*(a1 + 48)];
    WeakRetained = v5;
  }
}

void __71__CMContinuityCaptureRapportTransportBase__enqueueResponse_identifier___block_invoke_389(uint64_t a1, uint64_t a2)
{
  v4 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = *(a1 + 32);
    v7 = 138543874;
    v8 = WeakRetained;
    v9 = 2112;
    v10 = v6;
    v11 = 2112;
    v12 = a2;
    _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ StartStream %@ Error %@", &v7, 0x20u);
  }
}

void __71__CMContinuityCaptureRapportTransportBase__enqueueResponse_identifier___block_invoke_390(uint64_t a1, uint64_t a2)
{
  v4 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = [*(a1 + 32) objectAtIndexedSubscript:0];
    v7 = 138543874;
    v8 = WeakRetained;
    v9 = 2112;
    v10 = v6;
    v11 = 2112;
    v12 = a2;
    _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ StopStream for Identifier %@ Error %@", &v7, 0x20u);
  }
}

- (void)createTimeSyncClockWithPeerAddress:(id)address completion:(id)completion
{
  addressCopy = address;
  completionCopy = completion;
  deviceModelType = [(CMContinuityCaptureTransportRapportDevice *)self->_device deviceModelType];
  v9 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543875;
    selfCopy = self;
    v21 = 2113;
    v22 = addressCopy;
    v23 = 2048;
    v24 = deviceModelType;
    _os_log_impl(&dword_242545000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ create timesync for %{private}@ remoteType %ld", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  v10 = FigGetCFPreferenceBooleanWithDefault() != 0;
  v11 = MEMORY[0x277D714D0];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __89__CMContinuityCaptureRapportTransportBase_createTimeSyncClockWithPeerAddress_completion___block_invoke;
  v14[3] = &unk_278D5DA58;
  objc_copyWeak(&v17, buf);
  v12 = completionCopy;
  v16 = v12;
  v18 = v10;
  v13 = addressCopy;
  v15 = v13;
  [v11 notifyWhenClockManagerIsAvailable:v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);
}

void __89__CMContinuityCaptureRapportTransportBase_createTimeSyncClockWithPeerAddress_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v19 = WeakRetained;
      _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ TSClockManager is Available", buf, 0xCu);
    }

    v4 = [MEMORY[0x277D714D0] sharedClockManager];
    [v4 addClient:WeakRetained];

    v5 = [MEMORY[0x277D714D0] sharedClockManager];
    v17 = 0;
    [v5 addgPTPServicesWithError:&v17];
    v6 = v17;

    if (v6)
    {
      v7 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __89__CMContinuityCaptureRapportTransportBase_createTimeSyncClockWithPeerAddress_completion___block_invoke_cold_1(WeakRetained, v6);
      }

      v8 = WeakRetained[1];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __89__CMContinuityCaptureRapportTransportBase_createTimeSyncClockWithPeerAddress_completion___block_invoke_402;
      block[3] = &unk_278D5D4B0;
      v16 = *(a1 + 40);
      dispatch_async(v8, block);
    }

    else
    {
      v9 = MEMORY[0x277D714E0];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __89__CMContinuityCaptureRapportTransportBase_createTimeSyncClockWithPeerAddress_completion___block_invoke_2;
      v10[3] = &unk_278D5DA58;
      objc_copyWeak(&v13, (a1 + 48));
      v14 = *(a1 + 56);
      v12 = *(a1 + 40);
      v11 = *(a1 + 32);
      [v9 notifyWhengPTPManagerIsAvailable:v10];

      objc_destroyWeak(&v13);
    }
  }
}

void __89__CMContinuityCaptureRapportTransportBase_createTimeSyncClockWithPeerAddress_completion___block_invoke_402(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ContinuityCapture" code:-536870212 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void __89__CMContinuityCaptureRapportTransportBase_createTimeSyncClockWithPeerAddress_completion___block_invoke_2(uint64_t a1)
{
  v2 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    *buf = 138543362;
    v21 = WeakRetained;
    _os_log_impl(&dword_242545000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ gPTPManager is Available", buf, 0xCu);
  }

  v4 = objc_loadWeakRetained((a1 + 48));
  if (v4)
  {
    v27 = *MEMORY[0x277D714F0];
    v5 = *(a1 + 56);
    v6 = [MEMORY[0x277D714E0] sharedgPTPManager];
    v7 = v6;
    if (v5 == 1)
    {
      v8 = [v6 systemDomainClockIdentifier];
      v27 = v8;

      v9 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = objc_loadWeakRetained((a1 + 48));
        *buf = 138543362;
        v21 = v10;
        _os_log_impl(&dword_242545000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Using system domain clock", buf, 0xCu);
      }

LABEL_15:
      v16 = *(a1 + 32);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __89__CMContinuityCaptureRapportTransportBase_createTimeSyncClockWithPeerAddress_completion___block_invoke_405;
      v17[3] = &unk_278D5DA30;
      objc_copyWeak(&v19, (a1 + 48));
      v18 = *(a1 + 40);
      [v4 _bindClock:v8 peerAddress:v16 retries:10 completion:v17];

      objc_destroyWeak(&v19);
      goto LABEL_16;
    }

    v26 = 0;
    [v6 addPTPInstance:&v27 error:&v26];
    v11 = v26;

    v12 = CMContinuityCaptureLog(2);
    v13 = v12;
    if (!v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v15 = objc_loadWeakRetained((a1 + 48));
        *buf = 138543618;
        v21 = v15;
        v22 = 2048;
        v23 = v27;
        _os_log_impl(&dword_242545000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Allocated clock %llu", buf, 0x16u);
      }

      v8 = v27;
      v4[4] = v27;
      goto LABEL_15;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __89__CMContinuityCaptureRapportTransportBase_createTimeSyncClockWithPeerAddress_completion___block_invoke_2_cold_1((a1 + 48), v11);
    }

    v14 = v4[1];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __89__CMContinuityCaptureRapportTransportBase_createTimeSyncClockWithPeerAddress_completion___block_invoke_404;
    block[3] = &unk_278D5D4B0;
    v25 = *(a1 + 40);
    dispatch_async(v14, block);
  }

LABEL_16:
}

void __89__CMContinuityCaptureRapportTransportBase_createTimeSyncClockWithPeerAddress_completion___block_invoke_404(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ContinuityCapture" code:-536870212 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void __89__CMContinuityCaptureRapportTransportBase_createTimeSyncClockWithPeerAddress_completion___block_invoke_405(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[1];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __89__CMContinuityCaptureRapportTransportBase_createTimeSyncClockWithPeerAddress_completion___block_invoke_2_406;
    block[3] = &unk_278D5DA08;
    v8 = v3;
    objc_copyWeak(&v10, (a1 + 40));
    v9 = *(a1 + 32);
    dispatch_async(v6, block);

    objc_destroyWeak(&v10);
  }
}

void __89__CMContinuityCaptureRapportTransportBase_createTimeSyncClockWithPeerAddress_completion___block_invoke_2_406(uint64_t a1)
{
  if (*(a1 + 32) && (v2 = [[CMContinuityCaptureTimeSyncClock alloc] initWithClock:*(a1 + 32)]) != 0)
  {
    v3 = v2;
    [(CMContinuityCaptureTimeSyncClock *)v2 startEmittingHeartBeatSignposts];
    v4 = *(*(a1 + 40) + 16);
  }

  else
  {
    v5 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __89__CMContinuityCaptureRapportTransportBase_createTimeSyncClockWithPeerAddress_completion___block_invoke_2_406_cold_1(a1);
    }

    v6 = *(a1 + 40);
    v3 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ContinuityCapture" code:-536870212 userInfo:0];
    v4 = *(v6 + 16);
  }

  v4();
}

- (void)disposeTimeSyncClock
{
  if (self->_clockIdentifier != *MEMORY[0x277D714F0])
  {
    v3 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      clockIdentifier = self->_clockIdentifier;
      *buf = 138543618;
      selfCopy = self;
      v10 = 2048;
      v11 = clockIdentifier;
      _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ disposing timesync for %lld", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    v5 = MEMORY[0x277D714D0];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __63__CMContinuityCaptureRapportTransportBase_disposeTimeSyncClock__block_invoke;
    v6[3] = &unk_278D5C080;
    objc_copyWeak(&v7, buf);
    [v5 notifyWhenClockManagerIsAvailable:v6];
    objc_destroyWeak(&v7);
    objc_destroyWeak(buf);
  }
}

void __63__CMContinuityCaptureRapportTransportBase_disposeTimeSyncClock__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277D714E0];
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __63__CMContinuityCaptureRapportTransportBase_disposeTimeSyncClock__block_invoke_2;
  v2[3] = &unk_278D5C080;
  objc_copyWeak(&v3, (a1 + 32));
  [v1 notifyWhengPTPManagerIsAvailable:v2];
  objc_destroyWeak(&v3);
}

void __63__CMContinuityCaptureRapportTransportBase_disposeTimeSyncClock__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = *MEMORY[0x277D714F0];
    if (WeakRetained[4] != *MEMORY[0x277D714F0])
    {
      v4 = [MEMORY[0x277D714E0] sharedgPTPManager];
      v5 = v2[4];
      v16 = 0;
      [v4 removePTPInstanceWithIdentifier:v5 error:&v16];
      v6 = v16;

      if (v6)
      {
        v7 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v8 = v2[4];
          v9 = [v6 localizedDescription];
          v10 = 138543874;
          v11 = v2;
          v12 = 2048;
          v13 = v8;
          v14 = 2114;
          v15 = v9;
          _os_log_error_impl(&dword_242545000, v7, OS_LOG_TYPE_ERROR, "%{public}@ Failed deallocate clock %lld with error %{public}@", &v10, 0x20u);
        }
      }

      v2[4] = v3;
    }
  }
}

- (void)_bindClock:(unint64_t)clock peerAddress:(id)address retries:(int64_t)retries completion:(id)completion
{
  addressCopy = address;
  completionCopy = completion;
  objc_initWeak(&location, self);
  memset(v46, 0, sizeof(v46));
  memset(v45, 170, 20);
  v44[3] = 0xAAAAAAAAAAAAAAAALL;
  if ([addressCopy getCString:v46 maxLength:64 encoding:4])
  {
    v12 = StringToSockAddr();
    if (v12)
    {
      v13 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543875;
        selfCopy7 = self;
        v37 = 2113;
        clockCopy2 = addressCopy;
        v39 = 1024;
        LODWORD(grandmasterIdentity) = v12;
        v14 = "%{public}@ Failed to parse peer address %{private}@. Error: %{errno}d";
LABEL_39:
        _os_log_error_impl(&dword_242545000, v13, OS_LOG_TYPE_ERROR, v14, buf, 0x1Cu);
        goto LABEL_10;
      }

      goto LABEL_10;
    }

    v16 = SockAddrConvertToIPv6();
    if (v16)
    {
      v13 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543875;
        selfCopy7 = self;
        v37 = 2113;
        clockCopy2 = addressCopy;
        v39 = 1024;
        LODWORD(grandmasterIdentity) = v16;
        v14 = "%{public}@ Failed to convert peer address %{private}@ to IPv6. Error: %{errno}d";
        goto LABEL_39;
      }

LABEL_10:

      completionCopy[2](completionCopy, 0);
      goto LABEL_11;
    }

    mEMORY[0x277D714D0] = [MEMORY[0x277D714D0] sharedClockManager];
    v18 = [mEMORY[0x277D714D0] clockWithClockIdentifier:clock];

    if (v18)
    {
      v19 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        selfCopy7 = self;
        v37 = 2048;
        clockCopy2 = clock;
        v39 = 2048;
        grandmasterIdentity = [v18 grandmasterIdentity];
        _os_log_impl(&dword_242545000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ Clock %llu available, grandmaster %llu", buf, 0x20u);
      }

      v34 = 0;
      memset(v33, 170, 16);
      if (if_indextoname(v45[2], v33) && ([MEMORY[0x277CCACA8] stringWithCString:v33 encoding:4], (v20 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v21 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          selfCopy7 = self;
          v37 = 2114;
          clockCopy2 = v20;
          _os_log_impl(&dword_242545000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ Binding clock to %{public}@", buf, 0x16u);
        }

        v32 = 0;
        v22 = [v18 addUnicastUDPv6EtEPortOnInterfaceNamed:v20 withDestinationAddress:v45 allocatedPortNumber:&v34 error:&v32];
        v23 = v32;
        if (v22)
        {
          v24 = CMContinuityCaptureLog(2);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            selfCopy7 = self;
            _os_log_impl(&dword_242545000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ Clock binding completed.", buf, 0xCu);
          }

          (completionCopy)[2](completionCopy, v18);
        }

        else
        {
          v30 = CMContinuityCaptureLog(2);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            localizedDescription = [v23 localizedDescription];
            *buf = 138543875;
            selfCopy7 = self;
            v37 = 2113;
            clockCopy2 = addressCopy;
            v39 = 2114;
            grandmasterIdentity = localizedDescription;
            _os_log_error_impl(&dword_242545000, v30, OS_LOG_TYPE_ERROR, "%{public}@ Failed to add UDPv6 peer address %{private}@. Error: %{public}@", buf, 0x20u);
          }

          completionCopy[2](completionCopy, 0);
        }
      }

      else
      {
        v25 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          [CMContinuityCaptureRapportTransportBase _bindClock:peerAddress:retries:completion:];
        }

        completionCopy[2](completionCopy, 0);
        v20 = 0;
        v23 = 0;
      }
    }

    else if (retries)
    {
      v26 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        selfCopy7 = self;
        v37 = 2048;
        clockCopy2 = clock;
        _os_log_impl(&dword_242545000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@ Clock %llu not available, retry with delay", buf, 0x16u);
      }

      v27 = dispatch_time(0, 100000000);
      v28 = dispatch_get_global_queue(2, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __85__CMContinuityCaptureRapportTransportBase__bindClock_peerAddress_retries_completion___block_invoke;
      block[3] = &unk_278D5DA80;
      objc_copyWeak(v44, &location);
      v44[1] = clock;
      v42 = addressCopy;
      v44[2] = retries;
      v43 = completionCopy;
      dispatch_after(v27, v28, block);

      objc_destroyWeak(v44);
    }

    else
    {
      v29 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [CMContinuityCaptureRapportTransportBase _bindClock:peerAddress:retries:completion:];
      }

      completionCopy[2](completionCopy, 0);
    }
  }

  else
  {
    v15 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [CMContinuityCaptureRapportTransportBase _bindClock:peerAddress:retries:completion:];
    }

    completionCopy[2](completionCopy, 0);
  }

LABEL_11:
  objc_destroyWeak(&location);
}

void __85__CMContinuityCaptureRapportTransportBase__bindClock_peerAddress_retries_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _bindClock:*(a1 + 56) peerAddress:*(a1 + 32) retries:*(a1 + 64) - 1 completion:*(a1 + 40)];
    WeakRetained = v3;
  }
}

- (CMContinuityCaptureRapportTransportBase)initWithRapportDevice:(id)device queue:(id)queue taskDelegate:(id)delegate
{
  deviceCopy = device;
  queueCopy = queue;
  delegateCopy = delegate;
  v16.receiver = self;
  v16.super_class = CMContinuityCaptureRapportTransportBase;
  v12 = [(CMContinuityCaptureRapportTransportBase *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_queue, queue);
    objc_storeStrong(&v13->_device, device);
    objc_storeWeak(&v13->_delegate, delegateCopy);
    v13->_clockIdentifier = *MEMORY[0x277D714F0];
    v14 = v13;
  }

  return v13;
}

- (void)_enqueueResponse:identifier:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_5_2(&dword_242545000, v0, v1, "%{public}@ error unarchivedObjectOfClass CMContinuityCaptureStillImageRequest %@");
}

- (void)_enqueueResponse:(NSObject *)a1 identifier:.cold.2(NSObject *a1)
{
  if (OUTLINED_FUNCTION_4_1(a1))
  {
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_1_2();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  }
}

- (void)_enqueueResponse:(NSObject *)a1 identifier:.cold.4(NSObject *a1)
{
  if (OUTLINED_FUNCTION_4_1(a1))
  {
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_1_2();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  }
}

void __89__CMContinuityCaptureRapportTransportBase_createTimeSyncClockWithPeerAddress_completion___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v7 = [a2 localizedDescription];
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __89__CMContinuityCaptureRapportTransportBase_createTimeSyncClockWithPeerAddress_completion___block_invoke_2_cold_1(id *a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained(a1);
  v4 = [a2 localizedDescription];
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void __89__CMContinuityCaptureRapportTransportBase_createTimeSyncClockWithPeerAddress_completion___block_invoke_2_406_cold_1(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_bindClock:peerAddress:retries:completion:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_5_2(&dword_242545000, v0, v1, "%{public}@ Failed to get peer address %{private}@");
}

- (void)_bindClock:peerAddress:retries:completion:.cold.2()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_5_2(&dword_242545000, v0, v1, "%{public}@ Failed to derive ifname from cifname for peer address %{private}@");
}

- (void)_bindClock:peerAddress:retries:completion:.cold.3()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_5_2(&dword_242545000, v0, v1, "%{public}@ Exhausted all retries to acquire clock %llu");
}

@end