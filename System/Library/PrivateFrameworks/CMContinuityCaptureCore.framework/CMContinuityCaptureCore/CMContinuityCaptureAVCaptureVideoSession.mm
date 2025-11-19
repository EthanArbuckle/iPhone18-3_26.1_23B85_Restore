@interface CMContinuityCaptureAVCaptureVideoSession
- (BOOL)hasConnectionsForEntity:(int64_t)a3;
- (BOOL)isMulticamSession;
- (CMContinuityCaptureAVCaptureVideoSession)initWithQueue:(id)a3 requiresMulticamSession:(BOOL)a4;
- (void)addConnections:(id)a3;
- (void)dealloc;
- (void)removeConnections:(id)a3;
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
  v2 = [(CMContinuityCaptureAVCaptureBaseSession *)self captureSession];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)addConnections:(id)a3
{
  v4 = a3;
  v5 = [(CMContinuityCaptureAVCaptureBaseSession *)self queue];
  dispatch_assert_queue_V2(v5);

  if ([(CMContinuityCaptureAVCaptureBaseSession *)self state]== 1)
  {
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v44 = v4;
    obj = v4;
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
        v7 = [v48 inputPorts];
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        v8 = [v7 countByEnumeratingWithState:&v58 objects:v57 count:16];
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
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v58 + 1) + 8 * j);
              v13 = [(CMContinuityCaptureAVCaptureBaseSession *)self captureSession];
              v14 = [v12 input];
              v15 = [v13 canAddInput:v14];

              if (v15)
              {
                v16 = [v12 input];
                v17 = [(CMContinuityCaptureAVCaptureBaseSession *)self captureSession];
                [v17 addInputWithNoConnections:v16];

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v18 = [v16 device];
                  v19 = [v18 deviceType];
                  v20 = [v19 isEqualToString:v50];

                  if ((v20 & 1) == 0)
                  {
                    objc_storeStrong(&self->_videoCameraInput, v16);
                    v24 = &unk_2854ECBD8;
LABEL_21:
                    [(NSMutableArray *)self->_connectionEntities addObject:v24];
                    goto LABEL_22;
                  }
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v21 = [v16 device];
                  v22 = [v21 deviceType];
                  v23 = [v22 isEqualToString:v50];

                  v24 = &unk_2854ECBF0;
                  if (v23)
                  {
                    goto LABEL_21;
                  }
                }
              }

              else
              {
                v16 = CMContinuityCaptureLog(2);
                if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
                {
                  v25 = [v12 input];
                  *buf = 138412802;
                  v52 = self;
                  v53 = 2112;
                  *v54 = v25;
                  *&v54[8] = 2080;
                  *&v54[10] = "[CMContinuityCaptureAVCaptureVideoSession addConnections:]";
                  _os_log_impl(&dword_242545000, v16, OS_LOG_TYPE_DEFAULT, "%@ can't add input %@ %s", buf, 0x20u);
                }
              }

LABEL_22:
            }

            v9 = [v7 countByEnumeratingWithState:&v58 objects:v57 count:16];
          }

          while (v9);
        }

        v26 = [(CMContinuityCaptureAVCaptureBaseSession *)self captureSession];
        v27 = [v48 output];
        v28 = [v26 canAddOutput:v27];

        if (v28)
        {
          v29 = [(CMContinuityCaptureAVCaptureBaseSession *)self captureSession];
          v30 = [v48 output];
          [v29 addOutputWithNoConnections:v30];
        }

        else
        {
          v29 = CMContinuityCaptureLog(2);
          if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_29;
          }

          v30 = [v48 output];
          v31 = [v48 inputPorts];
          *buf = 138413058;
          v52 = self;
          v53 = 2112;
          *v54 = v30;
          *&v54[8] = 2112;
          *&v54[10] = v31;
          v55 = 2080;
          v56 = "[CMContinuityCaptureAVCaptureVideoSession addConnections:]";
          _os_log_impl(&dword_242545000, v29, OS_LOG_TYPE_DEFAULT, "%@ can't add output %@ for input %@ %s", buf, 0x2Au);
        }

