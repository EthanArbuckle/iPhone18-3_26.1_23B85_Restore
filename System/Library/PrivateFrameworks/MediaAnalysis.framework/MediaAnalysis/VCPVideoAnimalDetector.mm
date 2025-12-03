@interface VCPVideoAnimalDetector
- (VCPVideoAnimalDetector)initWithTransform:(CGAffineTransform *)transform;
- (VCPVideoAnimalDetector)initWithTransform:(CGAffineTransform *)transform withExistingAnimalprints:(id)animalprints;
- (int)analyzeFrame:(__CVBuffer *)frame faces:(id)faces torsos:(id)torsos;
- (int)analyzeFrame:(__CVBuffer *)frame withTimestamp:(id *)timestamp andDuration:(id *)duration flags:(unint64_t *)flags;
- (int)clusterFaces;
- (int)finishAnalysisPass:(id *)pass;
- (int)updateWithExistingAnimals;
@end

@implementation VCPVideoAnimalDetector

- (VCPVideoAnimalDetector)initWithTransform:(CGAffineTransform *)transform
{
  v3 = *&transform->c;
  v5[0] = *&transform->a;
  v5[1] = v3;
  v5[2] = *&transform->tx;
  return [(VCPVideoAnimalDetector *)self initWithTransform:v5 withExistingAnimalprints:0];
}

- (VCPVideoAnimalDetector)initWithTransform:(CGAffineTransform *)transform withExistingAnimalprints:(id)animalprints
{
  v48 = *MEMORY[0x1E69E9840];
  animalprintsCopy = animalprints;
  v39.receiver = self;
  v39.super_class = VCPVideoAnimalDetector;
  v7 = [(VCPVideoAnimalDetector *)&v39 init];
  v8 = v7;
  if (v7)
  {
    v9 = *(MEMORY[0x1E6960C80] + 16);
    *(v7 + 72) = *MEMORY[0x1E6960C80];
    *(v7 + 11) = v9;
    v10 = *(v7 + 1);
    *(v7 + 1) = 0;

    array = [MEMORY[0x1E695DF70] array];
    v12 = *(v8 + 3);
    *(v8 + 3) = array;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v14 = *(v8 + 5);
    *(v8 + 5) = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    v16 = *(v8 + 6);
    *(v8 + 6) = dictionary2;

    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
    v18 = *(v8 + 7);
    *(v8 + 7) = dictionary3;

    array2 = [MEMORY[0x1E695DF70] array];
    v20 = *(v8 + 3);
    *(v8 + 3) = array2;

    array3 = [MEMORY[0x1E695DF70] array];
    v22 = *(v8 + 4);
    *(v8 + 4) = array3;

    objc_storeStrong(v8 + 2, animalprints);
    dictionary4 = [MEMORY[0x1E695DF90] dictionary];
    v24 = *(v8 + 8);
    *(v8 + 8) = dictionary4;

    v40 = 0;
    v41 = &v40;
    v42 = 0x2050000000;
    v25 = getGDVUStreamingGalleryClass(void)::softClass;
    v43 = getGDVUStreamingGalleryClass(void)::softClass;
    if (!getGDVUStreamingGalleryClass(void)::softClass)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v45 = ___ZL28getGDVUStreamingGalleryClassv_block_invoke_0;
      v46 = &unk_1E834C0F0;
      v47 = &v40;
      ___ZL28getGDVUStreamingGalleryClassv_block_invoke_0(&buf);
      v25 = v41[3];
    }

    v26 = v25;
    _Block_object_dispose(&v40, 8);
    v27 = [v25 alloc];
    v40 = 0;
    v41 = &v40;
    v42 = 0x2050000000;
    v28 = getGDVUEntityRecognitionClientClass(void)::softClass;
    v43 = getGDVUEntityRecognitionClientClass(void)::softClass;
    if (!getGDVUEntityRecognitionClientClass(void)::softClass)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v45 = ___ZL35getGDVUEntityRecognitionClientClassv_block_invoke_0;
      v46 = &unk_1E834C0F0;
      v47 = &v40;
      ___ZL35getGDVUEntityRecognitionClientClassv_block_invoke_0(&buf);
      v28 = v41[3];
    }

    v29 = v28;
    _Block_object_dispose(&v40, 8);
    photos = [v28 photos];
    v38 = 0;
    v31 = [v27 initWithClient:photos error:&v38];
    v32 = v38;
    v33 = *(v8 + 12);
    *(v8 + 12) = v31;

    v34 = v8;
    if (!*(v8 + 12))
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v35 = [v32 description];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v35;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to init GDVUStreamingGallery for Animal Detector %@", &buf, 0xCu);
      }

      v34 = 0;
    }
  }

  else
  {
    v34 = 0;
  }

  v36 = v34;

  return v36;
}

