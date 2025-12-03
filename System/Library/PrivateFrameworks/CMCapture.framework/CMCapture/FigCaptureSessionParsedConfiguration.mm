@interface FigCaptureSessionParsedConfiguration
- (FigCaptureSessionParsedConfiguration)initWithSessionConfiguration:(id)configuration clientSetsUserInitiatedCaptureRequestTime:(BOOL)time restrictions:(id)restrictions;
- (uint64_t)_computeVideoStabilizationTypes;
- (uint64_t)_parseConfiguration:(uint64_t)configuration clientSetsUserInitiatedCaptureRequestTime:restrictions:;
- (void)dealloc;
@end

@implementation FigCaptureSessionParsedConfiguration

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureSessionParsedConfiguration;
  [(FigCaptureSessionParsedConfiguration *)&v3 dealloc];
}

- (uint64_t)_computeVideoStabilizationTypes
{
  v58 = result;
  if (result)
  {
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    OUTLINED_FUNCTION_29_2();
    obj = v1;
    result = [v1 countByEnumeratingWithState:? objects:? count:?];
    v54 = result;
    if (result)
    {
      v53 = *v70;
      do
      {
        v2 = 0;
        do
        {
          if (*v70 != v53)
          {
            objc_enumerationMutation(obj);
          }

          v3 = *(*(&v69 + 1) + 8 * v2);
          if ([objc_msgSend(v3 "stillImageConnectionConfiguration")])
          {
            [objc_msgSend(v3 "stillImageConnectionConfiguration")];
          }

          v55 = v2;
          v67 = 0u;
          v68 = 0u;
          v65 = 0u;
          v66 = 0u;
          v4 = *(v58 + 136);
          OUTLINED_FUNCTION_28_4();
          v9 = OUTLINED_FUNCTION_1_0(v5, v6, v7, v8);
          if (v9)
          {
            v10 = v9;
            v11 = *v66;
            while (2)
            {
              for (i = 0; i != v10; ++i)
              {
                if (*v66 != v11)
                {
                  objc_enumerationMutation(v4);
                }

                if ([objc_msgSend(objc_msgSend(objc_msgSend(*(*(&v65 + 1) + 8 * i) "videoConnectionConfigurations")])
                {
                  v17 = 1;
                  goto LABEL_19;
                }
              }

              OUTLINED_FUNCTION_28_4();
              v10 = OUTLINED_FUNCTION_1_0(v13, v14, v15, v16);
              if (v10)
              {
                continue;
              }

              break;
            }
          }

          v17 = 0;
LABEL_19:
          if ([objc_msgSend(v3 "cameraConfiguration")] == 2)
          {
            v18 = v17;
          }

          else
          {
            v18 = 0;
          }

          v57 = v18;
          if ([*(v58 + 56) count] > 1 || objc_msgSend(objc_msgSend(v3, "cameraConfiguration"), "videoStabilizationStrength") > 2)
          {
            goto LABEL_28;
          }

          v19 = [objc_msgSend(v3 "cameraConfiguration")];
          if (v19 <= 9 && ((1 << v19) & 0x310) != 0)
          {
            if ([objc_msgSend(v3 "cameraConfiguration")] & 1) != 0 || (objc_msgSend(objc_msgSend(v3, "cameraConfiguration"), "depthDataDeliveryEnabled"))
            {
              goto LABEL_28;
            }

            v46 = [MEMORY[0x1E695DFA8] set];
            v47 = [objc_msgSend(v3 "previewDerivedConnectionConfigurations")];
            [v3 videoCaptureConnectionConfigurations];
            [OUTLINED_FUNCTION_36() addObjectsFromArray:?];
            v75 = 0u;
            v76 = 0u;
            v73 = 0u;
            v74 = 0u;
            v48 = OUTLINED_FUNCTION_33_8();
            if (v48)
            {
              v49 = v48;
              v50 = *v74;
LABEL_79:
              v51 = 0;
              while (1)
              {
                if (*v74 != v50)
                {
                  objc_enumerationMutation(v47);
                }

                [v46 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", objc_msgSend(*(*(&v73 + 1) + 8 * v51), "underlyingDeviceType"))}];
                if ([v46 count] > 1)
                {
                  break;
                }

                if (v49 == ++v51)
                {
                  v49 = OUTLINED_FUNCTION_33_8();
                  if (v49)
                  {
                    goto LABEL_79;
                  }

                  goto LABEL_29;
                }
              }

LABEL_28:
              v57 = 1;
            }
          }

LABEL_29:
          v63 = 0u;
          v64 = 0u;
          v61 = 0u;
          v62 = 0u;
          videoCaptureConnectionConfigurations = [v3 videoCaptureConnectionConfigurations];
          OUTLINED_FUNCTION_25_6();
          v22 = [v21 countByEnumeratingWithState:? objects:? count:?];
          if (!v22)
          {
            v40 = 0;
            v39 = 0;
LABEL_61:
            if (!v40)
            {
              goto LABEL_75;
            }

            goto LABEL_62;
          }

          v23 = v22;
          v56 = v3;
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = *v62;
          do
          {
            for (j = 0; j != v23; ++j)
            {
              if (*v62 != v27)
              {
                objc_enumerationMutation(videoCaptureConnectionConfigurations);
              }

              v29 = *(*(&v61 + 1) + 8 * j);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v30 = [objc_msgSend(v29 "sinkConfiguration")];
                if ((v30 | 2) == 6)
                {
                  v31 = v30;
                  if ([v29 videoStabilizationMethod])
                  {
                    v32 = v31 != 4 || v29 == 0;
                    if (v32 || ![objc_msgSend(v56 "videoPreviewSinkConnectionConfiguration")])
                    {
                      v33 = 0;
                    }

                    else
                    {
                      v33 = [objc_msgSend(v56 "videoPreviewSinkConnectionConfiguration")];
                    }

                    [v29 setVideoStabilizationType:{cspc_getVideoStabilizationType(v29, *(v58 + 18), v57, v33)}];
                  }

                  if ([v29 videoStabilizationType] == 1)
                  {
                    ++v26;
                  }

                  else
                  {
                    if ([v29 videoStabilizationType] - 3 < 2)
                    {
                      ++v25;
                    }

                    ++v24;
                  }
                }
              }
            }

            OUTLINED_FUNCTION_25_6();
            v23 = OUTLINED_FUNCTION_21_10(v34, v35, v36, v37);
          }

          while (v23);
          if (v26)
          {
            v38 = v24 == 0;
          }

          else
          {
            v38 = 1;
          }

          v39 = !v38;
          v40 = v25 > 1;
          v3 = v56;
          if ((v39 & 1) == 0)
          {
            goto LABEL_61;
          }

LABEL_62:
          memset(v60, 0, 64);
          videoCaptureConnectionConfigurations2 = [v3 videoCaptureConnectionConfigurations];
          v42 = [videoCaptureConnectionConfigurations2 countByEnumeratingWithState:v60 objects:v59 count:16];
          if (v42)
          {
            v43 = v42;
            do
            {
              for (k = 0; k != v43; ++k)
              {
                OUTLINED_FUNCTION_6_30();
                if (!v32)
                {
                  objc_enumerationMutation(videoCaptureConnectionConfigurations2);
                }

                v45 = *(*(&v60[0] + 1) + 8 * k);
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) != 0 && (v39 && [v45 videoStabilizationType] == 1 || v40 && objc_msgSend(v45, "videoStabilizationType") - 3 <= 1))
                {
                  [v45 setVideoStabilizationType:2];
                }
              }

              v43 = [videoCaptureConnectionConfigurations2 countByEnumeratingWithState:v60 objects:v59 count:16];
            }

            while (v43);
          }

LABEL_75:
          v2 = v55 + 1;
        }

        while (v55 + 1 != v54);
        OUTLINED_FUNCTION_29_2();
        result = [obj countByEnumeratingWithState:? objects:? count:?];
        v54 = result;
      }

      while (result);
    }
  }

  return result;
}