LABEL_29:
        v32 = [(CMContinuityCaptureAVCaptureBaseSession *)self captureSession];
        v33 = [v32 connections];
        if ([v33 containsObject:v48])
        {

          v34 = v49;
        }

        else
        {
          v35 = [(CMContinuityCaptureAVCaptureBaseSession *)self captureSession];
          v36 = [v35 canAddConnection:v48];

          v34 = v49;
          if (v36)
          {
            v37 = [(CMContinuityCaptureAVCaptureBaseSession *)self captureSession];
            [v37 addConnection:v48];

            [(NSMutableArray *)self->_connections addObject:v48];
            goto LABEL_36;
          }
        }

        v38 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v39 = [(CMContinuityCaptureAVCaptureBaseSession *)self captureSession];
          v40 = [v39 connections];
          v41 = [v40 containsObject:v48];
          *buf = 138412802;
          v52 = self;
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
          v52 = connections;
          _os_log_impl(&dword_242545000, v42, OS_LOG_TYPE_DEFAULT, "addConnections done. Current connections: %@", buf, 0xCu);
        }

        v4 = v44;
        goto LABEL_43;
      }
    }
  }

  v42 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v52 = self;
    v53 = 1024;
    *v54 = [(CMContinuityCaptureAVCaptureBaseSession *)self state];
    *&v54[4] = 2080;
    *&v54[6] = "[CMContinuityCaptureAVCaptureVideoSession addConnections:]";
    _os_log_impl(&dword_242545000, v42, OS_LOG_TYPE_DEFAULT, "%@ Invalid state %d for %s", buf, 0x1Cu);
  }

LABEL_43:
}