- (int)analyzeFrame:(__CVBuffer *)frame faces:(id)faces torsos:(id)torsos
{
  v136 = *MEMORY[0x1E69E9840];
  facesCopy = faces;
  torsosCopy = torsos;
  Width = CVPixelBufferGetWidth(frame);
  Height = CVPixelBufferGetHeight(frame);
  context = objc_autoreleasePoolPush();
  array = [MEMORY[0x1E695DF70] array];
  v9 = objc_alloc(MEMORY[0x1E69845B8]);
  v103 = [v9 initWithCVPixelBuffer:frame options:MEMORY[0x1E695E0F8]];
  array2 = [MEMORY[0x1E695DF70] array];
  v10 = VCPSignPostLog();
  v11 = os_signpost_id_generate(v10);

  v12 = VCPSignPostLog();
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    LOWORD(buf.a) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "VCPVideoAnimalDetectorFaceAnimalsDetection", "", &buf, 2u);
  }

  v131 = 0;
  v14 = [VCPFaceUtils configureVNRequest:&v131 withClass:objc_opt_class() andProcessingVersion:15];
  v15 = v131;
  v16 = array2;
  v102 = v15;
  if (!v14)
  {
    if (v15)
    {
      [array2 addObject:v15];
    }

    v130 = 0;
    v14 = [VCPFaceUtils configureVNRequest:&v130 withClass:objc_opt_class() andProcessingVersion:15];
    v18 = v130;
    v99 = v18;
    if (v14)
    {
      v105 = 0;
LABEL_23:
      v17 = 4;
LABEL_24:

      v16 = array2;
      goto LABEL_25;
    }

    if (v18)
    {
      [array2 addObject:v18];
    }

    v129 = 0;
    v19 = [v103 performRequests:array2 error:&v129];
    v105 = v129;
    if ((v19 & 1) == 0)
    {
      v14 = -18;
      goto LABEL_23;
    }

    v20 = VCPSignPostLog();
    v21 = v20;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      LOWORD(buf.a) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v21, OS_SIGNPOST_INTERVAL_END, v11, "VCPVideoAnimalDetectorFaceAnimalsDetection", "", &buf, 2u);
    }

    v22 = VCPSignPostLog();
    v23 = os_signpost_id_generate(v22);

    v24 = VCPSignPostLog();
    v25 = v24;
    if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      LOWORD(buf.a) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v25, OS_SIGNPOST_INTERVAL_BEGIN, v23, "VCPVideoAnimalDetectorAnimalprint", "", &buf, 2u);
    }

    [array2 removeAllObjects];
    results = [v102 results];
    v27 = [results count] == 0;

    if (v27)
    {
      v98 = 0;
    }

    else
    {
      v128 = 0;
      v14 = [VCPFaceUtils configureVNRequest:&v128 withClass:objc_opt_class() andProcessingVersion:15];
      v98 = v128;
      if (v14)
      {
        v28 = 0;
        v17 = 4;
LABEL_81:

        goto LABEL_24;
      }

      results2 = [v102 results];
      [v98 setInputDetectedObjectObservations:results2];

      [array2 addObject:{v98, 0}];
    }

    results3 = [v99 results];
    v32 = [results3 count] == 0;

    if (v32)
    {
      v33 = [array2 count];
    }

    else
    {
      v127 = 0;
      v14 = [VCPFaceUtils configureVNRequest:&v127 withClass:objc_opt_class() andProcessingVersion:15];
      v97 = v127;
      if (v14)
      {
        v17 = 4;
LABEL_80:
        v28 = v97;
        goto LABEL_81;
      }

      results4 = [v99 results];
      [v97 setInputDetectedObjectObservations:results4];

      [array2 addObject:v97];
      v33 = [array2 count];
    }

    if (v33)
    {
      v126 = v105;
      v35 = [v103 performRequests:array2 error:&v126];
      v36 = v126;

      if (!v35)
      {
        v14 = -18;
        v17 = 4;
        v105 = v36;
        goto LABEL_80;
      }

      v105 = v36;
    }

    v37 = VCPSignPostLog();
    v38 = v37;
    if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
    {
      LOWORD(buf.a) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v38, OS_SIGNPOST_INTERVAL_END, v23, "VCPVideoAnimalDetectorAnimalprint", "", &buf, 2u);
    }

    results5 = [v98 results];
    v40 = results5 == 0;

    if (!v40)
    {
      results6 = [v98 results];
      [array addObjectsFromArray:results6];
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    results7 = [v97 results];
    v43 = [results7 countByEnumeratingWithState:&v122 objects:v135 count:16];
    if (v43)
    {
      v44 = *v123;
      do
      {
        for (i = 0; i != v43; ++i)
        {
          if (*v123 != v44)
          {
            objc_enumerationMutation(results7);
          }

          v46 = *(*(&v122 + 1) + 8 * i);
          v47 = objc_autoreleasePoolPush();
          groupId = [v46 groupId];
          v49 = groupId == 0;

          if (!v49)
          {
            groupId2 = [v46 groupId];
            [dictionary setObject:v46 forKeyedSubscript:groupId2];
          }

          objc_autoreleasePoolPop(v47);
        }

        v43 = [results7 countByEnumeratingWithState:&v122 objects:v135 count:16];
      }

      while (v43);
    }

    v121 = 0uLL;
    v117 = 0u;
    v118 = 0u;
    v119 = 0u;
    v120 = 0u;
    obj = array;
    v51 = [obj countByEnumeratingWithState:&v117 objects:v134 count:16];
    if (v51)
    {
      v52 = Width;
      v53 = -Height;
      v54 = Height;
      v106 = *v118;
      do
      {
        v107 = v51;
        for (j = 0; j != v107; ++j)
        {
          if (*v118 != v106)
          {
            objc_enumerationMutation(obj);
          }

          v56 = *(*(&v117 + 1) + 8 * j);
          v57 = objc_autoreleasePoolPush();
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
          {
            LODWORD(buf.a) = 138412290;
            *(&buf.a + 4) = v56;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[VCPVideoAnimalDetector] Detected face %@", &buf, 0xCu);
          }

          [v56 boundingBox];
          *&buf.b = v121;
          buf.a = v52;
          buf.d = v53;
          buf.tx = 0.0;
          buf.ty = v54;
          v138 = CGRectApplyAffineTransform(v137, &buf);
          x = v138.origin.x;
          y = v138.origin.y;
          v60 = v138.size.width;
          v61 = v138.size.height;
          v62 = objc_alloc_init(VCPAnimal);
          [(VCPAnimal *)v62 setBounds:x, y, v60, v61];
          LODWORD(v63) = 1.0;
          [(VCPAnimal *)v62 setConfidence:v63];
          animalprint = [v56 animalprint];
          [(VCPAnimal *)v62 setAnimalPrint:animalprint];

          labels = [v56 labels];
          firstObject = [labels firstObject];
          identifier = [firstObject identifier];
          [(VCPAnimal *)v62 setLabel:identifier];

          groupId3 = [v56 groupId];
          if (groupId3)
          {
            groupId4 = [v56 groupId];
            v70 = [dictionary objectForKeyedSubscript:groupId4];
            v71 = v70 == 0;

            if (!v71)
            {
              labels2 = [v56 labels];
              firstObject2 = [labels2 firstObject];
              identifier2 = [firstObject2 identifier];

              groupId5 = [v56 groupId];
              v76 = [dictionary objectForKeyedSubscript:groupId5];
              labels3 = [v76 labels];
              firstObject3 = [labels3 firstObject];
              identifier3 = [firstObject3 identifier];

              if (([identifier2 containsString:identifier3] & 1) != 0 || objc_msgSend(identifier3, "containsString:", identifier2))
              {
                groupId6 = [v56 groupId];
                v81 = [dictionary objectForKeyedSubscript:groupId6];
                animalprint2 = [v81 animalprint];
                [(VCPAnimal *)v62 setAnimalPrint:animalprint2];

                groupId7 = [v56 groupId];
                v84 = [dictionary objectForKeyedSubscript:groupId7];
                [v84 boundingBox];
                [(VCPAnimal *)v62 setTorsoBounds:?];

                groupId8 = [v56 groupId];
                [dictionary removeObjectForKey:groupId8];

                [(VCPAnimal *)v62 setLabel:identifier3];
              }
            }
          }

          [facesCopy addObject:v62];

          objc_autoreleasePoolPop(v57);
        }

        v51 = [obj countByEnumeratingWithState:&v117 objects:v134 count:16];
      }

      while (v51);
    }

    v115 = 0u;
    v116 = 0u;
    v113 = 0u;
    v114 = 0u;
    obja = dictionary;
    v86 = [obja countByEnumeratingWithState:&v113 objects:v132 count:16];
    if (v86)
    {
      v87 = *v114;
      do
      {
        for (k = 0; k != v86; ++k)
        {
          if (*v114 != v87)
          {
            objc_enumerationMutation(obja);
          }

          v89 = *(*(&v113 + 1) + 8 * k);
          v90 = objc_autoreleasePoolPush();
          v91 = [obja objectForKeyedSubscript:v89];
          v92 = objc_alloc_init(VCPAnimalBody);
          animalprint3 = [v91 animalprint];
          [(VCPAnimalBody *)v92 setAnimalPrint:animalprint3];

          [v91 boundingBox];
          [(VCPAnimalBody *)v92 setBounds:?];
          labels4 = [v91 labels];
          firstObject4 = [labels4 firstObject];
          identifier4 = [firstObject4 identifier];
          [(VCPAnimalBody *)v92 setLabel:identifier4];

          [torsosCopy addObject:v92];
          objc_autoreleasePoolPop(v90);
        }

        v86 = [obja countByEnumeratingWithState:&v113 objects:v132 count:16];
      }

      while (v86);
    }

    v17 = 0;
    v14 = 0;
    goto LABEL_80;
  }

  v105 = 0;
  v17 = 4;
