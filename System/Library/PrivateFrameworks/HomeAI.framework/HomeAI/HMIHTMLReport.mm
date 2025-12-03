@interface HMIHTMLReport
+ (id)boxForRegionOfInterest:(CGRect)interest;
+ (id)boxesForEvent:(id)event isTruth:(BOOL)truth;
- (HMIHTMLReport)initWithTitle:(id)title outputPath:(id)path;
- (id)_loadResource:(id)resource withExtension:(id)extension;
- (void)appendFaceCrop:(id)crop imageBorder:(int)border imageColor:(id)color outlineBorder:(int)outlineBorder outlineColor:(id)outlineColor;
- (void)appendFragmentResult:(id)result;
- (void)appendFragmentResult:(id)result assetPath:(id)path;
- (void)appendFrame:(id)frame text:(id)text boxes:(id)boxes imageBorder:(int)border imageColor:(id)color outlineBorder:(int)outlineBorder outlineColor:(id)outlineColor;
- (void)appendFrameResult:(id)result frameTruth:(id)truth description:(id)description;
- (void)appendHeaderWithTitle:(id)title textColor:(id)color backgroundColor:(id)backgroundColor;
- (void)appendJPEG:(id)g imageBorder:(int)border imageColor:(id)color outlineBorder:(int)outlineBorder outlineColor:(id)outlineColor;
- (void)appendString:(id)string;
- (void)appendText:(id)text;
- (void)dealloc;
- (void)flush;
@end

@implementation HMIHTMLReport

- (HMIHTMLReport)initWithTitle:(id)title outputPath:(id)path
{
  titleCopy = title;
  pathCopy = path;
  v14.receiver = self;
  v14.super_class = HMIHTMLReport;
  v8 = [(HMIHTMLReport *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_outputPath, path);
    v10 = [objc_alloc(MEMORY[0x277CBEB78]) initToFileAtPath:pathCopy append:0];
    stream = v9->_stream;
    v9->_stream = v10;

    stream = [(HMIHTMLReport *)v9 stream];
    [stream open];

    [(HMIHTMLReport *)v9 appendHeaderWithTitle:titleCopy textColor:@"#ffffff" backgroundColor:@"#000000"];
  }

  return v9;
}

- (void)dealloc
{
  [(HMIHTMLReport *)self appendString:@"</body>\n</html>"];
  stream = [(HMIHTMLReport *)self stream];
  [stream close];

  outputPath = [(HMIHTMLReport *)self outputPath];
  NSLog(&cfstr_VisualizerSave.isa, outputPath);

  v5.receiver = self;
  v5.super_class = HMIHTMLReport;
  [(HMIHTMLReport *)&v5 dealloc];
}

- (id)_loadResource:(id)resource withExtension:(id)extension
{
  v5 = MEMORY[0x277CCA8D8];
  extensionCopy = extension;
  resourceCopy = resource;
  v8 = [v5 bundleForClass:objc_opt_class()];
  v9 = [v8 URLForResource:resourceCopy withExtension:extensionCopy];

  v10 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v9];
  v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v10 encoding:4];

  return v11;
}

- (void)appendHeaderWithTitle:(id)title textColor:(id)color backgroundColor:(id)backgroundColor
{
  backgroundColorCopy = backgroundColor;
  colorCopy = color;
  titleCopy = title;
  v13 = [(HMIHTMLReport *)self _loadResource:@"HMIHTMLReport" withExtension:@"css"];
  v11 = [(HMIHTMLReport *)self _loadResource:@"HMIHTMLReport" withExtension:@"js"];
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"<html>\n<head><title>%@</title></head>\n<style>\n%@\n</style>\n<body text='%@' bgcolor='%@'>\n<script>\n%@\n</script>\n", titleCopy, v13, colorCopy, backgroundColorCopy, v11];

  [(HMIHTMLReport *)self appendString:v12];
}

- (void)appendString:(id)string
{
  v6 = [string dataUsingEncoding:4];
  stream = [(HMIHTMLReport *)self stream];
  v5 = v6;
  [stream write:objc_msgSend(v6 maxLength:{"bytes"), objc_msgSend(v6, "length")}];
}

- (void)appendText:(id)text
{
  text = [MEMORY[0x277CCACA8] stringWithFormat:@"%@<br>\n", text];
  [(HMIHTMLReport *)self appendString:text];
}

