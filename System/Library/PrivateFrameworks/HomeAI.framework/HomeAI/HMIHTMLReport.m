@interface HMIHTMLReport
+ (id)boxForRegionOfInterest:(CGRect)a3;
+ (id)boxesForEvent:(id)a3 isTruth:(BOOL)a4;
- (HMIHTMLReport)initWithTitle:(id)a3 outputPath:(id)a4;
- (id)_loadResource:(id)a3 withExtension:(id)a4;
- (void)appendFaceCrop:(id)a3 imageBorder:(int)a4 imageColor:(id)a5 outlineBorder:(int)a6 outlineColor:(id)a7;
- (void)appendFragmentResult:(id)a3;
- (void)appendFragmentResult:(id)a3 assetPath:(id)a4;
- (void)appendFrame:(id)a3 text:(id)a4 boxes:(id)a5 imageBorder:(int)a6 imageColor:(id)a7 outlineBorder:(int)a8 outlineColor:(id)a9;
- (void)appendFrameResult:(id)a3 frameTruth:(id)a4 description:(id)a5;
- (void)appendHeaderWithTitle:(id)a3 textColor:(id)a4 backgroundColor:(id)a5;
- (void)appendJPEG:(id)a3 imageBorder:(int)a4 imageColor:(id)a5 outlineBorder:(int)a6 outlineColor:(id)a7;
- (void)appendString:(id)a3;
- (void)appendText:(id)a3;
- (void)dealloc;
- (void)flush;
@end

@implementation HMIHTMLReport

- (HMIHTMLReport)initWithTitle:(id)a3 outputPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HMIHTMLReport;
  v8 = [(HMIHTMLReport *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_outputPath, a4);
    v10 = [objc_alloc(MEMORY[0x277CBEB78]) initToFileAtPath:v7 append:0];
    stream = v9->_stream;
    v9->_stream = v10;

    v12 = [(HMIHTMLReport *)v9 stream];
    [v12 open];

    [(HMIHTMLReport *)v9 appendHeaderWithTitle:v6 textColor:@"#ffffff" backgroundColor:@"#000000"];
  }

  return v9;
}

- (void)dealloc
{
  [(HMIHTMLReport *)self appendString:@"</body>\n</html>"];
  v3 = [(HMIHTMLReport *)self stream];
  [v3 close];

  v4 = [(HMIHTMLReport *)self outputPath];
  NSLog(&cfstr_VisualizerSave.isa, v4);

  v5.receiver = self;
  v5.super_class = HMIHTMLReport;
  [(HMIHTMLReport *)&v5 dealloc];
}

- (id)_loadResource:(id)a3 withExtension:(id)a4
{
  v5 = MEMORY[0x277CCA8D8];
  v6 = a4;
  v7 = a3;
  v8 = [v5 bundleForClass:objc_opt_class()];
  v9 = [v8 URLForResource:v7 withExtension:v6];

  v10 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v9];
  v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v10 encoding:4];

  return v11;
}

- (void)appendHeaderWithTitle:(id)a3 textColor:(id)a4 backgroundColor:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v13 = [(HMIHTMLReport *)self _loadResource:@"HMIHTMLReport" withExtension:@"css"];
  v11 = [(HMIHTMLReport *)self _loadResource:@"HMIHTMLReport" withExtension:@"js"];
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"<html>\n<head><title>%@</title></head>\n<style>\n%@\n</style>\n<body text='%@' bgcolor='%@'>\n<script>\n%@\n</script>\n", v10, v13, v9, v8, v11];

  [(HMIHTMLReport *)self appendString:v12];
}

- (void)appendString:(id)a3
{
  v6 = [a3 dataUsingEncoding:4];
  v4 = [(HMIHTMLReport *)self stream];
  v5 = v6;
  [v4 write:objc_msgSend(v6 maxLength:{"bytes"), objc_msgSend(v6, "length")}];
}

- (void)appendText:(id)a3
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@<br>\n", a3];
  [(HMIHTMLReport *)self appendString:v4];
}