LABEL_25:

  objc_autoreleasePoolPop(context);
  if ((v17 | 4) == 4 && v14 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf.a) = 138412290;
    *(&buf.a + 4) = v105;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VCPAnimalDetector] Failed to detect animals - %@", &buf, 0xCu);
  }

  return v14;
}

- (int)analyzeFrame:(__CVBuffer *)frame withTimestamp:(id *)timestamp andDuration:(id *)duration flags:(unint64_t *)flags
{
  v44 = *MEMORY[0x1E69E9840];
  if (self->_results)
  {
    return -18;
  }

  if (CVPixelBufferGetPixelFormatType(frame) != 875704438 && CVPixelBufferGetPixelFormatType(frame) != 875704422)
  {
    return -50;
  }

  *&lhs.start.value = *&timestamp->var0;
  lhs.start.epoch = timestamp->var3;
  rhs = self->_timeLastDetection;
  CMTimeSubtract(&time, &lhs.start, &rhs);
  Seconds = CMTimeGetSeconds(&time);
  [(VCPVideoAnimalDetector *)self minProcessTimeIntervalInSecs];
  if (Seconds < v12)
  {
    return 0;
  }

  v13 = objc_autoreleasePoolPush();
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v6 = [(VCPVideoAnimalDetector *)self analyzeFrame:frame faces:array torsos:?];
  if (!v6)
  {
    v14 = *&timestamp->var0;
    self->_timeLastDetection.epoch = timestamp->var3;
    *&self->_timeLastDetection.value = v14;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v15 = array;
    v16 = [v15 countByEnumeratingWithState:&v36 objects:v43 count:16];
    if (v16)
    {
      v17 = *v37;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v37 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v36 + 1) + 8 * i);
          *&lhs.start.value = *&timestamp->var0;
          lhs.start.epoch = timestamp->var3;
          [(VCPVideoAnimalDetector *)self minProcessTimeIntervalInSecs];
          CMTimeMake(&rhs, (v20 * 1000.0), 1000);
          CMTimeRangeMake(&v35, &lhs.start, &rhs);
          lhs = v35;
          [v19 setTimerange:&lhs];
          [(NSMutableArray *)self->_allAnimalFaces addObject:v19];
        }

        v16 = [v15 countByEnumeratingWithState:&v36 objects:v43 count:16];
      }

      while (v16);
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v21 = array2;
    v22 = [v21 countByEnumeratingWithState:&v30 objects:v42 count:16];
    if (v22)
    {
      v23 = *v31;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v31 != v23)
          {
            objc_enumerationMutation(v21);
          }

          v25 = *(*(&v30 + 1) + 8 * j);
          *&lhs.start.value = *&timestamp->var0;
          lhs.start.epoch = timestamp->var3;
          [(VCPVideoAnimalDetector *)self minProcessTimeIntervalInSecs];
          CMTimeMake(&rhs, (v26 * 1000.0), 1000);
          CMTimeRangeMake(&v29, &lhs.start, &rhs);
          lhs = v29;
          [v25 setTimerange:&lhs];
          [(NSMutableArray *)self->_allTorsos addObject:v25];
        }

        v22 = [v21 countByEnumeratingWithState:&v30 objects:v42 count:16];
      }

      while (v22);
    }
  }

  objc_autoreleasePoolPop(v13);
  return v6;
}

