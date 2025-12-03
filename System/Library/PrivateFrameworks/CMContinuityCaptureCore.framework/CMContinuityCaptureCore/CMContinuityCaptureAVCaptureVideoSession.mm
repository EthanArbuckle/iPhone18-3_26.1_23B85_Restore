@interface CMContinuityCaptureAVCaptureVideoSession
- (BOOL)hasConnectionsForEntity:(int64_t)entity;
- (BOOL)isMulticamSession;
- (CMContinuityCaptureAVCaptureVideoSession)initWithQueue:(id)queue requiresMulticamSession:(BOOL)session;
- (void)addConnections:(id)connections;
- (void)dealloc;
- (void)removeConnections:(id)connections;
- (void)start;
- (void)stop;
@end

@implementation CMContinuityCaptureAVCaptureVideoSession

- (void)dealloc
{
  if ([(NSMutableArray *)self->_connections count])
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"%@ ContinuityCapture error : capture session has unremoved video connections %@", self, self->_connections}];
  }

  v3.receiver = self;
  v3.super_class = CMContinuityCaptureAVCaptureVideoSession;
  [(CMContinuityCaptureAVCaptureBaseSession *)&v3 dealloc];
}

- (BOOL)isMulticamSession
{
  captureSession = [(CMContinuityCaptureAVCaptureBaseSession *)self captureSession];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)addConnections:(id)connections
{
  connectionsCopy = connections;
  queue = [(CMContinuityCaptureAVCaptureBaseSession *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(CMContinuityCaptureAVCaptureBaseSession *)self state]== 1)
  {
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v44 = connectionsCopy;
    obj = connectionsCopy;
    v47 = [obj countByEnumeratingWithState:&v63 objects:v62 count:16];
    if (!v47)
    {
      goto LABEL_38;
    }

    v46 = *v64;
    v50 = *MEMORY[0x277CE5888];
    while (1)
    {
      for (i = 0; i != v47; i = v34 + 1)
      {
        if (*v64 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v48 = *(*(&v63 + 1) + 8 * i);
        v49 = i;
        inputPorts = [v48 inputPorts];
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        v8 = [inputPorts countByEnumeratingWithState:&v58 objects:v57 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v59;
          do
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v59 != v10)
              {
                objc_enumerationMutation(inputPorts);
              }

              v12 = *(*(&v58 + 1) + 8 * j);
              captureSession = [(CMContinuityCaptureAVCaptureBaseSession *)self captureSession];
              input = [v12 input];
              v15 = [captureSession canAddInput:input];

              if (v15)
              {
                input2 = [v12 input];
                captureSession2 = [(CMContinuityCaptureAVCaptureBaseSession *)self captureSession];
                [captureSession2 addInputWithNoConnections:input2];

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  device = [input2 device];
                  deviceType = [device deviceType];
                  v20 = [deviceType isEqualToString:v50];

                  if ((v20 & 1) == 0)
                  {
                    objc_storeStrong(&self->_videoCameraInput, input2);
                    v24 = &unk_2854ECBD8;
LABEL_21:
                    [(NSMutableArray *)self->_connectionEntities addObject:v24];
                    goto LABEL_22;
                  }
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  device2 = [input2 device];
                  deviceType2 = [device2 deviceType];
                  v23 = [deviceType2 isEqualToString:v50];

                  v24 = &unk_2854ECBF0;
                  if (v23)
                  {
                    goto LABEL_21;
                  }
                }
              }

              else
              {
                input2 = CMContinuityCaptureLog(2);
                if (os_log_type_enabled(input2, OS_LOG_TYPE_DEFAULT))
                {
                  input3 = [v12 input];
                  *buf = 138412802;
                  selfCopy4 = self;
                  v53 = 2112;
                  *v54 = input3;
                  *&v54[8] = 2080;
                  *&v54[10] = "[CMContinuityCaptureAVCaptureVideoSession addConnections:]";
                  _os_log_impl(&dword_242545000, input2, OS_LOG_TYPE_DEFAULT, "%@ can't add input %@ %s", buf, 0x20u);
                }
              }

LABEL_22:
            }

            v9 = [inputPorts countByEnumeratingWithState:&v58 objects:v57 count:16];
          }

          while (v9);
        }

        captureSession3 = [(CMContinuityCaptureAVCaptureBaseSession *)self captureSession];
        output = [v48 output];
        v28 = [captureSession3 canAddOutput:output];

        if (v28)
        {
          captureSession4 = [(CMContinuityCaptureAVCaptureBaseSession *)self captureSession];
          output2 = [v48 output];
          [captureSession4 addOutputWithNoConnections:output2];
        }

        else
        {
          captureSession4 = CMContinuityCaptureLog(2);
          if (!os_log_type_enabled(captureSession4, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_29;
          }

          output2 = [v48 output];
          inputPorts2 = [v48 inputPorts];
          *buf = 138413058;
          selfCopy4 = self;
          v53 = 2112;
          *v54 = output2;
          *&v54[8] = 2112;
          *&v54[10] = inputPorts2;
          v55 = 2080;
          v56 = "[CMContinuityCaptureAVCaptureVideoSession addConnections:]";
          _os_log_impl(&dword_242545000, captureSession4, OS_LOG_TYPE_DEFAULT, "%@ can't add output %@ for input %@ %s", buf, 0x2Au);
        }

LABEL_29:
        captureSession5 = [(CMContinuityCaptureAVCaptureBaseSession *)self captureSession];
        connections = [captureSession5 connections];
        if ([connections containsObject:v48])
        {

          v34 = v49;
        }

        else
        {
          captureSession6 = [(CMContinuityCaptureAVCaptureBaseSession *)self captureSession];
          v36 = [captureSession6 canAddConnection:v48];

          v34 = v49;
          if (v36)
          {
            captureSession7 = [(CMContinuityCaptureAVCaptureBaseSession *)self captureSession];
            [captureSession7 addConnection:v48];

            [(NSMutableArray *)self->_connections addObject:v48];
            goto LABEL_36;
          }
        }

        v38 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          captureSession8 = [(CMContinuityCaptureAVCaptureBaseSession *)self captureSession];
          connections2 = [captureSession8 connections];
          v41 = [connections2 containsObject:v48];
          *buf = 138412802;
          selfCopy4 = self;
          v53 = 2112;
          *v54 = v48;
          *&v54[8] = 1024;
          *&v54[10] = v41;
          _os_log_impl(&dword_242545000, v38, OS_LOG_TYPE_DEFAULT, "%@ can't add connection New %@ %d", buf, 0x1Cu);
        }

LABEL_36:
      }

      v47 = [obj countByEnumeratingWithState:&v63 objects:v62 count:16];
      if (!v47)
      {
LABEL_38:

        v42 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          connections = self->_connections;
          *buf = 138412290;
          selfCopy4 = connections;
          _os_log_impl(&dword_242545000, v42, OS_LOG_TYPE_DEFAULT, "addConnections done. Current connections: %@", buf, 0xCu);
        }

        connectionsCopy = v44;
        goto LABEL_43;
      }
    }
  }

  v42 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy4 = self;
    v53 = 1024;
    *v54 = [(CMContinuityCaptureAVCaptureBaseSession *)self state];
    *&v54[4] = 2080;
    *&v54[6] = "[CMContinuityCaptureAVCaptureVideoSession addConnections:]";
    _os_log_impl(&dword_242545000, v42, OS_LOG_TYPE_DEFAULT, "%@ Invalid state %d for %s", buf, 0x1Cu);
  }

