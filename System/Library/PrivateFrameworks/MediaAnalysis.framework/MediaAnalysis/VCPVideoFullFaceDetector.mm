@interface VCPVideoFullFaceDetector
- (BOOL)compareFace:(id)face withFace:(id)withFace;
- (VCPVideoFullFaceDetector)initWithTransform:(CGAffineTransform *)transform;
- (VCPVideoFullFaceDetector)initWithTransform:(CGAffineTransform *)transform withExistingFaceprints:(id)faceprints;
- (id)frameFaceResults;
- (int)analyzeFrame:(__CVBuffer *)frame timestamp:(id *)timestamp duration:(id *)duration frameStats:(id)stats flags:(unint64_t *)flags;
- (int)clusterFaces;
- (int)detectFaces:(__CVBuffer *)faces faces:(id)a4 torsos:(id)torsos frameStats:(id)stats;
- (int)detectTrackFacesInFrame:(__CVBuffer *)frame withTimestamp:(id *)timestamp faces:(id)faces torsos:(id)torsos frameStats:(id)stats;
- (int)finishAnalysisPass:(id *)pass;
- (int)updateWithExistingFaces;
- (void)removeSmallestKeyFace;
@end

@implementation VCPVideoFullFaceDetector

- (VCPVideoFullFaceDetector)initWithTransform:(CGAffineTransform *)transform
{
  v11.receiver = self;
  v11.super_class = VCPVideoFullFaceDetector;
  v4 = [(VCPVideoFullFaceDetector *)&v11 init];
  v5 = *&transform->c;
  v10[0] = *&transform->a;
  v10[1] = v5;
  v10[2] = *&transform->tx;
  v6 = [(VCPVideoFullFaceDetector *)v4 initWithTransform:v10 withExistingFaceprints:0];
  if (v6)
  {
    array = [MEMORY[0x1E695DF70] array];
    frameFaceResults = v6->_frameFaceResults;
    v6->_frameFaceResults = array;
  }

  return v6;
}

- (VCPVideoFullFaceDetector)initWithTransform:(CGAffineTransform *)transform withExistingFaceprints:(id)faceprints
{
  v59 = *MEMORY[0x1E69E9840];
  faceprintsCopy = faceprints;
  v51.receiver = self;
  v51.super_class = VCPVideoFullFaceDetector;
  v8 = [(VCPVideoFullFaceDetector *)&v51 init];
  if (v8)
  {
    v9 = *&transform->c;
    *buf = *&transform->a;
    v57 = v9;
    v58 = *&transform->tx;
    *(v8 + 2) = angleForTransform(buf);
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v11 = *(v8 + 5);
    *(v8 + 5) = dictionary;

    v12 = MEMORY[0x1E6960C80];
    v13 = *(MEMORY[0x1E6960C80] + 16);
    *(v8 + 12) = *MEMORY[0x1E6960C80];
    *(v8 + 28) = v13;
    v14 = *(v12 + 16);
    *(v8 + 92) = *v12;
    *(v8 + 108) = v14;
    v15 = *(v8 + 6);
    *(v8 + 6) = 0;

    *(v8 + 14) = 31;
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    v17 = *(v8 + 15);
    *(v8 + 15) = dictionary2;

    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
    v19 = *(v8 + 16);
    *(v8 + 16) = dictionary3;

    array = [MEMORY[0x1E695DF70] array];
    v21 = *(v8 + 18);
    *(v8 + 18) = array;

    dictionary4 = [MEMORY[0x1E695DF90] dictionary];
    v23 = *(v8 + 19);
    *(v8 + 19) = dictionary4;

    dictionary5 = [MEMORY[0x1E695DF90] dictionary];
    v25 = *(v8 + 20);
    *(v8 + 20) = dictionary5;

    array2 = [MEMORY[0x1E695DF70] array];
    v27 = *(v8 + 21);
    *(v8 + 21) = array2;

    array3 = [MEMORY[0x1E695DF70] array];
    v29 = *(v8 + 17);
    *(v8 + 17) = array3;

    objc_storeStrong(v8 + 10, faceprints);
    dictionary6 = [MEMORY[0x1E695DF90] dictionary];
    v31 = *(v8 + 22);
    *(v8 + 22) = dictionary6;

    *(v8 + 22) = 0;
    v32 = *(v8 + 23);
    *(v8 + 23) = 0;

    v52 = 0;
    v53 = &v52;
    v54 = 0x2050000000;
    v33 = getGDVUStreamingGalleryClass(void)::softClass;
    v55 = getGDVUStreamingGalleryClass(void)::softClass;
    if (!getGDVUStreamingGalleryClass(void)::softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&v57 = ___ZL28getGDVUStreamingGalleryClassv_block_invoke;
      *(&v57 + 1) = &unk_1E834C0F0;
      *&v58 = &v52;
      ___ZL28getGDVUStreamingGalleryClassv_block_invoke(buf);
      v33 = v53[3];
    }

    v34 = v33;
    _Block_object_dispose(&v52, 8);
    v35 = [v33 alloc];
    v52 = 0;
    v53 = &v52;
    v54 = 0x2050000000;
    v36 = getGDVUEntityRecognitionClientClass(void)::softClass;
    v55 = getGDVUEntityRecognitionClientClass(void)::softClass;
    if (!getGDVUEntityRecognitionClientClass(void)::softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&v57 = ___ZL35getGDVUEntityRecognitionClientClassv_block_invoke;
      *(&v57 + 1) = &unk_1E834C0F0;
      *&v58 = &v52;
      ___ZL35getGDVUEntityRecognitionClientClassv_block_invoke(buf);
      v36 = v53[3];
    }

    v37 = v36;
    _Block_object_dispose(&v52, 8);
    photos = [v36 photos];
    v50 = 0;
    v39 = [v35 initWithClient:photos error:&v50];
    v40 = v50;
    v41 = *(v8 + 24);
    *(v8 + 24) = v39;

    if (*(v8 + 24))
    {
      v42 = +[VCPCNNSmileDetector detector];
      v43 = *(v8 + 8);
      *(v8 + 8) = v42;

      v44 = *(v8 + 8);
      if (v44)
      {
        v45 = +[VCPCNNPoseEstimator estimator];
        v46 = *(v8 + 9);
        *(v8 + 9) = v45;

        if (*(v8 + 9))
        {
          v44 = v8;
        }

        else
        {
          v44 = 0;
        }
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v48 = [v40 description];
        *buf = 138412290;
        *&buf[4] = v48;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to init GDVUStreamingGallery %@", buf, 0xCu);
      }

      v44 = 0;
    }

    v47 = v44;
  }

  else
  {
    v47 = 0;
  }

  return v47;
}

