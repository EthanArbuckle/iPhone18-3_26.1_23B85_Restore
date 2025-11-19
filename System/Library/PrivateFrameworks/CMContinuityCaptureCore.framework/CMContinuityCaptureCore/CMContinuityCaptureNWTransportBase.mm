@interface CMContinuityCaptureNWTransportBase
- (CMContinuityCaptureNWTransportBase)initWithDevice:(id)a3;
- (ContinuityCaptureTaskDelegate)taskDelegate;
- (void)createTimeSyncClock:(id)a3;
- (void)enqueueResponse:(id)a3 identifier:(id)a4;
- (void)handleRequest:(id)a3;
- (void)scheduleReadForConnection:(id)a3 dataTillNow:(id)a4;
@end

@implementation CMContinuityCaptureNWTransportBase

- (CMContinuityCaptureNWTransportBase)initWithDevice:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CMContinuityCaptureNWTransportBase;
  v6 = [(CMContinuityCaptureNWTransportBase *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
  }

  return v7;
}

- (ContinuityCaptureTaskDelegate)taskDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)createTimeSyncClock:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = MEMORY[0x277D714D0];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__CMContinuityCaptureNWTransportBase_createTimeSyncClock___block_invoke;
  v7[3] = &unk_278D5C688;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  [v5 notifyWhenClockManagerIsAvailable:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __58__CMContinuityCaptureNWTransportBase_createTimeSyncClock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = WeakRetained;
      _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ TSClockManager is Available", buf, 0xCu);
    }

    v4 = [MEMORY[0x277D714D0] sharedClockManager];
    [v4 addClient:WeakRetained];

    v5 = [MEMORY[0x277D714D0] sharedClockManager];
    v14 = 0;
    [v5 addgPTPServicesWithError:&v14];
    v6 = v14;

    if (v6)
    {
      v7 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __58__CMContinuityCaptureNWTransportBase_createTimeSyncClock___block_invoke_cold_1(WeakRetained, v6);
      }

      v8 = *(a1 + 32);
      v9 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ContinuityCapture" code:-536870212 userInfo:0];
      (*(v8 + 16))(v8, 0, v9);
    }

    else
    {
      v10 = MEMORY[0x277D714E0];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __58__CMContinuityCaptureNWTransportBase_createTimeSyncClock___block_invoke_10;
      v11[3] = &unk_278D5C688;
      objc_copyWeak(&v13, (a1 + 40));
      v12 = *(a1 + 32);
      [v10 notifyWhengPTPManagerIsAvailable:v11];

      objc_destroyWeak(&v13);
    }
  }
}

void __58__CMContinuityCaptureNWTransportBase_createTimeSyncClock___block_invoke_10(uint64_t a1)
{
  v2 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v8 = 138543362;
    v9 = WeakRetained;
    _os_log_impl(&dword_242545000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ gPTPManager is Available", &v8, 0xCu);
  }

  v4 = objc_loadWeakRetained((a1 + 40));
  if (v4)
  {
    v5 = [MEMORY[0x277D714E0] sharedgPTPManager];
    v6 = [v5 systemDomainClockIdentifier];

    v7 = [[CMContinuityCaptureTimeSyncClock alloc] initWithClockIdentifier:v6];
    (*(*(a1 + 32) + 16))();
  }
}