- (void)removeConnections:(id)a3
{
  v4 = a3;
  v5 = [(CMContinuityCaptureAVCaptureBaseSession *)self queue];
  dispatch_assert_queue_V2(v5);

  if ([(CMContinuityCaptureAVCaptureBaseSession *)self state]== 1)
  {
    v168 = 0u;
    v169 = 0u;
    v166 = 0u;
    v167 = 0u;
    v102 = v4;
    obj = v4;
    v111 = self;
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
          v9 = [(CMContinuityCaptureAVCaptureBaseSession *)self captureSession];
          v10 = [v9 connections];
          v11 = [v10 containsObject:v8];

          if (v11)
          {
            v12 = CMContinuityCaptureLog(2);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *v171 = v8;
              _os_log_impl(&dword_242545000, v12, OS_LOG_TYPE_DEFAULT, "Removing connection: %@", buf, 0xCu);
            }

            v13 = [(CMContinuityCaptureAVCaptureBaseSession *)v111 captureSession];
            [v13 removeConnection:v8];

            [(NSMutableArray *)v111->_connections removeObject:v8];
          }

          v14 = [v8 inputPorts];
          v161 = 0u;
          v162 = 0u;
          v163 = 0u;
          v164 = 0u;
          v15 = [v14 countByEnumeratingWithState:&v161 objects:v160 count:16];
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
                  objc_enumerationMutation(v14);
                }

                v19 = [*(*(&v161 + 1) + 8 * i) input];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v20 = [v19 device];
                  v21 = [v20 deviceType];
                  v22 = [v21 isEqualToString:v6];

                  v23 = &unk_2854ECBD8;
                  if (!v22)
                  {
                    goto LABEL_20;
                  }
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v24 = [v19 device];
                  v25 = [v24 deviceType];
                  v26 = [v25 isEqualToString:v6];

                  v23 = &unk_2854ECBF0;
                  if (v26)
                  {
LABEL_20:
                    [(NSMutableArray *)v111->_connectionEntities removeObject:v23];
                  }
                }
              }

              v16 = [v14 countByEnumeratingWithState:&v161 objects:v160 count:16];
            }

            while (v16);
          }

          self = v111;
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
          v29 = [(CMContinuityCaptureAVCaptureBaseSession *)self captureSession];
          v30 = [v29 connections];

          v31 = [v30 countByEnumeratingWithState:&v151 objects:v150 count:16];
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
                objc_enumerationMutation(v30);
              }

              v35 = [*(*(&v151 + 1) + 8 * v34) output];
              v36 = [v28 output];
              v37 = [v35 isEqual:v36];

              if (v37)
              {
                break;
              }

              if (v32 == ++v34)
              {
                v32 = [v30 countByEnumeratingWithState:&v151 objects:v150 count:16];
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
              v39 = [v28 output];
              *buf = 138412290;
              *v171 = v39;
              _os_log_impl(&dword_242545000, v38, OS_LOG_TYPE_DEFAULT, "Removing output: %@", buf, 0xCu);
            }

            v30 = [(CMContinuityCaptureAVCaptureBaseSession *)self captureSession];
            v40 = [v28 output];
            [v30 removeOutput:v40];
          }

          v41 = [(CMContinuityCaptureAVCaptureBaseSession *)self captureSession];
          v42 = [v41 connections];
          v43 = [(AVCaptureVideoPreviewLayer *)self->_videoPreviewLayer connection];
          v44 = [v42 containsObject:v43];

          if (v44)
          {
            v45 = [MEMORY[0x277CBEB18] array];
            v146 = 0u;
            v147 = 0u;
            v148 = 0u;
            v149 = 0u;
            v46 = [(AVCaptureVideoPreviewLayer *)self->_videoPreviewLayer connection];
            v47 = [v46 inputPorts];

            v48 = [v47 countByEnumeratingWithState:&v146 objects:v145 count:16];
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
                    objc_enumerationMutation(v47);
                  }

                  v52 = [*(*(&v146 + 1) + 8 * j) input];
                  [v45 addObject:v52];
                }

                v49 = [v47 countByEnumeratingWithState:&v146 objects:v145 count:16];
              }

              while (v49);
            }

            v144 = 0u;
            v143 = 0u;
            v142 = 0u;
            v141 = 0u;
            v53 = [(CMContinuityCaptureAVCaptureBaseSession *)self captureSession];
            videoCameraInput = [v53 connections];

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
                  v58 = [(AVCaptureVideoPreviewLayer *)self->_videoPreviewLayer connection];
                  v59 = [v57 isEqual:v58];

                  if ((v59 & 1) == 0)
                  {
                    v139 = 0u;
                    v137 = 0u;
                    v138 = 0u;
                    v136 = 0u;
                    v60 = [v57 inputPorts];
                    v61 = [v60 countByEnumeratingWithState:&v136 objects:v135 count:16];
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
                            objc_enumerationMutation(v60);
                          }

                          v65 = [*(*(&v136 + 1) + 8 * m) input];
                          v66 = [v45 containsObject:v65];

                          if (v66)
                          {

                            self = v111;
                            goto LABEL_70;
                          }
                        }

                        v62 = [v60 countByEnumeratingWithState:&v136 objects:v135 count:16];
                        self = v111;
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
              v68 = [(AVCaptureVideoPreviewLayer *)self->_videoPreviewLayer connection];
              *buf = 138412290;
              *v171 = v68;
              _os_log_impl(&dword_242545000, v67, OS_LOG_TYPE_DEFAULT, "Removing preivew layer connection: %@", buf, 0xCu);
            }

            v69 = [(CMContinuityCaptureAVCaptureBaseSession *)self captureSession];
            v70 = [(AVCaptureVideoPreviewLayer *)self->_videoPreviewLayer connection];
            [v69 removeConnection:v70];

            videoCameraInput = self->_videoCameraInput;
            self->_videoCameraInput = 0;
