@interface PVColorSpace(JFX)
+ (id)JFX_nclcDictionaryForColorSpace:()JFX;
+ (id)jfx_getColorSpaceFromCGColorSpace:()JFX;
+ (id)jfx_getColorSpaceFromCaptureColorSpace:()JFX;
+ (id)jfx_getColorSpaceFromColorPrimaries:()JFX transferFunction:matrix:;
+ (uint64_t)JFX_compareTriplets:()JFX transferFunction:matrix:validNCLCTriplets:;
+ (uint64_t)JFX_isP3D65:()JFX transferFunction:matrix:;
+ (uint64_t)JFX_isP3HLG:()JFX transferFunction:matrix:;
+ (uint64_t)JFX_isP3PQ:()JFX transferFunction:matrix:;
+ (uint64_t)JFX_isRec2020Linear:()JFX transferFunction:matrix:;
+ (uint64_t)JFX_isRec2100HLG:()JFX transferFunction:matrix:;
+ (uint64_t)JFX_isRec2100PQ:()JFX transferFunction:matrix:;
+ (uint64_t)JFX_isRec601Gamma:()JFX transferFunction:matrix:;
+ (uint64_t)JFX_isRec709Gamma:()JFX transferFunction:matrix:;
+ (uint64_t)JFX_isRec709Linear:()JFX transferFunction:matrix:;
+ (uint64_t)JFX_isSRGBColorSpace:()JFX transferFunction:matrix:;
+ (uint64_t)jfx_getColorSpaceFromImageBuffer:()JFX;
+ (uint64_t)jfx_getColorSpaceFromPixelBuffer:()JFX;
+ (void)jfx_compareAndChooseGreaterColorSpace:()JFX right:;
+ (void)jfx_compareAndChooseLesserColorSpace:()JFX right:;
- (id)jfx_videoExportColorSpace;
- (uint64_t)jfx_getCVPixelFormatForDisplay;
- (uint64_t)jfx_getCVPixelFormatForExport;
- (void)jfx_attachColorSpaceToPixelBuffer:()JFX;
@end

@implementation PVColorSpace(JFX)

+ (id)jfx_getColorSpaceFromColorPrimaries:()JFX transferFunction:matrix:
{
  if ([MEMORY[0x277D415E0] JFX_isRec709Gamma:? transferFunction:? matrix:?])
  {
    rec709GammaColorSpace = [MEMORY[0x277D415E0] rec709GammaColorSpace];
  }

  else if ([MEMORY[0x277D415E0] JFX_isP3D65:a3 transferFunction:a4 matrix:a5])
  {
    rec709GammaColorSpace = [MEMORY[0x277D415E0] p3d65GammaColorSpace];
  }

  else if ([MEMORY[0x277D415E0] JFX_isSRGBColorSpace:a3 transferFunction:a4 matrix:a5])
  {
    rec709GammaColorSpace = [MEMORY[0x277D415E0] sRGBColorSpace];
  }

  else if ([MEMORY[0x277D415E0] JFX_isRec601Gamma:a3 transferFunction:a4 matrix:a5])
  {
    rec709GammaColorSpace = [MEMORY[0x277D415E0] rec601_1_1_6_GammaColorSpace];
  }

  else if ([MEMORY[0x277D415E0] JFX_isRec709Linear:a3 transferFunction:a4 matrix:a5])
  {
    rec709GammaColorSpace = [MEMORY[0x277D415E0] rec709LinearColorSpace];
  }

  else if ([MEMORY[0x277D415E0] JFX_isP3HLG:a3 transferFunction:a4 matrix:a5])
  {
    rec709GammaColorSpace = [MEMORY[0x277D415E0] p3HLGGammaColorSpace];
  }

  else if ([MEMORY[0x277D415E0] JFX_isP3PQ:a3 transferFunction:a4 matrix:a5])
  {
    rec709GammaColorSpace = [MEMORY[0x277D415E0] p3PQGammaColorSpace];
  }

  else if ([MEMORY[0x277D415E0] JFX_isRec2100HLG:a3 transferFunction:a4 matrix:a5])
  {
    rec709GammaColorSpace = [MEMORY[0x277D415E0] rec2100HLGColorSpace];
  }

  else if ([MEMORY[0x277D415E0] JFX_isRec2100PQ:a3 transferFunction:a4 matrix:a5])
  {
    rec709GammaColorSpace = [MEMORY[0x277D415E0] rec2100PQColorSpace];
  }

  else if ([MEMORY[0x277D415E0] JFX_isRec2020Linear:a3 transferFunction:a4 matrix:a5])
  {
    rec709GammaColorSpace = [MEMORY[0x277D415E0] rec2020LinearColorSpace];
  }

  else
  {
    v9 = JFXLog_core();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [PVColorSpace(JFX) jfx_getColorSpaceFromColorPrimaries:v9 transferFunction:? matrix:?];
    }

    rec709GammaColorSpace = 0;
  }

  return rec709GammaColorSpace;
}

