@interface CBChromaticCorrectionParams
- (BOOL)initBezierWithPrefix:(id)a3 fromParser:(id)a4;
- (BOOL)initCommonWithPrefix:(id)a3 fromParser:(id)a4;
- (BOOL)initFromParserOG:(id)a3 withName:(id)a4 andPrefix:(id)a5;
- (BOOL)initTablesWithPrefix:(id)a3 fromParser:(id)a4;
- (id)initFromParser:(id)a3 withName:(id)a4 andPrefix:(id)a5;
- (void)dealloc;
@end

@implementation CBChromaticCorrectionParams

- (BOOL)initBezierWithPrefix:(id)a3 fromParser:(id)a4
{
  v44 = self;
  v43 = a2;
  v42 = a3;
  v41 = a4;
  v40 = [a4 loadFloatArray:objc_msgSend(MEMORY[0x1E696AEC0] toDestination:{"stringWithFormat:", @"%@-ramp-bezier-anchors", a3), &self->_rampBezierAnchorsOG}];
  if (v44->_rampBezierAnchorsOG)
  {
    if (v40 == 3)
    {
      if (*v44->_rampBezierAnchorsOG >= 0.0 && *v44->_rampBezierAnchorsOG <= 1.0)
      {
        if (v44->_rampBezierAnchorsOG[1] >= 0.0 && v44->_rampBezierAnchorsOG[1] <= 1.0)
        {
          if (v44->_rampBezierAnchorsOG[2] >= 0.0 && v44->_rampBezierAnchorsOG[2] <= 1.0)
          {
            return 1;
          }

          else
          {
            if (v44->_log)
            {
              v8 = v44->_log;
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

              v8 = inited;
            }

            v27 = v8;
            v26 = 16;
            if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
            {
              v5 = v27;
              v6 = v26;
              __os_log_helper_16_0_0(v25);
              _os_log_error_impl(&dword_1DE8E5000, v5, v6, "Third ramp Bezier anchor is out of valid [0, 1] range", v25, 2u);
            }

            return 0;
          }
        }

        else
        {
          if (v44->_log)
          {
            v12 = v44->_log;
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v11 = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              v11 = init_default_corebrightness_log();
            }

            v12 = v11;
          }

          v30 = v12;
          v29 = 16;
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v9 = v30;
            v10 = v29;
            __os_log_helper_16_0_0(v28);
            _os_log_error_impl(&dword_1DE8E5000, v9, v10, "Second ramp Bezier anchor is out of valid [0, 1] range", v28, 2u);
          }

          return 0;
        }
      }

      else
      {
        if (v44->_log)
        {
          v16 = v44->_log;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v15 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v15 = init_default_corebrightness_log();
          }

          v16 = v15;
        }

        v33 = v16;
        v32 = 16;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v13 = v33;
          v14 = v32;
          __os_log_helper_16_0_0(v31);
          _os_log_error_impl(&dword_1DE8E5000, v13, v14, "First ramp Bezier anchor is out of valid [0, 1] range", v31, 2u);
        }

        return 0;
      }
    }

    else
    {
      if (v44->_log)
      {
        v20 = v44->_log;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v19 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v19 = init_default_corebrightness_log();
        }

        v20 = v19;
      }

      v36 = v20;
      v35 = 16;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v17 = v36;
        v18 = v35;
        __os_log_helper_16_0_0(v34);
        _os_log_error_impl(&dword_1DE8E5000, v17, v18, "Incorrect number of ramp Bezier anchors", v34, 2u);
      }

      return 0;
    }
  }

  else
  {
    if (v44->_log)
    {
      v24 = v44->_log;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v23 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v23 = init_default_corebrightness_log();
      }

      v24 = v23;
    }

    v39 = v24;
    v38 = 16;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      log = v39;
      type = v38;
      __os_log_helper_16_0_0(v37);
      _os_log_error_impl(&dword_1DE8E5000, log, type, "Unable to load ramp Bezier anchors", v37, 2u);
    }

    return 0;
  }
}