LABEL_43:
}

- (void)removeConnections:(id)connections
{
  connectionsCopy = connections;
  queue = [(CMContinuityCaptureAVCaptureBaseSession *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(CMContinuityCaptureAVCaptureBaseSession *)self state]== 1)
  {
    v168 = 0u;
    v169 = 0u;
    v166 = 0u;
    v167 = 0u;
    v102 = connectionsCopy;
    obj = connectionsCopy;
    selfCopy = self;
    v110 = [obj countByEnumeratingWithState:&v166 objects:v165 count:16];
    if (v110)
    {
      v108 = *v167;
      v6 = *MEMORY[0x277CE5888];
      do
      {
        v7 = 0;
        do
        {
          if (*v167 != v108)
          {
            objc_enumerationMutation(obj);
          }

          v112 = v7;
          v8 = *(*(&v166 + 1) + 8 * v7);
          captureSession = [(CMContinuityCaptureAVCaptureBaseSession *)self captureSession];
          connections = [captureSession connections];
          v11 = [connections containsObject:v8];

          if (v11)
          {
            v12 = CMContinuityCaptureLog(2);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *v171 = v8;
              _os_log_impl(&dword_242545000, v12, OS_LOG_TYPE_DEFAULT, "Removing connection: %@", buf, 0xCu);
            }

            captureSession2 = [(CMContinuityCaptureAVCaptureBaseSession *)selfCopy captureSession];
            [captureSession2 removeConnection:v8];

            [(NSMutableArray *)selfCopy->_connections removeObject:v8];
          }

          inputPorts = [v8 inputPorts];
          v161 = 0u;
          v162 = 0u;
          v163 = 0u;
          v164 = 0u;
          v15 = [inputPorts countByEnumeratingWithState:&v161 objects:v160 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v162;
            do
            {
              for (i = 0; i != v16; ++i)
              {
                if (*v162 != v17)
                {
                  objc_enumerationMutation(inputPorts);
                }

                input = [*(*(&v161 + 1) + 8 * i) input];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  device = [input device];
                  deviceType = [device deviceType];
                  v22 = [deviceType isEqualToString:v6];

                  v23 = &unk_2854ECBD8;
                  if (!v22)
                  {
                    goto LABEL_20;
                  }
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  device2 = [input device];
                  deviceType2 = [device2 deviceType];
                  v26 = [deviceType2 isEqualToString:v6];

                  v23 = &unk_2854ECBF0;
                  if (v26)
                  {
LABEL_20:
                    [(NSMutableArray *)selfCopy->_connectionEntities removeObject:v23];
                  }
                }
              }

              v16 = [inputPorts countByEnumeratingWithState:&v161 objects:v160 count:16];
            }

            while (v16);
          }

          self = selfCopy;
          v7 = v112 + 1;
        }

        while (v112 + 1 != v110);
        v110 = [obj countByEnumeratingWithState:&v166 objects:v165 count:16];
      }

      while (v110);
    }

    v159 = 0u;
    v158 = 0u;
    v157 = 0u;
    v156 = 0u;
    v104 = obj;
    obja = [v104 countByEnumeratingWithState:&v156 objects:v155 count:16];
    if (obja)
    {
      v105 = *v157;
      do
      {
        v27 = 0;
        do
        {
          if (*v157 != v105)
          {
            objc_enumerationMutation(v104);
          }

          v109 = v27;
          v28 = *(*(&v156 + 1) + 8 * v27);
          v151 = 0u;
          v152 = 0u;
          v153 = 0u;
          v154 = 0u;
          captureSession3 = [(CMContinuityCaptureAVCaptureBaseSession *)self captureSession];
          connections2 = [captureSession3 connections];

          v31 = [connections2 countByEnumeratingWithState:&v151 objects:v150 count:16];
          if (v31)
          {
            v32 = v31;
            v33 = *v152;
LABEL_32:
            v34 = 0;
            while (1)
            {
              if (*v152 != v33)
              {
                objc_enumerationMutation(connections2);
              }

              output = [*(*(&v151 + 1) + 8 * v34) output];
              output2 = [v28 output];
              v37 = [output isEqual:output2];

              if (v37)
              {
                break;
              }

              if (v32 == ++v34)
              {
                v32 = [connections2 countByEnumeratingWithState:&v151 objects:v150 count:16];
                if (v32)
                {
                  goto LABEL_32;
                }

                goto LABEL_38;
              }
            }
          }

          else
          {
LABEL_38:

            v38 = CMContinuityCaptureLog(2);
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              output3 = [v28 output];
              *buf = 138412290;
              *v171 = output3;
              _os_log_impl(&dword_242545000, v38, OS_LOG_TYPE_DEFAULT, "Removing output: %@", buf, 0xCu);
            }

            connections2 = [(CMContinuityCaptureAVCaptureBaseSession *)self captureSession];
            output4 = [v28 output];
            [connections2 removeOutput:output4];
          }

          captureSession4 = [(CMContinuityCaptureAVCaptureBaseSession *)self captureSession];
          connections3 = [captureSession4 connections];
          connection = [(AVCaptureVideoPreviewLayer *)self->_videoPreviewLayer connection];
          v44 = [connections3 containsObject:connection];

          if (v44)
          {
            array = [MEMORY[0x277CBEB18] array];
            v146 = 0u;
            v147 = 0u;
            v148 = 0u;
            v149 = 0u;
            connection2 = [(AVCaptureVideoPreviewLayer *)self->_videoPreviewLayer connection];
            inputPorts2 = [connection2 inputPorts];

            v48 = [inputPorts2 countByEnumeratingWithState:&v146 objects:v145 count:16];
            if (v48)
            {
              v49 = v48;
              v50 = *v147;
              do
              {
                for (j = 0; j != v49; ++j)
                {
                  if (*v147 != v50)
                  {
                    objc_enumerationMutation(inputPorts2);
                  }

                  input2 = [*(*(&v146 + 1) + 8 * j) input];
                  [array addObject:input2];
                }

                v49 = [inputPorts2 countByEnumeratingWithState:&v146 objects:v145 count:16];
              }

              while (v49);
            }

            v144 = 0u;
            v143 = 0u;
            v142 = 0u;
            v141 = 0u;
            captureSession5 = [(CMContinuityCaptureAVCaptureBaseSession *)self captureSession];
            videoCameraInput = [captureSession5 connections];

            v113 = [videoCameraInput countByEnumeratingWithState:&v141 objects:v140 count:16];
            if (v113)
            {
              v55 = *v142;
              v103 = *v142;
              do
              {
                for (k = 0; k != v113; k = k + 1)
                {
                  if (*v142 != v55)
                  {
                    objc_enumerationMutation(videoCameraInput);
                  }

                  v57 = *(*(&v141 + 1) + 8 * k);
                  connection3 = [(AVCaptureVideoPreviewLayer *)self->_videoPreviewLayer connection];
                  v59 = [v57 isEqual:connection3];

                  if ((v59 & 1) == 0)
                  {
                    v139 = 0u;
                    v137 = 0u;
                    v138 = 0u;
                    v136 = 0u;
                    inputPorts3 = [v57 inputPorts];
                    v61 = [inputPorts3 countByEnumeratingWithState:&v136 objects:v135 count:16];
                    if (v61)
                    {
                      v62 = v61;
                      v63 = *v137;
                      while (2)
                      {
                        for (m = 0; m != v62; ++m)
                        {
                          if (*v137 != v63)
                          {
                            objc_enumerationMutation(inputPorts3);
                          }

                          input3 = [*(*(&v136 + 1) + 8 * m) input];
                          v66 = [array containsObject:input3];

                          if (v66)
                          {

                            self = selfCopy;
                            goto LABEL_70;
                          }
                        }

                        v62 = [inputPorts3 countByEnumeratingWithState:&v136 objects:v135 count:16];
                        self = selfCopy;
                        if (v62)
                        {
                          continue;
                        }

                        break;
                      }
                    }

                    v55 = v103;
                  }
                }

                v113 = [videoCameraInput countByEnumeratingWithState:&v141 objects:v140 count:16];
              }

              while (v113);
            }

            v67 = CMContinuityCaptureLog(2);
            if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
            {
              connection4 = [(AVCaptureVideoPreviewLayer *)self->_videoPreviewLayer connection];
              *buf = 138412290;
              *v171 = connection4;
              _os_log_impl(&dword_242545000, v67, OS_LOG_TYPE_DEFAULT, "Removing preivew layer connection: %@", buf, 0xCu);
            }

            captureSession6 = [(CMContinuityCaptureAVCaptureBaseSession *)self captureSession];
            connection5 = [(AVCaptureVideoPreviewLayer *)self->_videoPreviewLayer connection];
            [captureSession6 removeConnection:connection5];

            videoCameraInput = self->_videoCameraInput;
            self->_videoCameraInput = 0;
LABEL_70:
          }

          array2 = [MEMORY[0x277CBEB18] array];
          v131 = 0u;
          v132 = 0u;
          v133 = 0u;
          v134 = 0u;
          inputPorts4 = [v28 inputPorts];
          v73 = [inputPorts4 countByEnumeratingWithState:&v131 objects:v130 count:16];
          if (v73)
          {
            v74 = v73;
            v75 = *v132;
            do
            {
              for (n = 0; n != v74; ++n)
              {
                if (*v132 != v75)
                {
                  objc_enumerationMutation(inputPorts4);
                }

                input4 = [*(*(&v131 + 1) + 8 * n) input];
                [array2 addObject:input4];
              }

              v74 = [inputPorts4 countByEnumeratingWithState:&v131 objects:v130 count:16];
            }

            while (v74);
          }

          array3 = [MEMORY[0x277CBEB18] array];
          v126 = 0u;
          v127 = 0u;
          v128 = 0u;
          v129 = 0u;
          captureSession7 = [(CMContinuityCaptureAVCaptureBaseSession *)self captureSession];
          connections4 = [captureSession7 connections];

          v114 = connections4;
          v81 = [connections4 countByEnumeratingWithState:&v126 objects:v125 count:16];
          if (v81)
          {
            v82 = v81;
            v83 = *v127;
            do
            {
              for (ii = 0; ii != v82; ++ii)
              {
                if (*v127 != v83)
                {
                  objc_enumerationMutation(v114);
                }

                v85 = *(*(&v126 + 1) + 8 * ii);
                v121 = 0u;
                v122 = 0u;
                v123 = 0u;
                v124 = 0u;
                inputPorts5 = [v85 inputPorts];
                v87 = [inputPorts5 countByEnumeratingWithState:&v121 objects:v120 count:16];
                if (v87)
                {
                  v88 = v87;
                  v89 = *v122;
                  do
                  {
                    for (jj = 0; jj != v88; ++jj)
                    {
                      if (*v122 != v89)
                      {
                        objc_enumerationMutation(inputPorts5);
                      }

                      input5 = [*(*(&v121 + 1) + 8 * jj) input];
                      [array3 addObject:input5];
                    }

                    v88 = [inputPorts5 countByEnumeratingWithState:&v121 objects:v120 count:16];
                  }

                  while (v88);
                }
              }

              v82 = [v114 countByEnumeratingWithState:&v126 objects:v125 count:16];
            }

            while (v82);
          }

          v118 = 0u;
          v119 = 0u;
          v116 = 0u;
          v117 = 0u;
          v92 = array2;
          v93 = [v92 countByEnumeratingWithState:&v116 objects:v115 count:16];
          self = selfCopy;
          if (v93)
          {
            v94 = v93;
            v95 = *v117;
            do
            {
              for (kk = 0; kk != v94; ++kk)
              {
                if (*v117 != v95)
                {
                  objc_enumerationMutation(v92);
                }

                v97 = *(*(&v116 + 1) + 8 * kk);
                if (([array3 containsObject:v97] & 1) == 0)
                {
                  v98 = CMContinuityCaptureLog(2);
                  if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    *v171 = v97;
                    _os_log_impl(&dword_242545000, v98, OS_LOG_TYPE_DEFAULT, "Removing input: %@", buf, 0xCu);
                  }

                  captureSession8 = [(CMContinuityCaptureAVCaptureBaseSession *)selfCopy captureSession];
                  [captureSession8 removeInput:v97];
                }
              }

              v94 = [v92 countByEnumeratingWithState:&v116 objects:v115 count:16];
            }

            while (v94);
          }

          v27 = v109 + 1;
        }

        while ((v109 + 1) != obja);
        obja = [v104 countByEnumeratingWithState:&v156 objects:v155 count:16];
      }

      while (obja);
    }

    v100 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
    {
      connections = self->_connections;
      *buf = 138412290;
      *v171 = connections;
      _os_log_impl(&dword_242545000, v100, OS_LOG_TYPE_DEFAULT, "State After removal %@", buf, 0xCu);
    }

    connectionsCopy = v102;
  }

  else
  {
    v100 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      *v171 = [(CMContinuityCaptureAVCaptureBaseSession *)self state];
      *&v171[4] = 2080;
      *&v171[6] = "[CMContinuityCaptureAVCaptureVideoSession removeConnections:]";
      _os_log_impl(&dword_242545000, v100, OS_LOG_TYPE_DEFAULT, "Invalid state %d for %s", buf, 0x12u);
    }
  }
}