- (void)appendFrame:(id)frame text:(id)text boxes:(id)boxes imageBorder:(int)border imageColor:(id)color outlineBorder:(int)outlineBorder outlineColor:(id)outlineColor
{
  v9 = *&outlineBorder;
  v11 = *&border;
  textCopy = text;
  colorCopy = color;
  outlineColorCopy = outlineColor;
  boxesCopy = boxes;
  frameCopy = frame;
  [frameCopy size];
  v20 = v19;
  [frameCopy size];
  if (v20 >= v21)
  {
    v22 = v20;
  }

  else
  {
    v22 = v21;
  }

  v23 = 480.0 / v22;
  if (v23 > 1.0)
  {
    v23 = 1.0;
  }

  v24 = fmax(v23, 0.0);
  v25 = v24;
  [frameCopy size];
  v27 = v26 * v25;
  [frameCopy size];
  v29 = v28 * v25;
  v47 = 0;
  v30 = [frameCopy compressedFrameWithScale:&v47 quality:v25 error:1.0];

  v42 = v47;
  array = [MEMORY[0x277CBEB18] array];
  if (v11 >= 1)
  {
    if ([colorCopy length])
    {
      if (![colorCopy length])
      {
        goto LABEL_12;
      }

      [MEMORY[0x277CCACA8] stringWithFormat:@"border:%dpx solid %@;", v11, colorCopy];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"border:%dpx;", v11, v41];
    }
    v32 = ;
    [array addObject:v32];
  }

LABEL_12:
  v33 = v27;
  if (v9 < 1)
  {
    goto LABEL_18;
  }

  if ([outlineColorCopy length])
  {
    if (![outlineColorCopy length])
    {
      goto LABEL_18;
    }

    [MEMORY[0x277CCACA8] stringWithFormat:@"outline:%dpx solid %@;", v9, outlineColorCopy];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"outline:%dpx;", v9, v41];
  }
  v35 = ;
  [array addObject:v35];

LABEL_18:
  v36 = MEMORY[0x277CCACA8];
  base64Encoded = [v30 base64Encoded];
  v38 = [array componentsJoinedByString:@" "];
  v34 = v29;
  v39 = [v36 stringWithFormat:@"<div class='image'>\n<img width='%d' height='%d' src='data:image/jpegbase64, %@' style='%@'/>\n", v33, v34, base64Encoded, v38];;
  [(HMIHTMLReport *)self appendString:v39];

  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __90__HMIHTMLReport_appendFrame_text_boxes_imageBorder_imageColor_outlineBorder_outlineColor___block_invoke;
  v44[3] = &unk_2787526E8;
  v44[4] = self;
  v45 = v29;
  v46 = v33;
  [boxesCopy enumerateObjectsUsingBlock:v44];

  if ([textCopy length])
  {
    textCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"<div class=text>%@</div>\n", textCopy];
    [(HMIHTMLReport *)self appendString:textCopy];
  }

  [(HMIHTMLReport *)self appendString:@"</div>\n"];
}

void __90__HMIHTMLReport_appendFrame_text_boxes_imageBorder_imageColor_outlineBorder_outlineColor___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = MEMORY[0x277CCACA8];
  v5 = a2;
  [v5 boundingBox];
  v7 = (v6 * *(a1 + 40));
  [v5 boundingBox];
  v9 = (v8 * *(a1 + 44));
  [v5 boundingBox];
  v11 = (v10 * *(a1 + 44));
  [v5 boundingBox];
  v13 = (v12 * *(a1 + 40));
  v20 = [v5 color];
  [v5 opacity];
  v15 = v14;
  [v5 value];
  v17 = v16;
  v18 = [v5 text];

  v19 = [v4 stringWithFormat:@"<div class='rect' style='top:%dpx left:%dpx; width:%dpx; height:%dpx; border-color:%@; opacity:%.1f' threshold='%.3f'>%@</div>\n", v7, v9, v11, v13, v20, *&v15, *&v17, v18];;
  [v3 appendString:v19];
}

- (void)appendFaceCrop:(id)crop imageBorder:(int)border imageColor:(id)color outlineBorder:(int)outlineBorder outlineColor:(id)outlineColor
{
  v7 = *&outlineBorder;
  v9 = *&border;
  outlineColorCopy = outlineColor;
  colorCopy = color;
  dataRepresentation = [crop dataRepresentation];
  [(HMIHTMLReport *)self appendJPEG:dataRepresentation imageBorder:v9 imageColor:colorCopy outlineBorder:v7 outlineColor:outlineColorCopy];
}