LABEL_70:
          }

          v71 = [MEMORY[0x277CBEB18] array];
          v131 = 0u;
          v132 = 0u;
          v133 = 0u;
          v134 = 0u;
          v72 = [v28 inputPorts];
          v73 = [v72 countByEnumeratingWithState:&v131 objects:v130 count:16];
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
                  objc_enumerationMutation(v72);
                }

                v77 = [*(*(&v131 + 1) + 8 * n) input];
                [v71 addObject:v77];
              }

              v74 = [v72 countByEnumeratingWithState:&v131 objects:v130 count:16];
            }

            while (v74);
          }

          v78 = [MEMORY[0x277CBEB18] array];
          v126 = 0u;
          v127 = 0u;
          v128 = 0u;
          v129 = 0u;
          v79 = [(CMContinuityCaptureAVCaptureBaseSession *)self captureSession];
          v80 = [v79 connections];

          v114 = v80;
          v81 = [v80 countByEnumeratingWithState:&v126 objects:v125 count:16];
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
                v86 = [v85 inputPorts];
                v87 = [v86 countByEnumeratingWithState:&v121 objects:v120 count:16];
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
                        objc_enumerationMutation(v86);
                      }

                      v91 = [*(*(&v121 + 1) + 8 * jj) input];
                      [v78 addObject:v91];
                    }

                    v88 = [v86 countByEnumeratingWithState:&v121 objects:v120 count:16];
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
          v92 = v71;
          v93 = [v92 countByEnumeratingWithState:&v116 objects:v115 count:16];
          self = v111;
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
                if (([v78 containsObject:v97] & 1) == 0)
                {
                  v98 = CMContinuityCaptureLog(2);
                  if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    *v171 = v97;
                    _os_log_impl(&dword_242545000, v98, OS_LOG_TYPE_DEFAULT, "Removing input: %@", buf, 0xCu);
                  }

                  v99 = [(CMContinuityCaptureAVCaptureBaseSession *)v111 captureSession];
                  [v99 removeInput:v97];
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

    v4 = v102;
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

- (BOOL)hasConnectionsForEntity:(int64_t)a3
{
  connectionEntities = self->_connectionEntities;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  LOBYTE(connectionEntities) = [(NSMutableArray *)connectionEntities containsObject:v4];

  return connectionEntities;
}

- (void)start
{
  objc_initWeak(&location, self);
  v3 = [(CMContinuityCaptureAVCaptureBaseSession *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v17 = self;
    v18 = 1024;
    v19 = [(CMContinuityCaptureAVCaptureBaseSession *)self state];
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

    v6 = [(CMContinuityCaptureAVCaptureBaseSession *)self state];
    *buf = 138412802;
    v17 = self;
    v18 = 1024;
    v19 = v6;
    v20 = 2080;
    v21 = "[CMContinuityCaptureAVCaptureVideoSession start]";
    v7 = "%@ Invalid state %d for %s";
    v8 = v5;
    v9 = 28;
LABEL_6:
    _os_log_impl(&dword_242545000, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
    goto LABEL_7;
  }

  v10 = [(CMContinuityCaptureAVCaptureBaseSession *)self captureSession];
  v11 = [v10 connections];
  v12 = [v11 count];

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
  v3 = [(CMContinuityCaptureAVCaptureBaseSession *)self queue];
  dispatch_assert_queue_V2(v3);

  if ([(CMContinuityCaptureAVCaptureBaseSession *)self state]== 2)
  {
    v4 = [(CMContinuityCaptureAVCaptureBaseSession *)self captureSession];
    v5 = [v4 connections];
    v6 = [v5 count];

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
      v8 = [(CMContinuityCaptureAVCaptureBaseSession *)self captureSession];
      v9 = [v8 connections];
      *buf = 134217984;
      v12[0] = [v9 count];
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

- (CMContinuityCaptureAVCaptureVideoSession)initWithQueue:(id)a3 requiresMulticamSession:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = 0x277CE5B10;
  if (!v4)
  {
    v7 = 0x277CE5B38;
  }

  v8 = objc_alloc_init(*v7);
  if (v8 && (v20.receiver = self, v20.super_class = CMContinuityCaptureAVCaptureVideoSession, (self = [(CMContinuityCaptureAVCaptureBaseSession *)&v20 initWithCaptureSession:v8 queue:v6]) != 0))
  {
    v9 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = self;
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
    v14 = self;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end