- (BOOL)initCommonWithPrefix:(id)a3 fromParser:(id)a4
{
  v99 = self;
  v98 = a2;
  v97 = a3;
  v96 = a4;
  if ([a4 loadFloat:objc_msgSend(MEMORY[0x1E696AEC0] toDestination:{"stringWithFormat:", @"%@-lux-activation-threshold", a3), &self->_luxActivationThreshold}])
  {
    if (v99->_luxActivationThreshold >= 0.0)
    {
      if ([v96 loadFloat:objc_msgSend(MEMORY[0x1E696AEC0] toDestination:{"stringWithFormat:", @"%@-nits-activation-threshold", v97), &v99->_nitsActivationThreshold}])
      {
        if (v99->_nitsActivationThreshold >= 0.0)
        {
          if ([v96 loadFloat:objc_msgSend(MEMORY[0x1E696AEC0] toDestination:{"stringWithFormat:", @"%@-ramp-up-duration", v97), &v99->_rampUpDuration}])
          {
            if (v99->_rampUpDuration >= 0.0)
            {
              if ([v96 loadFloat:objc_msgSend(MEMORY[0x1E696AEC0] toDestination:{"stringWithFormat:", @"%@-ramp-up-lux-threshold", v97), &v99->_rampUpLuxDeltaThreshold}])
              {
                if (v99->_rampUpLuxDeltaThreshold >= 0.0)
                {
                  if ([v96 loadFloat:objc_msgSend(MEMORY[0x1E696AEC0] toDestination:{"stringWithFormat:", @"%@-ramp-down-duration", v97), &v99->_rampDownDuration}])
                  {
                    if (v99->_rampDownDuration >= 0.0)
                    {
                      if ([v96 loadFloat:objc_msgSend(MEMORY[0x1E696AEC0] toDestination:{"stringWithFormat:", @"%@-ramp-down-lux-threshold", v97), &v99->_rampDownLuxDeltaThreshold}])
                      {
                        if (v99->_rampDownLuxDeltaThreshold >= 0.0)
                        {
                          if ([v96 loadFloat:objc_msgSend(MEMORY[0x1E696AEC0] toDestination:{"stringWithFormat:", @"%@-ramp-update-rate", v97), &v99->_rampUpdateRate}])
                          {
                            return 1;
                          }

                          else
                          {
                            if (v99->_log)
                            {
                              v8 = v99->_log;
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

                              v8 = inited;
                            }

                            oslog = v8;
                            v58 = OS_LOG_TYPE_ERROR;
                            if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
                            {
                              v5 = oslog;
                              v6 = v58;
                              __os_log_helper_16_0_0(v57);
                              _os_log_error_impl(&dword_1DE8E5000, v5, v6, "Unable to load ramp update rate", v57, 2u);
                            }

                            return 0;
                          }
                        }

                        else
                        {
                          if (v99->_log)
                          {
                            v12 = v99->_log;
                          }

                          else
                          {
                            if (_COREBRIGHTNESS_LOG_DEFAULT)
                            {
                              v11 = _COREBRIGHTNESS_LOG_DEFAULT;
                            }

                            else
                            {
                              v11 = init_default_corebrightness_log();
                            }

                            v12 = v11;
                          }

                          v62 = v12;
                          v61 = 16;
                          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
                          {
                            v9 = v62;
                            v10 = v61;
                            __os_log_helper_16_0_0(v60);
                            _os_log_error_impl(&dword_1DE8E5000, v9, v10, "Ramp down lux delta threshold is negative", v60, 2u);
                          }

                          return 0;
                        }
                      }

                      else
                      {
                        if (v99->_log)
                        {
                          v16 = v99->_log;
                        }

                        else
                        {
                          if (_COREBRIGHTNESS_LOG_DEFAULT)
                          {
                            v15 = _COREBRIGHTNESS_LOG_DEFAULT;
                          }

                          else
                          {
                            v15 = init_default_corebrightness_log();
                          }

                          v16 = v15;
                        }

                        v65 = v16;
                        v64 = 16;
                        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                        {
                          v13 = v65;
                          v14 = v64;
                          __os_log_helper_16_0_0(v63);
                          _os_log_error_impl(&dword_1DE8E5000, v13, v14, "Unable to load ramp down lux delta threshold", v63, 2u);
                        }

                        return 0;
                      }
                    }

                    else
                    {
                      if (v99->_log)
                      {
                        v20 = v99->_log;
                      }

                      else
                      {
                        if (_COREBRIGHTNESS_LOG_DEFAULT)
                        {
                          v19 = _COREBRIGHTNESS_LOG_DEFAULT;
                        }

                        else
                        {
                          v19 = init_default_corebrightness_log();
                        }

                        v20 = v19;
                      }

                      v68 = v20;
                      v67 = 16;
                      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                      {
                        v17 = v68;
                        v18 = v67;
                        __os_log_helper_16_0_0(v66);
                        _os_log_error_impl(&dword_1DE8E5000, v17, v18, "Ramp down duration is negative", v66, 2u);
                      }

                      return 0;
                    }
                  }

                  else
                  {
                    if (v99->_log)
                    {
                      v24 = v99->_log;
                    }

                    else
                    {
                      if (_COREBRIGHTNESS_LOG_DEFAULT)
                      {
                        v23 = _COREBRIGHTNESS_LOG_DEFAULT;
                      }

                      else
                      {
                        v23 = init_default_corebrightness_log();
                      }

                      v24 = v23;
                    }

                    v71 = v24;
                    v70 = 16;
                    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                    {
                      v21 = v71;
                      v22 = v70;
                      __os_log_helper_16_0_0(v69);
                      _os_log_error_impl(&dword_1DE8E5000, v21, v22, "Unable to load ramp down duration", v69, 2u);
                    }

                    return 0;
                  }
                }

                else
                {
                  if (v99->_log)
                  {
                    v28 = v99->_log;
                  }

                  else
                  {
                    if (_COREBRIGHTNESS_LOG_DEFAULT)
                    {
                      v27 = _COREBRIGHTNESS_LOG_DEFAULT;
                    }

                    else
                    {
                      v27 = init_default_corebrightness_log();
                    }

                    v28 = v27;
                  }

                  v74 = v28;
                  v73 = 16;
                  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                  {
                    v25 = v74;
                    v26 = v73;
                    __os_log_helper_16_0_0(v72);
                    _os_log_error_impl(&dword_1DE8E5000, v25, v26, "Ramp up lux delta threshold is negative", v72, 2u);
                  }

                  return 0;
                }
              }

              else
              {
                if (v99->_log)
                {
                  v32 = v99->_log;
                }

                else
                {
                  if (_COREBRIGHTNESS_LOG_DEFAULT)
                  {
                    v31 = _COREBRIGHTNESS_LOG_DEFAULT;
                  }

                  else
                  {
                    v31 = init_default_corebrightness_log();
                  }

                  v32 = v31;
                }

                v77 = v32;
                v76 = 16;
                if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
                {
                  v29 = v77;
                  v30 = v76;
                  __os_log_helper_16_0_0(v75);
                  _os_log_error_impl(&dword_1DE8E5000, v29, v30, "Unable to load ramp up lux delta threshold", v75, 2u);
                }

                return 0;
              }
            }

            else
            {
              if (v99->_log)
              {
                v36 = v99->_log;
              }

              else
              {
                if (_COREBRIGHTNESS_LOG_DEFAULT)
                {
                  v35 = _COREBRIGHTNESS_LOG_DEFAULT;
                }

                else
                {
                  v35 = init_default_corebrightness_log();
                }

                v36 = v35;
              }

              v80 = v36;
              v79 = 16;
              if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
              {
                v33 = v80;
                v34 = v79;
                __os_log_helper_16_0_0(v78);
                _os_log_error_impl(&dword_1DE8E5000, v33, v34, "Ramp up duration is negative", v78, 2u);
              }

              return 0;
            }
          }

          else
          {
            if (v99->_log)
            {
              v40 = v99->_log;
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v39 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v39 = init_default_corebrightness_log();
              }

              v40 = v39;
            }

            v83 = v40;
            v82 = 16;
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              v37 = v83;
              v38 = v82;
              __os_log_helper_16_0_0(v81);
              _os_log_error_impl(&dword_1DE8E5000, v37, v38, "Unable to load ramp up duration", v81, 2u);
            }

            return 0;
          }
        }

        else
        {
          if (v99->_log)
          {
            v44 = v99->_log;
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v43 = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              v43 = init_default_corebrightness_log();
            }

            v44 = v43;
          }

          v86 = v44;
          v85 = 16;
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            v41 = v86;
            v42 = v85;
            __os_log_helper_16_0_0(v84);
            _os_log_error_impl(&dword_1DE8E5000, v41, v42, "Nits activation threshold is negative", v84, 2u);
          }

          return 0;
        }
      }

      else
      {
        if (v99->_log)
        {
          v48 = v99->_log;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v47 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v47 = init_default_corebrightness_log();
          }

          v48 = v47;
        }

        v89 = v48;
        v88 = 16;
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          v45 = v89;
          v46 = v88;
          __os_log_helper_16_0_0(v87);
          _os_log_error_impl(&dword_1DE8E5000, v45, v46, "Unable to load nits activation threshold", v87, 2u);
        }

        return 0;
      }
    }

    else
    {
      if (v99->_log)
      {
        v52 = v99->_log;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v51 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v51 = init_default_corebrightness_log();
        }

        v52 = v51;
      }

      v92 = v52;
      v91 = 16;
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        v49 = v92;
        v50 = v91;
        __os_log_helper_16_0_0(v90);
        _os_log_error_impl(&dword_1DE8E5000, v49, v50, "Lux activation threshold is negative", v90, 2u);
      }

      return 0;
    }
  }

  else
  {
    if (v99->_log)
    {
      v56 = v99->_log;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v55 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v55 = init_default_corebrightness_log();
      }

      v56 = v55;
    }

    v95 = v56;
    v94 = 16;
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      log = v95;
      type = v94;
      __os_log_helper_16_0_0(v93);
      _os_log_error_impl(&dword_1DE8E5000, log, type, "Unable to load lux activation threshold", v93, 2u);
    }

    return 0;
  }
}

