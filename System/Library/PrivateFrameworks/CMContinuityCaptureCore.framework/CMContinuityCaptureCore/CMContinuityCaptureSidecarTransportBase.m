@interface CMContinuityCaptureSidecarTransportBase
- (CMContinuityCaptureSidecarTransportBase)initWithDevice:(id)a3 queue:(id)a4 taskDelegate:(id)a5;
- (NSString)description;
- (void)_enqueueResponse:(id)a3 identifier:(id)a4;
- (void)createTimeSyncClockForSession:(id)a3 completion:(id)a4;
- (void)enqueueResponse:(id)a3 identifier:(id)a4;
- (void)setTaskDelegate:(id)a3;
- (void)setupSidecarStreams;
- (void)teardownSidecarStreams;
@end

@implementation CMContinuityCaptureSidecarTransportBase

- (void)setTaskDelegate:(id)a3
{
  obj = a3;
  if ([(CMContinuityCaptureTransportSidecarDevice *)self->_device remote])
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"%@ ContinuityCapture error : can't update task delegate for client", self}];
  }

  objc_storeWeak(&self->_delegate, obj);
}

- (void)enqueueResponse:(id)a3 identifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __70__CMContinuityCaptureSidecarTransportBase_enqueueResponse_identifier___block_invoke;
  v11[3] = &unk_278D5C120;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __70__CMContinuityCaptureSidecarTransportBase_enqueueResponse_identifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _enqueueResponse:*(a1 + 32) identifier:*(a1 + 40)];
    WeakRetained = v3;
  }
}

- (void)_enqueueResponse:(id)a3 identifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  objc_initWeak(location, self);
  dispatch_assert_queue_V2(self->_queue);
  if (!WeakRetained)
  {
    goto LABEL_15;
  }

  v9 = [v6 objectForKeyedSubscript:@"ContinuityCaptureSelector"];
  if (!v9)
  {
LABEL_16:
    v22 = 0;
    v23 = 0;
    v18 = 0;
    goto LABEL_101;
  }

  v10 = [v6 objectForKeyedSubscript:@"ContinuityCaptureArgs"];

  if (!v10)
  {
    goto LABEL_15;
  }

  v11 = [v6 objectForKeyedSubscript:@"ContinuityCaptureSelector"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_15;
  }

  v13 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v6 objectForKeyedSubscript:@"ContinuityCaptureSelector"];
    v15 = [v6 objectForKeyedSubscript:@"ContinuityCaptureGID"];
    *buf = 138544130;
    v134 = self;
    v135 = 2114;
    *v136 = v7;
    *&v136[8] = 2114;
    v137 = v14;
    v138 = 2114;
    v139 = v15;
    _os_log_impl(&dword_242545000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ enqueueResponse identifier:%{public}@ selector %{public}@ gid %{public}@", buf, 0x2Au);
  }

  v16 = [v6 objectForKeyedSubscript:@"ContinuityCaptureArgs"];
  objc_opt_class();
  v17 = objc_opt_isKindOfClass();

  if ((v17 & 1) == 0)
  {
LABEL_15:
    v9 = 0;
    goto LABEL_16;
  }

  v18 = [v6 objectForKeyedSubscript:@"ContinuityCaptureArgs"];
  if (![v7 isEqualToString:@"ContinuityCaptureCommand"])
  {
    if ([v7 isEqualToString:@"ContinuityCaptureControl"])
    {
      v24 = [v6 objectForKeyedSubscript:@"ContinuityCaptureSelector"];
      v25 = [v24 unsignedIntegerValue];

      if (v25 == 2)
      {
        if ([v18 count] == 2)
        {
          v59 = [v18 objectAtIndexedSubscript:0];
          objc_opt_class();
          v60 = objc_opt_isKindOfClass();

          if (v60)
          {
            v61 = [v18 objectAtIndexedSubscript:1];
            objc_opt_class();
            v62 = objc_opt_isKindOfClass();

            if (v62)
            {
              v63 = [v18 objectAtIndexedSubscript:0];
              v64 = [v63 unsignedIntValue];
              v65 = [v18 objectAtIndexedSubscript:1];
              [WeakRetained handleAVCNegotiation:v64 data:v65];
            }
          }
        }

        goto LABEL_99;
      }

      if (v25 == 1)
      {
        if (v18)
        {
          if ([v18 count] == 1)
          {
            v26 = [v18 objectAtIndexedSubscript:0];
            objc_opt_class();
            v27 = objc_opt_isKindOfClass();

            if (v27)
            {
              v28 = MEMORY[0x277CCAAC8];
              v29 = objc_opt_class();
              v30 = [v18 objectAtIndexedSubscript:0];
              v119 = 0;
              v9 = [v28 unarchivedObjectOfClass:v29 fromData:v30 error:&v119];
              v22 = v119;

              if (v9)
              {
                v31 = CMContinuityCaptureLog(2);
                if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543618;
                  v134 = self;
                  v135 = 2114;
                  *v136 = v9;
                  _os_log_impl(&dword_242545000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@ dispatch update for %{public}@", buf, 0x16u);
                }

                [WeakRetained setValueForControl:v9 completion:&__block_literal_global_313];
                goto LABEL_100;
              }

              v115 = CMContinuityCaptureLog(2);
              [CMContinuityCaptureSidecarTransportBase _enqueueResponse:v115 identifier:?];
              goto LABEL_79;
            }
          }
        }
      }
    }

    else if ([v7 isEqualToString:@"ContinuityCaptureData"])
    {
      v32 = [v6 objectForKeyedSubscript:@"ContinuityCaptureSelector"];
      v33 = [v32 unsignedIntegerValue];

      v9 = 0;
      if (!v33 && v18)
      {
        if ([v18 count] != 2)
        {
          goto LABEL_99;
        }

        v34 = [v18 objectAtIndexedSubscript:0];
        objc_opt_class();
        v35 = objc_opt_isKindOfClass();

        if ((v35 & 1) == 0)
        {
          goto LABEL_99;
        }

        v36 = [v18 objectAtIndexedSubscript:1];
        objc_opt_class();
        v37 = objc_opt_isKindOfClass();

        if ((v37 & 1) == 0)
        {
          goto LABEL_99;
        }

        v38 = MEMORY[0x277CCAAC8];
        v39 = objc_opt_class();
        v40 = [v18 objectAtIndexedSubscript:0];
        v118 = 0;
        v41 = [v38 unarchivedObjectOfClass:v39 fromData:v40 error:&v118];
        v22 = v118;

        if (v41)
        {
          v42 = [v18 objectAtIndexedSubscript:1];
          [WeakRetained didCaptureStillImage:v41 entity:{-[NSObject unsignedIntValue](v42, "unsignedIntValue")}];
        }

        else
        {
          v42 = CMContinuityCaptureLog(2);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            [CMContinuityCaptureSidecarTransportBase _enqueueResponse:identifier:];
          }
        }

        goto LABEL_78;
      }

      goto LABEL_53;
    }

