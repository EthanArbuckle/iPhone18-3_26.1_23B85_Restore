@interface FigCaptureSessionParsedConfigurationRestrictions
- (FigCaptureSessionParsedConfigurationRestrictions)initWithAllowedAVMediaTypes:(id)a3 clientIsNonStandard:(BOOL)a4;
- (FigCaptureSessionParsedConfigurationRestrictions)initWithClientAuditToken:(id *)a3;
- (uint64_t)_parseRestrictionsWithAllowedAVMediaTypes:(int)a3 clientIsNonStandard:;
- (void)dealloc;
@end

@implementation FigCaptureSessionParsedConfigurationRestrictions

- (FigCaptureSessionParsedConfigurationRestrictions)initWithClientAuditToken:(id *)a3
{
  v4 = *MEMORY[0x1E695E480];
  v5 = *&a3->var0[4];
  *v11.val = *a3->var0;
  *&v11.val[4] = v5;
  v6 = SecTaskCreateWithAuditToken(v4, &v11);
  if (v6)
  {
    v7 = v6;
    v8 = FigCaptureClientIsNonStandardWithSecTask(v6) != 0;
    v9 = SecTaskCopyValueForEntitlement(v7, @"com.apple.private.avfoundation.capture.nonstandard-client.allowed-media-types", 0);
    self = [(FigCaptureSessionParsedConfigurationRestrictions *)self initWithAllowedAVMediaTypes:v9 clientIsNonStandard:v8];
    CFRelease(v7);
  }

  else
  {
    [FigCaptureSessionParsedConfigurationRestrictions initWithClientAuditToken:];
    v9 = 0;
  }

  return self;
}