- (BOOL)initTablesWithPrefix:(id)a3 fromParser:(id)a4
{
  v68 = *MEMORY[0x1E69E9840];
  v64 = self;
  v63 = a2;
  v62 = a3;
  v61 = a4;
  self->_luxTableSizeOG = [a4 loadFloatArray:objc_msgSend(MEMORY[0x1E696AEC0] toDestination:{"stringWithFormat:", @"%@-lux-table", a3), &self->_luxTableOG}];
  if (v64->_luxTableOG)
  {
    if (v64->_luxTableSizeOG)
    {
      for (i = 0; i < v64->_luxTableSizeOG - 1; ++i)
      {
        if (v64->_luxTableOG[i] >= v64->_luxTableOG[i + 1])
        {
          if (v64->_log)
          {
            v28 = v64->_log;
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

            v28 = inited;
          }

          v53 = v28;
          v52 = 16;
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v25 = v53;
            v26 = v52;
            __os_log_helper_16_0_0(v51);
            _os_log_error_impl(&dword_1DE8E5000, v25, v26, "Lux table is not monotonically increasing", v51, 2u);
          }

          v65 = 0;
          goto LABEL_102;
        }
      }

      v64->_nitsTableSizeOG = [v61 loadFloatArray:objc_msgSend(MEMORY[0x1E696AEC0] toDestination:{"stringWithFormat:", @"%@-nits-table", v62), &v64->_nitsTableOG}];
      if (v64->_nitsTableOG)
      {
        if (v64->_nitsTableSizeOG)
        {
          for (j = 0; j < v64->_nitsTableSizeOG - 1; ++j)
          {
            if (v64->_nitsTableOG[j] >= v64->_nitsTableOG[j + 1])
            {
              if (v64->_log)
              {
                v16 = v64->_log;
              }

              else
              {
                if (_COREBRIGHTNESS_LOG_DEFAULT)
                {
                  v15 = _COREBRIGHTNESS_LOG_DEFAULT;
                }

                else
                {
                  v15 = init_default_corebrightness_log();
                }

                v16 = v15;
              }

              v43 = v16;
              v42 = OS_LOG_TYPE_ERROR;
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                v13 = v43;
                v14 = v42;
                __os_log_helper_16_0_0(v41);
                _os_log_error_impl(&dword_1DE8E5000, v13, v14, "Nits table is not monotonically increasing", v41, 2u);
              }

              v65 = 0;
              goto LABEL_102;
            }
          }

          v64->_strengthTableSizeOG = [v61 loadFloatArray:objc_msgSend(MEMORY[0x1E696AEC0] toDestination:{"stringWithFormat:", @"%@-strength-table", v62), &v64->_strengthTableOG}];
          if (v64->_strengthTableOG)
          {
            if (v64->_strengthTableSizeOG == v64->_nitsTableSizeOG * v64->_luxTableSizeOG)
            {
              for (k = 0; ; ++k)
              {
                if (k >= v64->_strengthTableSizeOG)
                {
                  v65 = 1;
                  goto LABEL_102;
                }

                if (v64->_strengthTableOG[k] < 0.0 || v64->_strengthTableOG[k] > 1.0)
                {
                  break;
                }
              }

              if (v64->_log)
              {
                v6 = v64->_log;
              }

              else
              {
                if (_COREBRIGHTNESS_LOG_DEFAULT)
                {
                  v5 = _COREBRIGHTNESS_LOG_DEFAULT;
                }

                else
                {
                  v5 = init_default_corebrightness_log();
                }

                v6 = v5;
              }

              if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
              {
                __os_log_helper_16_0_2_8_0_8_0(v66, k, COERCE__INT64(v64->_strengthTableOG[k]));
                _os_log_error_impl(&dword_1DE8E5000, v6, OS_LOG_TYPE_ERROR, "Strength table element #%lu with value %f is out of the valid [0, 1] range", v66, 0x16u);
              }

              v65 = 0;
            }

            else
            {
              if (v64->_log)
              {
                v8 = v64->_log;
              }

              else
              {
                if (_COREBRIGHTNESS_LOG_DEFAULT)
                {
                  v7 = _COREBRIGHTNESS_LOG_DEFAULT;
                }

                else
                {
                  v7 = init_default_corebrightness_log();
                }

                v8 = v7;
              }

              if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
              {
                __os_log_helper_16_0_3_8_0_8_0_8_0(v67, v64->_strengthTableSizeOG, v64->_luxTableSizeOG, v64->_nitsTableSizeOG);
                _os_log_error_impl(&dword_1DE8E5000, v8, OS_LOG_TYPE_ERROR, "Strength table has wrong size %lu for lux table size %lu and nits table size %lu", v67, 0x20u);
              }

              v65 = 0;
            }
          }

          else
          {
            if (v64->_log)
            {
              v12 = v64->_log;
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v11 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v11 = init_default_corebrightness_log();
              }

              v12 = v11;
            }

            oslog = v12;
            v39 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              v9 = oslog;
              v10 = v39;
              __os_log_helper_16_0_0(v38);
              _os_log_error_impl(&dword_1DE8E5000, v9, v10, "Unable to load strength table", v38, 2u);
            }

            v65 = 0;
          }
        }

        else
        {
          if (v64->_log)
          {
            v20 = v64->_log;
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v19 = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              v19 = init_default_corebrightness_log();
            }

            v20 = v19;
          }

          v47 = v20;
          v46 = 16;
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v17 = v47;
            v18 = v46;
            __os_log_helper_16_0_0(v45);
            _os_log_error_impl(&dword_1DE8E5000, v17, v18, "Nits table has less than one element", v45, 2u);
          }

          v65 = 0;
        }
      }

      else
      {
        if (v64->_log)
        {
          v24 = v64->_log;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v23 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v23 = init_default_corebrightness_log();
          }

          v24 = v23;
        }

        v50 = v24;
        v49 = 16;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v21 = v50;
          v22 = v49;
          __os_log_helper_16_0_0(v48);
          _os_log_error_impl(&dword_1DE8E5000, v21, v22, "Unable to load nits table", v48, 2u);
        }

        v65 = 0;
      }
    }

    else
    {
      if (v64->_log)
      {
        v32 = v64->_log;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v31 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v31 = init_default_corebrightness_log();
        }

        v32 = v31;
      }

      v57 = v32;
      v56 = 16;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v29 = v57;
        v30 = v56;
        __os_log_helper_16_0_0(v55);
        _os_log_error_impl(&dword_1DE8E5000, v29, v30, "Lux table has less than one element", v55, 2u);
      }

      v65 = 0;
    }
  }

  else
  {
    if (v64->_log)
    {
      v36 = v64->_log;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v35 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v35 = init_default_corebrightness_log();
      }

      v36 = v35;
    }

    v60 = v36;
    v59 = 16;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      log = v60;
      type = v59;
      __os_log_helper_16_0_0(v58);
      _os_log_error_impl(&dword_1DE8E5000, log, type, "Unable to load lux table", v58, 2u);
    }

    v65 = 0;
  }

