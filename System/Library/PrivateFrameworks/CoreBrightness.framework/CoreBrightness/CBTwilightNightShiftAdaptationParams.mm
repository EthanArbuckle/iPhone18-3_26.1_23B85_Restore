@interface CBTwilightNightShiftAdaptationParams
- (BOOL)loadParametersFromParser:(id)parser;
- (CBTwilightNightShiftAdaptationParams)initWithParser:(id)parser;
- (void)dealloc;
@end

@implementation CBTwilightNightShiftAdaptationParams

- (BOOL)loadParametersFromParser:(id)parser
{
  v142 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v130 = a2;
  parserCopy = parser;
  if (self->_log)
  {
    v75 = selfCopy->_log;
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

    v75 = inited;
  }

  v128 = v75;
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
  {
    log = v128;
    v73 = type;
    __os_log_helper_16_0_0(v126);
    _os_log_impl(&dword_1DE8E5000, log, v73, "Initialization | Start", v126, 2u);
  }

  if (parserCopy)
  {
    v122 = 0;
    v121 = [parserCopy loadInt:@"use-tw-ns-adaptation" toDestination:&v122];
    if ((v121 & 1) != 0 && v122)
    {
      v117 = 6500.0;
      selfCopy->_cctTableSizeOG = [parserCopy loadFloatArray:@"tw-ns-cct-table" toDestination:&selfCopy->_cctTableOG];
      if (selfCopy->_cctTableOG)
      {
        if (selfCopy->_cctTableSizeOG)
        {
          if (float_equal(selfCopy->_cctTableOG[selfCopy->_cctTableSizeOG - 1], v117))
          {
            for (i = 0; i < selfCopy->_cctTableSizeOG - 1; ++i)
            {
              if (selfCopy->_cctTableOG[i] > selfCopy->_cctTableOG[i + 1])
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

                v107 = v53;
                v106 = OS_LOG_TYPE_ERROR;
                if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
                {
                  v50 = v107;
                  v51 = v106;
                  __os_log_helper_16_0_0(v105);
                  _os_log_error_impl(&dword_1DE8E5000, v50, v51, "CCT table is not strictly increasing", v105, 2u);
                }

                v132 = 0;
                goto LABEL_227;
              }
            }

            selfCopy->_twilightStrengthTableSizeOG = [parserCopy loadFloatArray:@"tw-ns-strength-table" toDestination:&selfCopy->_twilightStrengthTableOG];
            if (selfCopy->_twilightStrengthTableOG)
            {
              if (selfCopy->_twilightStrengthTableSizeOG >= 2)
              {
                if (float_equal(*selfCopy->_twilightStrengthTableOG, 0.0))
                {
                  if (float_equal(selfCopy->_twilightStrengthTableOG[selfCopy->_twilightStrengthTableSizeOG - 1], 1.0))
                  {
                    for (j = 0; j < selfCopy->_twilightStrengthTableSizeOG; ++j)
                    {
                      if (selfCopy->_twilightStrengthTableOG[j] < 0.0 || selfCopy->_twilightStrengthTableOG[j] > 1.0)
                      {
                        if (selfCopy->_log)
                        {
                          v33 = selfCopy->_log;
                        }

                        else
                        {
                          if (_COREBRIGHTNESS_LOG_DEFAULT)
                          {
                            v32 = _COREBRIGHTNESS_LOG_DEFAULT;
                          }

                          else
                          {
                            v32 = init_default_corebrightness_log();
                          }

                          v33 = v32;
                        }

                        v91 = v33;
                        v90 = OS_LOG_TYPE_ERROR;
                        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                        {
                          __os_log_helper_16_0_2_8_0_8_0(v140, j, COERCE__INT64(selfCopy->_twilightStrengthTableOG[j]));
                          _os_log_error_impl(&dword_1DE8E5000, v91, v90, "Twilight strength table element #%lu with value %f is out of the valid [0, 1] range", v140, 0x16u);
                        }

                        v132 = 0;
                        goto LABEL_227;
                      }
                    }

                    for (k = 0; k < selfCopy->_twilightStrengthTableSizeOG - 1; ++k)
                    {
                      if (selfCopy->_twilightStrengthTableOG[k] > selfCopy->_twilightStrengthTableOG[k + 1])
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

                        v88 = v31;
                        v87 = OS_LOG_TYPE_ERROR;
                        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                        {
                          v28 = v88;
                          v29 = v87;
                          __os_log_helper_16_0_0(v86);
                          _os_log_error_impl(&dword_1DE8E5000, v28, v29, "Twilight strength table is not strictly increasing", v86, 2u);
                        }

                        v132 = 0;
                        goto LABEL_227;
                      }
                    }

                    selfCopy->_cctDeltaTableSizeOG = [parserCopy loadFloatArray:@"tw-ns-cct-delta-table" toDestination:&selfCopy->_cctDeltaTableOG];
                    if (selfCopy->_cctDeltaTableOG)
                    {
                      if (selfCopy->_cctDeltaTableSizeOG == selfCopy->_cctTableSizeOG * selfCopy->_twilightStrengthTableSizeOG)
                      {
                        v82 = objc_alloc_init(MEMORY[0x1E696AD60]);
                        for (m = 0; m < selfCopy->_cctTableSizeOG; ++m)
                        {
                          v3 = selfCopy->_cctTableOG[m];
                          v4 = "";
                          if (m != selfCopy->_cctTableSizeOG - 1)
                          {
                            v4 = ",";
                          }

                          [v82 appendFormat:@" %f%s", selfCopy->_cctTableOG[m], v4];
                        }

                        [v82 appendString:@" "];
                        v80 = objc_alloc_init(MEMORY[0x1E696AD60]);
                        for (n = 0; n < selfCopy->_twilightStrengthTableSizeOG; ++n)
                        {
                          v5 = selfCopy->_twilightStrengthTableOG[n];
                          v6 = "";
                          if (n != selfCopy->_twilightStrengthTableSizeOG - 1)
                          {
                            v6 = ",";
                          }

                          [v80 appendFormat:@" %f%s", selfCopy->_twilightStrengthTableOG[n], v6];
                        }

                        [v80 appendString:@" "];
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

                        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                        {
                          __os_log_helper_16_0_1_8_0(v138, selfCopy->_cctTableSizeOG);
                          _os_log_impl(&dword_1DE8E5000, v21, OS_LOG_TYPE_DEFAULT, "CCTTableSize=%lu", v138, 0xCu);
                        }

                        if (selfCopy->_log)
                        {
                          v19 = selfCopy->_log;
                        }

                        else
                        {
                          if (_COREBRIGHTNESS_LOG_DEFAULT)
                          {
                            v18 = _COREBRIGHTNESS_LOG_DEFAULT;
                          }

                          else
                          {
                            v18 = init_default_corebrightness_log();
                          }

                          v19 = v18;
                        }

                        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
                        {
                          __os_log_helper_16_2_1_8_32(v137, [v82 UTF8String]);
                          _os_log_impl(&dword_1DE8E5000, v19, OS_LOG_TYPE_DEFAULT, "CCTTable={%s}", v137, 0xCu);
                        }

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

                        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
                        {
                          __os_log_helper_16_0_1_8_0(v136, selfCopy->_twilightStrengthTableSizeOG);
                          _os_log_impl(&dword_1DE8E5000, v17, OS_LOG_TYPE_DEFAULT, "TwilightStrengthTableSize=%lu", v136, 0xCu);
                        }

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
                          __os_log_helper_16_2_1_8_32(v135, [v80 UTF8String]);
                          _os_log_impl(&dword_1DE8E5000, v15, OS_LOG_TYPE_DEFAULT, "TwilightStrengthTable={%s}", v135, 0xCu);
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
                          __os_log_helper_16_0_1_8_0(v134, selfCopy->_cctDeltaTableSizeOG);
                          _os_log_impl(&dword_1DE8E5000, v13, OS_LOG_TYPE_DEFAULT, "CCTDeltaTableSize=%lu", v134, 0xCu);
                        }

                        for (ii = 0; ii < selfCopy->_twilightStrengthTableSizeOG; ++ii)
                        {
                          v77 = objc_alloc_init(MEMORY[0x1E696AD60]);
                          for (jj = 0; jj < selfCopy->_cctTableSizeOG; ++jj)
                          {
                            v7 = selfCopy->_cctDeltaTableOG[ii * selfCopy->_cctTableSizeOG + jj];
                            v8 = "";
                            if (jj != selfCopy->_cctTableSizeOG - 1)
                            {
                              v8 = ",";
                            }

                            [v77 appendFormat:@"%f%s ", selfCopy->_cctDeltaTableOG[ii * selfCopy->_cctTableSizeOG + jj], v8];
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
                            __os_log_helper_16_2_2_8_0_8_32(v133, ii, [v77 UTF8String]);
                            _os_log_impl(&dword_1DE8E5000, v11, OS_LOG_TYPE_DEFAULT, "CCTDeltaTable[%lu]={ %s}", v133, 0x16u);
                          }

                          MEMORY[0x1E69E5920](v77);
                        }

                        MEMORY[0x1E69E5920](v82);
                        MEMORY[0x1E69E5920](v80);
                        v132 = 1;
                      }

                      else
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

                        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
                        {
                          __os_log_helper_16_0_3_8_0_8_0_8_0(v139, selfCopy->_cctDeltaTableSizeOG, selfCopy->_cctTableSizeOG, selfCopy->_twilightStrengthTableSizeOG);
                          _os_log_error_impl(&dword_1DE8E5000, v23, OS_LOG_TYPE_ERROR, "CCT delta table has wrong size %lu for CCT table size %lu and Twilight strength table size %lu", v139, 0x20u);
                        }

                        v132 = 0;
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

                      v85 = v27;
                      v84 = OS_LOG_TYPE_ERROR;
                      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                      {
                        v24 = v85;
                        v25 = v84;
                        __os_log_helper_16_0_0(v83);
                        _os_log_error_impl(&dword_1DE8E5000, v24, v25, "Unable to load the CCT delta table", v83, 2u);
                      }

                      v132 = 0;
                    }
                  }

                  else
                  {
                    if (selfCopy->_log)
                    {
                      v37 = selfCopy->_log;
                    }

                    else
                    {
                      if (_COREBRIGHTNESS_LOG_DEFAULT)
                      {
                        v36 = _COREBRIGHTNESS_LOG_DEFAULT;
                      }

                      else
                      {
                        v36 = init_default_corebrightness_log();
                      }

                      v37 = v36;
                    }

                    v95 = v37;
                    v94 = OS_LOG_TYPE_ERROR;
                    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                    {
                      v34 = v95;
                      v35 = v94;
                      __os_log_helper_16_0_0(v93);
                      _os_log_error_impl(&dword_1DE8E5000, v34, v35, "Last element in the Twilight strength table is not 1", v93, 2u);
                    }

                    v132 = 0;
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

                  v98 = v41;
                  v97 = OS_LOG_TYPE_ERROR;
                  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
                  {
                    v38 = v98;
                    v39 = v97;
                    __os_log_helper_16_0_0(v96);
                    _os_log_error_impl(&dword_1DE8E5000, v38, v39, "First element in the Twilight strength table is not 0", v96, 2u);
                  }

                  v132 = 0;
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

                v101 = v45;
                v100 = OS_LOG_TYPE_ERROR;
                if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
                {
                  v42 = v101;
                  v43 = v100;
                  __os_log_helper_16_0_0(v99);
                  _os_log_error_impl(&dword_1DE8E5000, v42, v43, "Twilight strength table has less than two elements", v99, 2u);
                }

                v132 = 0;
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

              v104 = v49;
              v103 = OS_LOG_TYPE_ERROR;
              if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
              {
                v46 = v104;
                v47 = v103;
                __os_log_helper_16_0_0(v102);
                _os_log_error_impl(&dword_1DE8E5000, v46, v47, "Unable to load the Twilight strength table", v102, 2u);
              }

              v132 = 0;
            }
          }

          else
          {
            if (selfCopy->_log)
            {
              v55 = selfCopy->_log;
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v54 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v54 = init_default_corebrightness_log();
              }

              v55 = v54;
            }

            v110 = v55;
            v109 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
            {
              __os_log_helper_16_0_1_8_0(v141, COERCE__INT64(v117));
              _os_log_error_impl(&dword_1DE8E5000, v110, v109, "Last element in the CCT table is not %f", v141, 0xCu);
            }

            v132 = 0;
          }
        }

        else
        {
          if (selfCopy->_log)
          {
            v59 = selfCopy->_log;
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v58 = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              v58 = init_default_corebrightness_log();
            }

            v59 = v58;
          }

          v113 = v59;
          v112 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            v56 = v113;
            v57 = v112;
            __os_log_helper_16_0_0(v111);
            _os_log_error_impl(&dword_1DE8E5000, v56, v57, "CCT table has less than one element", v111, 2u);
          }

          v132 = 0;
        }
      }

      else
      {
        if (selfCopy->_log)
        {
          v63 = selfCopy->_log;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v62 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v62 = init_default_corebrightness_log();
          }

          v63 = v62;
        }

        v116 = v63;
        v115 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          v60 = v116;
          v61 = v115;
          __os_log_helper_16_0_0(v114);
          _os_log_error_impl(&dword_1DE8E5000, v60, v61, "Unable to load the CCT table", v114, 2u);
        }

        v132 = 0;
      }
    }

    else
    {
      if (selfCopy->_log)
      {
        v67 = selfCopy->_log;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v66 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v66 = init_default_corebrightness_log();
        }

        v67 = v66;
      }

      v120 = v67;
      v119 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        v64 = v120;
        v65 = v119;
        __os_log_helper_16_0_0(v118);
        _os_log_error_impl(&dword_1DE8E5000, v64, v65, "Twilight / Night Shift Adaptation is not supported", v118, 2u);
      }

      v132 = 0;
    }
  }

  else
  {
    if (selfCopy->_log)
    {
      v71 = selfCopy->_log;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v70 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v70 = init_default_corebrightness_log();
      }

      v71 = v70;
    }

    v125 = v71;
    v124 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
    {
      v68 = v125;
      v69 = v124;
      __os_log_helper_16_0_0(v123);
      _os_log_error_impl(&dword_1DE8E5000, v68, v69, "Parser is null", v123, 2u);
    }

    v132 = 0;
  }