+ (uint64_t)jfx_getColorSpaceFromPixelBuffer:()JFX
{
  v4 = CVBufferCopyAttachments(buffer, kCVAttachmentMode_ShouldPropagate);
  Value = CFDictionaryGetValue(v4, *MEMORY[0x277CC4C00]);
  v6 = CFDictionaryGetValue(v4, *MEMORY[0x277CC4CC0]);
  v7 = CFDictionaryGetValue(v4, *MEMORY[0x277CC4D10]);
  if (v4)
  {
    CFRelease(v4);
  }

  return [self jfx_getColorSpaceFromColorPrimaries:Value transferFunction:v6 matrix:v7];
}

+ (uint64_t)jfx_getColorSpaceFromImageBuffer:()JFX
{
  cvPixelBuffer = [a3 cvPixelBuffer];
  v4 = MEMORY[0x277D415E0];

  return [v4 jfx_getColorSpaceFromPixelBuffer:cvPixelBuffer];
}

+ (id)jfx_getColorSpaceFromCaptureColorSpace:()JFX
{
  if (a3 == 2)
  {
    rec2100HLGColorSpace = [MEMORY[0x277D415E0] rec2100HLGColorSpace];
  }

  else
  {
    if (a3 == 1)
    {
      [MEMORY[0x277D415E0] p3d65GammaColorSpace];
    }

    else
    {
      [MEMORY[0x277D415E0] rec709GammaColorSpace];
    }
    rec2100HLGColorSpace = ;
  }

  return rec2100HLGColorSpace;
}

+ (id)jfx_getColorSpaceFromCGColorSpace:()JFX
{
  if (jfx_getColorSpaceFromCGColorSpace__onceToken != -1)
  {
    +[PVColorSpace(JFX) jfx_getColorSpaceFromCGColorSpace:];
  }

  v4 = CGColorSpaceGetName(space);
  v5 = [jfx_getColorSpaceFromCGColorSpace__s_HDRColorSpaceLookup objectForKeyedSubscript:v4];
  if (!v5)
  {
    if (CGColorSpaceIsWideGamutRGB(space))
    {
      p3d65GammaColorSpace = [MEMORY[0x277D415E0] p3d65GammaColorSpace];
    }

    else
    {
      if ([v4 isEqualToString:*MEMORY[0x277CBF488]])
      {
        [MEMORY[0x277D415E0] rec709GammaColorSpace];
      }

      else
      {
        [MEMORY[0x277D415E0] sRGBColorSpace];
      }
      p3d65GammaColorSpace = ;
    }

    v5 = p3d65GammaColorSpace;
  }

  return v5;
}

+ (void)jfx_compareAndChooseGreaterColorSpace:()JFX right:
{
  v5 = a3;
  v6 = a4;
  v7 = __65__PVColorSpace_JFX__jfx_compareAndChooseGreaterColorSpace_right___block_invoke(v6, v5);
  if (v7 >= __65__PVColorSpace_JFX__jfx_compareAndChooseGreaterColorSpace_right___block_invoke(v7, v6))
  {
    v8 = v5;
  }

  else
  {
    v8 = v6;
  }

  v9 = v8;

  return v8;
}

+ (void)jfx_compareAndChooseLesserColorSpace:()JFX right:
{
  v5 = MEMORY[0x277D415E0];
  v6 = a4;
  v7 = a3;
  v8 = [v5 jfx_compareAndChooseGreaterColorSpace:v7 right:v6];
  if (v8 == v6)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  v10 = v9;

  return v9;
}

- (uint64_t)jfx_getCVPixelFormatForDisplay
{
  v2 = 1111970369;
  if (([self isP3d65GammaColorSpace] & 1) == 0)
  {
    v2 = 2016686640;
    if (([self isWideGamutSpace] & 1) == 0)
    {
      if ([self isHDRSpace])
      {
        return 2016686640;
      }

      else
      {
        return 1111970369;
      }
    }
  }

  return v2;
}

- (uint64_t)jfx_getCVPixelFormatForExport
{
  if ([self isHDRSpace])
  {
    return 2016686640;
  }

  else
  {
    return 875704438;
  }
}