- (int)clusterFaces
{
  v159 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v142 = 0u;
  v143 = 0u;
  v140 = 0u;
  v141 = 0u;
  v2 = self->_existingAnimalprints;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v140 objects:v154 count:16];
  if (v3)
  {
    v4 = 0;
    v5 = *v141;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v141 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v140 + 1) + 8 * i) objectForKeyedSubscript:@"attributes"];
        v8 = [v7 objectForKeyedSubscript:@"animalId"];

        intValue = [v8 intValue];
        if (intValue > v4)
        {
          v4 = intValue;
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v140 objects:v154 count:16];
    }

    while (v3);
    v10 = v4 + 1;
  }

  else
  {
    v10 = 1;
  }

  v112 = v10;

  if ([(NSMutableArray *)self->_allAnimalFaces count]< 2)
  {
    if ([(NSMutableArray *)self->_allAnimalFaces count]== 1)
    {
      v30 = [(NSMutableArray *)self->_allAnimalFaces objectAtIndexedSubscript:0];
      [v30 setAnimalID:v112];

      v31 = objc_alloc(MEMORY[0x1E6984400]);
      v32 = [(NSMutableArray *)self->_allAnimalFaces objectAtIndexedSubscript:0];
      animalPrint = [v32 animalPrint];
      v34 = [(NSMutableArray *)self->_allAnimalFaces objectAtIndexedSubscript:0];
      [v34 confidence];
      v35 = [v31 initWithAnimalprint:animalPrint confidence:?];

      animalPrints = self->_animalPrints;
      v37 = [MEMORY[0x1E696AD98] numberWithInt:v112];
      [(NSMutableDictionary *)animalPrints setObject:v35 forKey:v37];
    }
  }

  else
  {
    context = objc_autoreleasePoolPush();
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VideoAnimalDetector - use VU for in-asset animal clustering", &buf, 2u);
    }

    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    v11 = self->_allAnimalFaces;
    v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v136 objects:v153 count:16];
    if (v12)
    {
      v13 = 0;
      v14 = *v137;
      do
      {
        for (j = 0; j != v12; ++j)
        {
          if (*v137 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v136 + 1) + 8 * j);
          v17 = objc_alloc(MEMORY[0x1E6984400]);
          animalPrint2 = [v16 animalPrint];
          [v16 confidence];
          v19 = [v17 initWithAnimalprint:animalPrint2 confidence:?];

          [array addObject:v19];
          [v16 setAnimalID:v13];

          v13 = (v13 + 1);
        }

        v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v136 objects:v153 count:16];
      }

      while (v12);
    }

    v144 = 0;
    v145 = &v144;
    v146 = 0x2050000000;
    v20 = getGDVUContextClass(void)::softClass;
    v147 = getGDVUContextClass(void)::softClass;
    if (!getGDVUContextClass(void)::softClass)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v156 = ___ZL19getGDVUContextClassv_block_invoke_0;
      v157 = &unk_1E834C0F0;
      v158 = &v144;
      ___ZL19getGDVUContextClassv_block_invoke_0(&buf);
      v20 = v145[3];
    }

    v21 = v20;
    _Block_object_dispose(&v144, 8);
    v99 = objc_alloc_init(v20);
    v22 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    [v99 setMoment:v22];

    gallery = self->_gallery;
    v135 = 0;
    [(GDVUStreamingGallery *)gallery resetAndReturnError:&v135];
    v24 = v135;
    v25 = self->_gallery;
    v134 = v24;
    v100 = [(GDVUStreamingGallery *)v25 addWithObservations:array observationIdentifiers:0 trackIdentifiers:0 context:v99 error:&v134];
    v98 = v134;

    v26 = [v100 count];
    if (v26 == [array count])
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      for (k = 0; k < [array count]; ++k)
      {
        v28 = [MEMORY[0x1E696AD98] numberWithInt:k];
        v29 = [v100 objectAtIndexedSubscript:k];
        [dictionary setObject:v28 forKeyedSubscript:v29];
      }

      dictionary2 = [MEMORY[0x1E695DF90] dictionary];

      v41 = self->_gallery;
      v133 = 0;
      v42 = [(GDVUStreamingGallery *)v41 updateWithMaxKeyFacesPerCluster:1 sortBy:&unk_1F49BE980 error:&v133];
      v43 = v133;
      v95 = v42;
      v98 = v43;
      v44 = [v42 count];
      v45 = v44 == [array count] && v43 == 0;
      v46 = v45;
      v96 = v46;
      if (v45)
      {
        v107 = [MEMORY[0x1E695DFA8] set];
        v131 = 0u;
        v132 = 0u;
        v129 = 0u;
        v130 = 0u;
        obj = v95;
        v47 = [obj countByEnumeratingWithState:&v129 objects:v152 count:16];
        if (v47)
        {
          v48 = *v130;
          do
          {
            for (m = 0; m != v47; ++m)
            {
              if (*v130 != v48)
              {
                objc_enumerationMutation(obj);
              }

              entityIdentifier = [*(*(&v129 + 1) + 8 * m) entityIdentifier];
              stringValue = [entityIdentifier stringValue];
              [v107 addObject:stringValue];
            }

            v47 = [obj countByEnumeratingWithState:&v129 objects:v152 count:16];
          }

          while (v47);
        }

        v127 = 0u;
        v128 = 0u;
        v125 = 0u;
        v126 = 0u;
        v93 = v107;
        v52 = [v93 countByEnumeratingWithState:&v125 objects:v151 count:16];
        if (v52)
        {
          v92 = *v126;
          do
          {
            v94 = 0;
            v91 = v52;
            do
            {
              if (*v126 != v92)
              {
                objc_enumerationMutation(v93);
              }

              v104 = *(*(&v125 + 1) + 8 * v94);
              v121 = 0u;
              v122 = 0u;
              v123 = 0u;
              v124 = 0u;
              v101 = obj;
              v105 = [v101 countByEnumeratingWithState:&v121 objects:v150 count:16];
              if (v105)
              {
                v103 = *v122;
                do
                {
                  for (n = 0; n != v105; ++n)
                  {
                    if (*v122 != v103)
                    {
                      objc_enumerationMutation(v101);
                    }

                    v53 = *(*(&v121 + 1) + 8 * n);
                    entityIdentifier2 = [v53 entityIdentifier];
                    stringValue2 = [entityIdentifier2 stringValue];
                    v56 = [v104 isEqualToString:stringValue2];

                    if (v56)
                    {
                      v57 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v53, "observationIdentifier")}];
                      v58 = [dictionary objectForKeyedSubscript:v57];
                      integerValue = [v58 integerValue];

                      if ([v53 isKeyFace])
                      {
                        v60 = [array objectAtIndexedSubscript:integerValue];
                        animalprint = [v60 animalprint];
                        v62 = animalprint == 0;

                        if (v62)
                        {
                          if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                          {
                            LOWORD(buf) = 0;
                            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "AnimalDetector : cluster animal does not contain animalprint", &buf, 2u);
                          }
                        }

                        else
                        {
                          v63 = self->_animalPrints;
                          v64 = [MEMORY[0x1E696AD98] numberWithInt:v112];
                          [(NSMutableDictionary *)v63 setObject:v60 forKey:v64];
                        }
                      }

                      v119 = 0u;
                      v120 = 0u;
                      v117 = 0u;
                      v118 = 0u;
                      v65 = self->_allAnimalFaces;
                      v66 = [(NSMutableArray *)v65 countByEnumeratingWithState:&v117 objects:v149 count:16];
                      if (v66)
                      {
                        v67 = *v118;
                        do
                        {
                          for (ii = 0; ii != v66; ++ii)
                          {
                            if (*v118 != v67)
                            {
                              objc_enumerationMutation(v65);
                            }

                            v69 = *(*(&v117 + 1) + 8 * ii);
                            if (integerValue == [v69 animalID])
                            {
                              v70 = [MEMORY[0x1E696AD98] numberWithInt:v112];
                              v71 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v69, "animalID")}];
                              [dictionary2 setObject:v70 forKeyedSubscript:v71];

                              if ([v53 isKeyFace])
                              {
                                animalPrintLabels = self->_animalPrintLabels;
                                label = [v69 label];
                                v74 = [MEMORY[0x1E696AD98] numberWithInt:v112];
                                [(NSMutableDictionary *)animalPrintLabels setObject:label forKey:v74];
                              }
                            }
                          }

                          v66 = [(NSMutableArray *)v65 countByEnumeratingWithState:&v117 objects:v149 count:16];
                        }

                        while (v66);
                      }
                    }
                  }

                  v105 = [v101 countByEnumeratingWithState:&v121 objects:v150 count:16];
                }

                while (v105);
              }

              ++v112;
              ++v94;
            }

            while (v94 != v91);
            v52 = [v93 countByEnumeratingWithState:&v125 objects:v151 count:16];
          }

          while (v52);
        }

        v115 = 0u;
        v116 = 0u;
        v113 = 0u;
        v114 = 0u;
        v75 = self->_allAnimalFaces;
        v76 = [(NSMutableArray *)v75 countByEnumeratingWithState:&v113 objects:v148 count:16];
        if (v76)
        {
          v77 = *v114;
          v78 = MEMORY[0x1E69E9C10];
          do
          {
            for (jj = 0; jj != v76; ++jj)
            {
              if (*v114 != v77)
              {
                objc_enumerationMutation(v75);
              }

              v80 = *(*(&v113 + 1) + 8 * jj);
              v81 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v80, "animalID")}];
              v82 = [dictionary2 objectForKeyedSubscript:v81];

              if (v82)
              {
                intValue2 = [v82 intValue];
              }

              else
              {
                if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
                {
                  animalID = [v80 animalID];
                  LODWORD(buf) = 67109120;
                  DWORD1(buf) = animalID;
                  _os_log_impl(&dword_1C9B70000, v78, OS_LOG_TYPE_DEFAULT, "AnimalDetectior: no cluster ID found for animal %d - set to 0", &buf, 8u);
                }

                intValue2 = 0;
              }

              [v80 setAnimalID:intValue2];
            }

            v76 = [(NSMutableArray *)v75 countByEnumeratingWithState:&v113 objects:v148 count:16];
          }

          while (v76);
        }
      }

      else
      {
        v85 = MediaAnalysisLogLevel();
        if (v85 >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v86 = [v43 description];
          v87 = v86;
          uTF8String = [v86 UTF8String];
          LODWORD(buf) = 136315138;
          *(&buf + 4) = uTF8String;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Gallery failed to cluster %s", &buf, 0xCu);
        }
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v38 = [v98 description];
        v39 = v38;
        uTF8String2 = [v38 UTF8String];
        LODWORD(buf) = 136315138;
        *(&buf + 4) = uTF8String2;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Gallery failed to add observation %s", &buf, 0xCu);
      }

      v96 = 0;
    }

    objc_autoreleasePoolPop(context);
    if ((v96 & 1) == 0)
    {
      v89 = -18;
      goto LABEL_104;
    }
  }

  v89 = 0;