- (BOOL)hasConnectionsForEntity:(int64_t)entity
{
  connectionEntities = self->_connectionEntities;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:entity];
  LOBYTE(connectionEntities) = [(NSMutableArray *)connectionEntities containsObject:v4];

  return connectionEntities;
}

- (void)start
{
  objc_initWeak(&location, self);
  queue = [(CMContinuityCaptureAVCaptureBaseSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy2 = self;
    v18 = 1024;
    state = [(CMContinuityCaptureAVCaptureBaseSession *)self state];
    _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_DEFAULT, "%@  start in state %d", buf, 0x12u);
  }

  if ([(CMContinuityCaptureAVCaptureBaseSession *)self state])
  {
    v5 = CMContinuityCaptureLog(2);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
LABEL_7:

      goto LABEL_12;
    }

    state2 = [(CMContinuityCaptureAVCaptureBaseSession *)self state];
    *buf = 138412802;
    selfCopy2 = self;
    v18 = 1024;
    state = state2;
    v20 = 2080;
    v21 = "[CMContinuityCaptureAVCaptureVideoSession start]";
    v7 = "%@ Invalid state %d for %s";
    v8 = v5;
    v9 = 28;
LABEL_6:
    _os_log_impl(&dword_242545000, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
    goto LABEL_7;
  }

  captureSession = [(CMContinuityCaptureAVCaptureBaseSession *)self captureSession];
  connections = [captureSession connections];
  v12 = [connections count];

  if (!v12)
  {
    v5 = CMContinuityCaptureLog(2);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v7 = "There are no active connections for start session";
    v8 = v5;
    v9 = 2;
    goto LABEL_6;
  }

  if (self->_videoPreviewLayer)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__CMContinuityCaptureAVCaptureVideoSession_start__block_invoke;
    block[3] = &unk_278D5C080;
    objc_copyWeak(&v15, &location);
    dispatch_async(MEMORY[0x277D85CD0], block);
    objc_destroyWeak(&v15);
  }

  v13.receiver = self;
  v13.super_class = CMContinuityCaptureAVCaptureVideoSession;
  [(CMContinuityCaptureAVCaptureBaseSession *)&v13 start];