- (void)appendJPEG:(id)g imageBorder:(int)border imageColor:(id)color outlineBorder:(int)outlineBorder outlineColor:(id)outlineColor
{
  v8 = *&outlineBorder;
  v9 = *&border;
  colorCopy = color;
  outlineColorCopy = outlineColor;
  v31 = 0;
  gCopy = g;
  v15 = [HMIVisionUtilities createPixelBufferFromJPEGData:gCopy error:&v31];
  Size = HMICVPixelBufferGetSize(v15);
  v18 = v17;
  CVPixelBufferRelease(v15);
  v19 = [gCopy base64EncodedStringWithOptions:32];

  array = [MEMORY[0x277CBEB18] array];
  if (v9 >= 1)
  {
    if ([colorCopy length])
    {
      if (![colorCopy length])
      {
        goto LABEL_7;
      }

      [MEMORY[0x277CCACA8] stringWithFormat:@"border:%dpx solid %@;", v9, colorCopy];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"border:%dpx;", v9, v30];
    }
    v21 = ;
    [array addObject:v21];
  }

LABEL_7:
  if (v8 >= 1)
  {
    if (![outlineColorCopy length])
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"outline:%dpx;", v8, v30];
      goto LABEL_12;
    }

    if ([outlineColorCopy length])
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"outline:%dpx solid %@;", v8, outlineColorCopy];
      v22 = LABEL_12:;
      [array addObject:v22];
    }
  }

  v23 = v18;
  v24 = Size;
  v25 = MEMORY[0x277CCACA8];
  v26 = v24;
  v27 = v23;
  v28 = [array componentsJoinedByString:@" "];
  v29 = [v25 stringWithFormat:@"<div class='image'>\n<img width='%d' height='%d' src='data:image/jpegbase64, %@' style='%@'/>\n", v26, v27, v19, v28];;
  [(HMIHTMLReport *)self appendString:v29];

  [(HMIHTMLReport *)self appendString:@"</div>\n"];
}

- (void)appendFragmentResult:(id)result
{
  frameResults = [result frameResults];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__HMIHTMLReport_appendFragmentResult___block_invoke;
  v5[3] = &unk_278752710;
  v5[4] = self;
  [frameResults na_each:v5];
}

void __38__HMIHTMLReport_appendFragmentResult___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 frame];
  v5 = v4;
  if (v4)
  {
    [v4 presentationTimeStamp];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  Seconds = CMTimeGetSeconds(&time);

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.3fs", Seconds];
  [*(a1 + 32) appendFrameResult:v3 frameTruth:0 description:v7];
}

- (void)appendFragmentResult:(id)result assetPath:(id)path
{
  resultCopy = result;
  pathCopy = path;
  v8 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:pathCopy];
  v9 = [[HMIVideoFragment alloc] initWithData:v8];
  v10 = [[HMIVideoFrameGenerator alloc] initWithVideoFragment:v9];
  frameResults = [resultCopy frameResults];
  v12 = [frameResults na_map:&__block_literal_global];

  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __48__HMIHTMLReport_appendFragmentResult_assetPath___block_invoke_2;
  v20 = &unk_278752780;
  v21 = resultCopy;
  v22 = v12;
  v23 = pathCopy;
  selfCopy = self;
  v13 = pathCopy;
  v14 = v12;
  v15 = resultCopy;
  v16 = MEMORY[0x2318CB8E0](&v17);
  [(HMIVideoFrameGenerator *)v10 generateVideoFramesForTimes:v14 completionHandler:v16, v17, v18, v19, v20];
}

id __48__HMIHTMLReport_appendFragmentResult_assetPath___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAE60];
  v3 = [a2 frame];
  v4 = v3;
  if (v3)
  {
    [v3 presentationTimeStamp];
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  v5 = [v2 valueWithCMTime:v7];

  return v5;
}

void __48__HMIHTMLReport_appendFragmentResult_assetPath___block_invoke_2(id *a1, void *a2)
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__HMIHTMLReport_appendFragmentResult_assetPath___block_invoke_3;
  v9[3] = &unk_278752758;
  v4 = a1 + 7;
  v5 = a1[4];
  v6 = a1[5];
  *&v7 = a1[6];
  *(&v7 + 1) = *v4;
  *&v8 = v5;
  *(&v8 + 1) = v6;
  v10 = v8;
  v11 = v7;
  [a2 enumerateObjectsUsingBlock:v9];
}