LABEL_99:
    v9 = 0;
    v22 = 0;
    goto LABEL_100;
  }

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
          v134 = self;
          _os_log_impl(&dword_242545000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ SynchronizeAudioClockComplete", buf, 0xCu);
        }

        [WeakRetained handleSynchronizeAudioClockCompletion];
        goto LABEL_99;
      }

      if ([v18 count])
      {
        v55 = [v18 objectAtIndexedSubscript:0];
      }

      else
      {
        v55 = 0;
      }

      if ([v18 count] < 2)
      {
        v111 = 0;
      }

      else
      {
        v111 = [v18 objectAtIndexedSubscript:1];
      }

      if ([v18 count] < 3)
      {
        v112 = 0;
      }

      else
      {
        v112 = [v18 objectAtIndexedSubscript:2];
      }

      v113 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
      {
        v114 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v112, "unsignedLongLongValue")}];
        *buf = 138544130;
        v134 = self;
        v135 = 2112;
        *v136 = v55;
        *&v136[8] = 2112;
        v137 = v111;
        v138 = 2112;
        v139 = v114;
        _os_log_impl(&dword_242545000, v113, OS_LOG_TYPE_DEFAULT, "%{public}@ Received synchronize audio clock with sampleTime %@ networkTime %@ grandmaster %@", buf, 0x2Au);
      }

      [WeakRetained synchronizeAudioClockWithSampleTime:objc_msgSend(v55 networkTime:"unsignedLongLongValue") clockGrandMasterIdentifier:{objc_msgSend(v111, "unsignedLongLongValue"), objc_msgSend(v112, "unsignedLongLongValue")}];