- (int)detectFaces:(__CVBuffer *)faces faces:(id)a4 torsos:(id)torsos frameStats:(id)stats
{
  v121 = *MEMORY[0x1E69E9840];
  v91 = a4;
  torsosCopy = torsos;
  statsCopy = stats;
  Width = CVPixelBufferGetWidth(faces);
  Height = CVPixelBufferGetHeight(faces);
  context = objc_autoreleasePoolPush();
  array = [MEMORY[0x1E695DF70] array];
  v10 = objc_alloc(MEMORY[0x1E69845B8]);
  v93 = [v10 initWithCVPixelBuffer:faces options:MEMORY[0x1E695E0F8]];
  array2 = [MEMORY[0x1E695DF70] array];
  v11 = VCPSignPostLog();
  v12 = os_signpost_id_generate(v11);

  v13 = VCPSignPostLog();
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    LOWORD(buf.a) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "VCPVideoFullFaceDetectorFaceHumanDetection", "", &buf, 2u);
  }

  v116 = 0;
  v15 = [VCPFaceUtils configureVNRequest:&v116 withClass:objc_opt_class() andProcessingVersion:15];
  v16 = v116;
  v92 = v16;
  if (v15)
  {
    v17 = 0;
    LODWORD(v18) = 4;
    goto LABEL_24;
  }

  if (v16)
  {
    [array2 addObject:v16];
  }

  v115 = 0;
  v15 = [VCPFaceUtils configureVNRequest:&v115 withClass:objc_opt_class() andProcessingVersion:15];
  v19 = v115;
  v83 = v19;
  if (v15)
  {
    v17 = 0;
  }

  else
  {
    if (v19)
    {
      [array2 addObject:v19];
    }

    v114 = 0;
    v20 = [v93 performRequests:array2 error:&v114];
    v17 = v114;
    if (v20)
    {
      v21 = VCPSignPostLog();
      v22 = v21;
      if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
      {
        LOWORD(buf.a) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v22, OS_SIGNPOST_INTERVAL_END, v12, "VCPVideoFullFaceDetectorFaceHumanDetection", "", &buf, 2u);
      }

      [array2 removeAllObjects];
      v23 = VCPSignPostLog();
      spid = os_signpost_id_generate(v23);

      v24 = VCPSignPostLog();
      v25 = v24;
      if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
      {
        LOWORD(buf.a) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v25, OS_SIGNPOST_INTERVAL_BEGIN, spid, "VCPVideoFullFaceDetectorFaceTorsoprint", "", &buf, 2u);
      }

      v113 = 0;
      v15 = [VCPFaceUtils configureVNRequest:&v113 withClass:objc_opt_class() andProcessingVersion:15];
      v82 = v113;
      if (v15)
      {
        LODWORD(v18) = 4;
      }

      else
      {
        results = [v92 results];
        [v82 setInputFaceObservations:results];

        if (v82)
        {
          [array2 addObject:v82];
        }

        v112 = 0;
        v15 = [VCPFaceUtils configureVNRequest:&v112 withClass:objc_opt_class() andProcessingVersion:15];
        v28 = v112;
        if (v15)
        {
          LODWORD(v18) = 4;
        }

        else
        {
          results2 = [v83 results];
          v81 = v28;
          [v28 setInputDetectedObjectObservations:results2];

          if (v28)
          {
            [array2 addObject:v28];
          }

          v111 = v17;
          v30 = [v93 performRequests:array2 error:&v111];
          v79 = v111;

          if (v30)
          {
            v31 = VCPSignPostLog();
            v32 = v31;
            if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
            {
              LOWORD(buf.a) = 0;
              _os_signpost_emit_with_name_impl(&dword_1C9B70000, v32, OS_SIGNPOST_INTERVAL_END, spid, "VCPVideoFullFaceDetectorFaceTorsoprint", "", &buf, 2u);
            }

            results3 = [v82 results];
            v34 = results3 == 0;

            if (!v34)
            {
              results4 = [v82 results];
              [array addObjectsFromArray:results4];
            }

            spida = [MEMORY[0x1E695DF90] dictionary];
            v109 = 0u;
            v110 = 0u;
            v107 = 0u;
            v108 = 0u;
            results5 = [v28 results];
            v37 = [results5 countByEnumeratingWithState:&v107 objects:v120 count:16];
            if (v37)
            {
              v38 = *v108;
              do
              {
                for (i = 0; i != v37; ++i)
                {
                  if (*v108 != v38)
                  {
                    objc_enumerationMutation(results5);
                  }

                  v40 = *(*(&v107 + 1) + 8 * i);
                  v41 = objc_autoreleasePoolPush();
                  groupId = [v40 groupId];
                  v43 = groupId == 0;

                  if (!v43)
                  {
                    groupId2 = [v40 groupId];
                    [spida setObject:v40 forKeyedSubscript:groupId2];
                  }

                  objc_autoreleasePoolPop(v41);
                }

                v37 = [results5 countByEnumeratingWithState:&v107 objects:v120 count:16];
              }

              while (v37);
            }

            v106 = 0uLL;
            v102 = 0u;
            v103 = 0u;
            v104 = 0u;
            v105 = 0u;
            v45 = array;
            v15 = 0;
            v46 = [v45 countByEnumeratingWithState:&v102 objects:v119 count:16];
            if (v46)
            {
              v48 = Width;
              v49 = -Height;
              v50 = Height;
              v85 = *v103;
              *&v47 = 138412290;
              v78 = v47;
LABEL_54:
              v51 = 0;
              while (1)
              {
                if (*v103 != v85)
                {
                  objc_enumerationMutation(v45);
                }

                v52 = *(*(&v102 + 1) + 8 * v51);
                v53 = objc_autoreleasePoolPush();
                if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
                {
                  LODWORD(buf.a) = v78;
                  *(&buf.a + 4) = v52;
                  _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[VCPVideoFullFaceDetector] Detected face %@", &buf, 0xCu);
                }

                [v52 boundingBox];
                *&buf.b = v106;
                buf.a = v48;
                buf.d = v49;
                buf.tx = 0.0;
                buf.ty = v50;
                v123 = CGRectApplyAffineTransform(v122, &buf);
                x = v123.origin.x;
                y = v123.origin.y;
                v56 = v123.size.width;
                v57 = v123.size.height;
                v101 = 0;
                v58 = [(VCPCNNSmileDetector *)self->_smileDetector detectSmileForFace:faces inBuffer:&v101 smile:?];
                if (v58)
                {
                  LODWORD(v18) = 4;
                  v15 = v58;
                }

                else
                {
                  buf.a = 0.0;
                  v59 = [(VCPCNNPoseEstimator *)self->_poseEstimator detectPoseForFace:faces inBuffer:&buf yaw:x, y, v56, v57];
                  if (v59)
                  {
                    v15 = v59;
                    LODWORD(v18) = 4;
                  }

                  else
                  {
                    v80 = objc_alloc_init(VCPFace);
                    [(VCPFace *)v80 setSmile:v101];
                    [(VCPFace *)v80 setYaw:*&buf.a];
                    [(VCPFace *)v80 setBounds:x, y, v56, v57];
                    LODWORD(v60) = 1.0;
                    [(VCPFace *)v80 setConfidence:v60];
                    [(VCPFace *)v80 setObservation:v52];
                    [v91 addObject:v80];
                    groupId3 = [v52 groupId];
                    if (groupId3)
                    {
                      groupId4 = [v52 groupId];
                      v63 = [spida objectForKeyedSubscript:groupId4];
                      v64 = v63 == 0;

                      if (!v64)
                      {
                        groupId5 = [v52 groupId];
                        v66 = [spida objectForKeyedSubscript:groupId5];
                        torsoprint = [v66 torsoprint];
                        [v52 setTorsoprint:torsoprint];

                        groupId6 = [v52 groupId];
                        v69 = [spida objectForKeyedSubscript:groupId6];
                        [v69 boundingBox];
                        [(VCPFace *)v80 setTorsoBounds:?];

                        groupId7 = [v52 groupId];
                        [spida removeObjectForKey:groupId7];
                      }
                    }

                    LODWORD(v18) = 0;
                  }
                }

                objc_autoreleasePoolPop(v53);
                if (v18)
                {
                  break;
                }

                if (v46 == ++v51)
                {
                  v46 = [v45 countByEnumeratingWithState:&v102 objects:v119 count:16];
                  if (v46)
                  {
                    goto LABEL_54;
                  }

                  goto LABEL_71;
                }
              }
            }

            else
            {
LABEL_71:

              v99 = 0u;
              v100 = 0u;
              v97 = 0u;
              v98 = 0u;
              v45 = spida;
              v18 = [v45 countByEnumeratingWithState:&v97 objects:v117 count:16];
              if (v18)
              {
                v71 = *v98;
                do
                {
                  for (j = 0; j != v18; ++j)
                  {
                    if (*v98 != v71)
                    {
                      objc_enumerationMutation(v45);
                    }

                    v73 = *(*(&v97 + 1) + 8 * j);
                    v74 = objc_autoreleasePoolPush();
                    v75 = [v45 objectForKeyedSubscript:v73];
                    v76 = objc_alloc_init(VCPHuman);
                    torsoprint2 = [v75 torsoprint];
                    [(VCPHuman *)v76 setTorsoprint:torsoprint2];

                    [v75 boundingBox];
                    [(VCPHuman *)v76 setBounds:?];
                    [torsosCopy addObject:v76];

                    objc_autoreleasePoolPop(v74);
                  }

                  v18 = [v45 countByEnumeratingWithState:&v97 objects:v117 count:16];
                }

                while (v18);
              }
            }
          }

          else
          {
            v15 = -18;
            LODWORD(v18) = 4;
          }

          v17 = v79;
          v28 = v81;
        }
      }

      goto LABEL_23;
    }

    v15 = -18;
  }

  LODWORD(v18) = 4;
LABEL_23:

LABEL_24:
  objc_autoreleasePoolPop(context);
  if (v18 != 4)
  {
    [statsCopy setFrameProcessedByFaceDetector:1];
  }

  if (v15 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf.a) = 138412290;
    *(&buf.a + 4) = v17;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VCPVideoFullFaceDetector] Failed to detect faces - %@", &buf, 0xCu);
  }

  return v15;
}

- (void)removeSmallestKeyFace
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2020000000;
  v6 = 2139095039;
  keyFaces = self->_keyFaces;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49__VCPVideoFullFaceDetector_removeSmallestKeyFace__block_invoke;
  v4[3] = &unk_1E834C258;
  v4[4] = v5;
  v4[5] = &v7;
  [(NSMutableDictionary *)keyFaces enumerateKeysAndObjectsUsingBlock:v4];
  if (v8[5])
  {
    [(NSMutableDictionary *)self->_keyFaces removeObjectForKey:?];
  }

  _Block_object_dispose(v5, 8);
  _Block_object_dispose(&v7, 8);
}

void __49__VCPVideoFullFaceDetector_removeSmallestKeyFace__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v6 = a3;
  [v6 bounds];
  v8 = v7;
  [v6 bounds];
  v10 = v8 * v9;
  if (*(*(*(a1 + 32) + 8) + 24) > v10)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *(*(*(a1 + 32) + 8) + 24) = v10;
  }
}

- (BOOL)compareFace:(id)face withFace:(id)withFace
{
  faceCopy = face;
  withFaceCopy = withFace;
  v7 = withFaceCopy;
  v8 = 0;
  if (faceCopy && withFaceCopy)
  {
    v9 = [faceCopy yaw];
    if (v9 == [v7 yaw])
    {
      [faceCopy bounds];
      v11 = v10;
      [faceCopy bounds];
      v13 = v12;
      [v7 bounds];
      v15 = v14;
      [v7 bounds];
      v8 = v11 * v13 < v15 * v16;
    }

    else
    {
      v8 = fabs(([faceCopy yaw] - 2)) > fabs((objc_msgSend(v7, "yaw") - 2));
    }
  }

  return v8;
}

- (int)detectTrackFacesInFrame:(__CVBuffer *)frame withTimestamp:(id *)timestamp faces:(id)faces torsos:(id)torsos frameStats:(id)stats
{
  v127 = *MEMORY[0x1E69E9840];
  facesCopy = faces;
  torsosCopy = torsos;
  statsCopy = stats;
  v89 = torsosCopy;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  faceTrackers = self->_faceTrackers;
  v117[0] = MEMORY[0x1E69E9820];
  v117[1] = 3221225472;
  v117[2] = __90__VCPVideoFullFaceDetector_detectTrackFacesInFrame_withTimestamp_faces_torsos_frameStats___block_invoke;
  v117[3] = &unk_1E834C280;
  v121 = *&timestamp->var0;
  var3 = timestamp->var3;
  frameCopy = frame;
  v122 = var3;
  selfCopy = self;
  v16 = array2;
  v118 = v16;
  v95 = array;
  v119 = v95;
  v90 = v16;
  [(NSMutableDictionary *)faceTrackers enumerateKeysAndObjectsUsingBlock:v117];
  [(NSMutableDictionary *)selfCopy->_faceTrackers removeObjectsForKeys:v16];
  p_isa = &selfCopy->super.super.super.isa;
  v18 = timestamp->var3;
  *(&selfCopy->_latestFrameArea + 1) = *&timestamp->var0;
  *&selfCopy->_timeLastTracking.flags = v18;
  lhs = *timestamp;
  *&rhs.value = *(&selfCopy->super._angle + 1);
  v88 = &selfCopy->super._angle + 1;
  rhs.epoch = *&selfCopy->super._timeLastDetection.flags;
  CMTimeSubtract(&time, &lhs, &rhs);
  Seconds = CMTimeGetSeconds(&time);
  [(VCPVideoFullFaceDetector *)selfCopy minProcessTimeIntervalInSecs];
  if (Seconds < v20)
  {
    [facesCopy addObjectsFromArray:v95];
    v21 = 0;
    goto LABEL_45;
  }

  WidthOfPlane = CVPixelBufferGetWidthOfPlane(frame, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(frame, 0);
  v21 = [p_isa detectFaces:frame faces:facesCopy torsos:torsosCopy frameStats:statsCopy];
  if (v21)
  {
    goto LABEL_45;
  }

  v96 = p_isa;
  frameCopy2 = frame;
  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  obj = facesCopy;
  v24 = [obj countByEnumeratingWithState:&v112 objects:v126 count:16];
  if (v24)
  {
    v25 = *v113;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v113 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v112 + 1) + 8 * i);
        v28 = objc_autoreleasePoolPush();
        v29 = objc_alloc_init(VCPFace);
        *&lhs.timescale = 0;
        lhs.epoch = 0;
        v110 = xmmword_1C9F60600;
        lhs.value = 0x3FF0000000000000;
        v111 = 0x3FF0000000000000;
        [v27 faceBoundsWithTransform:WidthOfPlane height:HeightOfPlane transform:&lhs];
        [(VCPFace *)v29 setBounds:?];
        detectedFaces = [statsCopy detectedFaces];
        [detectedFaces addObject:v29];

        objc_autoreleasePoolPop(v28);
      }

      v24 = [obj countByEnumeratingWithState:&v112 objects:v126 count:16];
    }

    while (v24);
  }

  v31 = [MEMORY[0x1E695DF70] arrayWithArray:p_isa[18]];
  [p_isa[18] removeAllObjects];
  [obj sortUsingComparator:&__block_literal_global_6];
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  reverseObjectEnumerator = [obj reverseObjectEnumerator];
  v99 = reverseObjectEnumerator;
  v33 = [reverseObjectEnumerator countByEnumeratingWithState:&v105 objects:v125 count:16];
  if (v33)
  {
    obja = *v106;
LABEL_13:
    v34 = 0;
    while (1)
    {
      if (*v106 != obja)
      {
        objc_enumerationMutation(reverseObjectEnumerator);
      }

      v35 = *(*(&v105 + 1) + 8 * v34);
      v101 = 0u;
      v102 = 0u;
      v103 = 0u;
      v104 = 0u;
      v36 = v95;
      v37 = [v36 countByEnumeratingWithState:&v101 objects:v124 count:16];
      if (!v37)
      {
        break;
      }

      v38 = 0;
      v39 = *v102;
      v40 = 0.0;
      do
      {
        for (j = 0; j != v37; ++j)
        {
          if (*v102 != v39)
          {
            objc_enumerationMutation(v36);
          }

          v42 = *(*(&v101 + 1) + 8 * j);
          [v35 bounds];
          v44 = v43;
          v46 = v45;
          v48 = v47;
          v50 = v49;
          [v42 bounds];
          v132.origin.x = v51;
          v132.origin.y = v52;
          v132.size.width = v53;
          v132.size.height = v54;
          v128.origin.x = v44;
          v128.origin.y = v46;
          v128.size.width = v48;
          v128.size.height = v50;
          v129 = CGRectIntersection(v128, v132);
          width = v129.size.width;
          height = v129.size.height;
          [v35 bounds];
          v58 = v57;
          v60 = v59;
          v62 = v61;
          v64 = v63;
          [v42 bounds];
          v133.origin.x = v65;
          v133.origin.y = v66;
          v133.size.width = v67;
          v133.size.height = v68;
          v130.origin.x = v58;
          v130.origin.y = v60;
          v130.size.width = v62;
          v130.size.height = v64;
          v131 = CGRectUnion(v130, v133);
          v69 = width * height / (v131.size.width * v131.size.height);
          if (v40 < v69)
          {
            v70 = v42;

            v40 = v69;
            v38 = v70;
          }
        }

        v37 = [v36 countByEnumeratingWithState:&v101 objects:v124 count:16];
      }

      while (v37);

      if (!v38 || v40 <= 0.05)
      {
        goto LABEL_32;
      }

      [v35 setTrackID:{objc_msgSend(v38, "trackID")}];
      v71 = v96[15];
      v72 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v35, "trackID")}];
      [v71 removeObjectForKey:v72];

      [v36 removeObject:v38];
      v73 = v96[16];
      v74 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v35, "trackID")}];
      v75 = [v73 objectForKeyedSubscript:v74];

      if (v75 && [v96 compareFace:v75 withFace:v35])
      {
        v76 = v96[16];
        v77 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v35, "trackID")}];
        [v76 setObject:v35 forKey:v77];
      }

