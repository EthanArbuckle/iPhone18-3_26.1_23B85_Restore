@interface HMIVideoAnnotationParser
+ (id)eventForClass:(Class)class boundingBox:(CGRect)box UUID:(id)d;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)lastKnownTimeStamp;
- (HMIVideoAnnotationParser)initWithArray:(id)array;
- (id)eventsForFragment;
- (id)eventsForTimeStamp:(id *)stamp;
@end

@implementation HMIVideoAnnotationParser

- (HMIVideoAnnotationParser)initWithArray:(id)array
{
  arrayCopy = array;
  v13.receiver = self;
  v13.super_class = HMIVideoAnnotationParser;
  v5 = [(HMIVideoAnnotationParser *)&v13 init];
  if (v5)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __42__HMIVideoAnnotationParser_initWithArray___block_invoke;
    v11[3] = &unk_278753298;
    v12 = dictionary;
    v7 = dictionary;
    v8 = [arrayCopy na_map:v11];
    tracks = v5->_tracks;
    v5->_tracks = v8;
  }

  return v5;
}

objc_class *__42__HMIVideoAnnotationParser_initWithArray___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"class"];
  v5 = [v3 objectForKeyedSubscript:@"timestamp"];
  v6 = [v3 objectForKeyedSubscript:@"box"];
  v7 = [HMIVideoAnalyzerEvent eventClassForShortName:v4];
  if (v7)
  {
    v8 = [v3 objectForKeyedSubscript:@"uuid"];
    if (v8)
    {
      v9 = [*(a1 + 32) objectForKeyedSubscript:v8];

      if (!v9)
      {
        v10 = [MEMORY[0x277CCAD78] UUID];
        [*(a1 + 32) setObject:v10 forKeyedSubscript:v8];
      }

      v11 = [*(a1 + 32) objectForKeyedSubscript:v8];
    }

    else
    {
      v11 = [MEMORY[0x277CCAD78] UUID];
    }

    v12 = v11;
    v13 = [MEMORY[0x277CBEB18] array];
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __42__HMIVideoAnnotationParser_initWithArray___block_invoke_2;
    v20 = &unk_278753270;
    v21 = v5;
    v22 = v13;
    v14 = v13;
    [v6 enumerateObjectsUsingBlock:&v17];
    v15 = [HMIVideoAnnotationParserTrack alloc];
    v7 = [(HMIVideoAnnotationParserTrack *)v15 initWithEventClass:v7 records:v14 UUID:v12, v17, v18, v19, v20];
  }

  return v7;
}

void __42__HMIVideoAnnotationParser_initWithArray___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 objectAtIndexedSubscript:a3];
  [v7 floatValue];
  v9 = v8;

  v10 = [v6 objectAtIndexedSubscript:0];
  [v10 floatValue];
  v12 = v11;

  v13 = v12;
  if (v12 > 1.0)
  {
    v13 = 1.0;
  }

  v14 = fmax(v13, 0.0);
  v15 = [v6 objectAtIndexedSubscript:1];
  [v15 floatValue];
  v17 = v16;

  v18 = v17;
  if (v17 > 1.0)
  {
    v18 = 1.0;
  }

  v19 = fmax(v18, 0.0);
  v20 = [v6 objectAtIndexedSubscript:2];
  [v20 floatValue];
  v22 = v21;

  v23 = v22;
  if (v22 > 1.0)
  {
    v23 = 1.0;
  }

  v24 = fmax(v23, 0.0);
  v25 = [v6 objectAtIndexedSubscript:3];

  [v25 floatValue];
  v27 = v26;

  v28 = v27;
  if (v27 > 1.0)
  {
    v28 = 1.0;
  }

  v29 = fmax(v28, 0.0);
  v30 = *(a1 + 40);
  v31 = [[HMIVideoAnnotationParserRecord alloc] initWithBoundingBox:v19 timeStamp:v14, (v29 - v19), (v24 - v14), v9];
  [v30 addObject:v31];
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)lastKnownTimeStamp
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  tracks = [(HMIVideoAnnotationParser *)self tracks];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__HMIVideoAnnotationParser_lastKnownTimeStamp__block_invoke;
  v6[3] = &unk_2787532C0;
  v6[4] = &v7;
  [tracks na_each:v6];

  CMTimeMakeWithSeconds(retstr, fmax(v8[3] + -0.05, 0.0), 1000);
  _Block_object_dispose(&v7, 8);
  return result;
}

void __46__HMIVideoAnnotationParser_lastKnownTimeStamp__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 24);
  v4 = [a2 records];
  v5 = [v4 lastObject];
  [v5 timeStamp];
  v7 = v6;

  if (v3 >= v7)
  {
    v8 = v3;
  }

  else
  {
    v8 = v7;
  }

  *(*(*(a1 + 32) + 8) + 24) = v8;
}