LABEL_98:

      goto LABEL_99;
    }

    if (v20 != 6)
    {
      if (v20 == 9)
      {
        if (!v18)
        {
          goto LABEL_99;
        }

        if ([v18 count] != 2)
        {
          goto LABEL_99;
        }

        v51 = [v18 objectAtIndexedSubscript:0];
        objc_opt_class();
        v52 = objc_opt_isKindOfClass();

        if ((v52 & 1) == 0)
        {
          goto LABEL_99;
        }

        v53 = [v18 objectAtIndexedSubscript:1];
        objc_opt_class();
        v54 = objc_opt_isKindOfClass();

        if ((v54 & 1) == 0)
        {
          goto LABEL_99;
        }

        v55 = [v18 objectAtIndexedSubscript:0];
        v56 = [v18 objectAtIndexedSubscript:1];
        v57 = [v56 unsignedIntValue];

        v58 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543874;
          v134 = self;
          v135 = 2112;
          *v136 = v55;
          *&v136[8] = 2048;
          v137 = v57;
          _os_log_impl(&dword_242545000, v58, OS_LOG_TYPE_DEFAULT, "%{public}@ EnqueueReactionEffect %@ entity %ld", buf, 0x20u);
        }

        [WeakRetained enqueueReactionEffect:v55 entity:v57];
        goto LABEL_98;
      }

      goto LABEL_53;
    }

    if (!v18)
    {
      goto LABEL_99;
    }

    if ([v18 count] != 2)
    {
      goto LABEL_99;
    }

    v84 = [v18 objectAtIndexedSubscript:0];
    objc_opt_class();
    v85 = objc_opt_isKindOfClass();

    if ((v85 & 1) == 0)
    {
      goto LABEL_99;
    }

    v86 = [v18 objectAtIndexedSubscript:1];
    objc_opt_class();
    v87 = objc_opt_isKindOfClass();

    if ((v87 & 1) == 0)
    {
      goto LABEL_99;
    }

    v88 = MEMORY[0x277CCAAC8];
    v89 = objc_opt_class();
    v90 = [v18 objectAtIndexedSubscript:0];
    v130 = 0;
    v41 = [v88 unarchivedObjectOfClass:v89 fromData:v90 error:&v130];
    v22 = v130;

    if (!v41)
    {
      v116 = CMContinuityCaptureLog(2);
      [CMContinuityCaptureSidecarTransportBase _enqueueResponse:v116 identifier:?];
      goto LABEL_78;
    }

    v91 = [v18 objectAtIndexedSubscript:1];
    v92 = [v91 unsignedIntValue];

    v93 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v134 = self;
      v135 = 2112;
      *v136 = v41;
      *&v136[8] = 2048;
      v137 = v92;
      _os_log_impl(&dword_242545000, v93, OS_LOG_TYPE_DEFAULT, "%{public}@ CaptureStillImage %@ entity %ld", buf, 0x20u);
    }

    v127[0] = MEMORY[0x277D85DD0];
    v127[1] = 3221225472;
    v127[2] = __71__CMContinuityCaptureSidecarTransportBase__enqueueResponse_identifier___block_invoke;
    v127[3] = &unk_278D5CAC8;
    objc_copyWeak(v129, location);
    v128 = v41;
    v129[1] = v92;
    [WeakRetained captureStillImage:v128 entity:v92 completion:v127];

    v83 = v129;
LABEL_77:
    objc_destroyWeak(v83);
LABEL_78:

LABEL_79:
    v9 = 0;
