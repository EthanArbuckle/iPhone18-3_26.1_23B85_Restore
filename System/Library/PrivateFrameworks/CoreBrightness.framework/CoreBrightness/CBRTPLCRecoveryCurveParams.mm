@interface CBRTPLCRecoveryCurveParams
- (BOOL)loadParametersFromParser:(id)parser;
- (CBRTPLCRecoveryCurveParams)initWithParser:(id)parser;
- (void)dealloc;
@end

@implementation CBRTPLCRecoveryCurveParams

- (BOOL)loadParametersFromParser:(id)parser
{
  v110 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v100 = a2;
  parserCopy = parser;
  if (parser)
  {
    v95 = 0.0;
    if ([parserCopy loadFixedFloat:@"LminProduct" toDestination:&v95])
    {
      v91 = 0.0;
      if ([parserCopy loadFixedFloat:@"edr-max-nits" toDestination:&v91])
      {
        selfCopy->_apceTableSizeEDT = [parserCopy loadFloatArray:@"rtplc-hdr-recovery-curve-apce" toDestination:&selfCopy->_apceTableEDT];
        if (selfCopy->_apceTableEDT)
        {
          if (selfCopy->_apceTableSizeEDT)
          {
            for (i = 0; i < selfCopy->_apceTableSizeEDT; ++i)
            {
              if (selfCopy->_apceTableEDT[i] < 0.0 || selfCopy->_apceTableEDT[i] > 1.0)
              {
                if (selfCopy->_log)
                {
                  v37 = selfCopy->_log;
                }

                else
                {
                  if (_COREBRIGHTNESS_LOG_DEFAULT)
                  {
                    inited = _COREBRIGHTNESS_LOG_DEFAULT;
                  }

                  else
                  {
                    inited = init_default_corebrightness_log();
                  }

                  v37 = inited;
                }

                v80 = v37;
                v79 = OS_LOG_TYPE_ERROR;
                if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                {
                  __os_log_helper_16_0_2_8_0_8_0(v109, i, COERCE__INT64(selfCopy->_apceTableEDT[i]));
                  _os_log_error_impl(&dword_1DE8E5000, v80, v79, "The HDR recovery curve APCE table element #%lu with value %f is out of the valid [0, 1] range", v109, 0x16u);
                }

                v102 = 0;
                goto LABEL_178;
              }
            }

            for (j = 0; j < selfCopy->_apceTableSizeEDT - 1; ++j)
            {
              if (selfCopy->_apceTableEDT[j] > selfCopy->_apceTableEDT[j + 1])
              {
                if (selfCopy->_log)
                {
                  v35 = selfCopy->_log;
                }

                else
                {
                  if (_COREBRIGHTNESS_LOG_DEFAULT)
                  {
                    v34 = _COREBRIGHTNESS_LOG_DEFAULT;
                  }

                  else
                  {
                    v34 = init_default_corebrightness_log();
                  }

                  v35 = v34;
                }

                v77 = v35;
                v76 = OS_LOG_TYPE_ERROR;
                if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                {
                  v32 = v77;
                  v33 = v76;
                  __os_log_helper_16_0_0(v75);
                  _os_log_error_impl(&dword_1DE8E5000, v32, v33, "The HDR recovery curve APCE table is not monotonically non-decreasing", v75, 2u);
                }

                v102 = 0;
                goto LABEL_178;
              }
            }

            selfCopy->_nitsTableSizeEDT = [parserCopy loadFloatArray:@"rtplc-hdr-recovery-curve-nits" toDestination:&selfCopy->_nitsTableEDT];
            if (selfCopy->_nitsTableEDT)
            {
              if (selfCopy->_nitsTableSizeEDT)
              {
                for (k = 0; k < selfCopy->_nitsTableSizeEDT; ++k)
                {
                  if (selfCopy->_nitsTableEDT[k] < v95 || selfCopy->_nitsTableEDT[k] > v91)
                  {
                    if (selfCopy->_log)
                    {
                      v23 = selfCopy->_log;
                    }

                    else
                    {
                      if (_COREBRIGHTNESS_LOG_DEFAULT)
                      {
                        v22 = _COREBRIGHTNESS_LOG_DEFAULT;
                      }

                      else
                      {
                        v22 = init_default_corebrightness_log();
                      }

                      v23 = v22;
                    }

                    v67 = v23;
                    v66 = OS_LOG_TYPE_ERROR;
                    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
                    {
                      __os_log_helper_16_0_4_8_0_8_0_8_0_8_0(v108, k, COERCE__INT64(selfCopy->_nitsTableEDT[k]), COERCE__INT64(v95), COERCE__INT64(v91));
                      _os_log_error_impl(&dword_1DE8E5000, v67, v66, "The HDR recovery curve nits table element #%lu with value %f is out of the valid [%f, %f] range", v108, 0x2Au);
                    }

                    v102 = 0;
                    goto LABEL_178;
                  }
                }

                for (m = 0; m < selfCopy->_nitsTableSizeEDT - 1; ++m)
                {
                  if (selfCopy->_nitsTableEDT[m] < selfCopy->_nitsTableEDT[m + 1])
                  {
                    if (selfCopy->_log)
                    {
                      v21 = selfCopy->_log;
                    }

                    else
                    {
                      if (_COREBRIGHTNESS_LOG_DEFAULT)
                      {
                        v20 = _COREBRIGHTNESS_LOG_DEFAULT;
                      }

                      else
                      {
                        v20 = init_default_corebrightness_log();
                      }

                      v21 = v20;
                    }

                    oslog = v21;
                    v63 = OS_LOG_TYPE_ERROR;
                    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                    {
                      v18 = oslog;
                      v19 = v63;
                      __os_log_helper_16_0_0(v62);
                      _os_log_error_impl(&dword_1DE8E5000, v18, v19, "The HDR recovery curve nits table is not monotonically non-increasing", v62, 2u);
                    }

                    v102 = 0;
                    goto LABEL_178;
                  }
                }

                if (selfCopy->_apceTableSizeEDT == selfCopy->_nitsTableSizeEDT)
                {
                  v61 = objc_alloc_init(MEMORY[0x1E696AD60]);
                  for (n = 0; n < selfCopy->_apceTableSizeEDT; ++n)
                  {
                    v3 = selfCopy->_apceTableEDT[n];
                    v4 = "";
                    if (n != selfCopy->_apceTableSizeEDT - 1)
                    {
                      v4 = ",";
                    }

                    [v61 appendFormat:@" %f%s", selfCopy->_apceTableEDT[n], v4];
                  }

                  [v61 appendString:@" "];
                  v59 = objc_alloc_init(MEMORY[0x1E696AD60]);
                  for (ii = 0; ii < selfCopy->_nitsTableSizeEDT; ++ii)
                  {
                    v5 = selfCopy->_nitsTableEDT[ii];
                    v6 = "";
                    if (ii != selfCopy->_nitsTableSizeEDT - 1)
                    {
                      v6 = ",";
                    }

                    [v59 appendFormat:@" %f%s", selfCopy->_nitsTableEDT[ii], v6];
                  }

                  [v59 appendString:@" "];
                  if (selfCopy->_log)
                  {
                    v15 = selfCopy->_log;
                  }

                  else
                  {
                    if (_COREBRIGHTNESS_LOG_DEFAULT)
                    {
                      v14 = _COREBRIGHTNESS_LOG_DEFAULT;
                    }

                    else
                    {
                      v14 = init_default_corebrightness_log();
                    }

                    v15 = v14;
                  }

                  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
                  {
                    __os_log_helper_16_0_1_8_0(v106, selfCopy->_apceTableSizeEDT);
                    _os_log_impl(&dword_1DE8E5000, v15, OS_LOG_TYPE_DEFAULT, "APCETableSize=%lu", v106, 0xCu);
                  }

                  if (selfCopy->_log)
                  {
                    v13 = selfCopy->_log;
                  }

                  else
                  {
                    if (_COREBRIGHTNESS_LOG_DEFAULT)
                    {
                      v12 = _COREBRIGHTNESS_LOG_DEFAULT;
                    }

                    else
                    {
                      v12 = init_default_corebrightness_log();
                    }

                    v13 = v12;
                  }

                  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
                  {
                    __os_log_helper_16_2_1_8_32(v105, [v61 UTF8String]);
                    _os_log_impl(&dword_1DE8E5000, v13, OS_LOG_TYPE_DEFAULT, "APCETable={%s}", v105, 0xCu);
                  }

                  if (selfCopy->_log)
                  {
                    v11 = selfCopy->_log;
                  }

                  else
                  {
                    if (_COREBRIGHTNESS_LOG_DEFAULT)
                    {
                      v10 = _COREBRIGHTNESS_LOG_DEFAULT;
                    }

                    else
                    {
                      v10 = init_default_corebrightness_log();
                    }

                    v11 = v10;
                  }

                  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
                  {
                    __os_log_helper_16_0_1_8_0(v104, selfCopy->_nitsTableSizeEDT);
                    _os_log_impl(&dword_1DE8E5000, v11, OS_LOG_TYPE_DEFAULT, "NitsTableSize=%lu", v104, 0xCu);
                  }

                  if (selfCopy->_log)
                  {
                    v9 = selfCopy->_log;
                  }

                  else
                  {
                    if (_COREBRIGHTNESS_LOG_DEFAULT)
                    {
                      v8 = _COREBRIGHTNESS_LOG_DEFAULT;
                    }

                    else
                    {
                      v8 = init_default_corebrightness_log();
                    }

                    v9 = v8;
                  }

                  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
                  {
                    __os_log_helper_16_2_1_8_32(v103, [v59 UTF8String]);
                    _os_log_impl(&dword_1DE8E5000, v9, OS_LOG_TYPE_DEFAULT, "NitsTable={%s}", v103, 0xCu);
                  }

                  MEMORY[0x1E69E5920](v61);
                  MEMORY[0x1E69E5920](v59);
                  v102 = 1;
                }

                else
                {
                  if (selfCopy->_log)
                  {
                    v17 = selfCopy->_log;
                  }

                  else
                  {
                    if (_COREBRIGHTNESS_LOG_DEFAULT)
                    {
                      v16 = _COREBRIGHTNESS_LOG_DEFAULT;
                    }

                    else
                    {
                      v16 = init_default_corebrightness_log();
                    }

                    v17 = v16;
                  }

                  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                  {
                    __os_log_helper_16_0_2_8_0_8_0(v107, selfCopy->_apceTableSizeEDT, selfCopy->_nitsTableSizeEDT);
                    _os_log_error_impl(&dword_1DE8E5000, v17, OS_LOG_TYPE_ERROR, "The HDR recovery curve nits table and APCE table do not have matching size (apce.size=%lu, nits.size=%lu)", v107, 0x16u);
                  }

                  v102 = 0;
                }
              }

              else
              {
                if (selfCopy->_log)
                {
                  v27 = selfCopy->_log;
                }

                else
                {
                  if (_COREBRIGHTNESS_LOG_DEFAULT)
                  {
                    v26 = _COREBRIGHTNESS_LOG_DEFAULT;
                  }

                  else
                  {
                    v26 = init_default_corebrightness_log();
                  }

                  v27 = v26;
                }

                v71 = v27;
                v70 = OS_LOG_TYPE_ERROR;
                if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                {
                  v24 = v71;
                  v25 = v70;
                  __os_log_helper_16_0_0(v69);
                  _os_log_error_impl(&dword_1DE8E5000, v24, v25, "The HDR recovery curve nits table has less than one element", v69, 2u);
                }

                v102 = 0;
              }
            }

            else
            {
              if (selfCopy->_log)
              {
                v31 = selfCopy->_log;
              }

              else
              {
                if (_COREBRIGHTNESS_LOG_DEFAULT)
                {
                  v30 = _COREBRIGHTNESS_LOG_DEFAULT;
                }

                else
                {
                  v30 = init_default_corebrightness_log();
                }

                v31 = v30;
              }

              v74 = v31;
              v73 = OS_LOG_TYPE_ERROR;
              if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
              {
                v28 = v74;
                v29 = v73;
                __os_log_helper_16_0_0(v72);
                _os_log_error_impl(&dword_1DE8E5000, v28, v29, "Unable to load the HDR recovery curve nits table", v72, 2u);
              }

              v102 = 0;
            }
          }

          else
          {
            if (selfCopy->_log)
            {
              v41 = selfCopy->_log;
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v40 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v40 = init_default_corebrightness_log();
              }

              v41 = v40;
            }

            v84 = v41;
            v83 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
              v38 = v84;
              v39 = v83;
              __os_log_helper_16_0_0(v82);
              _os_log_error_impl(&dword_1DE8E5000, v38, v39, "The HDR recovery curve APCE table has less than one element", v82, 2u);
            }

            v102 = 0;
          }
        }

        else
        {
          if (selfCopy->_log)
          {
            v45 = selfCopy->_log;
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v44 = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              v44 = init_default_corebrightness_log();
            }

            v45 = v44;
          }

          v87 = v45;
          v86 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            v42 = v87;
            v43 = v86;
            __os_log_helper_16_0_0(v85);
            _os_log_error_impl(&dword_1DE8E5000, v42, v43, "Unable to load the HDR recovery curve APCE table", v85, 2u);
          }

          v102 = 0;
        }
      }

      else
      {
        if (selfCopy->_log)
        {
          v49 = selfCopy->_log;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v48 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v48 = init_default_corebrightness_log();
          }

          v49 = v48;
        }

        v90 = v49;
        v89 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          v46 = v90;
          v47 = v89;
          __os_log_helper_16_0_0(v88);
          _os_log_error_impl(&dword_1DE8E5000, v46, v47, "Unable to load maximum EDR nits", v88, 2u);
        }

        v102 = 0;
      }
    }

    else
    {
      if (selfCopy->_log)
      {
        v53 = selfCopy->_log;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v52 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v52 = init_default_corebrightness_log();
        }

        v53 = v52;
      }

      v94 = v53;
      v93 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        v50 = v94;
        v51 = v93;
        __os_log_helper_16_0_0(v92);
        _os_log_error_impl(&dword_1DE8E5000, v50, v51, "Unable to load minimum product nits", v92, 2u);
      }

      v102 = 0;
    }
  }

  else
  {
    if (selfCopy->_log)
    {
      v57 = selfCopy->_log;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v56 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v56 = init_default_corebrightness_log();
      }

      v57 = v56;
    }

    v98 = v57;
    v97 = 16;
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      log = v98;
      type = v97;
      __os_log_helper_16_0_0(v96);
      _os_log_error_impl(&dword_1DE8E5000, log, type, "Parser is null", v96, 2u);
    }

    v102 = 0;
  }