LABEL_104:

  return v89;
}

- (int)updateWithExistingAnimals
{
  v35 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = self->_existingAnimalprints;
  v2 = [(NSArray *)obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v2)
  {
    v3 = *v31;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v31 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v30 + 1) + 8 * i);
        v6 = [v5 objectForKeyedSubscript:{@"attributes", dictionary2}];
        v7 = [v6 objectForKeyedSubscript:@"animalId"];

        v8 = [v5 objectForKeyedSubscript:@"attributes"];
        v9 = [v8 objectForKeyedSubscript:@"animalPrint"];

        if (v7)
        {
          v10 = v9 == 0;
        }

        else
        {
          v10 = 1;
        }

        if (v10)
        {
          goto LABEL_17;
        }

        v11 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v9 error:0];
        v12 = [v11 decodeObjectOfClass:objc_opt_class() forKey:@"animalPrint"];
        if (!v12)
        {

LABEL_17:
          v15 = -18;
          goto LABEL_18;
        }

        [dictionary setObject:v12 forKeyedSubscript:v7];
      }

      v2 = [(NSArray *)obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  animalPrints = self->_animalPrints;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __51__VCPVideoAnimalDetector_updateWithExistingAnimals__block_invoke;
  v22[3] = &unk_1E834D138;
  v23 = dictionary;
  v25 = &v26;
  v14 = dictionary2;
  v24 = v14;
  [(NSMutableDictionary *)animalPrints enumerateKeysAndObjectsUsingBlock:v22];
  v15 = *(v27 + 6);
  if (!v15)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __51__VCPVideoAnimalDetector_updateWithExistingAnimals__block_invoke_3;
    v21[3] = &unk_1E834C340;
    v21[4] = self;
    [v14 enumerateKeysAndObjectsUsingBlock:v21];
  }

  _Block_object_dispose(&v26, 8);