void __48__HMIHTMLReport_appendFragmentResult_assetPath___block_invoke_3(id *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [HMIVideoAnalyzerFrameResult alloc];
  v7 = [a1[4] frameResults];
  v8 = [v7 objectAtIndexedSubscript:a3];
  v9 = [v8 events];
  v10 = [a1[4] frameResults];
  v11 = [v10 objectAtIndexedSubscript:a3];
  [v11 regionOfInterest];
  v12 = [(HMIVideoAnalyzerFrameResult *)v6 initWithFrame:v5 events:v9 regionOfInterest:?];

  v13 = MEMORY[0x277CCACA8];
  v14 = [a1[5] count];
  v15 = [a1[6] lastPathComponent];
  if (v5)
  {
    [v5 presentationTimeStamp];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  v16 = [v13 stringWithFormat:@"[%lu/%lu] %@ (%.2fs)", a3, v14, v15, CMTimeGetSeconds(&time)];

  [a1[7] appendFrameResult:v12 frameTruth:0 description:v16];
}

- (void)appendFrameResult:(id)result frameTruth:(id)truth description:(id)description
{
  v26[1] = *MEMORY[0x277D85DE8];
  resultCopy = result;
  truthCopy = truth;
  v10 = MEMORY[0x277CBEB18];
  descriptionCopy = description;
  array = [v10 array];
  if (truthCopy)
  {
    events = [truthCopy events];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __58__HMIHTMLReport_appendFrameResult_frameTruth_description___block_invoke;
    v24[3] = &unk_2787527A8;
    v25 = array;
    [events enumerateObjectsUsingBlock:v24];
  }

  [resultCopy regionOfInterest];
  if (!CGRectIsEmpty(v27))
  {
    [resultCopy regionOfInterest];
    v14 = [HMIHTMLReport boxForRegionOfInterest:?];
    [array addObject:v14];
  }

  v15 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"confidence.value" ascending:1];
  events2 = [resultCopy events];
  allObjects = [events2 allObjects];
  v26[0] = v15;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  v19 = [allObjects sortedArrayUsingDescriptors:v18];

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __58__HMIHTMLReport_appendFrameResult_frameTruth_description___block_invoke_2;
  v22[3] = &unk_2787527D0;
  v23 = array;
  v20 = array;
  [v19 na_each:v22];
  frame = [resultCopy frame];
  [HMIHTMLReport appendFrame:"appendFrame:text:boxes:imageBorder:imageColor:outlineBorder:outlineColor:" text:frame boxes:descriptionCopy imageBorder:v20 imageColor:0 outlineBorder:&stru_284057FB8 outlineColor:?];
}

void __58__HMIHTMLReport_appendFrameResult_frameTruth_description___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [HMIHTMLReport boxesForEvent:a2 isTruth:1];
  [v2 addObjectsFromArray:v3];
}

void __58__HMIHTMLReport_appendFrameResult_frameTruth_description___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [HMIHTMLReport boxesForEvent:a2 isTruth:0];
  [v2 addObjectsFromArray:v3];
}