LABEL_36:
      if ([v96[15] count] > 4)
      {
        v85 = v96[18];
        v82 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v35, "trackID")}];
        [v85 addObject:v82];
      }

      else
      {
        v81 = [VCPVideoObjectTracker alloc];
        [v35 bounds];
        lhs = *timestamp;
        v82 = [(VCPVideoObjectTracker *)v81 initWithObjectBounds:frameCopy2 inFrame:&lhs timestamp:?];
        if (!v82)
        {

          v21 = -108;
          goto LABEL_44;
        }

        v83 = v96[15];
        v84 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v35, "trackID")}];
        [v83 setObject:v82 forKey:v84];
      }

      ++v34;
      reverseObjectEnumerator = v99;
      if (v34 == v33)
      {
        v33 = [v99 countByEnumeratingWithState:&v105 objects:v125 count:16];
        if (v33)
        {
          goto LABEL_13;
        }

        goto LABEL_42;
      }
    }

    v38 = 0;
LABEL_32:
    if ([v31 count])
    {
      v78 = [v31 objectAtIndexedSubscript:0];
      [v35 setTrackID:{objc_msgSend(v78, "intValue")}];

      [v31 removeObjectAtIndex:0];
    }

    else
    {
      ++*(v96 + 14);
      [v35 setTrackID:?];
      v79 = v96[16];
      v80 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v35, "trackID")}];
      [v79 setObject:v35 forKey:v80];

      if ([v96[16] count] >= 0x1F)
      {
        [v96 removeSmallestKeyFace];
      }
    }

    goto LABEL_36;
  }

LABEL_42:

  v21 = 0;
  v86 = *&timestamp->var0;
  *(v88 + 2) = timestamp->var3;
  *v88 = v86;
LABEL_44:

LABEL_45:
  return v21;
}

void __90__VCPVideoFullFaceDetector_detectTrackFacesInFrame_withTimestamp_faces_torsos_frameStats___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [v6 trackObjectInFrame:*(a1 + 48)];
  [v6 objectBounds];
  if (CGRectIsEmpty(v12))
  {
    goto LABEL_6;
  }

  if (v6)
  {
    [v6 start];
  }

  else
  {
    memset(&v8, 0, sizeof(v8));
  }

  lhs = *(a1 + 56);
  rhs = v8;
  CMTimeSubtract(&time, &lhs, &rhs);
  if (CMTimeGetSeconds(&time) > 5.0)
  {
LABEL_6:
    [*(a1 + 32) addObject:{v5, *&v8.value, v8.epoch}];
  }

  else
  {
    v7 = objc_alloc_init(VCPFace);
    [v6 objectBounds];
    [(VCPFace *)v7 setBounds:?];
    -[VCPFace setTrackID:](v7, "setTrackID:", [v5 intValue]);
    [*(a1 + 40) addObject:v7];
  }
}

uint64_t __90__VCPVideoFullFaceDetector_detectTrackFacesInFrame_withTimestamp_faces_torsos_frameStats___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 bounds];
  v7 = v6;
  [v4 bounds];
  v9 = v8;
  [v5 bounds];
  v11 = v10;
  [v5 bounds];
  v12 = v7 * v9;
  v14 = v11 * v13;
  if (v12 < v14)
  {
    v15 = -1;
  }

  else
  {
    v15 = v12 > v14;
  }

  return v15;
}

- (int)analyzeFrame:(__CVBuffer *)frame timestamp:(id *)timestamp duration:(id *)duration frameStats:(id)stats flags:(unint64_t *)flags
{
  v101 = *MEMORY[0x1E69E9840];
  statsCopy = stats;
  if (!self->super._results)
  {
    timestampCopy = timestamp;
    durationCopy = duration;
    flagsCopy = flags;
    if (CVPixelBufferGetPixelFormatType(frame) != 875704438 && CVPixelBufferGetPixelFormatType(frame) != 875704422)
    {
      v12 = -50;
      goto LABEL_3;
    }

    detectedFaces = [statsCopy detectedFaces];
    [detectedFaces removeAllObjects];

    [statsCopy setFrameProcessedByFaceDetector:0];
    *&lhs.start.value = *&timestamp->var0;
    lhs.start.epoch = timestamp->var3;
    rhs.origin = *(&self->_latestFrameArea + 1);
    rhs.size.width = *&self->_timeLastTracking.flags;
    CMTimeSubtract(&time, &lhs.start, &rhs);
    if (CMTimeGetSeconds(&time) < 0.0599999987)
    {
      *&lhs.start.value = *&timestamp->var0;
      lhs.start.epoch = timestamp->var3;
      rhs.origin = *(&self->super._angle + 1);
      rhs.size.width = *&self->super._timeLastDetection.flags;
      CMTimeSubtract(&time, &lhs.start, &rhs);
      Seconds = CMTimeGetSeconds(&time);
      [(VCPVideoFullFaceDetector *)self minProcessTimeIntervalInSecs];
      v16 = v15;
      if (Seconds < v16)
      {
        *&v16 = self->_latestFrameArea;
        [statsCopy setFaceArea:v16];
        v68 = 0;
        goto LABEL_66;
      }
    }

    frameFaceResults = self->_frameFaceResults;
    if (frameFaceResults)
    {
      [(NSMutableArray *)frameFaceResults removeAllObjects];
    }

    context = objc_autoreleasePoolPush();
    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    *&lhs.start.value = *&timestamp->var0;
    lhs.start.epoch = timestamp->var3;
    v66 = array2;
    v68 = [VCPVideoFullFaceDetector detectTrackFacesInFrame:"detectTrackFacesInFrame:withTimestamp:faces:torsos:frameStats:" withTimestamp:frame faces:&lhs torsos:array frameStats:?];
    if (!v68)
    {
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v19 = v66;
      v20 = [v19 countByEnumeratingWithState:&v90 objects:v100 count:16];
      if (v20)
      {
        v21 = *v91;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v91 != v21)
            {
              objc_enumerationMutation(v19);
            }

            v23 = *(*(&v90 + 1) + 8 * i);
            *&lhs.start.value = *&timestampCopy->var0;
            lhs.start.epoch = timestampCopy->var3;
            [(VCPVideoFullFaceDetector *)self minProcessTimeIntervalInSecs];
            CMTimeMake(&rhs, (v24 * 1000.0), 1000);
            CMTimeRangeMake(&v89, &lhs.start, &rhs);
            lhs = v89;
            [v23 setTimerange:&lhs];
            [(NSMutableArray *)self->_allTorsos addObject:v23];
          }

          v20 = [v19 countByEnumeratingWithState:&v90 objects:v100 count:16];
        }

        while (v20);
      }

      v26 = 0.0;
      if (array && [array count])
      {
        WidthOfPlane = CVPixelBufferGetWidthOfPlane(frame, 0);
        HeightOfPlane = CVPixelBufferGetHeightOfPlane(frame, 0);
        angle = self->super._angle;
        if (angle)
        {
          v30 = angle == 180;
        }

        else
        {
          v30 = 1;
        }

        v31 = v30;
        v76 = v31;
        *flagsCopy |= 0x20uLL;
        v84 = 0u;
        v85 = 0u;
        v86 = 0u;
        v87 = 0u;
        obj = array;
        v32 = [obj countByEnumeratingWithState:&v84 objects:v99 count:16];
        if (v32)
        {
          v73 = HeightOfPlane;
          v74 = WidthOfPlane;
          v75 = *v85;
          do
          {
            v77 = v32;
            for (j = 0; j != v77; ++j)
            {
              if (*v85 != v75)
              {
                objc_enumerationMutation(obj);
              }

              v34 = *(*(&v84 + 1) + 8 * j);
              v35 = [v34 flagsForOrientation:v76 width:v74 height:v73];
              lhs.start.epoch = 0;
              memset(&rhs, 0, sizeof(rhs));
              *&lhs.start.value = 0x3FF0000000000000uLL;
              *&lhs.duration.value = xmmword_1C9F60600;
              lhs.duration.epoch = 0x3FF0000000000000;
              [v34 faceBoundsWithTransform:v74 height:v73 transform:&lhs];
              rhs.origin.x = v36;
              rhs.origin.y = v37;
              rhs.size.width = v38;
              rhs.size.height = v39;
              v40 = MediaAnalysisFacePosition(&rhs);
              width = rhs.size.width;
              height = rhs.size.height;
              activeFaces = self->super._activeFaces;
              v44 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v34, "trackID")}];
              v45 = [(NSMutableDictionary *)activeFaces objectForKey:v44];

              [v34 confidence];
              if (v46 <= 0.4)
              {
                faceTrackers = self->_faceTrackers;
                v48 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v34, "trackID")}];
                v49 = [(NSMutableDictionary *)faceTrackers objectForKeyedSubscript:v48];

                if (!v49)
                {
                  goto LABEL_60;
                }

                [v49 start];
                *&lhs.start.value = *&timestampCopy->var0;
                lhs.start.epoch = timestampCopy->var3;
                time = v81;
                CMTimeSubtract(&v82, &lhs.start, &time);
                if (CMTimeGetSeconds(&v82) >= 1.0)
                {
                  goto LABEL_60;
                }
              }

              if (v45 && ([v45 last], objc_msgSend(v45, "start"), lhs.start = v81, time = v80, CMTimeSubtract(&v82, &lhs.start, &time), CMTimeGetSeconds(&v82) <= 1.0))
              {
                *&lhs.start.value = *&timestampCopy->var0;
                lhs.start.epoch = timestampCopy->var3;
                [v45 setLast:&lhs];
                [v45 setFlags:{objc_msgSend(v45, "flags") | v35}];
                [v45 setPosition:{objc_msgSend(v45, "position") | v40}];
              }

              else
              {
                v50 = objc_alloc_init(VCPFaceDetectionRange);
                *&lhs.start.value = *&timestampCopy->var0;
                lhs.start.epoch = timestampCopy->var3;
                [(VCPFaceDetectionRange *)v50 setStart:&lhs];
                *&lhs.start.value = *&timestampCopy->var0;
                lhs.start.epoch = timestampCopy->var3;
                time = *durationCopy;
                CMTimeAdd(&v79, &lhs.start, &time);
                lhs.start = v79;
                [(VCPFaceDetectionRange *)v50 setLast:&lhs];
                [(VCPFaceDetectionRange *)v50 setFlags:v35];
                [(VCPFaceDetectionRange *)v50 setBounds:rhs.origin.x, rhs.origin.y, rhs.size.width, rhs.size.height];
                [v34 torsoBounds];
                [(VCPFaceDetectionRange *)v50 setTorsoBounds:?];
                [(VCPFaceDetectionRange *)v50 setPosition:v40];
                -[VCPFaceDetectionRange setFaceID:](v50, "setFaceID:", [v34 trackID]);
                v51 = self->super._activeFaces;
                v52 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v34, "trackID")}];
                [(NSMutableDictionary *)v51 setObject:v50 forKey:v52];

                [(NSMutableArray *)self->_allFaces addObject:v50];
              }

              *flagsCopy |= v35;
              if (self->_frameFaceResults)
              {
                v97[0] = @"facePosition";
                v53 = [MEMORY[0x1E696AD98] numberWithInteger:v40];
                v54 = v53;
                if (rhs.origin.x < 1.0)
                {
                  x = rhs.origin.x;
                }

                else
                {
                  x = 1.0;
                }

                if (rhs.origin.x <= 0.0)
                {
                  x = 0.0;
                }

                if (rhs.origin.y < 1.0)
                {
                  y = rhs.origin.y;
                }

                else
                {
                  y = 1.0;
                }

                if (rhs.origin.y <= 0.0)
                {
                  y = 0.0;
                }

                v57 = 1.0 - rhs.origin.x;
                if (rhs.size.width < 1.0 - rhs.origin.x)
                {
                  v57 = rhs.size.width;
                }

                v98[0] = v53;
                v97[1] = @"faceBounds";
                if (rhs.size.width <= 0.0)
                {
                  v57 = 0.0;
                }

                v58 = 1.0 - rhs.origin.y;
                if (rhs.size.height < 1.0 - rhs.origin.y)
                {
                  v58 = rhs.size.height;
                }

                if (rhs.size.height <= 0.0)
                {
                  v58 = 0.0;
                }

                v59 = NSStringFromRect(*&x);
                v98[1] = v59;
                v97[2] = @"facePoseYaw";
                v60 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v34, "yaw")}];
                v98[2] = v60;
                v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v98 forKeys:v97 count:3];

                v61 = self->_frameFaceResults;
                v95[0] = @"flags";
                v62 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v35];
                v95[1] = @"attributes";
                v96[0] = v62;
                v96[1] = v49;
                v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v96 forKeys:v95 count:2];
                [(NSMutableArray *)v61 addObject:v63];