LABEL_102:
  *MEMORY[0x1E69E9840];
  return v65 & 1;
}

- (id)initFromParser:(id)a3 withName:(id)a4 andPrefix:(id)a5
{
  v22 = self;
  v21 = a2;
  v20 = a3;
  v19 = a4;
  v18 = a5;
  v17.receiver = self;
  v17.super_class = CBChromaticCorrectionParams;
  v22 = [(CBChromaticCorrectionParams *)&v17 init];
  if (v22)
  {
    v5 = os_log_create("com.apple.CoreBrightness.BacklightNode", [objc_msgSend(v19 "capitalizedString")]);
    v22->_log = v5;
    v16 = 0;
    if ([(CBChromaticCorrectionParams *)v22 initFromParserOG:v20 withName:v19 andPrefix:v18])
    {
      v6 = [CBFloatArray alloc];
      v7 = [(CBFloatArray *)v6 initWithValues:v22->_luxTableOG andCount:v22->_luxTableSizeOG];
      v22->_luxTable = v7;
      v8 = [CBFloatArray alloc];
      v9 = [(CBFloatArray *)v8 initWithValues:v22->_nitsTableOG andCount:v22->_nitsTableSizeOG];
      v22->_nitsTable = v9;
      v15 = [CBFloatArray2D alloc];
      strengthTableOG = v22->_strengthTableOG;
      v14 = [(CBFloatArray *)v22->_nitsTable count];
      v10 = [(CBFloatArray2D *)v15 initWithValues:strengthTableOG andCountCols:v14 andRows:[(CBFloatArray *)v22->_luxTable count]];
      v22->_strengthTable = v10;
      v11 = [MEMORY[0x1E695DEC8] newArrayFromFloats:v22->_rampBezierAnchorsOG size:3];
      v22->_rampBezierAnchors = v11;
      v16 = 1;
    }

    if (v22->_luxTableOG)
    {
      free(v22->_luxTableOG);
    }

    if (v22->_nitsTableOG)
    {
      free(v22->_nitsTableOG);
    }

    if (v22->_strengthTableOG)
    {
      free(v22->_strengthTableOG);
    }

    if (v22->_rampBezierAnchorsOG)
    {
      free(v22->_rampBezierAnchorsOG);
    }

    if ((v16 & 1) == 0)
    {
      MEMORY[0x1E69E5920](v22);
      return 0;
    }
  }

  return v22;
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  MEMORY[0x1E69E5920](self->_luxTable);
  MEMORY[0x1E69E5920](v5->_nitsTable);
  MEMORY[0x1E69E5920](v5->_strengthTable);
  v2 = MEMORY[0x1E69E5920](v5->_rampBezierAnchors).n128_u64[0];
  if (v5->_log)
  {
    v2 = MEMORY[0x1E69E5920](v5->_log).n128_u64[0];
    v5->_log = 0;
  }

  v3.receiver = v5;
  v3.super_class = CBChromaticCorrectionParams;
  [(CBChromaticCorrectionParams *)&v3 dealloc];
}