- (void)enqueueResponse:(id)a3 identifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    objc_initWeak(location, self);
    v9 = [v6 objectForKeyedSubscript:@"ContinuityCaptureSelector"];
    if (v9)
    {
      v10 = [v6 objectForKeyedSubscript:@"ContinuityCaptureArgs"];

      if (!v10)
      {
        v9 = 0;
        v22 = 0;
LABEL_17:
        v18 = 0;
LABEL_104:
        objc_destroyWeak(location);

        goto LABEL_105;
      }

      v11 = [v6 objectForKeyedSubscript:@"ContinuityCaptureSelector"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v13 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [v6 objectForKeyedSubscript:@"ContinuityCaptureSelector"];
          v15 = [v6 objectForKeyedSubscript:@"ContinuityCaptureGID"];
          *buf = 138544130;
          v126 = self;
          v127 = 2114;
          *v128 = v7;
          *&v128[8] = 2114;
          v129 = v14;
          v130 = 2114;
          v131 = v15;
          _os_log_impl(&dword_242545000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ enqueueResponse identifier:%{public}@ selector %{public}@ gid %{public}@", buf, 0x2Au);
        }

        v16 = [v6 objectForKeyedSubscript:@"ContinuityCaptureArgs"];
        objc_opt_class();
        v17 = objc_opt_isKindOfClass();

        if (v17)
        {
          v18 = [v6 objectForKeyedSubscript:@"ContinuityCaptureArgs"];
          if ([v7 isEqualToString:@"ContinuityCaptureCommand"])
          {
            v19 = [v6 objectForKeyedSubscript:@"ContinuityCaptureSelector"];
            v20 = [v19 unsignedIntegerValue];

            v9 = 0;
            if (v20 > 3)
            {
              if (v20 <= 5)
              {
                if (v20 != 4)
                {
                  v21 = CMContinuityCaptureLog(2);
                  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138543362;
                    v126 = self;
                    _os_log_impl(&dword_242545000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ SynchronizeAudioClockComplete", buf, 0xCu);
                  }

                  [WeakRetained handleSynchronizeAudioClockCompletion];
                  goto LABEL_102;
                }

                if ([v18 count])
                {
                  v54 = [v18 objectAtIndexedSubscript:0];
                }

                else
                {
                  v54 = 0;
                }

                if ([v18 count] < 2)
                {
                  v106 = 0;
                }

                else
                {
                  v106 = [v18 objectAtIndexedSubscript:1];
                }

                if ([v18 count] < 3)
                {
                  v107 = 0;
                }

                else
                {
                  v107 = [v18 objectAtIndexedSubscript:2];
                }

                v108 = CMContinuityCaptureLog(2);
                if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
                {
                  v109 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v107, "unsignedLongLongValue")}];
                  *buf = 138544130;
                  v126 = self;
                  v127 = 2112;
                  *v128 = v54;
                  *&v128[8] = 2112;
                  v129 = v106;
                  v130 = 2112;
                  v131 = v109;
                  _os_log_impl(&dword_242545000, v108, OS_LOG_TYPE_DEFAULT, "%{public}@ Received synchronize audio clock with sampleTime %@ networkTime %@ grandmaster %@", buf, 0x2Au);
                }

                [WeakRetained synchronizeAudioClockWithSampleTime:objc_msgSend(v54 networkTime:"unsignedLongLongValue") clockGrandMasterIdentifier:{objc_msgSend(v106, "unsignedLongLongValue"), objc_msgSend(v107, "unsignedLongLongValue")}];
LABEL_101:

                goto LABEL_102;
              }

              if (v20 != 6)
              {
                if (v20 == 9)
                {
                  if (!v18)
                  {
                    goto LABEL_102;
                  }

                  if ([v18 count] != 2)
                  {
                    goto LABEL_102;
                  }

                  v50 = [v18 objectAtIndexedSubscript:0];
                  objc_opt_class();
                  v51 = objc_opt_isKindOfClass();

                  if ((v51 & 1) == 0)
                  {
                    goto LABEL_102;
                  }

                  v52 = [v18 objectAtIndexedSubscript:1];
                  objc_opt_class();
                  v53 = objc_opt_isKindOfClass();

                  if ((v53 & 1) == 0)
                  {
                    goto LABEL_102;
                  }

                  v54 = [v18 objectAtIndexedSubscript:0];
                  v55 = [v18 objectAtIndexedSubscript:1];
                  v56 = [v55 unsignedIntValue];

                  v57 = CMContinuityCaptureLog(2);
                  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138543874;
                    v126 = self;
                    v127 = 2112;
                    *v128 = v54;
                    *&v128[8] = 2048;
                    v129 = v56;
                    _os_log_impl(&dword_242545000, v57, OS_LOG_TYPE_DEFAULT, "%{public}@ EnqueueReactionEffect %@ entity %ld", buf, 0x20u);
                  }

                  [WeakRetained enqueueReactionEffect:v54 entity:v56];
                  goto LABEL_101;
                }

                goto LABEL_56;
              }

              if (!v18)
              {
                goto LABEL_102;
              }

              if ([v18 count] != 2)
              {
                goto LABEL_102;
              }

              v81 = [v18 objectAtIndexedSubscript:0];
              objc_opt_class();
              v82 = objc_opt_isKindOfClass();

              if ((v82 & 1) == 0)
              {
                goto LABEL_102;
              }

              v83 = [v18 objectAtIndexedSubscript:1];
              objc_opt_class();
              v84 = objc_opt_isKindOfClass();

              if ((v84 & 1) == 0)
              {
                goto LABEL_102;
              }

              v85 = MEMORY[0x277CCAAC8];
              v86 = objc_opt_class();
              v87 = [v18 objectAtIndexedSubscript:0];
              v122 = 0;
              v40 = [v85 unarchivedObjectOfClass:v86 fromData:v87 error:&v122];
              v22 = v122;

              if (!v40)
              {
                CMContinuityCaptureLog(2);
                objc_claimAutoreleasedReturnValue();
                [CMContinuityCaptureNWTransportBase enqueueResponse:identifier:];
                goto LABEL_81;
              }

              v88 = [v18 objectAtIndexedSubscript:1];
              v89 = [v88 unsignedIntValue];

              v90 = CMContinuityCaptureLog(2);
              if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543874;
                v126 = self;
                v127 = 2112;
                *v128 = v40;
                *&v128[8] = 2048;
                v129 = v89;
                _os_log_impl(&dword_242545000, v90, OS_LOG_TYPE_DEFAULT, "%{public}@ CaptureStillImage %@ entity %ld", buf, 0x20u);
              }

              v119[0] = MEMORY[0x277D85DD0];
              v119[1] = 3221225472;
              v119[2] = __65__CMContinuityCaptureNWTransportBase_enqueueResponse_identifier___block_invoke;
              v119[3] = &unk_278D5CAC8;
              objc_copyWeak(v121, location);
              v120 = v40;
              v121[1] = v89;
              [WeakRetained captureStillImage:v120 entity:v89 completion:v119];

              v80 = v121;