- (FigCaptureSessionParsedConfiguration)initWithSessionConfiguration:(id)configuration clientSetsUserInitiatedCaptureRequestTime:(BOOL)time restrictions:(id)restrictions
{
  v10.receiver = self;
  v10.super_class = FigCaptureSessionParsedConfiguration;
  v6 = [(FigCaptureSessionParsedConfiguration *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_useOfflineVISPipeline = 0;
    v9 = [FigCaptureSessionParsedConfiguration _parseConfiguration:v6 clientSetsUserInitiatedCaptureRequestTime:? restrictions:?];
    v7->_isMultiCamSession = [configuration isMultiCamSession];
    v7->_continuityCameraIsWired = [configuration continuityCameraIsWired];
    v7->_continuityCameraClientDeviceClass = [configuration continuityCameraClientDeviceClass];
    v7->_clientIsVOIP = [configuration clientIsVOIP];
    v7->_suppressVideoEffects = [configuration suppressVideoEffects];
    v7->_smartStyleRenderingEnabled = [configuration smartStyleRenderingEnabled];
    v7->_smartStyleControlMode = [configuration smartStyleControlMode];
    v7->_smartStyle = [configuration smartStyle];
    if (v9)
    {
      [FigCaptureSessionParsedConfiguration initWithSessionConfiguration:v9 clientSetsUserInitiatedCaptureRequestTime:v7 restrictions:?];
      return 0;
    }
  }

  return v7;
}

- (uint64_t)_parseConfiguration:(uint64_t)configuration clientSetsUserInitiatedCaptureRequestTime:restrictions:
{
  result = MEMORY[0x1EEE9AC00](configuration);
  v375 = v1;
  LODWORD(v372) = v4;
  v422 = v5;
  v355 = result;
  if (!result)
  {
    return result;
  }

  v6 = v3;
  v490 = 0;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  dictionary3 = [MEMORY[0x1E695DF90] dictionary];
  if (([v6 allowAllConfigurations] & 1) == 0)
  {
    v489 = 0u;
    v488 = 0u;
    v487 = 0u;
    v486 = 0u;
    connectionConfigurations = [v422 connectionConfigurations];
    OUTLINED_FUNCTION_27_4();
    v9 = [v8 countByEnumeratingWithState:? objects:? count:?];
    if (v9)
    {
      v10 = v9;
      v11 = *v487;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v487 != v11)
          {
            objc_enumerationMutation(connectionConfigurations);
          }

          v13 = *(*(&v486 + 1) + 8 * i);
          mediaType = [v13 mediaType];
          [v6 allowedConnectionMediaTypes];
          [MEMORY[0x1E696AD98] numberWithUnsignedInt:mediaType];
          if (([OUTLINED_FUNCTION_36() containsObject:?] & 1) == 0)
          {
            return -12780;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v485 = 0u;
            v484 = 0u;
            v483 = 0u;
            v482 = 0u;
            metadataIdentifiers = [v13 metadataIdentifiers];
            OUTLINED_FUNCTION_26_5();
            v17 = [v16 countByEnumeratingWithState:? objects:? count:?];
            if (v17)
            {
              v18 = v17;
              v19 = *v483;
              do
              {
                for (j = 0; j != v18; ++j)
                {
                  if (*v483 != v19)
                  {
                    objc_enumerationMutation(metadataIdentifiers);
                  }

                  if (![objc_msgSend(v6 "allowedConnectionMetadataIdentifiers")])
                  {
                    return -12780;
                  }
                }

                OUTLINED_FUNCTION_26_5();
                v18 = OUTLINED_FUNCTION_1_0(v21, v22, v23, v24);
              }

              while (v18);
            }
          }
        }

        OUTLINED_FUNCTION_27_4();
        v10 = [connectionConfigurations countByEnumeratingWithState:? objects:? count:?];
      }

      while (v10);
    }
  }

  connectionConfigurations2 = [v422 connectionConfigurations];
  v26 = [connectionConfigurations2 indexesOfObjectsPassingTest:&__block_literal_global_586];
  if ([v26 count])
  {
    v27 = [connectionConfigurations2 objectsAtIndexes:v26];
  }

  else
  {
    v27 = 0;
  }

  obj = v27;
  if (![v27 count])
  {
    array6 = 0;
    array5 = 0;
    v392 = 0;
    v395 = 0;
    v379 = 0;
    v383 = 0;
    v401 = 0;
    v370 = 0;
    v373 = 0;
    v84 = 0;
    v85 = 0;
    array3 = 0;
    v87 = 0;
    v88 = 0;
    v427 = 0;
    v348 = 0;
    v421 = 0;
    v89 = 1;
LABEL_489:
    LOBYTE(v355[v89]) = 1;
    goto LABEL_479;
  }

  v28 = [MEMORY[0x1E695DF70] arrayWithArray:v27];
  v478 = 0u;
  v479 = 0u;
  v480 = 0u;
  v481 = 0u;
  v30 = OUTLINED_FUNCTION_13_15(v28, v29, &v478, v477);
  v31 = MEMORY[0x1E695E480];
  if (v30)
  {
    v32 = v30;
    v33 = *v479;
LABEL_27:
    v34 = 0;
    while (1)
    {
      if (*v479 != v33)
      {
        objc_enumerationMutation(v27);
      }

      v35 = *(*(&v478 + 1) + 8 * v34);
      v36 = [objc_msgSend(v35 "sourceConfiguration")];
      if (v36 == 13)
      {
        break;
      }

      if (v32 == ++v34)
      {
        v32 = OUTLINED_FUNCTION_13_15(v36, v37, &v478, v477);
        if (v32)
        {
          goto LABEL_27;
        }

        goto LABEL_81;
      }
    }

    sourceConfiguration = [v35 sourceConfiguration];
    v496[0] = 0;
    if ([sourceConfiguration sourceDeviceType] != 13)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_35();
      LODWORD(v340) = 0;
      FigDebugAssert3();
      goto LABEL_81;
    }

    v39 = FigVideoCaptureSourceCopyUnderlyingCaptureSourceForPortType([sourceConfiguration source], *off_1E798A0C8, v496);
    v40 = v496[0];
    if (!v496[0])
    {
      v491[0].receiver = 0;
      v41 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v41)
      {
        v42 = *v31;
        v43 = v41(v39, @"Formats", *v31, v491);
        v496[0] = v43;
        if (!v43)
        {
          v44 = cspc_timeOfFlightFormatWithMaximumPoints(v491[0].receiver);
          v45 = [[FigCaptureSourceConfiguration alloc] initWithSource:v39];
          v46 = MEMORY[0x1E696AEC0];
          v47 = objc_opt_class();
          v340 = NSStringFromClass(v47);
          v344 = v45;
          [v46 stringWithFormat:@"<%@: %p>"];
          [OUTLINED_FUNCTION_4() setSourceID:?];
          [(FigCaptureSourceConfiguration *)v45 setRequiredFormat:v44];

          *&v492 = 0;
          v48 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v48)
          {
            v49 = v48(v39, @"AttributesDictionary", v42, &v492);
            v496[0] = v49;
            if (!v49)
            {
              [objc_msgSend(v492 objectForKeyedSubscript:{@"TimeOfFlightCameraType", "intValue"}];
              FigCaptureFrameRateFromFloat();
              OUTLINED_FUNCTION_24_6();
              [(FigCaptureSourceConfiguration *)v45 setRequiredMinFrameRate:?];
              FigCaptureFrameRateFromFloat();
              OUTLINED_FUNCTION_24_6();
              [(FigCaptureSourceConfiguration *)v45 setRequiredMaxFrameRate:?];
              [v44 maxSupportedFrameRate];
              [(FigCaptureSourceConfiguration *)v45 setMaxFrameRateClientOverride:?];

              if (!v39)
              {
                goto LABEL_45;
              }

              goto LABEL_44;
            }

            v81 = v49;
          }

          else
          {
            v81 = -12782;
            v496[0] = -12782;
          }

          fig_log_get_emitter();
          OUTLINED_FUNCTION_3_35();
          LODWORD(v340) = v81;
          FigDebugAssert3();
          if (!v39)
          {
LABEL_45:
            if (!v45)
            {
              goto LABEL_81;
            }

            v492 = 0u;
            v493 = 0u;
            v494 = 0u;
            v495 = 0u;
            OUTLINED_FUNCTION_7_25();
            v54 = OUTLINED_FUNCTION_13_15(v50, v51, v52, v53);
            if (v54)
            {
              v55 = v54;
              v56 = *v493;
              while (2)
              {
                for (k = 0; k != v55; ++k)
                {
                  if (*v493 != v56)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v58 = *(*(&v492 + 1) + 8 * k);
                  if ([objc_msgSend(v58 sourceConfiguration] == 13 && objc_msgSend(objc_msgSend(v58, "sinkConfiguration"), "sinkType") == 11)
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      PointCloudConnectionConfigurationForLiDARDepth = cspc_getPointCloudConnectionConfigurationForLiDARDepth(v58, v45);
                    }

                    else
                    {
                      fig_log_get_emitter();
                      OUTLINED_FUNCTION_3_35();
                      LODWORD(v340) = 0;
                      FigDebugAssert3();
                      PointCloudConnectionConfigurationForLiDARDepth = 0;
                    }

                    goto LABEL_58;
                  }
                }

                OUTLINED_FUNCTION_7_25();
                v55 = OUTLINED_FUNCTION_13_15(v59, v60, v61, v62);
                if (v55)
                {
                  continue;
                }

                break;
              }
            }

            PointCloudConnectionConfigurationForLiDARDepth = 0;
LABEL_58:
            v492 = 0u;
            v493 = 0u;
            v494 = 0u;
            v495 = 0u;
            OUTLINED_FUNCTION_7_25();
            v68 = OUTLINED_FUNCTION_13_15(v64, v65, v66, v67);
            if (v68)
            {
              v69 = v68;
LABEL_60:
              v70 = 0;
              while (1)
              {
                OUTLINED_FUNCTION_6_30();
                if (!v129)
                {
                  objc_enumerationMutation(obj);
                }

                v71 = *(*(&v492 + 1) + 8 * v70);
                if ([objc_msgSend(v71 sourceConfiguration] == 13 && objc_msgSend(objc_msgSend(v71, "sinkConfiguration"), "sinkType") == 10 && objc_msgSend(objc_msgSend(v71, "sinkConfiguration"), "depthDataDeliveryEnabled"))
                {
                  break;
                }

                if (v69 == ++v70)
                {
                  OUTLINED_FUNCTION_7_25();
                  v69 = OUTLINED_FUNCTION_22_7(v72, v73, v74, v75, v76, v77, v78, v79, v340, v344, v347, v352, v355, v357, v360, v363, v366, v369, v372, v375, v378, v382, dictionary3, v388, v391, v394, v397, metadataObjectConnectionConfigurations, v403, v406, dictionary, dictionary2, obj);
                  if (v69)
                  {
                    goto LABEL_60;
                  }

                  goto LABEL_68;
                }
              }

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                fig_log_get_emitter();
                OUTLINED_FUNCTION_3_35();
                LODWORD(v340) = 0;
                FigDebugAssert3();
                goto LABEL_68;
              }

              v80 = cspc_getPointCloudConnectionConfigurationForLiDARDepth(v71, v45);
              if (!PointCloudConnectionConfigurationForLiDARDepth)
              {
                goto LABEL_73;
              }
            }

            else
            {
LABEL_68:
              v80 = 0;
              if (!PointCloudConnectionConfigurationForLiDARDepth)
              {
LABEL_73:
                if (v80)
                {
                  v426 = v80;
                  [v28 addObject:v80];
                }

                else
                {
                  v426 = 0;
                }

                goto LABEL_82;
              }
            }

            [v28 addObject:{PointCloudConnectionConfigurationForLiDARDepth, v340}];
            goto LABEL_73;
          }

LABEL_44:
          CFRelease(v39);
          goto LABEL_45;
        }

        v40 = v43;
      }

      else
      {
        v40 = -12782;
        v496[0] = -12782;
      }
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_35();
    LODWORD(v340) = v40;
    FigDebugAssert3();
    v45 = 0;
    if (!v39)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