- (void)appendFrame:(id)a3 text:(id)a4 boxes:(id)a5 imageBorder:(int)a6 imageColor:(id)a7 outlineBorder:(int)a8 outlineColor:(id)a9
{
  v9 = *&a8;
  v11 = *&a6;
  v43 = a4;
  v15 = a7;
  v16 = a9;
  v17 = a5;
  v18 = a3;
  [v18 size];
  v20 = v19;
  [v18 size];
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
  [v18 size];
  v27 = v26 * v25;
  [v18 size];
  v29 = v28 * v25;
  v47 = 0;
  v30 = [v18 compressedFrameWithScale:&v47 quality:v25 error:1.0];

  v42 = v47;
  v31 = [MEMORY[0x277CBEB18] array];
  if (v11 >= 1)
  {
    if ([v15 length])
    {
      if (![v15 length])
      {
        goto LABEL_12;
      }

      [MEMORY[0x277CCACA8] stringWithFormat:@"border:%dpx solid %@;", v11, v15];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"border:%dpx;", v11, v41];
    }
    v32 = ;
    [v31 addObject:v32];
  }

LABEL_12:
  v33 = v27;
  if (v9 < 1)
  {
    goto LABEL_18;
  }

  if ([v16 length])
  {
    if (![v16 length])
    {
      goto LABEL_18;
    }

    [MEMORY[0x277CCACA8] stringWithFormat:@"outline:%dpx solid %@;", v9, v16];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"outline:%dpx;", v9, v41];
  }
  v35 = ;
  [v31 addObject:v35];

LABEL_18:
  v36 = MEMORY[0x277CCACA8];
  v37 = [v30 base64Encoded];
  v38 = [v31 componentsJoinedByString:@" "];
  v34 = v29;
  v39 = [v36 stringWithFormat:@"<div class='image'>\n<img width='%d' height='%d' src='data:image/jpegbase64, %@' style='%@'/>\n", v33, v34, v37, v38];;
  [(HMIHTMLReport *)self appendString:v39];

  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __90__HMIHTMLReport_appendFrame_text_boxes_imageBorder_imageColor_outlineBorder_outlineColor___block_invoke;
  v44[3] = &unk_2787526E8;
  v44[4] = self;
  v45 = v29;
  v46 = v33;
  [v17 enumerateObjectsUsingBlock:v44];

  if ([v43 length])
  {
    v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"<div class=text>%@</div>\n", v43];
    [(HMIHTMLReport *)self appendString:v40];
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

- (void)appendFaceCrop:(id)a3 imageBorder:(int)a4 imageColor:(id)a5 outlineBorder:(int)a6 outlineColor:(id)a7
{
  v7 = *&a6;
  v9 = *&a4;
  v12 = a7;
  v13 = a5;
  v14 = [a3 dataRepresentation];
  [(HMIHTMLReport *)self appendJPEG:v14 imageBorder:v9 imageColor:v13 outlineBorder:v7 outlineColor:v12];
}

- (void)appendJPEG:(id)a3 imageBorder:(int)a4 imageColor:(id)a5 outlineBorder:(int)a6 outlineColor:(id)a7
{
  v8 = *&a6;
  v9 = *&a4;
  v12 = a5;
  v13 = a7;
  v31 = 0;
  v14 = a3;
  v15 = [HMIVisionUtilities createPixelBufferFromJPEGData:v14 error:&v31];
  Size = HMICVPixelBufferGetSize(v15);
  v18 = v17;
  CVPixelBufferRelease(v15);
  v19 = [v14 base64EncodedStringWithOptions:32];

  v20 = [MEMORY[0x277CBEB18] array];
  if (v9 >= 1)
  {
    if ([v12 length])
    {
      if (![v12 length])
      {
        goto LABEL_7;
      }

      [MEMORY[0x277CCACA8] stringWithFormat:@"border:%dpx solid %@;", v9, v12];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"border:%dpx;", v9, v30];
    }
    v21 = ;
    [v20 addObject:v21];
  }

LABEL_7:
  if (v8 >= 1)
  {
    if (![v13 length])
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"outline:%dpx;", v8, v30];
      goto LABEL_12;
    }

    if ([v13 length])
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"outline:%dpx solid %@;", v8, v13];
      v22 = LABEL_12:;
      [v20 addObject:v22];
    }
  }

  v23 = v18;
  v24 = Size;
  v25 = MEMORY[0x277CCACA8];
  v26 = v24;
  v27 = v23;
  v28 = [v20 componentsJoinedByString:@" "];
  v29 = [v25 stringWithFormat:@"<div class='image'>\n<img width='%d' height='%d' src='data:image/jpegbase64, %@' style='%@'/>\n", v26, v27, v19, v28];;
  [(HMIHTMLReport *)self appendString:v29];

  [(HMIHTMLReport *)self appendString:@"</div>\n"];
}