LABEL_60:
              }

              v26 = v26 + width * height;
            }

            v32 = [obj countByEnumeratingWithState:&v84 objects:v99 count:16];
          }

          while (v32);
        }
      }

      *&v25 = v26;
      [statsCopy setFaceArea:v25];
      self->_latestFrameArea = v26;
    }

    objc_autoreleasePoolPop(context);
    goto LABEL_66;
  }

  v12 = -18;
LABEL_3:
  v68 = v12;
LABEL_66:

  return v68;
}

- (id)frameFaceResults
{
  v6[1] = *MEMORY[0x1E69E9840];
  frameFaceResults = self->_frameFaceResults;
  v5 = @"FaceResults";
  v6[0] = frameFaceResults;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

- (int)clusterFaces
{
  v199 = *MEMORY[0x1E69E9840];
  v180[0] = 0;
  v180[1] = v180;
  v180[2] = 0x2020000000;
  v180[3] = 0;
  v174 = 0;
  v175 = &v174;
  v176 = 0x3032000000;
  v177 = __Block_byref_object_copy__2;
  v178 = __Block_byref_object_dispose__2;
  array = [MEMORY[0x1E695DF70] array];
  v170 = 0;
  v171 = &v170;
  v172 = 0x2020000000;
  keyFaces = self->_keyFaces;
  v173 = 0;
  v169[0] = MEMORY[0x1E69E9820];
  v169[1] = 3221225472;
  v169[2] = __40__VCPVideoFullFaceDetector_clusterFaces__block_invoke;
  v169[3] = &unk_1E834C2C8;
  v169[4] = &v170;
  v169[5] = &v174;
  v169[6] = v180;
  [(NSMutableDictionary *)keyFaces enumerateKeysAndObjectsUsingBlock:v169];
  v167 = 0u;
  v168 = 0u;
  v165 = 0u;
  v166 = 0u;
  selfCopy = self;
  v4 = self->_existingFaceprints;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v165 objects:v194 count:16];
  if (v5)
  {
    v6 = 0;
    v7 = *v166;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v166 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v165 + 1) + 8 * i) objectForKeyedSubscript:@"attributes"];
        v10 = [v9 objectForKeyedSubscript:@"faceId"];

        intValue = [v10 intValue];
        if (intValue > v6)
        {
          v6 = intValue;
        }
      }

      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v165 objects:v194 count:16];
    }

    while (v5);
    v12 = (v6 + 1);
  }

  else
  {
    v12 = 1;
  }

  if ([(NSMutableDictionary *)self->_keyFaces count]< 2)
  {
    if ([(NSMutableDictionary *)self->_keyFaces count]== 1)
    {
      v129 = 0u;
      v130 = 0u;
      v127 = 0u;
      v128 = 0u;
      v34 = self->_allFaces;
      v35 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v127 objects:v185 count:16];
      if (v35)
      {
        v36 = *v128;
        do
        {
          for (j = 0; j != v35; ++j)
          {
            if (*v128 != v36)
            {
              objc_enumerationMutation(v34);
            }

            [*(*(&v127 + 1) + 8 * j) setFaceID:v12];
          }

          v35 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v127 objects:v185 count:16];
        }

        while (v35);
      }

      v38 = [v175[5] objectAtIndexedSubscript:0];
      v39 = v38;
      if (v38)
      {
        faceprint = [v38 faceprint];
        v41 = faceprint == 0;

        if (!v41)
        {
          facePrints = selfCopy->_facePrints;
          v43 = [MEMORY[0x1E696AD98] numberWithInt:v12];
          [(NSMutableDictionary *)facePrints setObject:v39 forKey:v43];
        }
      }
    }
  }

  else
  {
    context = objc_autoreleasePoolPush();
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VideoFullFaceDetector - use VU for in-asset face clustering", &buf, 2u);
    }

    v13 = *(v171 + 6);
    v161 = 0u;
    v162 = 0u;
    v163 = 0u;
    v164 = 0u;
    v14 = selfCopy->_allTorsos;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v161 objects:v193 count:16];
    if (v15)
    {
      v16 = v13 + 1;
      v17 = *v162;
      do
      {
        for (k = 0; k != v15; ++k)
        {
          if (*v162 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v161 + 1) + 8 * k);
          torsoprint = [v19 torsoprint];
          v21 = torsoprint == 0;

          if (!v21)
          {
            v22 = objc_alloc_init(MEMORY[0x1E6984518]);
            torsoprint2 = [v19 torsoprint];
            [v22 setTorsoprint:torsoprint2];

            [v22 setFaceId:v16];
            [v19 setHumanID:{objc_msgSend(v22, "faceId")}];
            [v175[5] addObject:v22];

            ++v16;
          }
        }

        v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v161 objects:v193 count:16];
      }

      while (v15);
    }

    v181 = 0;
    v182 = &v181;
    v183 = 0x2050000000;
    v24 = getGDVUContextClass(void)::softClass;
    v184 = getGDVUContextClass(void)::softClass;
    if (!getGDVUContextClass(void)::softClass)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v196 = ___ZL19getGDVUContextClassv_block_invoke;
      v197 = &unk_1E834C0F0;
      v198 = &v181;
      ___ZL19getGDVUContextClassv_block_invoke(&buf);
      v24 = v182[3];
    }

    v25 = v24;
    _Block_object_dispose(&v181, 8);
    v114 = objc_alloc_init(v24);
    v26 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    [v114 setMoment:v26];

    gallery = selfCopy->_gallery;
    v28 = v175[5];
    v160 = 0;
    v29 = [(GDVUStreamingGallery *)gallery addWithObservations:v28 observationIdentifiers:0 trackIdentifiers:0 context:v114 error:&v160];
    v113 = v160;
    v119 = v29;
    v30 = [v29 count];
    if (v30 == [v175[5] count])
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      for (m = 0; m < [v175[5] count]; ++m)
      {
        v32 = [v175[5] objectAtIndexedSubscript:m];
        v33 = [v119 objectAtIndexedSubscript:m];
        [dictionary setObject:v32 forKeyedSubscript:v33];
      }

      dictionary2 = [MEMORY[0x1E695DF90] dictionary];
      dictionary3 = [MEMORY[0x1E695DF90] dictionary];

      v48 = selfCopy->_gallery;
      v159 = 0;
      v49 = [(GDVUStreamingGallery *)v48 updateWithMaxKeyFacesPerCluster:1 sortBy:&unk_1F49BE818 error:&v159];
      v113 = v159;
      v111 = v49;
      v50 = [v49 count];
      if (v50 != [v175[5] count] || v113)
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v102 = [v113 description];
          v103 = v102;
          uTF8String = [v102 UTF8String];
          LODWORD(buf) = 136315138;
          *(&buf + 4) = uTF8String;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Gallery failed to cluster %s", &buf, 0xCu);
        }

        v47 = 0;
      }

      else
      {
        v124 = [MEMORY[0x1E695DFA8] set];
        v157 = 0u;
        v158 = 0u;
        v155 = 0u;
        v156 = 0u;
        obj = v111;
        v51 = [obj countByEnumeratingWithState:&v155 objects:v192 count:16];
        if (v51)
        {
          v52 = *v156;
          do
          {
            for (n = 0; n != v51; ++n)
            {
              if (*v156 != v52)
              {
                objc_enumerationMutation(obj);
              }

              entityIdentifier = [*(*(&v155 + 1) + 8 * n) entityIdentifier];
              stringValue = [entityIdentifier stringValue];
              [v124 addObject:stringValue];
            }

            v51 = [obj countByEnumeratingWithState:&v155 objects:v192 count:16];
          }

          while (v51);
        }

        v153 = 0u;
        v154 = 0u;
        v151 = 0u;
        v152 = 0u;
        v110 = v124;
        v107 = [(NSMutableArray *)v110 countByEnumeratingWithState:&v151 objects:v191 count:16];
        if (v107)
        {
          v108 = *v152;
          do
          {
            for (ii = 0; ii != v107; ++ii)
            {
              if (*v152 != v108)
              {
                objc_enumerationMutation(v110);
              }

              v117 = *(*(&v151 + 1) + 8 * ii);
              v147 = 0u;
              v148 = 0u;
              v149 = 0u;
              v150 = 0u;
              v115 = obj;
              v118 = [v115 countByEnumeratingWithState:&v147 objects:v190 count:16];
              if (v118)
              {
                v116 = *v148;
                while (2)
                {
                  for (jj = 0; jj != v118; ++jj)
                  {
                    if (*v148 != v116)
                    {
                      objc_enumerationMutation(v115);
                    }

                    v56 = *(*(&v147 + 1) + 8 * jj);
                    entityIdentifier2 = [v56 entityIdentifier];
                    stringValue2 = [entityIdentifier2 stringValue];
                    v59 = [v117 isEqualToString:stringValue2];

                    if (v59)
                    {
                      v60 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v56, "observationIdentifier")}];
                      v61 = [dictionary objectForKeyedSubscript:v60];

                      if (!v61)
                      {

                        v47 = 0;
                        v92 = v110;
                        goto LABEL_129;
                      }

                      v62 = selfCopy;
                      if ([v56 isKeyFace])
                      {
                        faceprint2 = [v61 faceprint];
                        v64 = faceprint2 == 0;

                        if (v64)
                        {
                          v62 = selfCopy;
                          if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                          {
                            LOWORD(buf) = 0;
                            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "FullFaceDetector : cluster keyface does not contain faceprint", &buf, 2u);
                          }
                        }

                        else
                        {
                          v65 = selfCopy->_facePrints;
                          v66 = [MEMORY[0x1E696AD98] numberWithInt:v12];
                          [(NSMutableDictionary *)v65 setObject:v61 forKey:v66];

                          v62 = selfCopy;
                        }
                      }

                      v145 = 0u;
                      v146 = 0u;
                      v143 = 0u;
                      v144 = 0u;
                      v67 = v62->_allFaces;
                      v68 = [(NSMutableArray *)v67 countByEnumeratingWithState:&v143 objects:v189 count:16];
                      if (v68)
                      {
                        v69 = *v144;
                        do
                        {
                          for (kk = 0; kk != v68; ++kk)
                          {
                            if (*v144 != v69)
                            {
                              objc_enumerationMutation(v67);
                            }

                            v71 = *(*(&v143 + 1) + 8 * kk);
                            faceID = [v71 faceID];
                            if (faceID == [v61 faceId])
                            {
                              v73 = [MEMORY[0x1E696AD98] numberWithInt:v12];
                              v74 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v71, "faceID")}];
                              [dictionary2 setObject:v73 forKeyedSubscript:v74];
                            }
                          }

                          v68 = [(NSMutableArray *)v67 countByEnumeratingWithState:&v143 objects:v189 count:16];
                        }

                        while (v68);
                      }

                      v141 = 0u;
                      v142 = 0u;
                      v139 = 0u;
                      v140 = 0u;
                      v75 = selfCopy->_allTorsos;
                      v76 = [(NSMutableArray *)v75 countByEnumeratingWithState:&v139 objects:v188 count:16];
                      if (v76)
                      {
                        v77 = *v140;
                        do
                        {
                          for (mm = 0; mm != v76; ++mm)
                          {
                            if (*v140 != v77)
                            {
                              objc_enumerationMutation(v75);
                            }

                            v79 = *(*(&v139 + 1) + 8 * mm);
                            humanID = [v79 humanID];
                            if ([v61 faceId] == humanID)
                            {
                              v81 = [MEMORY[0x1E696AD98] numberWithInt:v12];
                              v82 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v79, "humanID")}];
                              [dictionary3 setObject:v81 forKeyedSubscript:v82];
                            }
                          }

                          v76 = [(NSMutableArray *)v75 countByEnumeratingWithState:&v139 objects:v188 count:16];
                        }

                        while (v76);
                      }
                    }
                  }

                  v118 = [v115 countByEnumeratingWithState:&v147 objects:v190 count:16];
                  if (v118)
                  {
                    continue;
                  }

                  break;
                }
              }

              v12 = (v12 + 1);
            }

            v107 = [(NSMutableArray *)v110 countByEnumeratingWithState:&v151 objects:v191 count:16];
          }

          while (v107);
        }

        v137 = 0u;
        v138 = 0u;
        v135 = 0u;
        v136 = 0u;
        v83 = selfCopy->_allFaces;
        v84 = [(NSMutableArray *)v83 countByEnumeratingWithState:&v135 objects:v187 count:16];
        if (v84)
        {
          v85 = *v136;
          do
          {
            for (nn = 0; nn != v84; ++nn)
            {
              if (*v136 != v85)
              {
                objc_enumerationMutation(v83);
              }

              v87 = *(*(&v135 + 1) + 8 * nn);
              v88 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v87, "faceID", v107)}];
              v89 = [dictionary2 objectForKeyedSubscript:v88];

              if (v89)
              {
                intValue2 = [v89 intValue];
              }

              else
              {
                if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                {
                  faceID2 = [v87 faceID];
                  LODWORD(buf) = 134217984;
                  *(&buf + 4) = faceID2;
                  _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "FullFaceDetector: no cluster ID found for face %lu - set to 0", &buf, 0xCu);
                }

                intValue2 = 0;
              }

              [v87 setFaceID:intValue2];
            }

            v84 = [(NSMutableArray *)v83 countByEnumeratingWithState:&v135 objects:v187 count:16];
          }

          while (v84);
        }

        v133 = 0u;
        v134 = 0u;
        v131 = 0u;
        v132 = 0u;
        v92 = selfCopy->_allTorsos;
        v93 = [(NSMutableArray *)v92 countByEnumeratingWithState:&v131 objects:v186 count:16];
        if (v93)
        {
          v94 = *v132;
          v95 = MEMORY[0x1E69E9C10];
          do
          {
            for (i1 = 0; i1 != v93; ++i1)
            {
              if (*v132 != v94)
              {
                objc_enumerationMutation(v92);
              }

              v97 = *(*(&v131 + 1) + 8 * i1);
              v98 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v97, "humanID", v107)}];
              v99 = [dictionary3 objectForKeyedSubscript:v98];

              if (v99)
              {
                intValue3 = [v99 intValue];
              }

              else
              {
                if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
                {
                  humanID2 = [v97 humanID];
                  LODWORD(buf) = 134217984;
                  *(&buf + 4) = humanID2;
                  _os_log_impl(&dword_1C9B70000, v95, OS_LOG_TYPE_DEFAULT, "FullFaceDetector: no cluster ID found for human %lu - set to 0", &buf, 0xCu);
                }

                intValue3 = 0;
              }

              [v97 setHumanID:intValue3];
            }

            v93 = [(NSMutableArray *)v92 countByEnumeratingWithState:&v131 objects:v186 count:16];
          }

          while (v93);
        }

        v47 = 1;