- (void)jfx_attachColorSpaceToPixelBuffer:()JFX
{
  nclcTriplet = [self nclcTriplet];
  CVBufferSetAttachment(a3, *MEMORY[0x277CC4C00], [nclcTriplet colorPrimary], kCVAttachmentMode_ShouldPropagate);
  CVBufferSetAttachment(a3, *MEMORY[0x277CC4CC0], [nclcTriplet transferFunction], kCVAttachmentMode_ShouldPropagate);
  CVBufferSetAttachment(a3, *MEMORY[0x277CC4D10], [nclcTriplet ycbcrMatrix], kCVAttachmentMode_ShouldPropagate);
}

- (id)jfx_videoExportColorSpace
{
  if ([self isHDRSpace])
  {
    rec2100HLGColorSpace = [MEMORY[0x277D415E0] rec2100HLGColorSpace];
  }

  else
  {
    if ([self isWideGamutSpace])
    {
      [MEMORY[0x277D415E0] p3d65GammaColorSpace];
    }

    else
    {
      [MEMORY[0x277D415E0] rec709GammaColorSpace];
    }
    rec2100HLGColorSpace = ;
  }

  return rec2100HLGColorSpace;
}

+ (uint64_t)JFX_compareTriplets:()JFX transferFunction:matrix:validNCLCTriplets:
{
  v9 = a6;
  v10 = [v9 objectForKeyedSubscript:@"ColorPrimaries"];
  v11 = [v10 containsObject:a3];

  v12 = [v9 objectForKeyedSubscript:@"TransferFunctions"];
  v13 = [v12 containsObject:a4];

  if (a5)
  {
    v14 = [v9 objectForKeyedSubscript:@"Matrices"];
    v15 = [v14 containsObject:a5];
  }

  else
  {
    v15 = 1;
  }

  return v11 & v13 & v15;
}

+ (id)JFX_nclcDictionaryForColorSpace:()JFX
{
  v13[3] = *MEMORY[0x277D85DE8];
  nclcTriplet = [a3 nclcTriplet];
  v12[0] = @"ColorPrimaries";
  colorPrimary = [nclcTriplet colorPrimary];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:&colorPrimary count:1];
  v13[0] = v4;
  v12[1] = @"TransferFunctions";
  transferFunction = [nclcTriplet transferFunction];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&transferFunction count:1];
  v13[1] = v5;
  v12[2] = @"Matrices";
  ycbcrMatrix = [nclcTriplet ycbcrMatrix];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&ycbcrMatrix count:1];
  v13[2] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];

  return v7;
}

+ (uint64_t)JFX_isRec709Gamma:()JFX transferFunction:matrix:
{
  v8 = MEMORY[0x277D415E0];
  rec709GammaColorSpace = [MEMORY[0x277D415E0] rec709GammaColorSpace];
  v10 = [v8 JFX_nclcDictionaryForColorSpace:rec709GammaColorSpace];

  v11 = [MEMORY[0x277D415E0] JFX_compareTriplets:a3 transferFunction:a4 matrix:a5 validNCLCTriplets:v10];
  return v11;
}

+ (uint64_t)JFX_isSRGBColorSpace:()JFX transferFunction:matrix:
{
  v8 = MEMORY[0x277D415E0];
  sRGBColorSpace = [MEMORY[0x277D415E0] sRGBColorSpace];
  v10 = [v8 JFX_nclcDictionaryForColorSpace:sRGBColorSpace];

  v11 = [MEMORY[0x277D415E0] JFX_compareTriplets:a3 transferFunction:a4 matrix:a5 validNCLCTriplets:v10];
  return v11;
}

+ (uint64_t)JFX_isP3D65:()JFX transferFunction:matrix:
{
  v22[3] = *MEMORY[0x277D85DE8];
  p3d65GammaColorSpace = [MEMORY[0x277D415E0] p3d65GammaColorSpace];
  nclcTriplet = [p3d65GammaColorSpace nclcTriplet];

  v21[0] = @"ColorPrimaries";
  colorPrimary = [nclcTriplet colorPrimary];
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&colorPrimary count:1];
  v22[0] = v10;
  v21[1] = @"TransferFunctions";
  transferFunction = [nclcTriplet transferFunction];
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&transferFunction count:1];
  v22[1] = v11;
  v21[2] = @"Matrices";
  ycbcrMatrix = [nclcTriplet ycbcrMatrix];
  v13 = *MEMORY[0x277CC4D20];
  v18[0] = ycbcrMatrix;
  v18[1] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v22[2] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];

  v16 = [MEMORY[0x277D415E0] JFX_compareTriplets:a3 transferFunction:a4 matrix:a5 validNCLCTriplets:v15];
  return v16;
}