LABEL_18:

  return v15;
}

void __51__VCPVideoAnimalDetector_updateWithExistingAnimals__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1065353216;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v7 = [v6 animalprint];

  if (v7)
  {
    v8 = *(a1 + 32);
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __51__VCPVideoAnimalDetector_updateWithExistingAnimals__block_invoke_2;
    v15 = &unk_1E834D110;
    v9 = v6;
    v10 = *(a1 + 48);
    v16 = v9;
    v17 = v10;
    v18 = &v24;
    v19 = &v20;
    [v8 enumerateKeysAndObjectsUsingBlock:&v12];
    if (v21[3] >= 1 && v25[6] < 0.285)
    {
      v11 = [MEMORY[0x1E696AD98] numberWithInteger:{v12, v13, v14, v15}];
      [*(a1 + 40) setObject:v11 forKeyedSubscript:v5];
    }
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
}

void __51__VCPVideoAnimalDetector_updateWithExistingAnimals__block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v12 = a2;
  v7 = a3;
  v8 = [*(a1 + 32) animalprint];
  v9 = [v8 computeDistance:v7 withDistanceFunction:0 error:0];

  if (v9)
  {
    [v9 floatValue];
    if (v10 < *(*(*(a1 + 48) + 8) + 24))
    {
      [v9 floatValue];
      *(*(*(a1 + 48) + 8) + 24) = v11;
      *(*(*(a1 + 56) + 8) + 24) = [v12 integerValue];
    }
  }

  else
  {
    *a4 = 1;
    *(*(*(a1 + 40) + 8) + 24) = -18;
  }
}