LABEL_129:
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v44 = [v113 description];
        v45 = v44;
        uTF8String2 = [v44 UTF8String];
        LODWORD(buf) = 136315138;
        *(&buf + 4) = uTF8String2;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Gallery failed to add observation %s", &buf, 0xCu);
      }

      v47 = 0;
    }

    objc_autoreleasePoolPop(context);
    if ((v47 & 1) == 0)
    {
      v105 = -18;
      goto LABEL_134;
    }
  }

  v105 = 0;
LABEL_134:
  _Block_object_dispose(&v170, 8);
  _Block_object_dispose(&v174, 8);

  _Block_object_dispose(v180, 8);
  return v105;
}

void __40__VCPVideoFullFaceDetector_clusterFaces__block_invoke(void *a1, void *a2, void *a3)
{
  v18 = a2;
  v5 = a3;
  v6 = [v5 observation];

  if (v6)
  {
    v7 = [v18 intValue];
    v8 = [v5 observation];
    [v8 setFaceId:v7];

    v9 = *(a1[4] + 8);
    v10 = [v18 intValue];
    v11 = *(v9 + 24);
    if (v11 <= v10)
    {
      v11 = v10;
    }

    *(*(a1[4] + 8) + 24) = v11;
    v12 = *(*(a1[5] + 8) + 40);
    v13 = [v5 observation];
    [v12 addObject:v13];

    v14 = [v5 observation];
    v15 = [v14 faceprint];

    if (v15)
    {
      v16 = [v5 observation];
      v17 = [v16 faceprint];
      *(*(a1[6] + 8) + 24) = [v17 requestRevision];
    }
  }
}