+ (uint64_t)JFX_isRec601Gamma:()JFX transferFunction:matrix:
{
  v8 = MEMORY[0x277D415E0];
  rec601_1_1_6_GammaColorSpace = [MEMORY[0x277D415E0] rec601_1_1_6_GammaColorSpace];
  v10 = [v8 JFX_nclcDictionaryForColorSpace:rec601_1_1_6_GammaColorSpace];

  v11 = [MEMORY[0x277D415E0] JFX_compareTriplets:a3 transferFunction:a4 matrix:a5 validNCLCTriplets:v10];
  return v11;
}

+ (uint64_t)JFX_isRec709Linear:()JFX transferFunction:matrix:
{
  v8 = MEMORY[0x277D415E0];
  rec709LinearColorSpace = [MEMORY[0x277D415E0] rec709LinearColorSpace];
  v10 = [v8 JFX_nclcDictionaryForColorSpace:rec709LinearColorSpace];

  v11 = [MEMORY[0x277D415E0] JFX_compareTriplets:a3 transferFunction:a4 matrix:a5 validNCLCTriplets:v10];
  return v11;
}

+ (uint64_t)JFX_isP3HLG:()JFX transferFunction:matrix:
{
  v22[3] = *MEMORY[0x277D85DE8];
  p3HLGGammaColorSpace = [MEMORY[0x277D415E0] p3HLGGammaColorSpace];
  nclcTriplet = [p3HLGGammaColorSpace nclcTriplet];

  v21[0] = @"ColorPrimaries";
  colorPrimary = [nclcTriplet colorPrimary];
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&colorPrimary count:1];
  v22[0] = v10;
  v21[1] = @"TransferFunctions";
  transferFunction = [nclcTriplet transferFunction];
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&transferFunction count:1];
  v22[1] = v11;
  v21[2] = @"Matrices";
  ycbcrMatrix = [nclcTriplet ycbcrMatrix];
  v13 = *MEMORY[0x277CC4D18];
  v18[0] = ycbcrMatrix;
  v18[1] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v22[2] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];

  v16 = [MEMORY[0x277D415E0] JFX_compareTriplets:a3 transferFunction:a4 matrix:a5 validNCLCTriplets:v15];
  return v16;
}

+ (uint64_t)JFX_isP3PQ:()JFX transferFunction:matrix:
{
  v8 = MEMORY[0x277D415E0];
  p3PQGammaColorSpace = [MEMORY[0x277D415E0] p3PQGammaColorSpace];
  v10 = [v8 JFX_nclcDictionaryForColorSpace:p3PQGammaColorSpace];

  v11 = [MEMORY[0x277D415E0] JFX_compareTriplets:a3 transferFunction:a4 matrix:a5 validNCLCTriplets:v10];
  return v11;
}

+ (uint64_t)JFX_isRec2100HLG:()JFX transferFunction:matrix:
{
  v8 = MEMORY[0x277D415E0];
  rec2100HLGColorSpace = [MEMORY[0x277D415E0] rec2100HLGColorSpace];
  v10 = [v8 JFX_nclcDictionaryForColorSpace:rec2100HLGColorSpace];

  v11 = [MEMORY[0x277D415E0] JFX_compareTriplets:a3 transferFunction:a4 matrix:a5 validNCLCTriplets:v10];
  return v11;
}

+ (uint64_t)JFX_isRec2100PQ:()JFX transferFunction:matrix:
{
  v8 = MEMORY[0x277D415E0];
  rec2100PQColorSpace = [MEMORY[0x277D415E0] rec2100PQColorSpace];
  v10 = [v8 JFX_nclcDictionaryForColorSpace:rec2100PQColorSpace];

  v11 = [MEMORY[0x277D415E0] JFX_compareTriplets:a3 transferFunction:a4 matrix:a5 validNCLCTriplets:v10];
  return v11;
}

+ (uint64_t)JFX_isRec2020Linear:()JFX transferFunction:matrix:
{
  v8 = MEMORY[0x277D415E0];
  rec2020LinearColorSpace = [MEMORY[0x277D415E0] rec2020LinearColorSpace];
  v10 = [v8 JFX_nclcDictionaryForColorSpace:rec2020LinearColorSpace];

  v11 = [MEMORY[0x277D415E0] JFX_compareTriplets:a3 transferFunction:a4 matrix:a5 validNCLCTriplets:v10];
  return v11;
}

@end