- (id)eventsForTimeStamp:(id *)stamp
{
  time = *stamp;
  Seconds = CMTimeGetSeconds(&time);
  tracks = [(HMIVideoAnnotationParser *)self tracks];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__HMIVideoAnnotationParser_eventsForTimeStamp___block_invoke_2;
  v9[3] = &unk_278753308;
  v11 = Seconds;
  v12 = 0x3F9999DCB5781C72;
  v10 = &__block_literal_global_9;
  v6 = [tracks na_map:v9];

  v7 = [MEMORY[0x277CBEB98] setWithArray:v6];

  return v7;
}

CGFloat __47__HMIVideoAnnotationParser_eventsForTimeStamp___block_invoke(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, float a9, float a10)
{
  MinX = CGRectGetMinX(*&a1);
  v31.origin.x = a5;
  v31.origin.y = a6;
  v31.size.width = a7;
  v31.size.height = a8;
  v24 = (CGRectGetMinX(v31) * a9 + a10 * MinX) / (a9 + a10);
  v32.origin.x = a1;
  v32.origin.y = a2;
  v32.size.width = a3;
  v32.size.height = a4;
  CGRectGetMinY(v32);
  v33.origin.x = a5;
  v33.size.height = a8;
  v33.origin.y = a6;
  v33.size.width = a7;
  CGRectGetMinY(v33);
  v34.origin.x = a1;
  v34.origin.y = a2;
  v34.size.width = a3;
  v34.size.height = a4;
  CGRectGetWidth(v34);
  v35.origin.x = a5;
  v35.origin.y = a6;
  v35.size.width = a7;
  v35.size.height = a8;
  CGRectGetWidth(v35);
  v36.origin.x = a1;
  v36.size.width = a3;
  v36.origin.y = a2;
  v36.size.height = a4;
  CGRectGetHeight(v36);
  v37.origin.x = a5;
  v37.origin.y = a6;
  v37.size.width = a7;
  v37.size.height = a8;
  CGRectGetHeight(v37);
  return v24;
}

id __47__HMIVideoAnnotationParser_eventsForTimeStamp___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 records];
  v5 = [v4 count];

  if (v5)
  {
    v6 = 0;
    while (1)
    {
      v7 = *(a1 + 40) + *(a1 + 48);
      v8 = [v3 records];
      v9 = [v8 objectAtIndexedSubscript:v6];
      [v9 timeStamp];
      v11 = v10;

      if (v7 < v11)
      {
        goto LABEL_10;
      }

      v12 = *(a1 + 40) - *(a1 + 48);
      v13 = [v3 records];
      v14 = [v13 objectAtIndexedSubscript:v6];
      [v14 timeStamp];
      v16 = v15;

      if (v12 < v16)
      {
        break;
      }

      v17 = v6 + 1;
      v18 = [v3 records];
      if (v6 + 1 >= [v18 count])
      {
      }

      else
      {
        v19 = *(a1 + 40) + *(a1 + 48);
        v20 = [v3 records];
        v21 = [v20 objectAtIndexedSubscript:v6 + 1];
        [v21 timeStamp];
        v23 = v22;

        if (v19 < v23)
        {
          v37 = *(a1 + 32);
          v75 = [v3 records];
          v38 = [v75 objectAtIndexedSubscript:v6];
          [v38 boundingBox];
          v74 = v39;
          v41 = v40;
          v43 = v42;
          v45 = v44;
          v46 = [v3 records];
          v47 = [v46 objectAtIndexedSubscript:v6 + 1];
          [v47 boundingBox];
          v49 = v48;
          v51 = v50;
          v53 = v52;
          v55 = v54;
          v56 = *(a1 + 40);
          v57 = [v3 records];
          v58 = [v57 objectAtIndexedSubscript:v6];
          [v58 timeStamp];
          *&v56 = v56 - v59;
          v60 = [v3 records];
          v61 = [v60 objectAtIndexedSubscript:v6 + 1];
          [v61 timeStamp];
          *&v62 = v62 - *(a1 + 40);
          v63 = (*(v37 + 16))(v37, v74, v41, v43, v45, v49, v51, v53, v55, COERCE_DOUBLE(__PAIR64__(LODWORD(v62), LODWORD(v56))));
          v65 = v64;
          v67 = v66;
          v69 = v68;

          v70 = [v3 eventClass];
          v71 = [v3 UUID];
          v72 = [HMIVideoAnnotationParser eventForClass:v70 boundingBox:v71 UUID:v63, v65, v67, v69];
LABEL_12:

          goto LABEL_13;
        }
      }

      v24 = [v3 records];
      v25 = [v24 count];

      v6 = v17;
      if (v17 >= v25)
      {
        goto LABEL_10;
      }
    }

    v26 = [v3 eventClass];
    v71 = [v3 records];
    v27 = [v71 objectAtIndexedSubscript:v6];
    [v27 boundingBox];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v36 = [v3 UUID];
    v72 = [HMIVideoAnnotationParser eventForClass:v26 boundingBox:v36 UUID:v29, v31, v33, v35];

    goto LABEL_12;
  }

LABEL_10:
  v72 = 0;
LABEL_13:

  return v72;
}