LABEL_80:
              objc_destroyWeak(v80);
LABEL_81:

LABEL_82:
              v9 = 0;
LABEL_103:
              v10 = 0;
              goto LABEL_104;
            }

            switch(v20)
            {
              case 1:
                if ([v18 count] != 3)
                {
                  goto LABEL_102;
                }

                v65 = [v18 objectAtIndexedSubscript:0];
                objc_opt_class();
                v66 = objc_opt_isKindOfClass();

                if ((v66 & 1) == 0)
                {
                  goto LABEL_102;
                }

                v67 = [v18 objectAtIndexedSubscript:1];
                objc_opt_class();
                v68 = objc_opt_isKindOfClass();

                if ((v68 & 1) == 0)
                {
                  goto LABEL_102;
                }

                v69 = [v18 objectAtIndexedSubscript:2];
                objc_opt_class();
                v70 = objc_opt_isKindOfClass();

                if ((v70 & 1) == 0 || [(CMContinuityCaptureTransportNWDevice *)self->_device remote])
                {
                  goto LABEL_102;
                }

                v71 = MEMORY[0x277CCAAC8];
                v72 = objc_opt_class();
                v73 = [v18 objectAtIndexedSubscript:0];
                v118 = 0;
                v74 = [v71 unarchivedObjectOfClass:v72 fromData:v73 error:&v118];
                v22 = v118;

                if (!v74)
                {
                  CMContinuityCaptureLog(2);
                  objc_claimAutoreleasedReturnValue();
                  [CMContinuityCaptureNWTransportBase enqueueResponse:identifier:];
                  goto LABEL_82;
                }

                v75 = CMContinuityCaptureLog(2);
                if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
                {
                  v76 = [v18 objectAtIndexedSubscript:1];
                  v77 = [v76 unsignedIntValue];
                  *buf = 138543874;
                  v126 = self;
                  v127 = 2114;
                  *v128 = v74;
                  *&v128[8] = 1024;
                  LODWORD(v129) = v77;
                  _os_log_impl(&dword_242545000, v75, OS_LOG_TYPE_DEFAULT, "%{public}@ StartStream Configuration %{public}@ option %u", buf, 0x1Cu);
                }

                v78 = [v18 objectAtIndexedSubscript:1];
                v79 = [v78 unsignedIntValue];
                v115[0] = MEMORY[0x277D85DD0];
                v115[1] = 3221225472;
                v115[2] = __65__CMContinuityCaptureNWTransportBase_enqueueResponse_identifier___block_invoke_22;
                v115[3] = &unk_278D5C660;
                objc_copyWeak(&v117, location);
                v40 = v74;
                v116 = v40;
                [WeakRetained startStream:v40 option:v79 completion:v115];

                v80 = &v117;
                goto LABEL_80;
              case 2:
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

                      if ((v96 & 1) != 0 && ![(CMContinuityCaptureTransportNWDevice *)self->_device remote])
                      {
                        v97 = CMContinuityCaptureLog(2);
                        if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
                        {
                          v98 = [v18 objectAtIndexedSubscript:0];
                          v99 = [v98 unsignedIntValue];
                          v100 = [v18 objectAtIndexedSubscript:1];
                          v101 = [v100 unsignedIntValue];
                          *buf = 138543874;
                          v126 = self;
                          v127 = 1024;
                          *v128 = v99;
                          *&v128[4] = 1024;
                          *&v128[6] = v101;
                          _os_log_impl(&dword_242545000, v97, OS_LOG_TYPE_DEFAULT, "%{public}@ StopStream entity %u option %u", buf, 0x18u);
                        }

                        v102 = [v18 objectAtIndexedSubscript:0];
                        v103 = [v102 unsignedIntValue];
                        v104 = [v18 objectAtIndexedSubscript:1];
                        v105 = [v104 unsignedIntValue];
                        v112[0] = MEMORY[0x277D85DD0];
                        v112[1] = 3221225472;
                        v112[2] = __65__CMContinuityCaptureNWTransportBase_enqueueResponse_identifier___block_invoke_23;
                        v112[3] = &unk_278D5C660;
                        objc_copyWeak(&v114, location);
                        v18 = v18;
                        v113 = v18;
                        [WeakRetained stopStream:v103 option:v105 completion:v112];

                        objc_destroyWeak(&v114);
                      }
                    }
                  }
                }

                goto LABEL_102;
              case 3:
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
                        v10 = [v18 objectAtIndexedSubscript:0];
                        if ([v10 isEqualToString:@"kCMContinuityCaptureEventConnectionDisconnect"])
                        {
                          CMContinuityCaptureLog(2);
                          objc_claimAutoreleasedReturnValue();
                          [CMContinuityCaptureNWTransportBase enqueueResponse:identifier:];
                        }

                        else
                        {
                          v46 = [v18 objectAtIndexedSubscript:1];
                          v47 = [v46 unsignedIntValue];
                          v123 = @"CMContinuityCaptureStateMachineEventDataKeyPostTime";
                          v48 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:mach_continuous_time()];
                          v124 = v48;
                          v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v124 forKeys:&v123 count:1];
                          [WeakRetained postEvent:v10 entity:v47 data:v49];
                        }

                        v9 = 0;
                        v22 = 0;
                        goto LABEL_104;
                      }
                    }
                  }
                }

                goto LABEL_102;
            }