- (void)appendFragmentResult:(id)a3
{
  v4 = [a3 frameResults];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__HMIHTMLReport_appendFragmentResult___block_invoke;
  v5[3] = &unk_278752710;
  v5[4] = self;
  [v4 na_each:v5];
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

- (void)appendFragmentResult:(id)a3 assetPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v7];
  v9 = [[HMIVideoFragment alloc] initWithData:v8];
  v10 = [[HMIVideoFrameGenerator alloc] initWithVideoFragment:v9];
  v11 = [v6 frameResults];
  v12 = [v11 na_map:&__block_literal_global];

  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __48__HMIHTMLReport_appendFragmentResult_assetPath___block_invoke_2;
  v20 = &unk_278752780;
  v21 = v6;
  v22 = v12;
  v23 = v7;
  v24 = self;
  v13 = v7;
  v14 = v12;
  v15 = v6;
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

- (void)appendFrameResult:(id)a3 frameTruth:(id)a4 description:(id)a5
{
  v26[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = MEMORY[0x277CBEB18];
  v11 = a5;
  v12 = [v10 array];
  if (v9)
  {
    v13 = [v9 events];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __58__HMIHTMLReport_appendFrameResult_frameTruth_description___block_invoke;
    v24[3] = &unk_2787527A8;
    v25 = v12;
    [v13 enumerateObjectsUsingBlock:v24];
  }

  [v8 regionOfInterest];
  if (!CGRectIsEmpty(v27))
  {
    [v8 regionOfInterest];
    v14 = [HMIHTMLReport boxForRegionOfInterest:?];
    [v12 addObject:v14];
  }

  v15 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"confidence.value" ascending:1];
  v16 = [v8 events];
  v17 = [v16 allObjects];
  v26[0] = v15;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  v19 = [v17 sortedArrayUsingDescriptors:v18];

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __58__HMIHTMLReport_appendFrameResult_frameTruth_description___block_invoke_2;
  v22[3] = &unk_2787527D0;
  v23 = v12;
  v20 = v12;
  [v19 na_each:v22];
  v21 = [v8 frame];
  [HMIHTMLReport appendFrame:"appendFrame:text:boxes:imageBorder:imageColor:outlineBorder:outlineColor:" text:v21 boxes:v11 imageBorder:v20 imageColor:0 outlineBorder:&stru_284057FB8 outlineColor:?];
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

+ (id)boxesForEvent:(id)a3 isTruth:(BOOL)a4
{
  v7 = a4;
  v8 = a3;
  if (v7)
  {
    v9 = 0.4;
  }

  else
  {
    v9 = 1.0;
  }

  v10 = [MEMORY[0x277CBEB18] array];
  v11 = v8;
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
    if (v7)
    {
      v14 = &stru_284057FB8;
    }

    else
    {
      if (v13 && ([v13 sessionEntityUUID], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v16 = v15;
        v17 = [v15 UUIDString];
        v18 = [v17 substringToIndex:3];
      }

      else
      {
        v18 = &stru_284057FB8;
      }

      v19 = MEMORY[0x277CCACA8];
      v20 = [v11 confidence];
      [v20 value];
      v14 = [v19 stringWithFormat:@"%.3f %@", v21, v18];
    }

    v22 = [HMIHTMLReportBox alloc];
    [v11 boundingBox];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v31 = [HMIVideoAnalyzerEvent rgbColorCodeForEventClass:objc_opt_class()];
    if (v7)
    {
      LODWORD(v33) = 1.0;
    }

    else
    {
      v4 = [v11 confidence];
      [v4 value];
      *&v33 = v34;
    }

    *&v32 = v9;
    v35 = [(HMIHTMLReportBox *)v22 initWithBoundingBox:v14 text:v31 color:v24 opacity:v26 value:v28, v30, v32, v33];
    [v10 addObject:v35];

    if (!v7)
    {
    }
  }

  if (v13)
  {
    v36 = [v13 face];
    if (v36)
    {
      v37 = v36;
      v38 = [v13 face];
      [v38 boundingBox];
      IsEmpty = CGRectIsEmpty(v99);

      if (!IsEmpty)
      {
        v40 = [v13 face];
        if (v7)
        {
          v41 = &stru_284057FB8;
        }

        else
        {
          v42 = [v13 face];
          v43 = [v42 faceRecognition];
          v44 = [v43 classifications];
          v5 = [v44 hmf_isEmpty];

          if (v5)
          {
            v45 = MEMORY[0x277CCACA8];
            v46 = [v40 confidence];
            [v46 value];
            v41 = [v45 stringWithFormat:@"%.3f", v47];
          }

          else
          {
            v48 = [v13 face];
            v49 = [v48 faceRecognition];
            v50 = [v49 classifications];
            v46 = [v50 anyObject];

            v95 = MEMORY[0x277CCACA8];
            v96 = [v40 confidence];
            [v96 value];
            v52 = v51;
            if ([v46 fromTorsoClassification])
            {
              v53 = @"T";
            }

            else
            {
              v53 = @"F";
            }

            [v46 confidence];
            v55 = v54;
            v5 = [v46 personUUID];
            v6 = [v5 UUIDString];
            v56 = [v6 substringToIndex:2];
            v41 = [v95 stringWithFormat:@"%.3f %@ %.2f %@", v52, v53, v55, v56];
          }
        }

        v57 = [HMIHTMLReportBox alloc];
        [v40 boundingBox];
        v59 = v58;
        v61 = v60;
        v63 = v62;
        v65 = v64;
        v66 = [HMIVideoAnalyzerEvent rgbColorCodeForEventClass:objc_opt_class()];
        if (v7)
        {
          LODWORD(v68) = 1.0;
        }

        else
        {
          v5 = [v40 confidence];
          [v5 value];
          *&v68 = v69;
        }

        *&v67 = v9;
        v70 = [(HMIHTMLReportBox *)v57 initWithBoundingBox:v41 text:v66 color:v59 opacity:v61 value:v63, v65, v67, v68];
        [v10 addObject:v70];

        if (!v7)
        {
        }
      }
    }

    v71 = [v13 torso];
    if (v71)
    {
      v72 = v71;
      v73 = [v13 torso];
      [v73 boundingBox];
      v74 = CGRectIsEmpty(v100);

      if (!v74)
      {
        v75 = [v13 torso];
        v76 = [HMIHTMLReportBox alloc];
        [v75 boundingBox];
        v78 = v77;
        v80 = v79;
        v82 = v81;
        v84 = v83;
        if (v7)
        {
          v85 = &stru_284057FB8;
        }

        else
        {
          v86 = MEMORY[0x277CCACA8];
          v73 = [v75 confidence];
          [v73 value];
          v85 = [v86 stringWithFormat:@"%.3f", v87];
        }

        v88 = [HMIVideoAnalyzerEvent rgbColorCodeForEventClass:objc_opt_class()];
        if (v7)
        {
          LODWORD(v90) = 1.0;
        }

        else
        {
          v6 = [v75 confidence];
          [v6 value];
          *&v90 = v91;
        }

        *&v89 = v9;
        v92 = [(HMIHTMLReportBox *)v76 initWithBoundingBox:v85 text:v88 color:v78 opacity:v80 value:v82, v84, v89, v90];
        [v10 addObject:v92];

        if (v7)
        {
          v73 = v88;
        }

        else
        {
        }
      }
    }
  }

  v93 = [v10 copy];

  return v93;
}

+ (id)boxForRegionOfInterest:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [HMIHTMLReportBox alloc];
  LODWORD(v8) = 1.0;
  LODWORD(v9) = 1.0;
  v10 = [(HMIHTMLReportBox *)v7 initWithBoundingBox:&stru_284057FB8 text:@"#ffff00" color:x opacity:y value:width, height, v8, v9];

  return v10;
}

- (void)flush
{
  [(HMIHTMLReport *)self appendString:@"</body>\n</html>"];
  v3 = [(HMIHTMLReport *)self stream];
  [v3 close];

  v4 = [(HMIHTMLReport *)self outputPath];
  NSLog(&cfstr_VisualizerSave.isa, v4);
}

@end