- (id)eventsForFragment
{
  v3 = [MEMORY[0x277CBEB58] set];
  tracks = [(HMIVideoAnnotationParser *)self tracks];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__HMIVideoAnnotationParser_eventsForFragment__block_invoke;
  v8[3] = &unk_278753330;
  v9 = v3;
  v5 = v3;
  [tracks na_each:v8];

  v6 = [v5 na_map:&__block_literal_global_67];

  return v6;
}

void __45__HMIVideoAnnotationParser_eventsForFragment__block_invoke(uint64_t a1, void *a2)
{
  v32 = a2;
  if (([*(a1 + 32) containsObject:{objc_msgSend(v32, "eventClass")}] & 1) == 0)
  {
    v3 = [v32 eventClass];
    if (v3 != objc_opt_class())
    {
      v5 = [v32 records];
      v6 = [v5 count];

      if (!v6)
      {
        goto LABEL_11;
      }

      v7 = 0;
      while (1)
      {
        v8 = v7++;
        v9 = [v32 records];
        v10 = [v9 count];

        v11 = v7;
        if (v7 < v10)
        {
          break;
        }

LABEL_8:
        v30 = [v32 records];
        v31 = [v30 count];

        if (v7 >= v31)
        {
          goto LABEL_11;
        }
      }

      while (1)
      {
        v12 = [v32 records];
        v13 = [v12 objectAtIndexedSubscript:v8];
        [v13 boundingBox];
        v15 = v14;
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v22 = [v32 records];
        v23 = [v22 objectAtIndexedSubscript:v11];
        [v23 boundingBox];
        LODWORD(v15) = HMICGRectMaxParallelEdgeDistanceRatio(v15, v17, v19, v21, v24, v25, v26, v27);

        v4 = *&v15;
        if (*&v15 > 0.05)
        {
          break;
        }

        ++v11;
        v28 = [v32 records];
        v29 = [v28 count];

        if (v11 >= v29)
        {
          goto LABEL_8;
        }
      }
    }

    [*(a1 + 32) addObject:{objc_msgSend(v32, "eventClass", v4)}];
  }

LABEL_11:
}

id __45__HMIVideoAnnotationParser_eventsForFragment__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCAD78] UUID];
  v4 = [HMIVideoAnnotationParser eventForClass:a2 boundingBox:v3 UUID:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];

  return v4;
}

+ (id)eventForClass:(Class)class boundingBox:(CGRect)box UUID:(id)d
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  dCopy = d;
  v11 = [[HMIConfidence alloc] initWithValue:&unk_2840754F8 levelThresholds:1.0];
  if (objc_opt_class() == class)
  {
    v13 = [HMIFaceCrop alloc];
    uUID = [MEMORY[0x277CCAD78] UUID];
    data = [MEMORY[0x277CBEA90] data];
    date = [MEMORY[0x277CBEAA8] date];
    v17 = *MEMORY[0x277CBF3A0];
    v18 = *(MEMORY[0x277CBF3A0] + 8);
    v19 = *(MEMORY[0x277CBF3A0] + 16);
    v20 = *(MEMORY[0x277CBF3A0] + 24);
    v21 = [(HMIFaceCrop *)v13 initWithUUID:uUID dataRepresentation:data dateCreated:date faceBoundingBox:*MEMORY[0x277CBF3A0], v18, v19, v20];

    v22 = [HMIFaceprint alloc];
    uUID2 = [MEMORY[0x277CCAD78] UUID];
    data2 = [MEMORY[0x277CBEA90] data];
    uUID3 = [MEMORY[0x277CCAD78] UUID];
    uUID4 = [MEMORY[0x277CCAD78] UUID];
    v27 = [(HMIFaceprint *)v22 initWithUUID:uUID2 data:data2 modelUUID:uUID3 faceCropUUID:uUID4];

    v28 = [HMIFaceClassification alloc];
    uUID5 = [MEMORY[0x277CCAD78] UUID];
    v30 = [(HMIFaceClassification *)v28 initWithPersonUUID:0 sourceUUID:uUID5 sessionEntityUUID:dCopy confidence:2 familiarity:1.0];

    v31 = [HMIFaceRecognition alloc];
    v32 = [MEMORY[0x277CBEB98] setWithObject:v30];
    v33 = [(HMIFaceRecognition *)v31 initWithFaceCrop:v21 faceprint:v27 classifications:v32 predictedLinkedEntityUUIDs:0 faceQualityScore:1 sessionEntityAssignment:dCopy sessionEntityUUID:-1.0];

    v34 = [[HMIVideoAnalyzerEventFace alloc] initWithConfidence:v11 boundingBox:v33 faceRecognition:v17, v18, v19, v20];
    height = [[HMIVideoAnalyzerEventPerson alloc] initWithConfidence:v11 boundingBox:v34 face:x, y, width, height];
  }

  else
  {
    height = [[class alloc] initWithConfidence:v11 boundingBox:{x, y, width, height}];
  }

  return height;
}

@end