LABEL_100:
    v23 = 0;
    goto LABEL_101;
  }

  if (v20 == 1)
  {
    if ([v18 count] != 3)
    {
      goto LABEL_99;
    }

    v66 = [v18 objectAtIndexedSubscript:0];
    objc_opt_class();
    v67 = objc_opt_isKindOfClass();

    if ((v67 & 1) == 0)
    {
      goto LABEL_99;
    }

    v68 = [v18 objectAtIndexedSubscript:1];
    objc_opt_class();
    v69 = objc_opt_isKindOfClass();

    if ((v69 & 1) == 0)
    {
      goto LABEL_99;
    }

    v70 = [v18 objectAtIndexedSubscript:2];
    objc_opt_class();
    v71 = objc_opt_isKindOfClass();

    if ((v71 & 1) == 0)
    {
      goto LABEL_99;
    }

    v72 = [(CMContinuityCaptureSidecarTransportBase *)self device];
    v73 = [v72 remote];

    if (v73)
    {
      goto LABEL_99;
    }

    v74 = MEMORY[0x277CCAAC8];
    v75 = objc_opt_class();
    v76 = [v18 objectAtIndexedSubscript:0];
    v126 = 0;
    v77 = [v74 unarchivedObjectOfClass:v75 fromData:v76 error:&v126];
    v22 = v126;

    if (!v77)
    {
      v117 = CMContinuityCaptureLog(2);
      [CMContinuityCaptureSidecarTransportBase _enqueueResponse:v117 identifier:?];
      goto LABEL_79;
    }

    v78 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
    {
      v79 = [v18 objectAtIndexedSubscript:1];
      v80 = [v79 unsignedIntValue];
      *buf = 138543874;
      v134 = self;
      v135 = 2114;
      *v136 = v77;
      *&v136[8] = 1024;
      LODWORD(v137) = v80;
      _os_log_impl(&dword_242545000, v78, OS_LOG_TYPE_DEFAULT, "%{public}@ StartStream Configuration %{public}@ option %u", buf, 0x1Cu);
    }

    v81 = [v18 objectAtIndexedSubscript:1];
    v82 = [v81 unsignedIntValue];
    v123[0] = MEMORY[0x277D85DD0];
    v123[1] = 3221225472;
    v123[2] = __71__CMContinuityCaptureSidecarTransportBase__enqueueResponse_identifier___block_invoke_308;
    v123[3] = &unk_278D5C660;
    objc_copyWeak(&v125, location);
    v41 = v77;
    v124 = v41;
    [WeakRetained startStream:v41 option:v82 completion:v123];

    v83 = &v125;
    goto LABEL_77;
  }

  if (v20 == 2)
  {
    if ([v18 count] == 3)
    {
      v94 = [v18 objectAtIndexedSubscript:0];
      objc_opt_class();
      v95 = objc_opt_isKindOfClass();

      if (v95)
      {
        v96 = [v18 objectAtIndexedSubscript:1];
        objc_opt_class();
        v97 = objc_opt_isKindOfClass();

        if (v97)
        {
          v98 = [v18 objectAtIndexedSubscript:2];
          objc_opt_class();
          v99 = objc_opt_isKindOfClass();

          if (v99)
          {
            v100 = [(CMContinuityCaptureSidecarTransportBase *)self device];
            v101 = [v100 remote];

            if ((v101 & 1) == 0)
            {
              v102 = CMContinuityCaptureLog(2);
              if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
              {
                v103 = [v18 objectAtIndexedSubscript:0];
                v104 = [v103 unsignedIntValue];
                v105 = [v18 objectAtIndexedSubscript:1];
                v106 = [v105 unsignedIntValue];
                *buf = 138543874;
                v134 = self;
                v135 = 1024;
                *v136 = v104;
                *&v136[4] = 1024;
                *&v136[6] = v106;
                _os_log_impl(&dword_242545000, v102, OS_LOG_TYPE_DEFAULT, "%{public}@ StopStream entity %u option %u", buf, 0x18u);
              }

              v107 = [v18 objectAtIndexedSubscript:0];
              v108 = [v107 unsignedIntValue];
              v109 = [v18 objectAtIndexedSubscript:1];
              v110 = [v109 unsignedIntValue];
              v120[0] = MEMORY[0x277D85DD0];
              v120[1] = 3221225472;
              v120[2] = __71__CMContinuityCaptureSidecarTransportBase__enqueueResponse_identifier___block_invoke_309;
              v120[3] = &unk_278D5C660;
              objc_copyWeak(&v122, location);
              v18 = v18;
              v121 = v18;
              [WeakRetained stopStream:v108 option:v110 completion:v120];

              objc_destroyWeak(&v122);
            }
          }
        }
      }
    }

    goto LABEL_99;
  }

  if (v20 != 3)
  {
LABEL_53:
    v22 = 0;
    v23 = 0;
    goto LABEL_101;
  }

  if (!v18)
  {
    goto LABEL_99;
  }

  if ([v18 count] != 2)
  {
    goto LABEL_99;
  }

  v43 = [v18 objectAtIndexedSubscript:0];
  objc_opt_class();
  v44 = objc_opt_isKindOfClass();

  if ((v44 & 1) == 0)
  {
    goto LABEL_99;
  }

  v45 = [v18 objectAtIndexedSubscript:1];
  objc_opt_class();
  v46 = objc_opt_isKindOfClass();

  if ((v46 & 1) == 0)
  {
    goto LABEL_99;
  }

  v23 = [v18 objectAtIndexedSubscript:0];
  v47 = [v18 objectAtIndexedSubscript:1];
  v48 = [v47 unsignedIntValue];
  v131 = @"CMContinuityCaptureStateMachineEventDataKeyPostTime";
  v49 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:mach_continuous_time()];
  v132 = v49;
  v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v132 forKeys:&v131 count:1];
  [WeakRetained postEvent:v23 entity:v48 data:v50];

  v9 = 0;
  v22 = 0;