LABEL_56:
            v22 = 0;
            v10 = 0;
            goto LABEL_104;
          }

          if ([v7 isEqualToString:@"ContinuityCaptureControl"])
          {
            v23 = [v6 objectForKeyedSubscript:@"ContinuityCaptureSelector"];
            v24 = [v23 unsignedIntegerValue];

            if (v24 == 2)
            {
              if ([v18 count] == 2)
              {
                v58 = [v18 objectAtIndexedSubscript:0];
                objc_opt_class();
                v59 = objc_opt_isKindOfClass();

                if (v59)
                {
                  v60 = [v18 objectAtIndexedSubscript:1];
                  objc_opt_class();
                  v61 = objc_opt_isKindOfClass();

                  if (v61)
                  {
                    v62 = [v18 objectAtIndexedSubscript:0];
                    v63 = [v62 unsignedIntValue];
                    v64 = [v18 objectAtIndexedSubscript:1];
                    [WeakRetained handleAVCNegotiation:v63 data:v64];
                  }
                }
              }

              goto LABEL_102;
            }

            if (v24 == 1)
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
                    v111 = 0;
                    v9 = [v27 unarchivedObjectOfClass:v28 fromData:v29 error:&v111];
                    v22 = v111;

                    if (v9)
                    {
                      v30 = CMContinuityCaptureLog(2);
                      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138543618;
                        v126 = self;
                        v127 = 2114;
                        *v128 = v9;
                        _os_log_impl(&dword_242545000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ dispatch update for %{public}@", buf, 0x16u);
                      }

                      [WeakRetained setValueForControl:v9 completion:&__block_literal_global_24];
                      goto LABEL_103;
                    }

                    CMContinuityCaptureLog(2);
                    objc_claimAutoreleasedReturnValue();
                    [CMContinuityCaptureNWTransportBase enqueueResponse:identifier:];
                    goto LABEL_82;
                  }
                }
              }
            }
          }

          else if ([v7 isEqualToString:@"ContinuityCaptureData"])
          {
            v31 = [v6 objectForKeyedSubscript:@"ContinuityCaptureSelector"];
            v32 = [v31 unsignedIntegerValue];

            v9 = 0;
            if (!v32 && v18)
            {
              if ([v18 count] != 2)
              {
                goto LABEL_102;
              }

              v33 = [v18 objectAtIndexedSubscript:0];
              objc_opt_class();
              v34 = objc_opt_isKindOfClass();

              if ((v34 & 1) == 0)
              {
                goto LABEL_102;
              }

              v35 = [v18 objectAtIndexedSubscript:1];
              objc_opt_class();
              v36 = objc_opt_isKindOfClass();

              if ((v36 & 1) == 0)
              {
                goto LABEL_102;
              }

              v37 = MEMORY[0x277CCAAC8];
              v38 = objc_opt_class();
              v39 = [v18 objectAtIndexedSubscript:0];
              v110 = 0;
              v40 = [v37 unarchivedObjectOfClass:v38 fromData:v39 error:&v110];
              v22 = v110;

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
                  [CMContinuityCaptureNWTransportBase enqueueResponse:identifier:];
                }
              }

              goto LABEL_81;
            }

            goto LABEL_56;
          }