LABEL_227:
  *MEMORY[0x1E69E9840];
  return v132 & 1;
}

- (CBTwilightNightShiftAdaptationParams)initWithParser:(id)parser
{
  selfCopy = self;
  v16 = a2;
  parserCopy = parser;
  v14.receiver = self;
  v14.super_class = CBTwilightNightShiftAdaptationParams;
  selfCopy = [(CBTwilightNightShiftAdaptationParams *)&v14 init];
  if (selfCopy)
  {
    v3 = os_log_create("com.apple.CoreBrightness.BacklightNode", "TwilightNightShiftAdaptation");
    selfCopy->_log = v3;
    v13 = 0;
    if ([(CBTwilightNightShiftAdaptationParams *)selfCopy loadParametersFromParser:parserCopy])
    {
      v4 = [CBFloatArray alloc];
      v5 = [(CBFloatArray *)v4 initWithValues:selfCopy->_cctTableOG andCount:selfCopy->_cctTableSizeOG];
      selfCopy->_cctTable = v5;
      v6 = [CBFloatArray alloc];
      v7 = [(CBFloatArray *)v6 initWithValues:selfCopy->_twilightStrengthTableOG andCount:selfCopy->_twilightStrengthTableSizeOG];
      selfCopy->_twilightStrengthTable = v7;
      v12 = [CBFloatArray2D alloc];
      cctDeltaTableOG = selfCopy->_cctDeltaTableOG;
      v11 = [(CBFloatArray *)selfCopy->_cctTable count];
      v8 = [(CBFloatArray2D *)v12 initWithValues:cctDeltaTableOG andCountCols:v11 andRows:[(CBFloatArray *)selfCopy->_twilightStrengthTable count]];
      selfCopy->_cctDeltaTable = v8;
      v13 = 1;
    }

    if (selfCopy->_cctTableOG)
    {
      free(selfCopy->_cctTableOG);
    }

    if (selfCopy->_twilightStrengthTableOG)
    {
      free(selfCopy->_twilightStrengthTableOG);
    }

    if (selfCopy->_cctDeltaTableOG)
    {
      free(selfCopy->_cctDeltaTableOG);
    }

    if ((v13 & 1) == 0)
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
  MEMORY[0x1E69E5920](self->_cctTable);
  MEMORY[0x1E69E5920](selfCopy->_twilightStrengthTable);
  v2 = MEMORY[0x1E69E5920](selfCopy->_cctDeltaTable).n128_u64[0];
  if (selfCopy->_log)
  {
    v2 = MEMORY[0x1E69E5920](selfCopy->_log).n128_u64[0];
    selfCopy->_log = 0;
  }

  v3.receiver = selfCopy;
  v3.super_class = CBTwilightNightShiftAdaptationParams;
  [(CBTwilightNightShiftAdaptationParams *)&v3 dealloc];
}

@end