LABEL_101:
  objc_destroyWeak(location);
}

void __71__CMContinuityCaptureSidecarTransportBase__enqueueResponse_identifier___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (a2 && WeakRetained)
  {
    v6 = WeakRetained;
    [*(a1 + 32) setError:a2];
    v5 = [v6 device];
    [v5 didCaptureStillImage:*(a1 + 32) entity:*(a1 + 48)];

    WeakRetained = v6;
  }
}

void __71__CMContinuityCaptureSidecarTransportBase__enqueueResponse_identifier___block_invoke_308(uint64_t a1, uint64_t a2)
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

void __71__CMContinuityCaptureSidecarTransportBase__enqueueResponse_identifier___block_invoke_309(uint64_t a1, uint64_t a2)
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

- (void)teardownSidecarStreams
{
  v3 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412546;
    v5 = self;
    v6 = 2080;
    v7 = "[CMContinuityCaptureSidecarTransportBase teardownSidecarStreams]";
    _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%@ %s", &v4, 0x16u);
  }

  [(CMContinuityCaptureTransportSidecarDevice *)self->_device teardownStreams];
  self->_pendingTimeSyncCallback = 0;
}

- (void)setupSidecarStreams
{
  v3 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v43 = self;
    v44 = 2080;
    v45 = "[CMContinuityCaptureSidecarTransportBase setupSidecarStreams]";
    _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", buf, 0x16u);
  }

  objc_initWeak(&location, self);
  dispatch_assert_queue_V2(self->_queue);
  v4 = CFPreferencesCopyAppValue(@"MediaStreamTypeForAudio", @"com.apple.coremedia");
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [v4 unsignedIntValue];
    v6 = CMContinuityCaptureLog(0);
    v7 = v5;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v43 = self;
      v44 = 1024;
      LODWORD(v45) = v5;
      _os_log_impl(&dword_242545000, v6, OS_LOG_TYPE_DEFAULT, "%@ MediaStreamTypeForAudio (SidecarStream setup) %u", buf, 0x12u);
    }
  }

  else
  {
    v7 = 3;
  }

  v8 = CFPreferencesCopyAppValue(@"MediaStreamTypeForVideo", @"com.apple.coremedia");

  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = [v8 unsignedIntValue];
    v10 = CMContinuityCaptureLog(0);
    v11 = v9;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v43 = self;
      v44 = 1024;
      LODWORD(v45) = v9;
      _os_log_impl(&dword_242545000, v10, OS_LOG_TYPE_DEFAULT, "%@ MediaStreamTypeForVideo (SidecarStream setup) %u", buf, 0x12u);
    }
  }

  else
  {
    v11 = 3;
  }

  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __62__CMContinuityCaptureSidecarTransportBase_setupSidecarStreams__block_invoke;
  v39[3] = &unk_278D5D1D0;
  objc_copyWeak(&v40, &location);
  v12 = MEMORY[0x245D12020](v39);
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __62__CMContinuityCaptureSidecarTransportBase_setupSidecarStreams__block_invoke_325;
  v36[3] = &unk_278D5D220;
  objc_copyWeak(&v38, &location);
  v25 = v12;
  v37 = v25;
  v13 = MEMORY[0x245D12020](v36);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v14 = self->_sidebandIdentifiers;
  v15 = [(NSArray *)v14 countByEnumeratingWithState:&v32 objects:v31 count:16];
  if (v15)
  {
    v16 = *v33;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v33 != v16)
        {
          objc_enumerationMutation(v14);
        }

        [(CMContinuityCaptureSidecarTransportBase *)self setupSidebandSidecarStreamForIdentifier:*(*(&v32 + 1) + 8 * i) type:2 completion:v13];
      }

      v15 = [(NSArray *)v14 countByEnumeratingWithState:&v32 objects:v31 count:16];
    }

    while (v15);
  }

  v24 = v8;

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v18 = self->_mediaIdentifiers;
  v19 = [(NSArray *)v18 countByEnumeratingWithState:&v27 objects:v26 count:16];
  if (v19)
  {
    v20 = *v28;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(v18);
        }

        v22 = *(*(&v27 + 1) + 8 * j);
        if ([v22 isEqualToString:{@"ContinuityCaptureMediaMicrophone", v24}])
        {
          v23 = v7;
        }

        else
        {
          v23 = v11;
        }

        [(CMContinuityCaptureSidecarTransportBase *)self setupMediaSidecarStreamForIdentifier:v22 type:v23 completion:v13];
      }

      v19 = [(NSArray *)v18 countByEnumeratingWithState:&v27 objects:v26 count:16];
    }

    while (v19);
  }

  objc_destroyWeak(&v38);
  objc_destroyWeak(&v40);

  objc_destroyWeak(&location);
}