LABEL_102:
          v9 = 0;
          v22 = 0;
          goto LABEL_103;
        }
      }

      v9 = 0;
    }

    v22 = 0;
    v10 = 0;
    goto LABEL_17;
  }

  v22 = 0;
  v10 = 0;
  v18 = 0;
LABEL_105:
}

void __65__CMContinuityCaptureNWTransportBase_enqueueResponse_identifier___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (a2 && WeakRetained)
  {
    v5 = WeakRetained;
    [*(a1 + 32) setError:a2];
    [v5[2] didCaptureStillImage:*(a1 + 32) entity:*(a1 + 48)];
    WeakRetained = v5;
  }
}

void __65__CMContinuityCaptureNWTransportBase_enqueueResponse_identifier___block_invoke_22(uint64_t a1, uint64_t a2)
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

void __65__CMContinuityCaptureNWTransportBase_enqueueResponse_identifier___block_invoke_23(uint64_t a1, uint64_t a2)
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

- (void)scheduleReadForConnection:(id)a3 dataTillNow:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __76__CMContinuityCaptureNWTransportBase_scheduleReadForConnection_dataTillNow___block_invoke;
  v10[3] = &unk_278D5DB40;
  objc_copyWeak(&v12, &location);
  v9 = v6;
  v11 = v9;
  CMContinuityCaptureReceiveDataFromNWConnection(v9, v7, self, v10);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __76__CMContinuityCaptureNWTransportBase_scheduleReadForConnection_dataTillNow___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_loadWeakRetained((a1 + 40));
      *buf = 138412546;
      v23 = v6;
      v24 = 2112;
      v25 = v3;
      _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%@ NW Connect Received Data %@", buf, 0x16u);
    }

    if (v3 && [v3 length] >= 8)
    {
      if ([v3 length])
      {
        v10 = 0;
        *&v9 = 138412546;
        v21 = v9;
        while (1)
        {
          v11 = [v3 length] - v10;
          if (v11 < 1)
          {
            goto LABEL_18;
          }

          if (v11 <= 7)
          {
            break;
          }

          v12 = *([v3 bytes] + v10);
          v13 = objc_alloc(MEMORY[0x277CBEA90]);
          v14 = [v3 bytes];
          if (v11 < v12)
          {
            v19 = v14 + v10;
            v20 = v13;
            goto LABEL_23;
          }

          v15 = [v13 initWithBytes:v14 + v10 length:v12];
          if (v15)
          {
            v16 = CMContinuityCaptureLog(0);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              v17 = objc_loadWeakRetained((a1 + 40));
              *buf = v21;
              v23 = v17;
              v24 = 2112;
              v25 = v15;
              _os_log_impl(&dword_242545000, v16, OS_LOG_TYPE_DEFAULT, "%@ NW Connect Received Packet %@", buf, 0x16u);
            }

            [WeakRetained handleRequest:v15];
          }

          v10 += v12;

          if (v10 >= [v3 length])
          {
            goto LABEL_18;
          }
        }

        v18 = objc_alloc(MEMORY[0x277CBEA90]);
        v19 = [v3 bytes] + v10;
        v20 = v18;
LABEL_23:
        v7 = [v20 initWithBytes:v19 length:v11];
        goto LABEL_7;
      }