- (FigCaptureSessionParsedConfigurationRestrictions)initWithAllowedAVMediaTypes:(id)a3 clientIsNonStandard:(BOOL)a4
{
  v4 = a4;
  v9.receiver = self;
  v9.super_class = FigCaptureSessionParsedConfigurationRestrictions;
  v6 = [(FigCaptureSessionParsedConfigurationRestrictions *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(FigCaptureSessionParsedConfigurationRestrictions *)v6 _parseRestrictionsWithAllowedAVMediaTypes:a3 clientIsNonStandard:v4];
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureSessionParsedConfigurationRestrictions;
  [(FigCaptureSessionParsedConfigurationRestrictions *)&v3 dealloc];
}

- (uint64_t)_parseRestrictionsWithAllowedAVMediaTypes:(int)a3 clientIsNonStandard:
{
  if (result)
  {
    v3 = a2;
    v4 = result;
    if (a2)
    {
      v5 = a3;
    }

    else
    {
      v5 = 0;
    }

    if (v5 == 1)
    {
      v40 = result;
      v42 = [MEMORY[0x1E695DF70] array];
      v79 = [MEMORY[0x1E695DF70] array];
      objc_opt_class();
      obj = v3;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_29:
        v4 = v40;
        *(v40 + 8) = 0;
        v38 = v42;
        [v42 removeAllObjects];
        v39 = v79;
        [v79 removeAllObjects];
LABEL_32:
        *(v4 + 16) = [v38 copy];
        result = [v39 copy];
        *(v4 + 24) = result;
        return result;
      }

      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v41 = [v3 countByEnumeratingWithState:&v96 objects:v95 count:16];
      if (v41)
      {
        v43 = *v97;
        v78 = *off_1E798D0E8;
        v77 = *MEMORY[0x1E6962960];
        v76 = *MEMORY[0x1E6960368];
        v74 = *MEMORY[0x1E6962970];
        v75 = *MEMORY[0x1E6962968];
        v72 = *MEMORY[0x1E6962980];
        v73 = *MEMORY[0x1E6962978];
        v70 = *MEMORY[0x1E6960378];
        v71 = *MEMORY[0x1E6962988];
        v68 = *MEMORY[0x1E6962998];
        v69 = *MEMORY[0x1E6962990];
        v66 = *MEMORY[0x1E6960390];
        v67 = *MEMORY[0x1E6960388];
        v64 = *MEMORY[0x1E69629A0];
        v65 = *off_1E798D0D0;
        v62 = *MEMORY[0x1E69629D8];
        v63 = *MEMORY[0x1E69629A8];
        v60 = *MEMORY[0x1E69629B8];
        v61 = *MEMORY[0x1E69629B0];
        v58 = *off_1E798D0F8;
        v59 = *off_1E798D0F0;
        v56 = *off_1E798D108;
        v57 = *off_1E798D100;
        v54 = *off_1E798D110;
        v55 = *off_1E798D118;
        v52 = *off_1E798D120;
        v53 = *MEMORY[0x1E6960398];
        v50 = *MEMORY[0x1E69629E8];
        v51 = *off_1E798D148;
        v49 = *MEMORY[0x1E69629C0];
        v48 = *off_1E798D150;
        v47 = *off_1E798D0E0;
        v6 = *MEMORY[0x1E6960370];
        v7 = *MEMORY[0x1E6960380];
        v8 = *off_1E798D0D8;
        v9 = *off_1E798D128;
        v10 = *off_1E798D130;
        v11 = *off_1E798D140;
        while (2)
        {
          v12 = 0;
          do
          {
            if (*v97 != v43)
            {
              objc_enumerationMutation(v3);
            }

            v45 = v12;
            v13 = *(*(&v96 + 1) + 8 * v12);
            v14 = [v3 objectForKeyedSubscript:v13];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if ([v14 BOOLValue])
              {
                v15 = [&unk_1F224AA18 objectForKeyedSubscript:v13];
                if (!v15)
                {
                  goto LABEL_29;
                }

                [v42 addObject:v15];
              }
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0 || ![v13 isEqualToString:@"AVMediaTypeMetadataObject"])
              {
                goto LABEL_29;
              }

              v16 = [v42 addObject:&unk_1F22436C0];
              v24 = OUTLINED_FUNCTION_35_6(v16, v17, v18, v19, v20, v21, v22, v23, v40, v41, v42, v43, obj, v45, v14, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94);
              if (v24)
              {
                v25 = v24;
LABEL_20:
                v26 = 0;
                while (1)
                {
                  OUTLINED_FUNCTION_6_30();
                  if (!v27)
                  {
                    objc_enumerationMutation(v46);
                  }

                  v28 = *(8 * v26);
                  v100[0] = @"AVMetadataObjectTypeAppClipCode";
                  v100[1] = @"AVMetadataObjectTypeAztecCode";
                  v101[0] = v78;
                  v101[1] = v77;
                  v100[2] = @"AVMetadataObjectTypeCatBody";
                  v100[3] = @"AVMetadataObjectTypeCode128Code";
                  v101[2] = v76;
                  v101[3] = v75;
                  v100[4] = @"AVMetadataObjectTypeCode39Code";
                  v100[5] = @"AVMetadataObjectTypeCode39Mod43Code";
                  v101[4] = v74;
                  v101[5] = v73;
                  v100[6] = @"AVMetadataObjectTypeCode93Code";
                  v100[7] = @"AVMetadataObjectTypeDataMatrixCode";
                  v101[6] = v72;
                  v101[7] = v71;
                  v100[8] = @"AVMetadataObjectTypeDogBody";
                  v100[9] = @"AVMetadataObjectTypeEAN13Code";
                  v101[8] = v70;
                  v101[9] = v69;
                  v100[10] = @"AVMetadataObjectTypeEAN8Code";
                  v100[11] = @"AVMetadataObjectTypeFace";
                  v101[10] = v68;
                  v101[11] = v67;
                  v100[12] = @"AVMetadataObjectTypeHumanBody";
                  v100[13] = @"AVMetadataObjectTypeHumanFullBody";
                  v101[12] = v66;
                  v101[13] = v65;
                  v100[14] = @"AVMetadataObjectTypeInterleaved2of5Code";
                  v100[15] = @"AVMetadataObjectTypeITF14Code";
                  v101[14] = v64;
                  v101[15] = v63;
                  v100[16] = @"AVMetadataObjectTypeOfflineVideoStabilizationMotion";
                  v100[17] = @"AVMetadataObjectTypePDF417Code";
                  v101[16] = v62;
                  v101[17] = v61;
                  v100[18] = @"AVMetadataObjectTypeQRCode";
                  v100[19] = @"AVMetadataObjectTypeCodabarCode";
                  v101[18] = v60;
                  v101[19] = v59;
                  v100[20] = @"AVMetadataObjectTypeGS1DataBarCode";
                  v100[21] = @"AVMetadataObjectTypeGS1DataBarExpandedCode";
                  v101[20] = v58;
                  v101[21] = v57;
                  v100[22] = @"AVMetadataObjectTypeGS1DataBarLimitedCode";
                  v100[23] = @"AVMetadataObjectTypeMicroQRCode";
                  v101[22] = v56;
                  v101[23] = v55;
                  v100[24] = @"AVMetadataObjectTypeMicroPDF417Code";
                  v100[25] = @"AVMetadataObjectTypeSalientObject";
                  v101[24] = v54;
                  v101[25] = v53;
                  v100[26] = @"AVMetadataObjectTypeTextRegion";
                  v100[27] = @"AVMetadataObjectTypeSceneClassification";
                  v101[26] = v52;
                  v101[27] = v51;
                  v100[28] = @"AVMetadataObjectTypeTrackedFaces";
                  v100[29] = @"AVMetadataObjectTypeUPCECode";
                  v101[28] = v50;
                  v101[29] = v49;
                  v100[30] = @"AVMetadataObjectTypeVideoPreviewHistogram";
                  v100[31] = @"AVMetadataObjectTypeHumanHead";
                  v101[30] = v48;
                  v101[31] = v47;
                  v100[32] = @"AVMetadataObjectTypeCatHead";
                  v100[33] = @"AVMetadataObjectTypeDogHead";
                  v101[32] = v6;
                  v101[33] = v7;
                  v100[34] = @"AVMetadataObjectTypeHumanHand";
                  v100[35] = @"AVMetadataObjectTypeEyeReliefStatus";
                  v101[34] = v8;
                  v101[35] = v9;
                  v100[36] = @"AVMetadataObjectTypeFaceIDReadiness";
                  v100[37] = @"AVMetadataObjectTypeMotionToWake";
                  v101[36] = v10;
                  v101[37] = v11;
                  v29 = [objc_msgSend(MEMORY[0x1E695DF20] dictionaryWithObjects:v101 forKeys:v100 count:{38), "objectForKeyedSubscript:", v28}];
                  if (!v29)
                  {
                    goto LABEL_29;
                  }

                  v30 = [v79 addObject:v29];
                  if (v25 == ++v26)
                  {
                    v25 = OUTLINED_FUNCTION_35_6(v30, v31, v32, v33, v34, v35, v36, v37, v40, v41, v42, v43, obj, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94);
                    if (v25)
                    {
                      goto LABEL_20;
                    }

                    break;
                  }
                }
              }
            }

            v3 = obj;
            v12 = v45 + 1;
          }

          while (v45 + 1 != v41);
          v41 = [obj countByEnumeratingWithState:&v96 objects:v95 count:16];
          if (v41)
          {
            continue;
          }

          break;
        }

        v4 = v40;
        *(v40 + 8) = 0;
        v38 = v42;
        v39 = v79;
        goto LABEL_32;
      }

      v4 = v40;
      v38 = v42;
      v39 = v79;
    }

    else
    {
      v39 = 0;
      v38 = 0;
    }

    *(v4 + 8) = v5 ^ 1;
    goto LABEL_32;
  }

  return result;
}

- (uint64_t)initWithClientAuditToken:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

@end