- (int)updateWithExistingFaces
{
  v35 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = self->_existingFaceprints;
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
        v7 = [v6 objectForKeyedSubscript:@"faceId"];

        v8 = [v5 objectForKeyedSubscript:@"attributes"];
        v9 = [v8 objectForKeyedSubscript:@"facePrint"];

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
        v12 = [v11 decodeObjectOfClass:objc_opt_class() forKey:@"facePrint"];
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
  facePrints = self->_facePrints;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __51__VCPVideoFullFaceDetector_updateWithExistingFaces__block_invoke;
  v22[3] = &unk_1E834C318;
  v23 = dictionary;
  v25 = &v26;
  v14 = dictionary2;
  v24 = v14;
  [(NSMutableDictionary *)facePrints enumerateKeysAndObjectsUsingBlock:v22];
  v15 = *(v27 + 6);
  if (!v15)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __51__VCPVideoFullFaceDetector_updateWithExistingFaces__block_invoke_3;
    v21[3] = &unk_1E834C340;
    v21[4] = self;
    [v14 enumerateKeysAndObjectsUsingBlock:v21];
  }

  _Block_object_dispose(&v26, 8);
LABEL_18:

  return v15;
}

void __51__VCPVideoFullFaceDetector_updateWithExistingFaces__block_invoke(uint64_t a1, void *a2, void *a3)
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
  v7 = [v6 faceprint];

  if (v7)
  {
    v8 = *(a1 + 32);
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __51__VCPVideoFullFaceDetector_updateWithExistingFaces__block_invoke_2;
    v15 = &unk_1E834C2F0;
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

void __51__VCPVideoFullFaceDetector_updateWithExistingFaces__block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v12 = a2;
  v7 = a3;
  v8 = [*(a1 + 32) faceprint];
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

void __51__VCPVideoFullFaceDetector_updateWithExistingFaces__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  [*(*(a1 + 32) + 152) removeObjectForKey:v5];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = *(*(a1 + 32) + 168);
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
        v12 = [v11 faceID];
        if (v12 == [v5 intValue])
        {
          [v11 setFaceID:{objc_msgSend(v6, "intValue")}];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (int)finishAnalysisPass:(id *)pass
{
  v108 = *MEMORY[0x1E69E9840];
  if (self->super._results)
  {
    return -18;
  }

  clusterFaces = [(VCPVideoFullFaceDetector *)self clusterFaces];
  if (clusterFaces)
  {
    return clusterFaces;
  }

  if ([(NSArray *)self->_existingFaceprints count])
  {
    if ([(NSMutableDictionary *)self->_facePrints count])
    {
      clusterFaces = [(VCPVideoFullFaceDetector *)self updateWithExistingFaces];
      if (clusterFaces)
      {
        return clusterFaces;
      }
    }
  }

  selfCopy = self;
  array = [MEMORY[0x1E695DF70] array];
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v6 = self->_allFaces;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v96 objects:v107 count:16];
  if (v7)
  {
    v78 = *v97;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v97 != v78)
        {
          objc_enumerationMutation(v6);
        }

        v9 = *(*(&v96 + 1) + 8 * i);
        memset(&otherRange, 0, 24);
        if (v9)
        {
          [v9 start];
          v94 = 0uLL;
          v95 = 0;
          [v9 last];
        }

        else
        {
          v94 = 0uLL;
          v95 = 0;
        }

        dictionary = [MEMORY[0x1E695DF90] dictionary];
        v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v9, "position")}];
        [dictionary setObject:v11 forKey:@"facePosition"];

        [v9 bounds];
        if (v12 < 1.0)
        {
          v16 = v12;
        }

        else
        {
          v16 = 1.0;
        }

        if (v12 <= 0.0)
        {
          v16 = 0.0;
        }

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

        v18 = 1.0 - v12;
        if (v14 < v18)
        {
          v18 = v14;
        }

        if (v14 <= 0.0)
        {
          v19 = 0.0;
        }

        else
        {
          v19 = v18;
        }

        v20 = 1.0 - v13;
        if (v15 < 1.0 - v13)
        {
          v20 = v15;
        }

        if (v15 <= 0.0)
        {
          v21 = 0.0;
        }

        else
        {
          v21 = v20;
        }

        v22 = v16;
        v23 = v17;
        v24 = NSStringFromRect(*(&v19 - 2));
        [dictionary setObject:v24 forKey:@"faceBounds"];

        v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v9, "faceID")}];
        [dictionary setObject:v25 forKey:@"faceId"];

        [v9 torsoBounds];
        if (!CGRectIsEmpty(v109))
        {
          [v9 torsoBounds];
          if (v26 < 1.0)
          {
            v30 = v26;
          }

          else
          {
            v30 = 1.0;
          }

          if (v26 <= 0.0)
          {
            v30 = 0.0;
          }

          if (v27 < 1.0)
          {
            v31 = v27;
          }

          else
          {
            v31 = 1.0;
          }

          if (v27 <= 0.0)
          {
            v31 = 0.0;
          }

          v32 = 1.0 - v26;
          if (v28 < v32)
          {
            v32 = v28;
          }

          if (v28 <= 0.0)
          {
            v33 = 0.0;
          }

          else
          {
            v33 = v32;
          }

          v34 = 1.0 - v27;
          if (v29 < 1.0 - v27)
          {
            v34 = v29;
          }

          if (v29 <= 0.0)
          {
            v35 = 0.0;
          }

          else
          {
            v35 = v34;
          }

          v36 = v30;
          v37 = v31;
          v38 = NSStringFromRect(*(&v33 - 2));
          [dictionary setObject:v38 forKey:@"humanBounds"];
        }

        v105[0] = @"start";
        *&time.start.value = *&otherRange.start.value;
        time.start.epoch = otherRange.start.epoch;
        v39 = CMTimeCopyAsDictionary(&time.start, 0);
        v106[0] = v39;
        v105[1] = @"duration";
        *&time.start.value = v94;
        time.start.epoch = v95;
        *&rhs.start.value = *&otherRange.start.value;
        rhs.start.epoch = otherRange.start.epoch;
        CMTimeSubtract(&v93, &time.start, &rhs.start);
        time.start = v93;
        v40 = CMTimeCopyAsDictionary(&time.start, 0);
        v106[1] = v40;
        v105[2] = @"flags";
        v41 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v9, "flags")}];
        v105[3] = @"attributes";
        v106[2] = v41;
        v106[3] = dictionary;
        v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v106 forKeys:v105 count:4];
        [array addObject:v42];

        faceRanges = selfCopy->_faceRanges;
        v44 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v9, "faceID")}];
        array2 = [(NSMutableDictionary *)faceRanges objectForKeyedSubscript:v44];

        if (!array2)
        {
          array2 = [MEMORY[0x1E695DF70] array];
        }

        [array2 addObject:v9];
        v46 = selfCopy->_faceRanges;
        v47 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v9, "faceID")}];
        [(NSMutableDictionary *)v46 setObject:array2 forKey:v47];
      }

      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v96 objects:v107 count:16];
    }

    while (v7);
  }

  array3 = [MEMORY[0x1E695DF70] array];
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  obj = selfCopy->_allTorsos;
  v48 = [(NSMutableArray *)obj countByEnumeratingWithState:&v89 objects:v104 count:16];
  if (v48)
  {
    v77 = *v90;
    do
    {
      for (j = 0; j != v48; ++j)
      {
        if (*v90 != v77)
        {
          objc_enumerationMutation(obj);
        }

        v50 = *(*(&v89 + 1) + 8 * j);
        memset(&time, 0, sizeof(time));
        if (v50)
        {
          [v50 timerange];
        }

        else
        {
          memset(&rhs, 0, sizeof(rhs));
        }

        v51 = *&pass->var0.var3;
        *&otherRange.start.value = *&pass->var0.var0;
        *&otherRange.start.epoch = v51;
        *&otherRange.duration.timescale = *&pass->var1.var1;
        CMTimeRangeGetIntersection(&time, &rhs, &otherRange);
        dictionary2 = [MEMORY[0x1E695DF90] dictionary];
        [v50 bounds];
        if (v53 < 1.0)
        {
          v57 = v53;
        }

        else
        {
          v57 = 1.0;
        }

        if (v53 <= 0.0)
        {
          v57 = 0.0;
        }

        if (v54 < 1.0)
        {
          v58 = v54;
        }

        else
        {
          v58 = 1.0;
        }

        if (v54 <= 0.0)
        {
          v58 = 0.0;
        }

        v59 = 1.0 - v53;
        if (v55 < v59)
        {
          v59 = v55;
        }

        if (v55 <= 0.0)
        {
          v60 = 0.0;
        }

        else
        {
          v60 = v59;
        }

        v61 = 1.0 - v54;
        if (v56 < 1.0 - v54)
        {
          v61 = v56;
        }

        if (v56 <= 0.0)
        {
          v62 = 0.0;
        }

        else
        {
          v62 = v61;
        }

        v63 = v57;
        v64 = v58;
        v65 = NSStringFromRect(*(&v60 - 2));
        [dictionary2 setObject:v65 forKeyedSubscript:@"humanBounds"];

        v66 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v50, "humanID")}];
        [dictionary2 setObject:v66 forKeyedSubscript:@"faceId"];

        v102[0] = @"start";
        *&rhs.start.value = *&time.start.value;
        rhs.start.epoch = time.start.epoch;
        v67 = CMTimeCopyAsDictionary(&rhs.start, 0);
        v103[0] = v67;
        v102[1] = @"duration";
        rhs.start = time.duration;
        v68 = CMTimeCopyAsDictionary(&rhs.start, 0);
        v102[2] = @"attributes";
        v103[1] = v68;
        v103[2] = dictionary2;
        v69 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v103 forKeys:v102 count:3];
        [array3 addObject:v69];
      }

      v48 = [(NSMutableArray *)obj countByEnumeratingWithState:&v89 objects:v104 count:16];
    }

    while (v48);
  }

  time.start.value = 0;
  *&time.start.timescale = &time;
  time.start.epoch = 0x2020000000;
  LODWORD(time.duration.value) = 0;
  array4 = [MEMORY[0x1E695DF70] array];
  facePrints = selfCopy->_facePrints;
  v83[0] = MEMORY[0x1E69E9820];
  v83[1] = 3221225472;
  v83[2] = __47__VCPVideoFullFaceDetector_finishAnalysisPass___block_invoke;
  v83[3] = &unk_1E834C368;
  p_time = &time;
  v72 = array4;
  v84 = v72;
  [(NSMutableDictionary *)facePrints enumerateKeysAndObjectsUsingBlock:v83];
  v3 = *(*&time.start.timescale + 24);
  if (!v3)
  {
    v100[0] = @"FaceResults";
    v100[1] = @"FacePrintResults";
    v101[0] = array;
    v101[1] = v72;
    v100[2] = @"TorsoResults";
    v101[2] = array3;
    v73 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v101 forKeys:v100 count:3];
    results = selfCopy->super._results;
    selfCopy->super._results = v73;

    v3 = *(*&time.start.timescale + 24);
  }

  _Block_object_dispose(&time, 8);
  return v3;
}