void __62__CMContinuityCaptureSidecarTransportBase_setupSidecarStreams__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    dispatch_assert_queue_V2(*(WeakRetained + 2));
    v9 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_loadWeakRetained((a1 + 32));
      if (v5)
      {
        v11 = [v5 identifier];
      }

      else
      {
        v11 = 0;
      }

      v15 = 138543874;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_242545000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ setupStream completion for %@ error %@", &v15, 0x20u);
      if (v5)
      {
      }
    }

    v12 = [CMContinuityCaptureTransportDeviceSidecarStream alloc];
    v13 = [v5 identifier];
    v14 = [(CMContinuityCaptureTransportDeviceSidecarStream *)v12 initWithSidecarStream:v5 entity:CMContinuityCaptureEntityTypeFromMediaIdentifer(v13) messageDelegate:v8];

    [v8[1] activateStream:v14];
  }
}

void __62__CMContinuityCaptureSidecarTransportBase_setupSidecarStreams__block_invoke_325(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained[2];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__CMContinuityCaptureSidecarTransportBase_setupSidecarStreams__block_invoke_2;
    block[3] = &unk_278D5D1F8;
    v13 = *(a1 + 32);
    v11 = v5;
    v12 = v6;
    dispatch_async(v9, block);
  }
}

- (void)createTimeSyncClockForSession:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  dispatch_assert_queue_V2(self->_queue);
  if (v6 && !self->_pendingTimeSyncCallback)
  {
    self->_pendingTimeSyncCallback = 1;
    v8 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v14 = self;
      v15 = 2080;
      v16 = "[CMContinuityCaptureSidecarTransportBase createTimeSyncClockForSession:completion:]";
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_242545000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ %s for session %@", buf, 0x20u);
    }

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __84__CMContinuityCaptureSidecarTransportBase_createTimeSyncClockForSession_completion___block_invoke;
    v9[3] = &unk_278D5D270;
    objc_copyWeak(&v12, &location);
    v10 = v6;
    v11 = v7;
    [v10 timeSyncWithCompletion:v9];

    objc_destroyWeak(&v12);
  }

  objc_destroyWeak(&location);
}

void __84__CMContinuityCaptureSidecarTransportBase_createTimeSyncClockForSession_completion___block_invoke(id *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v7 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_loadWeakRetained(a1 + 6);
      *buf = 138543874;
      v19 = v8;
      v20 = 2048;
      v21 = a2;
      v22 = 2112;
      v23 = v5;
      _os_log_impl(&dword_242545000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Got time sync clockIdentifier %llu from sidecar session. Error: %@", buf, 0x20u);
    }

    v9 = WeakRetained[2];
    if (v5)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __84__CMContinuityCaptureSidecarTransportBase_createTimeSyncClockForSession_completion___block_invoke_326;
      block[3] = &unk_278D5C0D0;
      v10 = &v17;
      v17 = WeakRetained;
      dispatch_async(v9, block);
    }

    else
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __84__CMContinuityCaptureSidecarTransportBase_createTimeSyncClockForSession_completion___block_invoke_2;
      v11[3] = &unk_278D5D248;
      v10 = &v12;
      v12 = WeakRetained;
      v15 = a2;
      v13 = a1[4];
      v14 = a1[5];
      dispatch_async(v9, v11);
    }
  }
}