- (BOOL)initFromParserOG:(id)a3 withName:(id)a4 andPrefix:(id)a5
{
  v77 = *MEMORY[0x1E69E9840];
  v60 = self;
  v59 = a2;
  v58 = a3;
  v57 = a4;
  v56 = a5;
  if (a3)
  {
    v52 = 0;
    if (([v58 loadInt:objc_msgSend(MEMORY[0x1E696AEC0] toDestination:{"stringWithFormat:", @"supports-%@", v57), &v52}] & 1) != 0 && v52)
    {
      if ([(CBChromaticCorrectionParams *)v60 initCommonWithPrefix:v56 fromParser:v58])
      {
        if ([(CBChromaticCorrectionParams *)v60 initTablesWithPrefix:v56 fromParser:v58])
        {
          if ([(CBChromaticCorrectionParams *)v60 initBezierWithPrefix:v56 fromParser:v58])
          {
            v51 = objc_alloc_init(MEMORY[0x1E696AD60]);
            for (i = 0; i < v60->_luxTableSizeOG; ++i)
            {
              v5 = "";
              if (i != v60->_luxTableSizeOG - 1)
              {
                v5 = ",";
              }

              [v51 appendFormat:@" %f%s", v60->_luxTableOG[i], v5];
            }

            [v51 appendString:@" "];
            v49 = objc_alloc_init(MEMORY[0x1E696AD60]);
            for (j = 0; j < v60->_nitsTableSizeOG; ++j)
            {
              v6 = "";
              if (j != v60->_nitsTableSizeOG - 1)
              {
                v6 = ",";
              }

              [v49 appendFormat:@" %f%s", v60->_nitsTableOG[j], v6];
            }

            [v49 appendString:@" "];
            if (v60->_log)
            {
              v38 = v60->_log;
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

              v38 = inited;
            }

            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              __os_log_helper_16_0_1_8_0(v75, COERCE__INT64(v60->_luxActivationThreshold));
              _os_log_impl(&dword_1DE8E5000, v38, OS_LOG_TYPE_DEFAULT, "LuxActivationThreshold=%f", v75, 0xCu);
            }

            if (v60->_log)
            {
              v36 = v60->_log;
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v35 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v35 = init_default_corebrightness_log();
              }

              v36 = v35;
            }

            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              __os_log_helper_16_0_1_8_0(v74, COERCE__INT64(v60->_nitsActivationThreshold));
              _os_log_impl(&dword_1DE8E5000, v36, OS_LOG_TYPE_DEFAULT, "NitsActivationThreshold=%f", v74, 0xCu);
            }

            if (v60->_log)
            {
              v34 = v60->_log;
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v33 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v33 = init_default_corebrightness_log();
              }

              v34 = v33;
            }

            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              __os_log_helper_16_0_1_8_0(v73, COERCE__INT64(v60->_rampUpdateRate));
              _os_log_impl(&dword_1DE8E5000, v34, OS_LOG_TYPE_DEFAULT, "RampUpdateRate=%f", v73, 0xCu);
            }

            if (v60->_log)
            {
              v32 = v60->_log;
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v31 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v31 = init_default_corebrightness_log();
              }

              v32 = v31;
            }

            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              __os_log_helper_16_0_3_8_0_8_0_8_0(v72, COERCE__INT64(*v60->_rampBezierAnchorsOG), COERCE__INT64(v60->_rampBezierAnchorsOG[1]), COERCE__INT64(v60->_rampBezierAnchorsOG[2]));
              _os_log_impl(&dword_1DE8E5000, v32, OS_LOG_TYPE_DEFAULT, "RampBezierAnchors={ %f, %f, %f }", v72, 0x20u);
            }

            if (v60->_log)
            {
              v30 = v60->_log;
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v29 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v29 = init_default_corebrightness_log();
              }

              v30 = v29;
            }

            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              __os_log_helper_16_0_1_8_0(v71, COERCE__INT64(v60->_rampUpDuration));
              _os_log_impl(&dword_1DE8E5000, v30, OS_LOG_TYPE_DEFAULT, "RampUpDuration=%f", v71, 0xCu);
            }

            if (v60->_log)
            {
              v28 = v60->_log;
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v27 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v27 = init_default_corebrightness_log();
              }

              v28 = v27;
            }

            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              __os_log_helper_16_0_1_8_0(v70, COERCE__INT64(v60->_rampUpLuxDeltaThreshold));
              _os_log_impl(&dword_1DE8E5000, v28, OS_LOG_TYPE_DEFAULT, "RampUpLuxDeltaThreshold=%f", v70, 0xCu);
            }

            if (v60->_log)
            {
              v26 = v60->_log;
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v25 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v25 = init_default_corebrightness_log();
              }

              v26 = v25;
            }

            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              __os_log_helper_16_0_1_8_0(v69, COERCE__INT64(v60->_rampDownDuration));
              _os_log_impl(&dword_1DE8E5000, v26, OS_LOG_TYPE_DEFAULT, "RampDownDuration=%f", v69, 0xCu);
            }

            if (v60->_log)
            {
              v24 = v60->_log;
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v23 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v23 = init_default_corebrightness_log();
              }

              v24 = v23;
            }

            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              __os_log_helper_16_0_1_8_0(v68, COERCE__INT64(v60->_rampDownLuxDeltaThreshold));
              _os_log_impl(&dword_1DE8E5000, v24, OS_LOG_TYPE_DEFAULT, "RampDownLuxDeltaThreshold=%f", v68, 0xCu);
            }

            if (v60->_log)
            {
              v22 = v60->_log;
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v21 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v21 = init_default_corebrightness_log();
              }

              v22 = v21;
            }

            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              __os_log_helper_16_0_1_8_0(v67, v60->_luxTableSizeOG);
              _os_log_impl(&dword_1DE8E5000, v22, OS_LOG_TYPE_DEFAULT, "LuxTableSize=%lu", v67, 0xCu);
            }

            if (v60->_log)
            {
              v20 = v60->_log;
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v19 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v19 = init_default_corebrightness_log();
              }

              v20 = v19;
            }

            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              __os_log_helper_16_2_1_8_32(v66, [v51 UTF8String]);
              _os_log_impl(&dword_1DE8E5000, v20, OS_LOG_TYPE_DEFAULT, "LuxTable={%s}", v66, 0xCu);
            }

            if (v60->_log)
            {
              v18 = v60->_log;
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v17 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v17 = init_default_corebrightness_log();
              }

              v18 = v17;
            }

            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              __os_log_helper_16_0_1_8_0(v65, v60->_nitsTableSizeOG);
              _os_log_impl(&dword_1DE8E5000, v18, OS_LOG_TYPE_DEFAULT, "NitsTableSize=%lu", v65, 0xCu);
            }

            if (v60->_log)
            {
              v16 = v60->_log;
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v15 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v15 = init_default_corebrightness_log();
              }

              v16 = v15;
            }

            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              __os_log_helper_16_2_1_8_32(v64, [v49 UTF8String]);
              _os_log_impl(&dword_1DE8E5000, v16, OS_LOG_TYPE_DEFAULT, "NitsTable={%s}", v64, 0xCu);
            }

            if (v60->_log)
            {
              v14 = v60->_log;
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v13 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v13 = init_default_corebrightness_log();
              }

              v14 = v13;
            }

            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              __os_log_helper_16_0_1_8_0(v63, v60->_strengthTableSizeOG);
              _os_log_impl(&dword_1DE8E5000, v14, OS_LOG_TYPE_DEFAULT, "StrengthTableSize=%lu", v63, 0xCu);
            }

            for (k = 0; k < v60->_luxTableSizeOG; ++k)
            {
              v46 = objc_alloc_init(MEMORY[0x1E696AD60]);
              for (m = 0; m < v60->_nitsTableSizeOG; ++m)
              {
                [(CBChromaticCorrectionParams *)v60 getStrengthForRow:k andColumn:m];
                v8 = v7;
                v9 = "";
                if (m != v60->_nitsTableSizeOG - 1)
                {
                  v9 = ",";
                }

                [v46 appendFormat:@" %f%s ", *&v8, v9];
              }

              if (v60->_log)
              {
                v12 = v60->_log;
              }

              else
              {
                if (_COREBRIGHTNESS_LOG_DEFAULT)
                {
                  v11 = _COREBRIGHTNESS_LOG_DEFAULT;
                }

                else
                {
                  v11 = init_default_corebrightness_log();
                }

                v12 = v11;
              }

              if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
              {
                __os_log_helper_16_2_2_8_0_8_32(v62, k, [v46 UTF8String]);
                _os_log_impl(&dword_1DE8E5000, v12, OS_LOG_TYPE_DEFAULT, "StrengthTable[%lu]={%s}", v62, 0x16u);
              }

              MEMORY[0x1E69E5920](v46);
            }

            MEMORY[0x1E69E5920](v51);
            MEMORY[0x1E69E5920](v49);
            v61 = 1;
          }

          else
          {
            v61 = 0;
          }
        }

        else
        {
          v61 = 0;
        }
      }

      else
      {
        v61 = 0;
      }
    }

    else
    {
      if (v60->_log)
      {
        v40 = v60->_log;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v39 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v39 = init_default_corebrightness_log();
        }

        v40 = v39;
      }

      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v76, [v57 capitalizedString]);
        _os_log_error_impl(&dword_1DE8E5000, v40, OS_LOG_TYPE_ERROR, "%@ is not supported", v76, 0xCu);
      }

      v61 = 0;
    }
  }

  else
  {
    if (v60->_log)
    {
      v44 = v60->_log;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v43 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v43 = init_default_corebrightness_log();
      }

      v44 = v43;
    }

    v55 = v44;
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      log = v55;
      v42 = type;
      __os_log_helper_16_0_0(v53);
      _os_log_error_impl(&dword_1DE8E5000, log, v42, "Parser is null", v53, 2u);
    }

    v61 = 0;
  }

  *MEMORY[0x1E69E9840];
  return v61 & 1;
}

@end