void __51__VCPVideoAnimalDetector_updateWithExistingAnimals__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  [*(*(a1 + 32) + 40) removeObjectForKey:v5];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = *(*(a1 + 32) + 24);
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        v12 = [v11 animalID];
        if (v12 == [v5 intValue])
        {
          [v11 setAnimalID:{objc_msgSend(v6, "intValue")}];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (int)finishAnalysisPass:(id *)pass
{
  v54 = *MEMORY[0x1E69E9840];
  if (self->_results)
  {
    return -18;
  }

  clusterFaces = [(VCPVideoAnimalDetector *)self clusterFaces];
  if (clusterFaces)
  {
    return clusterFaces;
  }

  if ([(NSArray *)self->_existingAnimalprints count])
  {
    if ([(NSMutableDictionary *)self->_animalPrints count])
    {
      clusterFaces = [(VCPVideoAnimalDetector *)self updateWithExistingAnimals];
      if (clusterFaces)
      {
        return clusterFaces;
      }
    }
  }

  array = [MEMORY[0x1E695DF70] array];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = *(v35 + 24);
  v7 = [obj countByEnumeratingWithState:&v45 objects:v53 count:16];
  if (v7)
  {
    v37 = *v46;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v46 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v45 + 1) + 8 * i);
        memset(&v44, 0, sizeof(v44));
        if (v9)
        {
          [v9 timerange];
        }

        else
        {
          memset(&range, 0, sizeof(range));
        }

        v10 = *&pass->var0.var3;
        *&otherRange.start.value = *&pass->var0.var0;
        *&otherRange.start.epoch = v10;
        *&otherRange.duration.timescale = *&pass->var1.var1;
        CMTimeRangeGetIntersection(&v44, &range, &otherRange);
        dictionary = [MEMORY[0x1E695DF90] dictionary];
        v12 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v9, "animalID")}];
        [dictionary setObject:v12 forKey:@"animalId"];

        [v9 bounds];
        if (v13 < 1.0)
        {
          v17 = v13;
        }

        else
        {
          v17 = 1.0;
        }

        if (v13 <= 0.0)
        {
          v17 = 0.0;
        }

        if (v14 < 1.0)
        {
          v18 = v14;
        }

        else
        {
          v18 = 1.0;
        }

        if (v14 <= 0.0)
        {
          v18 = 0.0;
        }

        v19 = 1.0 - v13;
        if (v15 < v19)
        {
          v19 = v15;
        }

        if (v15 <= 0.0)
        {
          v20 = 0.0;
        }

        else
        {
          v20 = v19;
        }

        v21 = 1.0 - v14;
        if (v16 < 1.0 - v14)
        {
          v21 = v16;
        }

        if (v16 <= 0.0)
        {
          v22 = 0.0;
        }

        else
        {
          v22 = v21;
        }

        v23 = v17;
        v24 = v18;
        v25 = NSStringFromRect(*(&v20 - 2));
        [dictionary setObject:v25 forKey:@"faceBounds"];

        v51[0] = @"start";
        *&range.start.value = *&v44.start.value;
        range.start.epoch = v44.start.epoch;
        v26 = CMTimeCopyAsDictionary(&range.start, 0);
        v52[0] = v26;
        v51[1] = @"duration";
        range.start = v44.duration;
        v27 = CMTimeCopyAsDictionary(&range.start, 0);
        v51[2] = @"attributes";
        v52[1] = v27;
        v52[2] = dictionary;
        v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:v51 count:3];
        [array addObject:v28];
      }

      v7 = [obj countByEnumeratingWithState:&v45 objects:v53 count:16];
    }

    while (v7);
  }

  v44.start.value = 0;
  *&v44.start.timescale = &v44;
  v44.start.epoch = 0x2020000000;
  LODWORD(v44.duration.value) = 0;
  array2 = [MEMORY[0x1E695DF70] array];
  v30 = *(v35 + 40);
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __45__VCPVideoAnimalDetector_finishAnalysisPass___block_invoke;
  v39[3] = &unk_1E834D138;
  v39[4] = v35;
  v41 = &v44;
  v31 = array2;
  v40 = v31;
  [v30 enumerateKeysAndObjectsUsingBlock:v39];
  v3 = *(*&v44.start.timescale + 24);
  if (!v3)
  {
    v49[0] = @"AnimalResults";
    v49[1] = @"AnimalPrintResults";
    v50[0] = array;
    v50[1] = v31;
    v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:2];
    v33 = *(v35 + 8);
    *(v35 + 8) = v32;

    v3 = *(*&v44.start.timescale + 24);
  }

  _Block_object_dispose(&v44, 8);
  return v3;
}