void __84__CMContinuityCaptureSidecarTransportBase_createTimeSyncClockForSession_completion___block_invoke_2(void *a1)
{
  v2 = a1 + 4;
  *(a1[4] + 32) = 0;
  v3 = [[CMContinuityCaptureTimeSyncClock alloc] initWithClockIdentifier:a1[7]];
  v4 = v3;
  if (v3)
  {
    [(CMContinuityCaptureTimeSyncClock *)v3 startEmittingHeartBeatSignposts];
    (*(a1[6] + 16))();
  }

  else
  {
    v5 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __84__CMContinuityCaptureSidecarTransportBase_createTimeSyncClockForSession_completion___block_invoke_2_cold_1(v2, a1, v5);
    }

    v6 = a1[6];
    v7 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ContinuityCapture" code:-536870212 userInfo:0];
    (*(v6 + 16))(v6, 0, v7);
  }
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(CMContinuityCaptureSidecarTransportBase *)self device];
  v7 = [v3 stringWithFormat:@"%@: %@ [%p]", v5, v6, self];

  return v7;
}

- (CMContinuityCaptureSidecarTransportBase)initWithDevice:(id)a3 queue:(id)a4 taskDelegate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v32.receiver = self;
  v32.super_class = CMContinuityCaptureSidecarTransportBase;
  v12 = [(CMContinuityCaptureSidecarTransportBase *)&v32 init];
  v13 = v12;
  if (!v12)
  {
    goto LABEL_10;
  }

  objc_storeWeak(&v12->_delegate, v11);
  objc_storeStrong(&v13->_device, a3);
  objc_storeStrong(&v13->_queue, a4);
  v14 = CMContinuityCaptureGetListOfSupportedSidebandIdentifiers();
  sidebandIdentifiers = v13->_sidebandIdentifiers;
  v13->_sidebandIdentifiers = v14;

  v16 = [v9 capabilities];
  v17 = CMContinuityCaptureMediaIdentifiersForCapabilities(v16);
  mediaIdentifiers = v13->_mediaIdentifiers;
  v13->_mediaIdentifiers = v17;

  objc_storeStrong(&v13->_device, a3);
  v19 = [v9 capabilities];
  if (!v19)
  {
    goto LABEL_7;
  }

  v20 = v19;
  v21 = [v9 capabilities];
  v22 = [v21 devicesCapabilities];
  v23 = [v22 count];

  if (!v23)
  {
LABEL_7:
    v25 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [v9 capabilities];
      v28 = 138543618;
      v29 = v13;
      v30 = 2048;
      v31 = v26;
      _os_log_impl(&dword_242545000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ Invalid capabilities %p", &v28, 0x16u);
    }

    goto LABEL_10;
  }

  if (!v13->_queue || !v13->_device)
  {
LABEL_10:
    v24 = 0;
    goto LABEL_11;
  }

  v24 = v13;
LABEL_11:

  return v24;
}

- (void)_enqueueResponse:(NSObject *)a1 identifier:.cold.2(NSObject *a1)
{
  if (OUTLINED_FUNCTION_4_1(a1))
  {
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_2_3(&dword_242545000, v2, v3, "%{public}@ error unarchivedObjectOfClass %@", v4, v5, v6, v7, v8);
  }
}

- (void)_enqueueResponse:(NSObject *)a1 identifier:.cold.4(NSObject *a1)
{
  if (OUTLINED_FUNCTION_4_1(a1))
  {
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_2_3(&dword_242545000, v2, v3, "%@ error unarchivedObjectOfClass CMContinuityCaptureStillImageRequest %@", v4, v5, v6, v7, v8);
  }
}

void __84__CMContinuityCaptureSidecarTransportBase_createTimeSyncClockForSession_completion___block_invoke_2_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = *a1;
  *&v3[12] = 2112;
  *&v3[14] = *(a2 + 40);
  OUTLINED_FUNCTION_5_2(&dword_242545000, a2, a3, "%{public}@ Failed to create time sync clock from session %@, Stream setup requires valid time sync clock.", *v3, *&v3[8], *&v3[16]);
}

@end