LABEL_178:
  *MEMORY[0x1E69E9840];
  return v102 & 1;
}

- (CBRTPLCRecoveryCurveParams)initWithParser:(id)parser
{
  selfCopy = self;
  v12 = a2;
  parserCopy = parser;
  v10.receiver = self;
  v10.super_class = CBRTPLCRecoveryCurveParams;
  selfCopy = [(CBRTPLCRecoveryCurveParams *)&v10 init];
  if (selfCopy && parserCopy)
  {
    v3 = os_log_create("com.apple.CoreBrightness.BacklightNode", "RTPLCRecoveryCurve");
    selfCopy->_log = v3;
    v9 = 0;
    if ([(CBRTPLCRecoveryCurveParams *)selfCopy loadParametersFromParser:parserCopy])
    {
      v4 = [CBFloatArray alloc];
      v5 = [(CBFloatArray *)v4 initWithValues:selfCopy->_apceTableEDT andCount:selfCopy->_apceTableSizeEDT];
      selfCopy->_apce = v5;
      v6 = [CBFloatArray alloc];
      v7 = [(CBFloatArray *)v6 initWithValues:selfCopy->_nitsTableEDT andCount:selfCopy->_nitsTableSizeEDT];
      selfCopy->_nits = v7;
      v9 = 1;
    }

    if (selfCopy->_apceTableEDT)
    {
      free(selfCopy->_apceTableEDT);
    }

    if (selfCopy->_nitsTableEDT)
    {
      free(selfCopy->_nitsTableEDT);
    }

    if ((v9 & 1) == 0)
    {
      MEMORY[0x1E69E5920](selfCopy);
      return 0;
    }
  }

  return selfCopy;
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  MEMORY[0x1E69E5920](self->_nits);
  v2 = MEMORY[0x1E69E5920](selfCopy->_apce).n128_u64[0];
  if (selfCopy->_log)
  {
    v2 = MEMORY[0x1E69E5920](selfCopy->_log).n128_u64[0];
    selfCopy->_log = 0;
  }

  v3.receiver = selfCopy;
  v3.super_class = CBRTPLCRecoveryCurveParams;
  [(CBRTPLCRecoveryCurveParams *)&v3 dealloc];
}

@end