LABEL_12:
  objc_destroyWeak(&location);
}

void __49__CMContinuityCaptureAVCaptureVideoSession_start__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained[6] connection];
    [v2 setVideoOrientation:3];

    WeakRetained = v3;
  }
}

- (void)stop
{
  queue = [(CMContinuityCaptureAVCaptureBaseSession *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(CMContinuityCaptureAVCaptureBaseSession *)self state]== 2)
  {
    captureSession = [(CMContinuityCaptureAVCaptureBaseSession *)self captureSession];
    connections = [captureSession connections];
    v6 = [connections count];

    if (!v6)
    {
      v10.receiver = self;
      v10.super_class = CMContinuityCaptureAVCaptureVideoSession;
      [(CMContinuityCaptureAVCaptureBaseSession *)&v10 stop];
      [(AVCaptureVideoPreviewLayer *)self->_videoPreviewLayer setSession:0];
      return;
    }

    v7 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      captureSession2 = [(CMContinuityCaptureAVCaptureBaseSession *)self captureSession];
      connections2 = [captureSession2 connections];
      *buf = 134217984;
      v12[0] = [connections2 count];
      _os_log_impl(&dword_242545000, v7, OS_LOG_TYPE_DEFAULT, "There are still %lu connections remaining. Not stopping the session.", buf, 0xCu);
    }
  }

  else
  {
    v7 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      LODWORD(v12[0]) = [(CMContinuityCaptureAVCaptureBaseSession *)self state];
      WORD2(v12[0]) = 2080;
      *(v12 + 6) = "[CMContinuityCaptureAVCaptureVideoSession stop]";
      _os_log_impl(&dword_242545000, v7, OS_LOG_TYPE_DEFAULT, "Invalid state %d for %s", buf, 0x12u);
    }
  }
}

- (CMContinuityCaptureAVCaptureVideoSession)initWithQueue:(id)queue requiresMulticamSession:(BOOL)session
{
  sessionCopy = session;
  queueCopy = queue;
  v7 = 0x277CE5B10;
  if (!sessionCopy)
  {
    v7 = 0x277CE5B38;
  }

  v8 = objc_alloc_init(*v7);
  if (v8 && (v20.receiver = self, v20.super_class = CMContinuityCaptureAVCaptureVideoSession, (self = [(CMContinuityCaptureAVCaptureBaseSession *)&v20 initWithCaptureSession:v8 queue:queueCopy]) != 0))
  {
    v9 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      selfCopy = self;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_242545000, v9, OS_LOG_TYPE_DEFAULT, "%@ created capture session %@", &v16, 0x16u);
    }

    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    connections = self->_connections;
    self->_connections = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    connectionEntities = self->_connectionEntities;
    self->_connectionEntities = v12;

    self = self;
    selfCopy2 = self;
  }

  else
  {
    selfCopy2 = 0;
  }

  return selfCopy2;
}

@end