void __45__VCPVideoAnimalDetector_finishAnalysisPass___block_invoke(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v22[2] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = [v8 animalprint];

  if (v9)
  {
    v10 = [*(a1[4] + 48) objectForKeyedSubscript:v7];
    if ([v10 containsString:@"Dog"])
    {
      v11 = 0x400000000;
    }

    else
    {
      if (([v10 containsString:@"Cat"] & 1) == 0)
      {
        if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *v20 = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[VideoAnimal] Animal label must be either Dog or Cat. Ignoring", v20, 2u);
        }

        goto LABEL_13;
      }

      v11 = 0x200000000;
    }

    v12 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
    v13 = [v8 animalprint];
    [v12 encodeObject:v13 forKey:@"animalPrint"];

    v14 = [v12 encodedData];

    if (v14)
    {
      v15 = [MEMORY[0x1E695DF90] dictionary];
      [v15 setObject:v7 forKeyedSubscript:@"animalId"];
      v16 = [v12 encodedData];
      [v15 setObject:v16 forKeyedSubscript:@"animalPrint"];

      v17 = a1[5];
      v21[0] = @"flags";
      v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v11];
      v21[1] = @"attributes";
      v22[0] = v18;
      v22[1] = v15;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
      [v17 addObject:v19];
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[VideoAnimal] Animal print encode error, break", v20, 2u);
      }

      *(*(a1[6] + 8) + 24) = -18;
      *a4 = 1;
    }

LABEL_13:
  }
}

@end