LABEL_81:
  v426 = 0;
  PointCloudConnectionConfigurationForLiDARDepth = 0;
LABEL_82:
  v90 = [MEMORY[0x1E695DEC8] arrayWithArray:{v28, v340}];
  v496[0] = 0;
  v91 = FigCaptureConnectionConfigurationWithSinkTypeAndMediaType(v90, 1, 1986618469);
  v92 = FigCaptureConnectionConfigurationWithSinkTypeAndMediaType(v90, 10, 1986618469);
  sourceConfiguration2 = [v92 sourceConfiguration];
  sinkConfiguration = [v92 sinkConfiguration];
  v95 = 0;
  if (([(FigPointCloudDataCaptureConnectionConfiguration *)sinkConfiguration digitalFlashCaptureEnabled]& 1) == 0)
  {
    v95 = [objc_msgSend(sourceConfiguration2 "requiredFormat")] ^ 1;
  }

  v425 = PointCloudConnectionConfigurationForLiDARDepth;
  if (([(FigPointCloudDataCaptureConnectionConfiguration *)sinkConfiguration depthDataDeliveryEnabled]& 1) != 0)
  {
    v96 = 0;
  }

  else
  {
    v96 = [objc_msgSend(sourceConfiguration2 "requiredFormat")] ^ 1;
  }

  v97 = v90;
  if ([objc_msgSend(sourceConfiguration2 "requiredFormat")])
  {
    v98 = 0;
  }

  else
  {
    v98 = [objc_msgSend(sourceConfiguration2 "requiredFormat")] ^ 1;
  }

  portraitAutoSuggestEnabled = [v91 portraitAutoSuggestEnabled];
  if (portraitAutoSuggestEnabled)
  {
    v101 = 1;
  }

  else
  {
    portraitAutoSuggestEnabled = [objc_msgSend(sourceConfiguration2 "requiredFormat")];
    v101 = portraitAutoSuggestEnabled;
  }

  if ((v95 | v96 | v98))
  {
    goto LABEL_118;
  }

  portraitAutoSuggestEnabled = [(FigPointCloudDataCaptureConnectionConfiguration *)sinkConfiguration irisMovieCaptureEnabled];
  if (!(v101 & 1 | ((portraitAutoSuggestEnabled & 1) == 0)))
  {
    goto LABEL_118;
  }

  portraitAutoSuggestEnabled = FigVideoCaptureSourceCopySupplementalTimeOfFlightCaptureSource([sourceConfiguration2 source], v496);
  v102 = v496[0];
  if (v496[0])
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_35();
    LODWORD(v341) = v102;
    portraitAutoSuggestEnabled = FigDebugAssert3();
LABEL_118:
    v117 = 0;
LABEL_119:
    v109 = v97;
    v490 = v496[0];
    v110 = 0x1E695D000uLL;
    if (!v496[0])
    {
      if (v117)
      {
        v109 = [MEMORY[0x1E695DF70] arrayWithArray:v109];
        portraitAutoSuggestEnabled = [v109 addObject:v117];
      }

      goto LABEL_122;
    }

LABEL_114:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_35();
LABEL_115:
    FigDebugAssert3();
    return v490;
  }

  v103 = portraitAutoSuggestEnabled;
  if (portraitAutoSuggestEnabled)
  {
    *&v492 = 0;
    v104 = *v31;
    v105 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v105)
    {
      v105(v103, @"AttributesDictionary", v104, &v492);
      v106 = v492;
    }

    else
    {
      v106 = 0;
    }

    v107 = [v106 objectForKeyedSubscript:@"SupportedTimeOfFlightProjectorModes"];
    if ([v107 containsObject:&unk_1F2243798])
    {
      v108 = 3;
    }

    else if ([v107 containsObject:&unk_1F22437B0])
    {
      v108 = 5;
    }

    else
    {
      if (![v107 containsObject:&unk_1F2243780])
      {
        goto LABEL_113;
      }

      v108 = 1;
    }

    v491[0].receiver = 0;
    v111 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v111 || v111(v103, @"Formats", v104, v491) || (v112 = cspc_timeOfFlightFormatWithMaximumPoints(v491[0].receiver), [v112 minSupportedFrameRate], v113 > 0.0))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_35();
      FigDebugAssert3();
    }

    else
    {
      v114 = [[FigCaptureSourceConfiguration alloc] initWithSource:v103];
      v115 = MEMORY[0x1E696AEC0];
      v116 = objc_opt_class();
      -[FigCaptureSourceConfiguration setSourceID:](v114, "setSourceID:", [v115 stringWithFormat:@"<%@: %p>", NSStringFromClass(v116), v103]);
      [(FigCaptureSourceConfiguration *)v114 setRequiredFormat:v112];
      FigCaptureFrameRateFromInt(0);
      OUTLINED_FUNCTION_24_6();
      [(FigCaptureSourceConfiguration *)v114 setRequiredMinFrameRate:?];
      [v112 maxSupportedFrameRate];
      FigCaptureFrameRateFromFloat();
      OUTLINED_FUNCTION_24_6();
      [(FigCaptureSourceConfiguration *)v114 setRequiredMaxFrameRate:?];
      [v112 maxSupportedFrameRate];
      [(FigCaptureSourceConfiguration *)v114 setMaxFrameRateClientOverride:?];

      v117 = objc_alloc_init(FigPointCloudDataCaptureConnectionConfiguration);
      [(FigCaptureConnectionConfiguration *)v117 setMediaType:1885564004];
      [(FigPointCloudDataCaptureConnectionConfiguration *)v117 setProjectorMode:v108];
      v118 = MEMORY[0x1E696AEC0];
      v119 = objc_opt_class();
      v341 = NSStringFromClass(v119);
      v344 = v117;
      -[FigCaptureConnectionConfiguration setConnectionID:](v117, "setConnectionID:", [v118 stringWithFormat:@"<%@: %p>"]);
      [(FigCaptureConnectionConfiguration *)v117 setSourceConfiguration:v114];
      [(FigCaptureConnectionConfiguration *)v117 setUnderlyingDeviceType:10];
      if (v117)
      {
        [(FigPointCloudDataCaptureConnectionConfiguration *)v117 setSupplementalPointCloudData:1];
        [(FigCaptureConnectionConfiguration *)v117 setSinkConfiguration:sinkConfiguration];
        [objc_msgSend(sourceConfiguration2 "requiredFormat")];
        [(FigPointCloudDataCaptureConnectionConfiguration *)v117 setPointCloudOutputDisabled:0];
        CFRelease(v103);
        goto LABEL_119;
      }
    }