+ (id)boxesForEvent:(id)event isTruth:(BOOL)truth
{
  truthCopy = truth;
  eventCopy = event;
  if (truthCopy)
  {
    v9 = 0.4;
  }

  else
  {
    v9 = 1.0;
  }

  array = [MEMORY[0x277CBEB18] array];
  v11 = eventCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  [v11 boundingBox];
  if (!CGRectIsEmpty(v98))
  {
    if (truthCopy)
    {
      v14 = &stru_284057FB8;
    }

    else
    {
      if (v13 && ([v13 sessionEntityUUID], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v16 = v15;
        uUIDString = [v15 UUIDString];
        v18 = [uUIDString substringToIndex:3];
      }

      else
      {
        v18 = &stru_284057FB8;
      }

      v19 = MEMORY[0x277CCACA8];
      confidence = [v11 confidence];
      [confidence value];
      v14 = [v19 stringWithFormat:@"%.3f %@", v21, v18];
    }

    v22 = [HMIHTMLReportBox alloc];
    [v11 boundingBox];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v31 = [HMIVideoAnalyzerEvent rgbColorCodeForEventClass:objc_opt_class()];
    if (truthCopy)
    {
      LODWORD(v33) = 1.0;
    }

    else
    {
      confidence2 = [v11 confidence];
      [confidence2 value];
      *&v33 = v34;
    }

    *&v32 = v9;
    v35 = [(HMIHTMLReportBox *)v22 initWithBoundingBox:v14 text:v31 color:v24 opacity:v26 value:v28, v30, v32, v33];
    [array addObject:v35];

    if (!truthCopy)
    {
    }
  }

  if (v13)
  {
    face = [v13 face];
    if (face)
    {
      v37 = face;
      face2 = [v13 face];
      [face2 boundingBox];
      IsEmpty = CGRectIsEmpty(v99);

      if (!IsEmpty)
      {
        face3 = [v13 face];
        if (truthCopy)
        {
          v41 = &stru_284057FB8;
        }

        else
        {
          face4 = [v13 face];
          faceRecognition = [face4 faceRecognition];
          classifications = [faceRecognition classifications];
          hmf_isEmpty = [classifications hmf_isEmpty];

          if (hmf_isEmpty)
          {
            v45 = MEMORY[0x277CCACA8];
            confidence3 = [face3 confidence];
            [confidence3 value];
            v41 = [v45 stringWithFormat:@"%.3f", v47];
          }

          else
          {
            face5 = [v13 face];
            faceRecognition2 = [face5 faceRecognition];
            classifications2 = [faceRecognition2 classifications];
            confidence3 = [classifications2 anyObject];

            v95 = MEMORY[0x277CCACA8];
            confidence4 = [face3 confidence];
            [confidence4 value];
            v52 = v51;
            if ([confidence3 fromTorsoClassification])
            {
              v53 = @"T";
            }

            else
            {
              v53 = @"F";
            }

            [confidence3 confidence];
            v55 = v54;
            hmf_isEmpty = [confidence3 personUUID];
            uUIDString2 = [hmf_isEmpty UUIDString];
            v56 = [uUIDString2 substringToIndex:2];
            v41 = [v95 stringWithFormat:@"%.3f %@ %.2f %@", v52, v53, v55, v56];
          }
        }

        v57 = [HMIHTMLReportBox alloc];
        [face3 boundingBox];
        v59 = v58;
        v61 = v60;
        v63 = v62;
        v65 = v64;
        v66 = [HMIVideoAnalyzerEvent rgbColorCodeForEventClass:objc_opt_class()];
        if (truthCopy)
        {
          LODWORD(v68) = 1.0;
        }

        else
        {
          hmf_isEmpty = [face3 confidence];
          [hmf_isEmpty value];
          *&v68 = v69;
        }

        *&v67 = v9;
        v70 = [(HMIHTMLReportBox *)v57 initWithBoundingBox:v41 text:v66 color:v59 opacity:v61 value:v63, v65, v67, v68];
        [array addObject:v70];

        if (!truthCopy)
        {
        }
      }
    }

    torso = [v13 torso];
    if (torso)
    {
      v72 = torso;
      torso2 = [v13 torso];
      [torso2 boundingBox];
      v74 = CGRectIsEmpty(v100);

      if (!v74)
      {
        torso3 = [v13 torso];
        v76 = [HMIHTMLReportBox alloc];
        [torso3 boundingBox];
        v78 = v77;
        v80 = v79;
        v82 = v81;
        v84 = v83;
        if (truthCopy)
        {
          v85 = &stru_284057FB8;
        }

        else
        {
          v86 = MEMORY[0x277CCACA8];
          torso2 = [torso3 confidence];
          [torso2 value];
          v85 = [v86 stringWithFormat:@"%.3f", v87];
        }

        v88 = [HMIVideoAnalyzerEvent rgbColorCodeForEventClass:objc_opt_class()];
        if (truthCopy)
        {
          LODWORD(v90) = 1.0;
        }

        else
        {
          uUIDString2 = [torso3 confidence];
          [uUIDString2 value];
          *&v90 = v91;
        }

        *&v89 = v9;
        v92 = [(HMIHTMLReportBox *)v76 initWithBoundingBox:v85 text:v88 color:v78 opacity:v80 value:v82, v84, v89, v90];
        [array addObject:v92];

        if (truthCopy)
        {
          torso2 = v88;
        }

        else
        {
        }
      }
    }
  }

  v93 = [array copy];

  return v93;
}

+ (id)boxForRegionOfInterest:(CGRect)interest
{
  height = interest.size.height;
  width = interest.size.width;
  y = interest.origin.y;
  x = interest.origin.x;
  v7 = [HMIHTMLReportBox alloc];
  LODWORD(v8) = 1.0;
  LODWORD(v9) = 1.0;
  v10 = [(HMIHTMLReportBox *)v7 initWithBoundingBox:&stru_284057FB8 text:@"#ffff00" color:x opacity:y value:width, height, v8, v9];

  return v10;
}

- (void)flush
{
  [(HMIHTMLReport *)self appendString:@"</body>\n</html>"];
  stream = [(HMIHTMLReport *)self stream];
  [stream close];

  outputPath = [(HMIHTMLReport *)self outputPath];
  NSLog(&cfstr_VisualizerSave.isa, outputPath);
}

@end