void __47__VCPVideoFullFaceDetector_finishAnalysisPass___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = [v8 faceprint];

  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
    v11 = [v8 faceprint];
    [v10 encodeObject:v11 forKey:@"facePrint"];

    v12 = [v10 encodedData];

    if (v12)
    {
      v13 = [MEMORY[0x1E695DF90] dictionary];
      [v13 setObject:v7 forKeyedSubscript:@"faceId"];
      v14 = [v10 encodedData];
      [v13 setObject:v14 forKeyedSubscript:@"facePrint"];

      v15 = [v8 torsoprint];

      if (v15)
      {
        v16 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
        v17 = [v8 torsoprint];
        [v16 encodeObject:v17 forKey:@"torsoPrint"];

        v18 = [v16 encodedData];

        if (v18)
        {
          v19 = [v16 encodedData];
          [v13 setObject:v19 forKeyedSubscript:@"torsoPrint"];
        }

        else
        {
          *(*(*(a1 + 40) + 8) + 24) = -18;
          *a4 = 1;
        }
      }

      v20 = *(a1 + 32);
      v22 = @"attributes";
      v23[0] = v13;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      [v20 addObject:v21];
    }

    else
    {
      *(*(*(a1 + 40) + 8) + 24) = -18;
      *a4 = 1;
    }
  }
}

@end