LABEL_18:
      v8 = 0;
    }

    else
    {
      v7 = v3;
LABEL_7:
      v8 = v7;
    }

    [WeakRetained scheduleReadForConnection:*(a1 + 32) dataTillNow:v8];
  }
}

- (void)handleRequest:(id)a3
{
  v5 = a3;
  v6 = [a3 bytes];
  v7 = [MEMORY[0x277CBEA90] dataWithBytes:v6 + 1 length:*v6 - 8];
  v8 = MEMORY[0x277CCAAC8];
  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = [v9 setWithObjects:{v10, v11, v12, v13, v14, objc_opt_class(), 0}];
  v24 = 0;
  v16 = [v8 unarchivedObjectOfClasses:v15 fromData:v7 error:&v24];
  v17 = v24;

  v18 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = self;
    v22 = 2112;
    v23 = v16;
    _os_log_impl(&dword_242545000, v18, OS_LOG_TYPE_DEFAULT, "%@ NW response %@", buf, 0x16u);
  }

  if (v16)
  {
    v19 = [v16 objectForKeyedSubscript:@"identifier"];
    if (v19)
    {
      [(CMContinuityCaptureNWTransportBase *)self enqueueResponse:v16 identifier:v19];
    }
  }
}

void __58__CMContinuityCaptureNWTransportBase_createTimeSyncClock___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v2 = [a2 localizedDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_3(&dword_242545000, v3, v4, "%{public}@ TimeSync addgPTPServices Error %{public}@", v5, v6, v7, v8, v9);
}

- (void)enqueueResponse:identifier:.cold.2()
{
  OUTLINED_FUNCTION_2_6();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_2_3(&dword_242545000, v2, v3, "%{public}@ error unarchivedObjectOfClass %@", v4, v5, v6, v7, v8);
  }
}

- (void)enqueueResponse:identifier:.cold.4()
{
  OUTLINED_FUNCTION_2_6();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_2_3(&dword_242545000, v2, v3, "%@ error unarchivedObjectOfClass CMContinuityCaptureStillImageRequest %@", v4, v5, v6, v7, v8);
  }
}

- (void)enqueueResponse:identifier:.cold.5()
{
  OUTLINED_FUNCTION_2_6();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543618;
    v5 = v2;
    v6 = 2114;
    v7 = v1;
    _os_log_impl(&dword_242545000, v0, OS_LOG_TYPE_DEFAULT, "%{public}@ Session Interrupted for %{public}@", &v4, 0x16u);
  }
}

@end