LABEL_113:
    v490 = -12780;
    goto LABEL_114;
  }

  v490 = 0;
  v109 = v97;
  v110 = 0x1E695D000;
LABEL_122:
  memset(v476, 0, sizeof(v476));
  v120 = OUTLINED_FUNCTION_13_15(portraitAutoSuggestEnabled, v100, v476, v475);
  v122 = dictionary2;
  if (!v120)
  {
    goto LABEL_154;
  }

  v123 = v120;
  v124 = 0;
  v125 = 0;
  v126 = 0;
  sinkConfiguration = 0;
  do
  {
    v127 = 0;
    do
    {
      OUTLINED_FUNCTION_6_30();
      if (!v129)
      {
        objc_enumerationMutation(v109);
      }

      v128 = *(*(&v476[0] + 1) + 8 * v127);
      if ([objc_msgSend(v128 sourceConfiguration] == 7 || objc_msgSend(objc_msgSend(v128, "sourceConfiguration"), "sourceDeviceType") == 8)
      {
        v129 = [objc_msgSend(v128 "sourceConfiguration")] == 1 && sinkConfiguration == 0;
        if (v129)
        {
          v130 = [objc_msgSend(v128 "sourceConfiguration")];
          sinkConfiguration = v130;
          v126 = 1;
LABEL_138:
          if ((v125 & 1) == 0)
          {
            goto LABEL_139;
          }

          memset(v474, 0, sizeof(v474));
          v120 = OUTLINED_FUNCTION_13_15(v130, v131, v474, v473);
          v122 = dictionary2;
          if (!v120)
          {
            goto LABEL_154;
          }

          v132 = v120;
          while (2)
          {
            v133 = 0;
LABEL_145:
            OUTLINED_FUNCTION_6_30();
            if (!v129)
            {
              objc_enumerationMutation(v109);
            }

            v134 = *(*(&v474[0] + 1) + 8 * v133);
            if ([objc_msgSend(v134 "sourceConfiguration")] == 14)
            {
              [v134 setSourceConfiguration:sinkConfiguration];
              goto LABEL_151;
            }

            if ([objc_msgSend(v134 "sourceConfiguration")] == 7 || (v135 = objc_msgSend(objc_msgSend(v134, "sourceConfiguration"), "sourceDeviceType"), v135 == 8))
            {
LABEL_151:
              [objc_msgSend(v134 "sourceConfiguration")];
              v135 = [objc_msgSend(v134 "sourceConfiguration")];
            }

            if (v132 == ++v133)
            {
              v120 = OUTLINED_FUNCTION_13_15(v135, v136, v474, v473);
              v132 = v120;
              if (!v120)
              {
                goto LABEL_154;
              }

              continue;
            }

            goto LABEL_145;
          }
        }
      }

      v130 = [objc_msgSend(v128 "sourceConfiguration")];
      if (v130 == 14)
      {
        v124 = [objc_msgSend(objc_msgSend(v128 "sourceConfiguration")];
        v130 = [objc_msgSend(v128 "sourceConfiguration")];
        v125 = 1;
      }

      if (v126)
      {
        goto LABEL_138;
      }

LABEL_139:
      ++v127;
    }

    while (v123 != v127);
    v120 = OUTLINED_FUNCTION_13_15(v130, v131, v476, v475);
    v123 = v120;
    v122 = dictionary2;
  }

  while (v120);
LABEL_154:
  v472 = 0u;
  v471 = 0u;
  v470 = 0u;
  v469 = 0u;
  v137 = OUTLINED_FUNCTION_13_15(v120, v121, &v469, v468);
  if (v137)
  {
    v138 = v137;
    sourceConfiguration3 = 0;
    v139 = *v470;
    v140 = dictionary;
    do
    {
      for (m = 0; m != v138; ++m)
      {
        if (*v470 != v139)
        {
          objc_enumerationMutation(v109);
        }

        sinkConfiguration = *(*(&v469 + 1) + 8 * m);
        if (![(FigCaptureConnectionConfiguration *)sinkConfiguration connectionID]|| (v142 = [(FigCaptureConnectionConfiguration *)sinkConfiguration sourceConfiguration], (v143 = [(FigCaptureSourceConfiguration *)v142 sourceID]) == 0))
        {
LABEL_447:
          OUTLINED_FUNCTION_7_5();
          OUTLINED_FUNCTION_0_38();
          FigDebugAssert3();
          OUTLINED_FUNCTION_7_5();
          return FigSignalErrorAtGM();
        }

        v144 = v143;
        if (![dictionary objectForKeyedSubscript:v143])
        {
          [*(v110 + 3952) array];
          [OUTLINED_FUNCTION_36() setObject:? forKeyedSubscript:?];
        }

        sourceType = [objc_msgSend(dictionary objectForKeyedSubscript:{v144), "addObject:", sinkConfiguration}];
        if (sinkConfiguration != v425 && sinkConfiguration != v426)
        {
          if ([(FigCaptureConnectionConfiguration *)sinkConfiguration smartCameraRequired])
          {
            [(FigCaptureSourceConfiguration *)[(FigCaptureConnectionConfiguration *)sinkConfiguration sourceConfiguration] setSmartCameraEnabled:1];
          }

          if ([v422 smartStyleRenderingEnabled] && (-[FigCaptureConnectionConfiguration videoPreviewSinkConfiguration](sinkConfiguration, "videoPreviewSinkConfiguration") || -[FigCaptureConnectionConfiguration videoDataSinkConfiguration](sinkConfiguration, "videoDataSinkConfiguration") || -[FigCaptureConnectionConfiguration movieFileSinkConfiguration](sinkConfiguration, "movieFileSinkConfiguration") || -[FigCaptureConnectionConfiguration stillImageSinkConfiguration](sinkConfiguration, "stillImageSinkConfiguration")))
          {
            [(FigCaptureSourceConfiguration *)[(FigCaptureConnectionConfiguration *)sinkConfiguration sourceConfiguration] setSmartCameraEnabled:1];
          }

          sinkID = [(FigCaptureSinkConfiguration *)[(FigCaptureConnectionConfiguration *)sinkConfiguration sinkConfiguration] sinkID];
          if (!sinkID)
          {
            goto LABEL_447;
          }

          v149 = sinkID;
          if (![v122 objectForKeyedSubscript:sinkID])
          {
            [v122 setObject:objc_msgSend(*(v110 + 3952) forKeyedSubscript:{"array"), v149}];
          }

          sourceType = [objc_msgSend(v122 objectForKeyedSubscript:{v149), "addObject:", sinkConfiguration}];
          if (!sourceConfiguration3)
          {
            sourceType = [(FigCaptureSourceConfiguration *)v142 sourceType];
            if (sourceType == 1)
            {
              v150 = v142;
            }

            else
            {
              v150 = 0;
            }

            sourceConfiguration3 = v150;
          }
        }
      }

      v138 = OUTLINED_FUNCTION_13_15(sourceType, v146, &v469, v468);
    }

    while (v138);
  }

  else
  {
    sourceConfiguration3 = 0;
    v140 = dictionary;
  }

  obja = v109;
  v467 = 0u;
  v466 = 0u;
  v465 = 0u;
  v464 = 0u;
  v380 = OUTLINED_FUNCTION_32_5();
  array3 = 0;
  if (!v380)
  {
    OUTLINED_FUNCTION_23_5();
    goto LABEL_293;
  }

  OUTLINED_FUNCTION_23_5();
  v382 = *v465;
  v394 = 0x1F219FFF0;
  v151 = sourceConfiguration3;
  while (2)
  {
    v152 = 0;
    while (2)
    {
      if (*v465 != v382)
      {
        objc_enumerationMutation(v140);
      }

      v391 = v152;
      v153 = *(*(&v464 + 1) + 8 * v152);
      v154 = [v140 objectForKeyedSubscript:{v153, v341}];
      v155 = [objc_msgSend(v154 "firstObject")];
      sourceType2 = [v155 sourceType];
      switch(sourceType2)
      {
        case 2:
          if (sinkConfiguration)
          {
            goto LABEL_503;
          }

          if (v151 && (v192 = [dictionary objectForKeyedSubscript:{-[FigCaptureSourceConfiguration sourceID](v151, "sourceID")}], memset(v449, 0, sizeof(v449)), (v193 = objc_msgSend(v192, "countByEnumeratingWithState:objects:count:", v449, v448, 16)) != 0))
          {
            v201 = v193;
LABEL_280:
            v202 = 0;
            while (1)
            {
              OUTLINED_FUNCTION_10_18();
              if (!v129)
              {
                objc_enumerationMutation(v192);
              }

              v194 = *(*(&v449[0] + 1) + 8 * v202);
              if ([objc_msgSend(v194 "sinkConfiguration")] == 4)
              {
                [v194 mediaType];
                OUTLINED_FUNCTION_18_11();
                if (v129)
                {
                  break;
                }
              }

              if (v201 == ++v202)
              {
                v201 = [v192 countByEnumeratingWithState:v449 objects:v448 count:16];
                if (v201)
                {
                  goto LABEL_280;
                }

                goto LABEL_262;
              }
            }
          }

          else
          {
LABEL_262:
            v194 = 0;
          }

          v151 = sourceConfiguration3;
          sinkConfiguration = -[FigCaptureSessionParsedMicSourceConfiguration initWithMicConnectionConfigurations:cameraConfigurationForStereoAudioCapture:movieFileVideoConnectionConfigurationForStereoAudioCapture:clientSDKVersionToken:remoteIOOutputFormat:]([FigCaptureSessionParsedMicSourceConfiguration alloc], v154, sourceConfiguration3, v194, [v422 clientSDKVersionToken], objc_msgSend(v155, "remoteIOOutputFormat"));
          goto LABEL_264;
        case 4:
          if (!v427)
          {
            sourceType2 = [*(v110 + 3952) array];
            v427 = sourceType2;
          }

          memset(v447, 0, sizeof(v447));
          v195 = OUTLINED_FUNCTION_21_10(sourceType2, v157, v447, v446);
          v140 = dictionary;
          if (v195)
          {
            v196 = v195;
            do
            {
              for (n = 0; n != v196; ++n)
              {
                OUTLINED_FUNCTION_10_18();
                if (!v129)
                {
                  objc_enumerationMutation(v154);
                }

                v198 = *(*(&v447[0] + 1) + 8 * n);
                if (![v198 formatDescription] || !-[__CFArray count](CMMetadataFormatDescriptionGetIdentifiers(objc_msgSend(v198, "formatDescription")), "count"))
                {
                  OUTLINED_FUNCTION_7_5();
                  OUTLINED_FUNCTION_0_38();
                  FigDebugAssert3();
                  OUTLINED_FUNCTION_7_5();
                  return FigSignalErrorAtGM();
                }

                v199 = [v427 addObject:v198];
              }

              v196 = OUTLINED_FUNCTION_21_10(v199, v200, v447, v446);
            }

            while (v196);
LABEL_278:
            v151 = sourceConfiguration3;
          }

          break;
        case 1:
          if (!array)
          {
            array = [*(v110 + 3952) array];
          }

          *&v492 = 0;
          v158 = -[FigCaptureSessionParsedCameraSourceConfiguration initWithConnectionConfigurations:clientSetsUserInitiatedCaptureRequestTime:smartStyleEnabled:sceneClassifierConnectionConfigurationOut:]([FigCaptureSessionParsedCameraSourceConfiguration alloc], v154, v372, [v422 smartStyleRenderingEnabled], &v492);
          if (v158)
          {
            v159 = v158;
            [array addObject:v158];
            if (v492)
            {
              [dictionary3 setObject:v492 forKeyedSubscript:{objc_msgSend(v155, "sourceID")}];
            }

            v349 = sinkConfiguration;
            v160 = FigCaptureUnderlyingDeviceTypesFromConnectionConfigurations([v159 previewDerivedConnectionConfigurations]);
            memset(v463, 0, 64);
            v161 = [v160 countByEnumeratingWithState:v463 objects:v462 count:16];
            if (v161)
            {
              v162 = v161;
              do
              {
                for (ii = 0; ii != v162; ++ii)
                {
                  OUTLINED_FUNCTION_10_18();
                  if (!v129)
                  {
                    objc_enumerationMutation(v160);
                  }

                  v164 = -[FigCaptureSessionParsedPreviewSinkConfiguration initWithParsedCameraSourceConfiguration:sourceDeviceType:]([FigCaptureSessionParsedPreviewSinkConfiguration alloc], v159, [*(*(&v463[0] + 1) + 8 * ii) intValue]);
                  if (v164)
                  {
                    v166 = v164;
                    array2 = v388;
                    if (!v388)
                    {
                      array2 = [*(v110 + 3952) array];
                    }

                    v388 = array2;
                    v164 = [array2 addObject:v166];
                  }

                  v122 = dictionary2;
                }

                v162 = OUTLINED_FUNCTION_1_0(v164, v165, v463, v462);
              }

              while (v162);
            }

            memset(v461, 0, sizeof(v461));
            videoDataConnectionConfigurations = [v159 videoDataConnectionConfigurations];
            v169 = [videoDataConnectionConfigurations countByEnumeratingWithState:v461 objects:v460 count:16];
            if (v169)
            {
              v170 = v169;
              do
              {
                for (jj = 0; jj != v170; ++jj)
                {
                  OUTLINED_FUNCTION_10_18();
                  if (!v129)
                  {
                    objc_enumerationMutation(videoDataConnectionConfigurations);
                  }

                  v172 = *(*(&v461[0] + 1) + 8 * jj);
                  if ([v172 outputWidth] < 1 || objc_msgSend(v172, "outputHeight") < 1)
                  {
                    return v490;
                  }

                  v173 = [[FigCaptureSessionParsedVideoDataSinkConfiguration alloc] initWithVideoDataConnectionConfiguration:v172];
                  if (!array3)
                  {
                    array3 = [*(v110 + 3952) array];
                  }

                  v174 = [array3 addObject:v173];
                }

                v170 = OUTLINED_FUNCTION_1_0(v174, v175, v461, v460);
              }

              while (v170);
            }

            v459 = 0u;
            v458 = 0u;
            v457 = 0u;
            v456 = 0u;
            metadataObjectConnectionConfigurations = [v159 metadataObjectConnectionConfigurations];
            v406 = [metadataObjectConnectionConfigurations countByEnumeratingWithState:&v456 objects:v455 count:16];
            if (!v406)
            {
              v140 = dictionary;
              goto LABEL_289;
            }

            v403 = *v457;
            while (1)
            {
              v176 = 0;
              v397 = sel_init;
              do
              {
                if (*v457 != v403)
                {
                  objc_enumerationMutation(metadataObjectConnectionConfigurations);
                }

                v418 = *(*(&v456 + 1) + 8 * v176);
                underlyingDeviceType = [v418 underlyingDeviceType];
                v178 = underlyingDeviceType;
                v451 = 0u;
                v452 = 0u;
                v453 = 0u;
                v454 = 0u;
                v180 = OUTLINED_FUNCTION_13_15(underlyingDeviceType, v179, &v451, v450);
                if (v180)
                {
                  v181 = v180;
                  v182 = 0;
                  v183 = *v452;
                  do
                  {
                    for (kk = 0; kk != v181; ++kk)
                    {
                      if (*v452 != v183)
                      {
                        objc_enumerationMutation(array3);
                      }

                      v185 = *(*(&v451 + 1) + 8 * kk);
                      sourceDeviceType = [(NSString *)[(FigCaptureSourceConfiguration *)[(FigCaptureSessionParsedVideoDataSinkConfiguration *)v185 cameraConfiguration] sourceID] isEqualToString:v153];
                      if (sourceDeviceType)
                      {
                        sourceDeviceType = [(FigCaptureSessionParsedVideoDataSinkConfiguration *)v185 sourceDeviceType];
                        if (sourceDeviceType == v178)
                        {
                          if (v182)
                          {
                            videoStabilizationMethod = [(FigVideoCaptureConnectionConfiguration *)[(FigCaptureSessionParsedVideoDataSinkConfiguration *)v185 videoDataConnectionConfiguration] videoStabilizationMethod];
                            sourceDeviceType = [(FigVideoCaptureConnectionConfiguration *)[(FigCaptureSessionParsedVideoDataSinkConfiguration *)v182 videoDataConnectionConfiguration] videoStabilizationMethod];
                            if (videoStabilizationMethod < sourceDeviceType)
                            {
                              v182 = v185;
                            }
                          }

                          else
                          {
                            v182 = v185;
                          }
                        }
                      }
                    }

                    v181 = OUTLINED_FUNCTION_13_15(sourceDeviceType, v187, &v451, v450);
                  }

                  while (v181);
                }

                else
                {
                  v182 = 0;
                }

                if (FigCaptureMetadataObjectConfigurationRequiresFaceTracking(v418))
                {
                  BoolAttribute = FigCaptureSourceGetBoolAttribute([objc_msgSend(v418 "sourceConfiguration")], 0x1F219FFF0, &v490);
                }

                else
                {
                  BoolAttribute = 1;
                }

                v110 = 0x1E695D000uLL;
                v140 = dictionary;
                v122 = dictionary2;
                if (v490)
                {
                  fig_log_get_emitter();
                  OUTLINED_FUNCTION_3_35();
                  goto LABEL_115;
                }

                if (v182)
                {
                  v190 = 1;
                }

                else
                {
                  v190 = BoolAttribute;
                }

                if ((v190 & 1) == 0)
                {
                  v191 = [FigCaptureSessionParsedVideoDataSinkConfiguration alloc];
                  if (v191)
                  {
                    v491[0].receiver = v191;
                    v491[0].super_class = FigCaptureSessionParsedVideoDataSinkConfiguration;
                    v191 = [(objc_super *)v491 init];
                  }

                  v182 = v191;
                  if (!array3)
                  {
                    array3 = [MEMORY[0x1E695DF70] array];
                  }

                  [array3 addObject:v182];
                }

                [(FigCaptureSessionParsedVideoDataSinkConfiguration *)&v182->super.isa _setMetadataObjectConnectionConfiguration:v418];
                ++v176;
              }

              while (v176 != v406);
              v406 = [metadataObjectConnectionConfigurations countByEnumeratingWithState:&v456 objects:v455 count:16];
              if (!v406)
              {
LABEL_289:
                sinkConfiguration = v349;
                goto LABEL_278;
              }
            }
          }

LABEL_503:
          fig_log_get_emitter();
          OUTLINED_FUNCTION_1_47();
          return FigSignalErrorAtGM();
        default:
LABEL_264:
          v140 = dictionary;
          break;
      }

      v152 = v391 + 1;
      if (v391 + 1 != v380)
      {
        continue;
      }

      break;
    }

    v203 = OUTLINED_FUNCTION_32_5();
    v380 = v203;
    if (v203)
    {
      continue;
    }

    break;
  }

LABEL_293:
  v350 = sinkConfiguration;
  v445 = 0u;
  v444 = 0u;
  v443 = 0u;
  v442 = 0u;
  v204 = OUTLINED_FUNCTION_31_7();
  if (!v204)
  {
    OUTLINED_FUNCTION_12_20();
    goto LABEL_431;
  }

  v205 = v204;
  OUTLINED_FUNCTION_12_20();
  v418 = *v443;
LABEL_295:
  v206 = 0;
  v403 = v205;
  while (2)
  {
    if (*v443 != v418)
    {
      objc_enumerationMutation(v122);
    }

    v423 = v206;
    v207 = [v122 objectForKeyedSubscript:{*(*(&v442 + 1) + 8 * v206), v341}];
    firstObject = [v207 firstObject];
    [objc_msgSend(firstObject "sourceConfiguration")];
    v209 = [OUTLINED_FUNCTION_36() objectForKeyedSubscript:?];
    v210 = FigCaptureConnectionConfigurationsFilterWithUnderlyingDeviceType(v209, [firstObject underlyingDeviceType]);
    switch([objc_msgSend(firstObject "sinkConfiguration")])
    {
      case 3u:
        if ([v207 count] != 1)
        {
          goto LABEL_493;
        }

        v211 = FigCaptureConnectionConfigurationWithSinkType(v210, 4);
        v212 = [FigCaptureSessionParsedStillImageSinkConfiguration alloc];
        v435 = firstObject;
        v213 = -[FigCaptureSessionParsedStillImageSinkConfiguration initWithStillImageConnectionConfigurations:movieFileVideoConnectionConfiguration:pointCloudDataConnectionConfiguration:](v212, [MEMORY[0x1E695DEC8] arrayWithObjects:&v435 count:1], v211, 0);
        array4 = v406;
        if (!v406)
        {
          array4 = [MEMORY[0x1E695DF70] array];
        }

        v406 = array4;
        goto LABEL_392;
      case 4u:
        v231 = FigCaptureConnectionConfigurationsFilterWithBlock(v207, &__block_literal_global_298);
        LOBYTE(v491[0].receiver) = 0;
        cspc_getMultiCamClientCompositingEnabledStates(v231, v491, 0);
        if (LOBYTE(v491[0].receiver) == 1)
        {
          if ([v231 count] != 2)
          {
            goto LABEL_471;
          }

          memset(v437, 0, 64);
          v233 = OUTLINED_FUNCTION_21_10(2, v232, v437, v436);
          v234 = 0x1E695D000uLL;
          if (!v233)
          {
            goto LABEL_471;
          }

          v235 = v233;
LABEL_352:
          v236 = 0;
          while (1)
          {
            OUTLINED_FUNCTION_6_30();
            if (!v129)
            {
              objc_enumerationMutation(v231);
            }

            v237 = *(*(&v437[0] + 1) + 8 * v236);
            [objc_msgSend(v237 "movieFileSinkConfiguration")];
            [v237 connectionID];
            v238 = [OUTLINED_FUNCTION_4() isEqualToString:?];
            if (v238)
            {
              break;
            }

            if (v235 == ++v236)
            {
              v235 = OUTLINED_FUNCTION_21_10(v238, v239, v437, v436);
              if (!v235)
              {
                goto LABEL_471;
              }

              goto LABEL_352;
            }
          }

          if (!v237)
          {
            goto LABEL_471;
          }

          if (!sourceConfiguration3)
          {
            sourceConfiguration3 = [v237 sourceConfiguration];
          }

          v247 = [MEMORY[0x1E695DF70] arrayWithArray:v231];
          [v247 removeObject:v237];
          [v247 insertObject:v237 atIndex:0];
          v231 = [MEMORY[0x1E695DEC8] arrayWithArray:v247];
          v122 = dictionary2;
        }

        else
        {
          v234 = 0x1E695D000;
        }

        v248 = FigCaptureConnectionConfigurationWithSourceType(v207, 1);
        [objc_msgSend(v248 "sourceConfiguration")];
        v249 = [OUTLINED_FUNCTION_36() objectForKeyedSubscript:?];
        v250 = FigCaptureConnectionConfigurationsFilterWithUnderlyingDeviceType(v249, [v248 underlyingDeviceType]);
        v251 = FigCaptureConnectionConfigurationWithSinkType(v250, 3);
        if (!v251)
        {
          v251 = FigCaptureConnectionConfigurationWithSinkType(v250, 10);
        }

        v252 = [FigCaptureSessionParsedMovieFileSinkConfiguration initWithCaptureConnectionConfigurations:v207 videoConnectionConfigurations:v231 stillImageConnectionConfiguration:v251 sceneClassifierConnectionConfigurationsBySourceID:?];
        v205 = v403;
        if (!v252)
        {
LABEL_493:
          fig_log_get_emitter();
          OUTLINED_FUNCTION_1_47();
          return FigSignalErrorAtGM();
        }

        v213 = v252;
        array4 = metadataObjectConnectionConfigurations;
        if (!metadataObjectConnectionConfigurations)
        {
          array4 = [*(v234 + 3952) array];
        }

        metadataObjectConnectionConfigurations = array4;
LABEL_392:
        v223 = v213;
LABEL_393:
        [array4 addObject:v223];
LABEL_394:
        v206 = v423 + 1;
        if (v423 + 1 != v205)
        {
          continue;
        }

        v270 = OUTLINED_FUNCTION_31_7();
        v205 = v270;
        if (v270)
        {
          goto LABEL_295;
        }

LABEL_431:
        v278 = OUTLINED_FUNCTION_30_3(v270, v271, v272, v273, v274, v275, v276, v277, v341, v344, v350, v352, v355, v357, v360, v363, v366, v369, v372, v375, v380, v382, dictionary3, v388, v391, v394, v397, metadataObjectConnectionConfigurations, v403, v406, dictionary, dictionary2, obja, v418, array);
        if (v278)
        {
          v279 = v278;
          array5 = 0;
          v280 = MEMORY[0];
          do
          {
            for (mm = 0; mm != v279; ++mm)
            {
              if (MEMORY[0] != v280)
              {
                objc_enumerationMutation(v421);
              }

              v282 = *(8 * mm);
              if (([objc_msgSend(v282 "cameraConfiguration")] & 1) == 0)
              {
                videoPreviewSinkConnectionConfiguration = [v282 videoPreviewSinkConnectionConfiguration];
                previewDepthDataDeliveryEnabled = [videoPreviewSinkConnectionConfiguration previewDepthDataDeliveryEnabled];
                if (!previewDepthDataDeliveryEnabled)
                {
                  continue;
                }

                previewDepthDataDeliveryEnabled = [videoPreviewSinkConnectionConfiguration previewFilterRenderingEnabled];
                if (!previewDepthDataDeliveryEnabled)
                {
                  continue;
                }

                previewDepthDataDeliveryEnabled = FigCaptureConnectionConfigurationWithSinkType([v282 videoCaptureConnectionConfigurations], 4);
                if (!previewDepthDataDeliveryEnabled)
                {
                  continue;
                }
              }

              if (!array5)
              {
                array5 = [MEMORY[0x1E695DF70] array];
              }

              if (!-[FigCaptureSessionParsedCinematographyConfiguration initWithVideoPreviewSinkConnectionConfiguration:videoCaptureConnectionConfigurations:previewConnectionConfigurations:sourceConfiguration:]([FigCaptureSessionParsedCinematographyConfiguration alloc], "initWithVideoPreviewSinkConnectionConfiguration:videoCaptureConnectionConfigurations:previewConnectionConfigurations:sourceConfiguration:", [v282 videoPreviewSinkConnectionConfiguration], objc_msgSend(v282, "videoCaptureConnectionConfigurations"), objc_msgSend(v282, "previewDerivedConnectionConfigurations"), v282))
              {
                goto LABEL_493;
              }

              previewDepthDataDeliveryEnabled = [OUTLINED_FUNCTION_7() addObject:?];
            }

            v279 = OUTLINED_FUNCTION_30_3(previewDepthDataDeliveryEnabled, v284, v285, v286, v287, v288, v289, v290, v342, v345, v351, v353, v356, v358, v361, v364, v367, v371, v374, v376, v381, v384, v386, v389, v393, v396, v398, v402, v404, v407, v410, v413, objb, v419, v421);
          }

          while (v279);
        }

        else
        {
          array5 = 0;
        }

        v84 = v398;
        if (sourceConfiguration3)
        {
          OUTLINED_FUNCTION_29_2();
          v292 = [v421 countByEnumeratingWithState:? objects:? count:?];
          if (v292)
          {
            v293 = v292;
            v294 = MEMORY[0];
            do
            {
              for (nn = 0; nn != v293; ++nn)
              {
                if (MEMORY[0] != v294)
                {
                  objc_enumerationMutation(v421);
                }

                v296 = *(8 * nn);
                [objc_msgSend(v296 "cameraConfiguration")];
                [(FigCaptureSourceConfiguration *)sourceConfiguration3 sourceID];
                if (([OUTLINED_FUNCTION_4() isEqualToString:?] & 1) == 0)
                {
                  [v296 setMultiCamClientCompositingPrimaryCameraVideoStabilizationStrength:{-[FigCaptureSourceConfiguration videoStabilizationStrength](sourceConfiguration3, "videoStabilizationStrength")}];
                }
              }

              OUTLINED_FUNCTION_29_2();
              v293 = [v421 countByEnumeratingWithState:? objects:? count:?];
            }

            while (v293);
          }
        }

        if (v425)
        {
          array6 = [MEMORY[0x1E695DF70] array];
          OUTLINED_FUNCTION_28_4();
          v305 = OUTLINED_FUNCTION_22_7(v297, v298, v299, v300, v301, v302, v303, v304, v342, v345, v351, v353, v356, v358, v361, v364, v367, v371, v374, v376, v381, v384, v386, v389, v393, v396, v398, v402, v404, v407, v410, v413, objb);
          if (!v305)
          {
            goto LABEL_471;
          }

          v306 = v305;
LABEL_464:
          v307 = 0;
          while (1)
          {
            OUTLINED_FUNCTION_10_18();
            if (!v129)
            {
              objc_enumerationMutation(objb);
            }

            v308 = *(8 * v307);
            if ([objc_msgSend(v308 "sourceConfiguration")] == 13 && objc_msgSend(objc_msgSend(v308, "sinkConfiguration"), "sinkType") == 11)
            {
              break;
            }

            if (v306 == ++v307)
            {
              OUTLINED_FUNCTION_28_4();
              v306 = OUTLINED_FUNCTION_22_7(v309, v310, v311, v312, v313, v314, v315, v316, v342, v345, v351, v353, v356, v358, v361, v364, v367, v371, v374, v376, v381, v384, v386, v389, v393, v396, v398, v402, v404, v407, v410, v413, objb);
              if (v306)
              {
                goto LABEL_464;
              }

              goto LABEL_471;
            }
          }

          if (!v308)
          {
            goto LABEL_471;
          }

          v317 = [FigCaptureSessionParsedLiDARDepthPipelineConfiguration alloc];
          [(FigCaptureConnectionConfiguration *)v425 sourceConfiguration];
          [array6 addObject:{objc_msgSend(OUTLINED_FUNCTION_4(), "initWithTimeOfFlightCameraConfiguration:depthDataConnectionConfiguration:")}];
        }

        else
        {
          array6 = 0;
        }

        OUTLINED_FUNCTION_25_6();
        v326 = OUTLINED_FUNCTION_22_7(v318, v319, v320, v321, v322, v323, v324, v325, v342, v345, v351, v353, v356, v358, v361, v364, v367, v371, v374, v376, v381, v384, v386, v389, v393, v396, v398, v402, v404, v407, v410, v413, objb);
        v88 = v390;
        if (v326)
        {
          v327 = v326;
          v328 = 0;
          v329 = MEMORY[0];
LABEL_481:
          v330 = 0;
          while (1)
          {
            if (MEMORY[0] != v329)
            {
              objc_enumerationMutation(obj);
            }

            v331 = *(8 * v330);
            if ([objc_msgSend(v331 "sourceConfiguration")] != 1)
            {
              break;
            }

            v328 |= [objc_msgSend(v331 "sinkConfiguration")] == 4;
            if (v327 == ++v330)
            {
              OUTLINED_FUNCTION_25_6();
              v327 = OUTLINED_FUNCTION_22_7(v332, v333, v334, v335, v336, v337, v338, v339, v343, v346, v348, v354, v355, v359, v362, v365, v368, v370, v373, v377, v379, v383, v387, v390, v392, v395, v399, v401, v405, v408, v411, v414, obj);
              if (v327)
              {
                goto LABEL_481;
              }

              v85 = v368;
              v87 = v408;
              if (v328)
              {
                v89 = 5;
                goto LABEL_489;
              }

              goto LABEL_479;
            }
          }
        }

        v85 = v368;
        v87 = v408;
LABEL_479:
        v355[6] = [obj copy];
        v355[7] = [v421 copy];
        v355[8] = v348;
        v355[9] = [v427 copy];
        v355[10] = [v88 copy];
        v355[11] = [v370 copy];
        v355[12] = [v87 copy];
        v355[13] = [array3 copy];
        v355[14] = [v85 copy];
        v355[15] = [v84 copy];
        v355[16] = [v373 copy];
        v355[17] = [v401 copy];
        v355[18] = [v379 copy];
        v355[19] = [v383 copy];
        v355[20] = [v392 copy];
        v355[21] = [v395 copy];
        v355[23] = [array5 copy];
        v355[22] = [array6 copy];
        [(FigCaptureSessionParsedConfiguration *)v355 _computeVideoStabilizationTypes];
        return v490;
      case 5u:
        if ([v207 count] != 1)
        {
          goto LABEL_493;
        }

        array4 = v380;
        if (!v380)
        {
          array4 = [MEMORY[0x1E695DF70] array];
        }

        v380 = array4;
        goto LABEL_371;
      case 7u:
        if ([v207 count] != 1)
        {
          goto LABEL_493;
        }

        array4 = v382;
        if (!v382)
        {
          array4 = [MEMORY[0x1E695DF70] array];
        }

        v382 = array4;
        goto LABEL_371;
      case 8u:
        if ([v207 count] != 1)
        {
          goto LABEL_493;
        }

        v363 = FigCaptureConnectionConfigurationWithSinkType(v210, 6);
        v360 = FigCaptureConnectionConfigurationWithSinkType(v210, 1);
        v352 = FigCaptureConnectionConfigurationWithSinkType(v210, 11);
        v357 = FigCaptureConnectionConfigurationWithSinkTypeAndMediaType(v210, 4, 1986618469);
        [objc_msgSend(dictionary3 objectForKeyedSubscript:{objc_msgSend(objc_msgSend(firstObject, "sourceConfiguration"), "sourceID")), "underlyingDeviceType"}];
        [firstObject underlyingDeviceType];
        array7 = [MEMORY[0x1E695DF70] array];
        v438 = 0u;
        v439 = 0u;
        v440 = 0u;
        v441 = 0u;
        v216 = OUTLINED_FUNCTION_36_7();
        if (v216)
        {
          v217 = v216;
          do
          {
            for (i1 = 0; i1 != v217; ++i1)
            {
              OUTLINED_FUNCTION_10_18();
              if (!v129)
              {
                objc_enumerationMutation(v210);
              }

              v219 = *(*(&v438 + 1) + 8 * i1);
              if (([objc_msgSend(v219 "sinkConfiguration")] == 4 || objc_msgSend(objc_msgSend(v219, "sinkConfiguration"), "sinkType") == 10) && objc_msgSend(v219, "mediaType") == 1835365473 && FigMetadataItemConnectionConfigurationRequiresObjectDetection(v219))
              {
                [array7 addObject:v219];
              }
            }

            v217 = OUTLINED_FUNCTION_36_7();
          }

          while (v217);
        }

        v220 = [FigCaptureSessionParsedMetadataSinkConfiguration initWithMetadataObjectConnectionConfiguration:? sceneClassifierConnectionConfiguration:? videoDataConnectionConfiguration:? videoPreviewSinkConnectionConfiguration:? movieFileVideoConnectionConfiguration:? movieFileDetectedObjectMetadataConnectionConfigurations:?];
        array8 = v372;
        if (!v372)
        {
          array8 = [MEMORY[0x1E695DF70] array];
        }

        v372 = array8;
        [array8 addObject:v220];
        v122 = dictionary2;
        v205 = v403;
        if (!FigCaptureMetadataObjectConfigurationRequiresFaceTracking(firstObject) || ![objc_msgSend(firstObject "sourceConfiguration")] || v352)
        {
          goto LABEL_394;
        }

        array9 = v397;
        if (!v397)
        {
          array9 = [MEMORY[0x1E695DF70] array];
        }

        v223 = [[FigCaptureSessionParsedDepthDataSinkConfiguration alloc] initWithDepthDataConnectionConfiguration:v363 videoDataConnectionConfiguration:firstObject metadataObjectConnectionConfiguration:?];
        v397 = array9;
        array4 = array9;
        goto LABEL_393;
      case 0xAu:
        array10 = [MEMORY[0x1E695DF70] array];
        v431 = 0u;
        v432 = 0u;
        v433 = 0u;
        v434 = 0u;
        v225 = OUTLINED_FUNCTION_34_6();
        if (v225)
        {
          v226 = v225;
          v227 = 0;
          v228 = *v432;
          do
          {
            for (i2 = 0; i2 != v226; ++i2)
            {
              if (*v432 != v228)
              {
                objc_enumerationMutation(v207);
              }

              v230 = *(*(&v431 + 1) + 8 * i2);
              if ([(FigCaptureConnectionConfiguration *)v230 mediaType]== 1986618469)
              {
                [array10 addObject:v230];
              }

              else
              {
                [(FigCaptureConnectionConfiguration *)v230 mediaType];
                OUTLINED_FUNCTION_17_10();
                if (v129)
                {
                  v227 = v230;
                }
              }
            }

            v226 = OUTLINED_FUNCTION_34_6();
          }

          while (v226);
        }

        else
        {
          v227 = 0;
        }

        if (v426)
        {
          v253 = v426;
        }

        else
        {
          v253 = v227;
        }

        if (![array10 count])
        {
          goto LABEL_493;
        }

        LOBYTE(v491[0].receiver) = 0;
        cspc_getMultiCamClientCompositingEnabledStates(v207, 0, v491);
        if (LOBYTE(v491[0].receiver) == 1)
        {
          if ([array10 count] != 2)
          {
            goto LABEL_471;
          }

          memset(v430, 0, 64);
          v255 = OUTLINED_FUNCTION_21_10(2, v254, v430, v429);
          if (!v255)
          {
            goto LABEL_471;
          }

          v256 = v255;
LABEL_405:
          v257 = 0;
          while (1)
          {
            OUTLINED_FUNCTION_6_30();
            if (!v129)
            {
              objc_enumerationMutation(array10);
            }

            firstObject2 = *(*(&v430[0] + 1) + 8 * v257);
            [objc_msgSend(firstObject2 "irisSinkConfiguration")];
            [firstObject2 connectionID];
            v259 = [OUTLINED_FUNCTION_4() isEqualToString:?];
            if (v259)
            {
              break;
            }

            if (v256 == ++v257)
            {
              v256 = OUTLINED_FUNCTION_21_10(v259, v260, v430, v429);
              if (!v256)
              {
                goto LABEL_471;
              }

              goto LABEL_405;
            }
          }

          if (!firstObject2)
          {
LABEL_471:
            OUTLINED_FUNCTION_7_5();
            OUTLINED_FUNCTION_0_38();
            FigDebugAssert3();
            OUTLINED_FUNCTION_7_5();
            return FigSignalErrorAtGM();
          }

          [array10 removeObject:firstObject2];
          [array10 insertObject:firstObject2 atIndex:0];
        }

        else
        {
          firstObject2 = [array10 firstObject];
        }

        v261 = [objc_msgSend(firstObject2 "irisSinkConfiguration")];
        v262 = firstObject2;
        if ((v261 & 1) == 0)
        {
          v263 = FigCaptureConnectionConfigurationsFilterWithUnderlyingDeviceType([dictionary objectForKeyedSubscript:{objc_msgSend(objc_msgSend(firstObject2, "sourceConfiguration"), "sourceID")}], objc_msgSend(firstObject2, "underlyingDeviceType"));
          v262 = FigCaptureConnectionConfigurationWithSinkType(v263, 4);
        }

        v264 = [[FigCaptureSessionParsedStillImageSinkConfiguration alloc] initWithStillImageConnectionConfigurations:array10 movieFileVideoConnectionConfiguration:v262 pointCloudDataConnectionConfiguration:v253];
        array11 = v406;
        if (!v406)
        {
          array11 = [MEMORY[0x1E695DF70] array];
        }

        [array11 addObject:v264];
        v406 = array11;
        if (v261)
        {
          if (metadataObjectConnectionConfigurations)
          {
            goto LABEL_493;
          }

          v266 = [FigCaptureSessionParsedMovieFileSinkConfiguration alloc];
          v428 = v262;
          [MEMORY[0x1E695DEC8] arrayWithObjects:&v428 count:1];
          v267 = OUTLINED_FUNCTION_4();
          v269 = [FigCaptureSessionParsedMovieFileSinkConfiguration initWithCaptureConnectionConfigurations:v267 videoConnectionConfigurations:v207 stillImageConnectionConfiguration:v268 sceneClassifierConnectionConfigurationsBySourceID:firstObject2];
          metadataObjectConnectionConfigurations = [MEMORY[0x1E695DF70] array];
          [metadataObjectConnectionConfigurations addObject:v269];
        }

        v122 = dictionary2;
        v205 = v403;
        goto LABEL_394;
      case 0xBu:
        if ([v207 count] != 1)
        {
          goto LABEL_493;
        }

        v240 = FigCaptureConnectionConfigurationWithSinkType(v210, 6);
        v241 = FigCaptureConnectionConfigurationWithSinkType(v210, 8);
        v213 = [[FigCaptureSessionParsedDepthDataSinkConfiguration alloc] initWithDepthDataConnectionConfiguration:firstObject videoDataConnectionConfiguration:v240 metadataObjectConnectionConfiguration:v241];
        array4 = v397;
        if (!v397)
        {
          array4 = [MEMORY[0x1E695DF70] array];
        }

        v397 = array4;
        goto LABEL_392;
      case 0xCu:
        if ([v207 count] != 1)
        {
          goto LABEL_493;
        }

        array4 = v369;
        if (!v369)
        {
          array4 = [MEMORY[0x1E695DF70] array];
        }

        v369 = array4;
        goto LABEL_371;
      case 0xDu:
        if ([v207 count] != 1)
        {
          goto LABEL_493;
        }

        v242 = [objc_msgSend(firstObject "sourceConfiguration")];
        v243 = FigCaptureConnectionConfigurationWithSinkType(v210, 6);
        if (v242 <= 9 && ((1 << v242) & 0x310) != 0)
        {
          [objc_msgSend(firstObject "sourceConfiguration")];
          v245 = [OUTLINED_FUNCTION_36() objectForKeyedSubscript:?];
          v246 = FigCaptureConnectionConfigurationsFilterWithUnderlyingDeviceType(v245, v242);
          v243 = FigCaptureConnectionConfigurationWithSinkType(v246, 6);
        }

        if (!v243)
        {
          goto LABEL_471;
        }

        v213 = [[FigCaptureSessionParsedVisionDataSinkConfiguration alloc] initWithVisionDataConnectionConfiguration:firstObject videoDataConnectionConfiguration:v243];
        array4 = v366;
        if (!v366)
        {
          array4 = [MEMORY[0x1E695DF70] array];
        }

        v366 = array4;
        goto LABEL_392;
      case 0xFu:
        if ([v207 count] != 1)
        {
          goto LABEL_493;
        }

        array4 = v391;
        if (!v391)
        {
          array4 = [MEMORY[0x1E695DF70] array];
        }

        v391 = array4;
        goto LABEL_371;
      case 0x10u:
        if ([v207 count] != 1)
        {
          goto LABEL_493;
        }

        array4 = v394;
        if (!v394)
        {
          array4 = [MEMORY[0x1E695DF70] array];
        }

        v394 = array4;
LABEL_371:
        v223 = firstObject;
        goto LABEL_393;
      default:
        goto LABEL_394;
    }
  }
}

- (void)initWithSessionConfiguration:(uint64_t)a1 clientSetsUserInitiatedCaptureRequestTime:(void *)a2 restrictions:.cold.1(uint64_t a1, void *a2)
{
  fig_log_get_emitter();
  FigDebugAssert3();
}

@end