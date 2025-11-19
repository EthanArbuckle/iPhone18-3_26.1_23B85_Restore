@interface VCPHandGestureImageRequest
+ (BOOL)heuristicHeart:(id)a3 andRightHand:(id)a4 rotationInDegrees:(int)a5 relax:(BOOL)a6;
+ (BOOL)heuristicIsIndexMiddleTooClose:(id)a3 rotationInDegrees:(int)a4;
+ (BOOL)heuristicIsThumbOpenWide:(id)a3 rotationInDegrees:(int)a4 isRelaxed:(BOOL)a5;
+ (BOOL)isFistClosedTight:(id)a3 rotationInDegrees:(int)a4 scalingFactor:(float)a5;
+ (BOOL)isFistClosedTightOccluded:(id)a3 rotationInDegrees:(int)a4 scalingFactor:(float)a5 palmScale:(float)a6;
+ (float)tiltingAngleForHand:(id)a3 srcKeypointType:(int)a4 dstKeypointType:(int)a5 rotationInDegrees:(int)a6;
+ (unint64_t)heuristicFingerOpenness:(id)a3 rotationInDegrees:(int)a4;
- (VCPHandGestureImageRequest)init;
- (VCPHandGestureImageRequest)initWithOptions:(id)a3;
- (id)processImage:(__CVBuffer *)a3 withOptions:(id)a4 error:(id *)a5;
- (id)taxonomyMappingStatic;
- (int)heuristicThumb:(id)a3 rotationInDegrees:(int)a4;
- (void)processImage:(__CVBuffer *)a3 withOptions:(id)a4 completion:(id)a5;
- (void)updateWithOptions:(id)a3 completion:(id)a4;
@end

@implementation VCPHandGestureImageRequest

- (VCPHandGestureImageRequest)init
{
  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Not implemented, please use initWithOptions", v4, 2u);
  }

  return 0;
}

- (VCPHandGestureImageRequest)initWithOptions:(id)a3
{
  v4 = a3;
  v5 = VCPSignPostLog();
  v6 = os_signpost_id_generate(v5);

  v7 = VCPSignPostLog();
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "VCPHandGestureImageRequest_initWithOptions", "", buf, 2u);
  }

  v23.receiver = self;
  v23.super_class = VCPHandGestureImageRequest;
  v9 = [(VCPRequest *)&v23 initWithOptions:v4];
  if (v9)
  {
    v10 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v4];
    v11 = [v4 objectForKeyedSubscript:@"handPoseLite"];

    if (!v11)
    {
      [v10 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"handPoseLite"];
    }

    [v10 setObject:&unk_1F49BBF20 forKeyedSubscript:@"revision"];
    v12 = [[VCPHandPoseImageRequest alloc] initWithOptions:v10];
    handPoseRequest = v9->handPoseRequest;
    v9->handPoseRequest = v12;

    v14 = [[VCPCoreMLRequest alloc] initWithModelName:@"hand_gesture_static"];
    gestureCoreMLRequest = v9->gestureCoreMLRequest;
    v9->gestureCoreMLRequest = v14;

    if (!v9->handPoseRequest || !v9->gestureCoreMLRequest || (queue = v9->_queue, v9->_queue = 0, queue, v9->super._useAsync) && (v17 = dispatch_queue_create("VCPHandGestureImageRequestSerialQueue", 0), v18 = v9->_queue, v9->_queue = v17, v18, !v9->_queue))
    {
      v20 = 0;
      goto LABEL_17;
    }
  }

  v19 = VCPSignPostLog();
  v10 = v19;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v10, OS_SIGNPOST_INTERVAL_END, v6, "VCPHandGestureImageRequest_initWithOptions", "", buf, 2u);
  }

  v20 = v9;
LABEL_17:

  v21 = v20;
  return v21;
}

- (id)taxonomyMappingStatic
{
  v5[12] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F49BBF38;
  v4[1] = &unk_1F49BBF68;
  v5[0] = &unk_1F49BBF50;
  v5[1] = &unk_1F49BBF80;
  v4[2] = &unk_1F49BBF98;
  v4[3] = &unk_1F49BBFC8;
  v5[2] = &unk_1F49BBFB0;
  v5[3] = &unk_1F49BBF68;
  v4[4] = &unk_1F49BBF50;
  v4[5] = &unk_1F49BBF80;
  v5[4] = &unk_1F49BBFE0;
  v5[5] = &unk_1F49BBFF8;
  v4[6] = &unk_1F49BC010;
  v4[7] = &unk_1F49BC028;
  v5[6] = &unk_1F49BBF38;
  v5[7] = &unk_1F49BC028;
  v4[8] = &unk_1F49BBFB0;
  v4[9] = &unk_1F49BC040;
  v5[8] = &unk_1F49BC010;
  v5[9] = &unk_1F49BBFC8;
  v4[10] = &unk_1F49BBFF8;
  v4[11] = &unk_1F49BBFE0;
  v5[10] = &unk_1F49BC040;
  v5[11] = &unk_1F49BBF98;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:12];

  return v2;
}

- (int)heuristicThumb:(id)a3 rotationInDegrees:(int)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 keypoints];
  v7 = [v6 objectAtIndexedSubscript:5];

  v8 = [v5 keypoints];
  v9 = [v8 objectAtIndexedSubscript:13];

  [v7 location];
  transformLocation(v24, 0, a4);
  v11 = v10;
  v13 = v12;
  [v9 location];
  transformLocation(v25, 0, a4);
  v16 = atan2(v11 - v14, v13 - v15);
  v17 = v16 * 180.0 / 3.14159265;
  v18 = fabsf(v17);
  if (v18 >= 40.0)
  {
    if (v18 <= 140.0)
    {
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v21 = 134217984;
        v22 = v18;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "thumbs angle %f", &v21, 0xCu);
      }

      v19 = 0;
    }

    else
    {
      v19 = 12;
    }
  }

  else
  {
    v19 = 9;
  }

  return v19;
}

+ (BOOL)heuristicIsThumbOpenWide:(id)a3 rotationInDegrees:(int)a4 isRelaxed:(BOOL)a5
{
  v5 = a5;
  v32 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = v7;
  if (v7 && ([v7 bounds], v9 > 0.0))
  {
    v10 = [v8 keypoints];
    v11 = v10;
    if (!v10)
    {
      goto LABEL_15;
    }

    v12 = [v10 objectAtIndexedSubscript:4];
    v13 = keyPointPosition(v12, a4);

    v14 = [v11 objectAtIndexedSubscript:3];
    v15 = keyPointPosition(v14, a4);

    v16 = [v11 objectAtIndexedSubscript:5];
    v17 = keyPointPosition(v16, a4);

    v18 = [v11 objectAtIndexedSubscript:13];
    v19 = keyPointPosition(v18, a4);

    v20 = vsub_f32(*&v13, *&v15);
    LODWORD(v13) = atan2f(v20.f32[1], v20.f32[0]);
    v21 = vsub_f32(*&v17, *&v19);
    v22 = fabsf(*&v13 - atan2f(v21.f32[1], v21.f32[0]));
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v23 = [v8 chirality];
      v24 = "right";
      if (v23 == -1)
      {
        v24 = "left";
      }

      v28 = 136315394;
      v29 = v24;
      v30 = 2048;
      v31 = v22;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "VCPHandGestureImageRequest : %s, thumbPalmLineAngle %f", &v28, 0x16u);
    }

    v25 = v5 ? 1.03672562 : 0.785398163;
    if (v22 < v25)
    {
      v26 = 1;
    }

    else
    {
LABEL_15:
      v26 = 0;
    }
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

+ (BOOL)heuristicIsIndexMiddleTooClose:(id)a3 rotationInDegrees:(int)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (v5 && ([v5 bounds], v7 > 0.0))
  {
    v8 = [v6 keypoints];
    v9 = v8;
    if (v8 && ([v8 objectAtIndexedSubscript:8], v10 = objc_claimAutoreleasedReturnValue(), v11 = keyPointPosition(v10, a4), v10, objc_msgSend(v9, "objectAtIndexedSubscript:", 12), v12 = objc_claimAutoreleasedReturnValue(), v13 = keyPointPosition(v12, a4), v12, objc_msgSend(v9, "objectAtIndexedSubscript:", 5), v14 = objc_claimAutoreleasedReturnValue(), v15 = keyPointPosition(v14, a4), v14, objc_msgSend(v9, "objectAtIndexedSubscript:", 9), v16 = objc_claimAutoreleasedReturnValue(), v17 = keyPointPosition(v16, a4), v16, v18 = vsub_f32(*&v11, *&v13), v19 = vmul_f32(v18, v18), v20 = vsub_f32(*&v15, *&v17), v21 = vmul_f32(v20, v20), v22 = vsqrt_f32(vadd_f32(vzip1_s32(v19, v21), vzip2_s32(v19, v21))), (vcgt_f32(vdup_lane_s32(v22, 1), v22).u8[0] & 1) != 0))
    {
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v23 = [v6 chirality];
        v24 = "right";
        if (v23 == -1)
        {
          v24 = "left";
        }

        v27 = 136315138;
        v28 = v24;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "VCPHandGestureImageRequest : %s hand victory FP check: index and middle tips are too close", &v27, 0xCu);
      }

      v25 = 1;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

+ (float)tiltingAngleForHand:(id)a3 srcKeypointType:(int)a4 dstKeypointType:(int)a5 rotationInDegrees:(int)a6
{
  v9 = a3;
  v10 = v9;
  if (v9 && ([v9 keypoints], v11 = objc_claimAutoreleasedReturnValue(), v11, a5 <= 20) && a4 <= 20 && ((a5 | a4) & 0x80000000) == 0 && v11)
  {
    v12 = [v10 keypoints];
    v13 = [v12 objectAtIndexedSubscript:a4];
    v14 = keyPointPosition(v13, a6);

    v15 = [v12 objectAtIndexedSubscript:a5];
    v16 = keyPointPosition(v15, a6);

    v17 = vsub_f32(*&v16, *&v14);
    v18 = fabsf(atan2f(fabsf(v17.f32[1]), fabsf(v17.f32[0])));
  }

  else
  {
    v18 = 0.0;
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCPHandGestureImageRequest : tiltingAngleForHand invalid input", v20, 2u);
    }
  }

  return v18;
}

+ (BOOL)isFistClosedTight:(id)a3 rotationInDegrees:(int)a4 scalingFactor:(float)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = v7;
  if (v7 && ([v7 keypoints], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    v10 = [v8 keypoints];
    v11 = [v10 objectAtIndexedSubscript:8];
    v12 = keyPointPosition(v11, a4);

    v13 = [v10 objectAtIndexedSubscript:2];
    v14 = keyPointPosition(v13, a4);

    v15 = [v10 objectAtIndexedSubscript:4];
    v16 = keyPointPosition(v15, a4);

    v17 = vsub_f32(*&v12, *&v14);
    v18 = sqrtf(vaddv_f32(vmul_f32(v17, v17)));
    v19 = vsub_f32(*&v12, *&v16);
    v20 = sqrtf(vaddv_f32(vmul_f32(v19, v19)));
    v21 = v20 * a5;
    v22 = v18 < v21;
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v24 = 134218496;
      v25 = v18;
      v26 = 2048;
      v27 = v20;
      v28 = 1024;
      v29 = v18 < v21;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "isFistClosedTight: distanceIndexClosed %f, distanceTwoTips %f, isTight %d", &v24, 0x1Cu);
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCPHandGestureImageRequest : isFistClosedTight invalid input", &v24, 2u);
    }

    v22 = 0;
  }

  return v22;
}

+ (BOOL)isFistClosedTightOccluded:(id)a3 rotationInDegrees:(int)a4 scalingFactor:(float)a5 palmScale:(float)a6
{
  v28 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = v9;
  if (v9 && ([v9 keypoints], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
  {
    v12 = [v10 keypoints];
    v13 = [v12 objectAtIndexedSubscript:8];
    v14 = keyPointPosition(v13, a4);

    v15 = [v12 objectAtIndexedSubscript:2];
    v16 = keyPointPosition(v15, a4);

    v17 = vsub_f32(*&v14, *&v16);
    v18 = sqrtf(vaddv_f32(vmul_f32(v17, v17)));
    v19 = a5 * a6;
    v20 = v18 < v19;
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v22 = 134218496;
      v23 = v18;
      v24 = 2048;
      v25 = a6;
      v26 = 1024;
      v27 = v18 < v19;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "isFistClosedTight: distanceIndexCloseToThumb %f, palmScale %f, isTight %d", &v22, 0x1Cu);
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCPHandGestureImageRequest : isFistClosedTight invalid input", &v22, 2u);
    }

    v20 = 0;
  }

  return v20;
}

+ (unint64_t)heuristicFingerOpenness:(id)a3 rotationInDegrees:(int)a4
{
  v64 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (v5 && ([v5 bounds], v7 > 0.0))
  {
    v8 = [v6 keypoints];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 objectAtIndexedSubscript:4];
      v11 = keyPointPosition(v10, a4);

      v12 = [v9 objectAtIndexedSubscript:2];
      v45 = keyPointPosition(v12, a4);

      v13 = [v9 objectAtIndexedSubscript:8];
      v14 = keyPointPosition(v13, a4);

      v15 = [v9 objectAtIndexedSubscript:6];
      v53 = keyPointPosition(v15, a4);

      v16 = [v9 objectAtIndexedSubscript:5];
      v52 = keyPointPosition(v16, a4);

      v17 = [v9 objectAtIndexedSubscript:12];
      v18 = keyPointPosition(v17, a4);

      v19 = [v9 objectAtIndexedSubscript:10];
      v51 = keyPointPosition(v19, a4);

      v20 = [v9 objectAtIndexedSubscript:9];
      v50 = keyPointPosition(v20, a4);

      v21 = [v9 objectAtIndexedSubscript:16];
      v22 = keyPointPosition(v21, a4);

      v23 = [v9 objectAtIndexedSubscript:14];
      v49 = keyPointPosition(v23, a4);

      v24 = [v9 objectAtIndexedSubscript:13];
      v48 = keyPointPosition(v24, a4);

      v25 = [v9 objectAtIndexedSubscript:20];
      v26 = keyPointPosition(v25, a4);

      v27 = [v9 objectAtIndexedSubscript:18];
      v47 = keyPointPosition(v27, a4);

      v28 = [v9 objectAtIndexedSubscript:17];
      v46 = keyPointPosition(v28, a4);

      v29 = [v9 objectAtIndexedSubscript:0];
      v55 = keyPointPosition(v29, a4);

      v30 = vsub_f32(*&v53, *&v14);
      LODWORD(v14) = atan2f(v30.f32[1], v30.f32[0]);
      v63[0] = *&v14 - atan2f(*(&v53 + 1) - *(&v52 + 1), vsub_f32(*&v53, *&v52).f32[0]);
      v31 = vsub_f32(*&v51, *&v18);
      LODWORD(v14) = atan2f(v31.f32[1], v31.f32[0]);
      v63[1] = *&v14 - atan2f(*(&v51 + 1) - *(&v50 + 1), vsub_f32(*&v51, *&v50).f32[0]);
      v32 = vsub_f32(*&v49, *&v22);
      LODWORD(v14) = atan2f(v32.f32[1], v32.f32[0]);
      v63[2] = *&v14 - atan2f(*(&v49 + 1) - *(&v48 + 1), vsub_f32(*&v49, *&v48).f32[0]);
      v33 = vsub_f32(*&v47, *&v26);
      LODWORD(v14) = atan2f(v33.f32[1], v33.f32[0]);
      v63[3] = *&v14 - atan2f(*(&v47 + 1) - *(&v46 + 1), vsub_f32(*&v47, *&v46).f32[0]);
      LODWORD(v14) = atan2f(*(&v52 + 1) - *(&v53 + 1), vsub_f32(*&v52, *&v53).f32[0]);
      v62[0] = *&v14 - atan2f(*(&v52 + 1) - *(&v55 + 1), vsub_f32(*&v52, *&v55).f32[0]);
      LODWORD(v14) = atan2f(*(&v50 + 1) - *(&v51 + 1), vsub_f32(*&v50, *&v51).f32[0]);
      v62[1] = *&v14 - atan2f(*(&v50 + 1) - *(&v55 + 1), vsub_f32(*&v50, *&v55).f32[0]);
      LODWORD(v14) = atan2f(*(&v48 + 1) - *(&v49 + 1), vsub_f32(*&v48, *&v49).f32[0]);
      v62[2] = *&v14 - atan2f(*(&v48 + 1) - *(&v55 + 1), vsub_f32(*&v48, *&v55).f32[0]);
      LODWORD(v14) = atan2f(*(&v46 + 1) - *(&v47 + 1), vsub_f32(*&v46, *&v47).f32[0]);
      v62[3] = *&v14 - atan2f(*(&v46 + 1) - *(&v55 + 1), vsub_f32(*&v46, *&v55).f32[0]);
      v54 = vsub_f32(*&v45, *&v11);
      v34 = atan2f(*(&v45 + 1) - *(&v55 + 1), vsub_f32(*&v45, *&v55).f32[0]);
      v35 = 0;
      v36 = 0;
      do
      {
        v37 = fabsf(v63[v35]);
        if (v37 > 1.88495557 && v37 < 4.39822973)
        {
          v38 = fabsf(v62[v35]);
          if (v38 > 1.57079633 && v38 < 4.71238898)
          {
            v36 |= (2 << v35);
          }
        }

        ++v35;
      }

      while (v35 != 4);
      v39 = vabds_f32(atan2f(v54.f32[1], v54.f32[0]), v34);
      v40 = v39 < 3.45575192 && v39 > 2.82743338;
      v41 = v36 | v40;
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v42 = [v6 chirality];
        v43 = "right";
        *buf = 136315650;
        if (v42 == -1)
        {
          v43 = "left";
        }

        v57 = v43;
        v58 = 1024;
        v59 = v41;
        v60 = 2048;
        v61 = v39;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "VCPHandGestureImageRequest : %s hand raw openness %d, thumbPIPAngle %f", buf, 0x1Cu);
      }
    }

    else
    {
      v41 = 0;
    }
  }

  else
  {
    v41 = 0;
  }

  return v41;
}

+ (BOOL)heuristicHeart:(id)a3 andRightHand:(id)a4 rotationInDegrees:(int)a5 relax:(BOOL)a6
{
  v6 = a6;
  v121[3] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = v10;
  v12 = 0;
  if (v9 && v10)
  {
    v13 = [v9 keypoints];
    v14 = [v13 objectAtIndexedSubscript:4];
    v112 = COERCE_FLOAT32X2_T(keyPointPosition(v14, a5));

    v15 = [v13 objectAtIndexedSubscript:2];
    v100 = COERCE_FLOAT32X2_T(keyPointPosition(v15, a5));

    v16 = [v13 objectAtIndexedSubscript:8];
    v110 = keyPointPosition(v16, a5);

    v17 = [v13 objectAtIndexedSubscript:6];
    v104 = keyPointPosition(v17, a5);

    v18 = [v13 objectAtIndexedSubscript:12];
    v109 = COERCE_FLOAT32X2_T(keyPointPosition(v18, a5));

    v19 = [v13 objectAtIndexedSubscript:10];
    v103 = keyPointPosition(v19, a5);

    v20 = [v13 objectAtIndexedSubscript:16];
    v107 = keyPointPosition(v20, a5);

    v21 = [v13 objectAtIndexedSubscript:14];
    v102 = keyPointPosition(v21, a5);

    v22 = [v13 objectAtIndexedSubscript:20];
    v97 = keyPointPosition(v22, a5);

    v23 = [v13 objectAtIndexedSubscript:18];
    v24 = keyPointPosition(v23, a5);
    v96 = *(&v24 + 1);

    v25 = [v13 objectAtIndexedSubscript:0];
    v26 = keyPointPosition(v25, a5);

    v27 = [v11 keypoints];
    v28 = [v27 objectAtIndexedSubscript:4];
    v114 = COERCE_INT32X2_T(keyPointPosition(v28, a5));

    v29 = [v27 objectAtIndexedSubscript:2];
    v99 = COERCE_FLOAT32X2_T(keyPointPosition(v29, a5));

    v30 = [v27 objectAtIndexedSubscript:8];
    v113 = keyPointPosition(v30, a5);

    v31 = [v27 objectAtIndexedSubscript:6];
    v106 = keyPointPosition(v31, a5);

    v32 = [v27 objectAtIndexedSubscript:12];
    v111 = COERCE_FLOAT32X2_T(keyPointPosition(v32, a5));

    v33 = [v27 objectAtIndexedSubscript:10];
    v105 = keyPointPosition(v33, a5);

    v34 = [v27 objectAtIndexedSubscript:16];
    v108 = keyPointPosition(v34, a5);

    v35 = [v27 objectAtIndexedSubscript:14];
    v101 = keyPointPosition(v35, a5);

    v36 = [v27 objectAtIndexedSubscript:20];
    v98 = keyPointPosition(v36, a5);

    v37 = [v27 objectAtIndexedSubscript:18];
    v94 = keyPointPosition(v37, a5);

    v38 = [v27 objectAtIndexedSubscript:{0, *&v94}];
    v39 = keyPointPosition(v38, a5);

    *v40.f32 = vzip1_s32(v112, v100);
    *v41.f32 = vzip1_s32(v109, *&v103);
    *v42.f32 = vzip1_s32(v114, v99);
    *v43.f32 = vzip1_s32(v111, *&v105);
    v40.i64[1] = __PAIR64__(LODWORD(v104), LODWORD(v110));
    v41.i64[1] = __PAIR64__(LODWORD(v102), LODWORD(v107));
    v42.i64[1] = __PAIR64__(LODWORD(v106), LODWORD(v113));
    v43.i64[1] = __PAIR64__(LODWORD(v101), LODWORD(v108));
    if ((vmaxvq_u8(vuzp1q_s8(vuzp1q_s16(vcltzq_f32(v40), vcltzq_f32(v41)), vuzp1q_s16(vcltzq_f32(v42), vcltzq_f32(v43)))) & 1) == 0)
    {
      [v9 bounds];
      v46 = v45;
      [v9 bounds];
      v48 = 0;
      if (v46 >= v47)
      {
        v49 = v47;
      }

      else
      {
        v49 = v46;
      }

      *v121 = v113;
      v121[1] = v111;
      *&v121[2] = v108;
      *v120 = v110;
      v120[1] = v109;
      *&v120[2] = v107;
      v118 = __PAIR128__(*&v111, *&v113);
      v50 = 0;
      v119 = 0;
      *v117 = v110;
      v117[1] = v109;
      v117[2] = 0;
      *v116 = v106;
      *&v116[1] = v105;
      *&v116[2] = v101;
      *v115 = v104;
      *&v115[1] = v103;
      __asm { FMOV            V1.2S, #3.0 }

      *&v115[2] = v102;
      do
      {
        v50 = vadd_f32(v50, vdiv_f32(v121[v48++], _D1));
      }

      while (v48 != 3);
      v55 = 0;
      v56 = 0;
      do
      {
        v56 = vadd_f32(v56, vdiv_f32(v120[v55++], _D1));
      }

      while (v55 != 3);
      v57 = 0;
      v58 = v49;
      v59 = 0;
      do
      {
        v59 = vadd_f32(v59, vdiv_f32(*(&v118 + v57), _D1));
        v57 += 8;
      }

      while (v57 != 24);
      v60 = 0;
      v61 = 0;
      do
      {
        v61 = vadd_f32(v61, vdiv_f32(v117[v60++], _D1));
      }

      while (v60 != 3);
      v62 = 0;
      v63 = 0;
      do
      {
        v63 = vadd_f32(v63, vdiv_f32(v116[v62++], _D1));
      }

      while (v62 != 3);
      v64 = 0;
      v65 = 0;
      do
      {
        v65 = vadd_f32(v65, vdiv_f32(v115[v64++], _D1));
      }

      while (v64 != 3);
      v66 = vmul_f32(vadd_f32(v50, v56), 0x3F0000003F000000);
      v67 = vmul_f32(vadd_f32(v112, v114), 0x3F0000003F000000);
      v68 = vsub_f32(v50, v56);
      v69 = sqrtf(vaddv_f32(vmul_f32(v68, v68)));
      v70 = v58 * 0.1;
      if (v6)
      {
        v71 = vsub_f32(v59, v61);
        v72 = sqrtf(vaddv_f32(vmul_f32(v71, v71)));
        _NF = v69 < (v58 * 0.1) || v72 < v70;
        v74 = vsub_f32(*&v113, *&v110);
        v75 = sqrtf(vaddv_f32(vmul_f32(v74, v74)));
        v76 = _NF || v75 < v70;
        v77 = vsub_f32(v111, v109);
        v78 = sqrtf(vaddv_f32(vmul_f32(v77, v77)));
        if (v76 || v78 < v70)
        {
          v80 = vsub_f32(v114, v112);
          if (sqrtf(vaddv_f32(vmul_f32(v80, v80))) < v70)
          {
            v81 = vsub_f32(v114, *&v113);
            v82 = sqrtf(vaddv_f32(vmul_f32(v81, v81)));
            v83 = v58 * 0.2;
            if (v82 >= (v58 * 0.2))
            {
              v84 = vsub_f32(v114, v111);
              if (sqrtf(vaddv_f32(vmul_f32(v84, v84))) >= v83)
              {
                v85 = vsub_f32(v114, *&v108);
                if (sqrtf(vaddv_f32(vmul_f32(v85, v85))) >= v83)
                {
                  v86 = vsub_f32(v114, *&v98);
                  if (sqrtf(vaddv_f32(vmul_f32(v86, v86))) >= v83)
                  {
                    v87 = vsub_f32(v112, *&v110);
                    if (sqrtf(vaddv_f32(vmul_f32(v87, v87))) >= v83)
                    {
                      v88 = vsub_f32(v112, v109);
                      if (sqrtf(vaddv_f32(vmul_f32(v88, v88))) >= v83)
                      {
                        v89 = vsub_f32(v112, *&v107);
                        if (sqrtf(vaddv_f32(vmul_f32(v89, v89))) >= v83)
                        {
                          v90 = vsub_f32(v112, *&v97);
                          if (sqrtf(vaddv_f32(vmul_f32(v90, v90))) >= v83)
                          {
                            v12 = 0;
                            v91 = vsub_f32(*&v39, *&v26);
                            if (sqrtf(vaddv_f32(vmul_f32(v91, v91))) < v83 || (vcgt_f32(v66, v67).i32[1] & 1) == 0)
                            {
                              goto LABEL_5;
                            }

                            if (v99.f32[1] * 1.1 >= *&v114.i32[1] && *(&v106 + 1) * 1.02 >= *(&v113 + 1) && *(&v105 + 1) * 1.02 >= v111.f32[1] && *(&v101 + 1) * 1.02 >= *(&v108 + 1) && v95 * 1.02 >= *(&v98 + 1) && v100.f32[1] * 1.1 >= v112.f32[1] && *(&v104 + 1) * 1.02 >= *(&v110 + 1) && *(&v103 + 1) * 1.02 >= v109.f32[1] && *(&v102 + 1) * 1.02 >= *(&v107 + 1))
                            {
                              v12 = v96 * 1.02 >= *(&v97 + 1);
                              goto LABEL_5;
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      else if (v69 < (v58 * 0.1))
      {
        v92 = vsub_f32(v114, v112);
        if (sqrtf(vaddv_f32(vmul_f32(v92, v92))) < v70)
        {
          v93 = vsub_f32(v67, v66);
          if (vaddv_f32(vmul_f32(v93, vsub_f32(v56, v65))) > -0.01 && vaddv_f32(vmul_f32(v93, vsub_f32(v50, v63))) > -0.01 && vaddv_f32(vmul_f32(vsub_f32(v112, v100), v93)) > -0.01)
          {
            v12 = vaddv_f32(vmul_f32(vsub_f32(v114, v99), v93)) > -0.01;
            goto LABEL_5;
          }
        }
      }
    }

    v12 = 0;
LABEL_5:
  }

  return v12;
}

- (id)processImage:(__CVBuffer *)a3 withOptions:(id)a4 error:(id *)a5
{
  v146 = *MEMORY[0x1E69E9840];
  v94 = a4;
  v6 = VCPSignPostLog();
  v7 = os_signpost_id_generate(v6);

  v8 = VCPSignPostLog();
  v9 = v8;
  v88 = v7 - 1;
  spid = v7;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "VCPHandGestureImageRequest_processImage", "", buf, 2u);
  }

  v91 = [(VCPHandPoseImageRequest *)self->handPoseRequest processImage:a3 withOptions:v94 error:a5];
  RotationInDegrees = getRotationInDegrees(v94);
  maxNumOfPersons = self->super._maxNumOfPersons;
  if (maxNumOfPersons >= 3)
  {
    maxNumOfPersons = 3;
  }

  if (maxNumOfPersons <= 1)
  {
    maxNumOfPersons = 1;
  }

  v99 = maxNumOfPersons;
  v106 = [MEMORY[0x1E695DF70] array];
  v11 = [MEMORY[0x1E695DF90] dictionary];
  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  obj = v91;
  v12 = [obj countByEnumeratingWithState:&v128 objects:v145 count:16];
  if (v12)
  {
    v13 = *v129;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v129 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v128 + 1) + 8 * i);
        v16 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v15, "groupID")}];
        v17 = [v11 objectForKeyedSubscript:v16];
        v18 = v17 == 0;

        if (v18)
        {
          v19 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v15, 0}];
          v20 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v15, "groupID")}];
          [v11 setObject:v19 forKeyedSubscript:v20];
        }

        else
        {
          v19 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v15, "groupID")}];
          v20 = [v11 objectForKeyedSubscript:v19];
          [v20 addObject:v15];
        }
      }

      v12 = [obj countByEnumeratingWithState:&v128 objects:v145 count:16];
    }

    while (v12);
  }

  v21 = [v11 allKeys];
  v22 = [v21 count];
  v23 = v99;
  if (v99 >= v22)
  {
    v23 = v22;
  }

  v93 = v23;

  v105 = [MEMORY[0x1E695DF90] dictionary];
  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  v102 = [v11 allKeys];
  v24 = [v102 countByEnumeratingWithState:&v124 objects:v144 count:16];
  if (v24)
  {
    v25 = *v125;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v125 != v25)
        {
          objc_enumerationMutation(v102);
        }

        v27 = *(*(&v124 + 1) + 8 * j);
        v28 = [v11 objectForKeyedSubscript:v27];
        if ([v28 count])
        {
          v122 = 0u;
          v123 = 0u;
          v120 = 0u;
          v121 = 0u;
          v29 = v28;
          v30 = [v29 countByEnumeratingWithState:&v120 objects:v143 count:16];
          if (v30)
          {
            v31 = *v121;
            v32 = 0.0;
            do
            {
              for (k = 0; k != v30; ++k)
              {
                if (*v121 != v31)
                {
                  objc_enumerationMutation(v29);
                }

                v32 = v32 + handArea(*(*(&v120 + 1) + 8 * k));
              }

              v30 = [v29 countByEnumeratingWithState:&v120 objects:v143 count:16];
            }

            while (v30);
          }

          else
          {
            v32 = 0.0;
          }

          *&v34 = v32 / [v29 count];
          v35 = [MEMORY[0x1E696AD98] numberWithFloat:v34];
          [v105 setObject:v35 forKeyedSubscript:v27];
        }
      }

      v24 = [v102 countByEnumeratingWithState:&v124 objects:v144 count:16];
    }

    while (v24);
  }

  v36 = [v105 keysSortedByValueUsingComparator:&__block_literal_global_34];
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v138 = v36;
    v139 = 1024;
    v140 = v99;
    v141 = 1024;
    v142 = v93;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "VCPHandGestureVideoRequest - sorted groupIDs based on hand size = %@, max number of persons = %d, number of valid persons = %d", buf, 0x18u);
  }

  v37 = 0;
  for (m = v36; ; v36 = m)
  {
    v38 = [v36 count];
    v39 = v93 >= v38 ? v38 : v93;
    if (v37 >= v39)
    {
      break;
    }

    v40 = [v36 objectAtIndexedSubscript:v37];
    v90 = v37;
    v41 = [v11 objectForKeyedSubscript:v40];

    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    v96 = v41;
    v42 = [v96 countByEnumeratingWithState:&v116 objects:v136 count:16];
    if (!v42)
    {
      goto LABEL_65;
    }

    v95 = *v117;
    while (2)
    {
      for (n = 0; n != v42; ++n)
      {
        if (*v117 != v95)
        {
          objc_enumerationMutation(v96);
        }

        v44 = *(*(&v116 + 1) + 8 * n);
        v45 = [[VCPCoreMLFeatureProviderGesture alloc] initWith:v44 rotationInDegrees:RotationInDegrees];
        v100 = v45;
        if (!v45)
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create VCPCoreMLFeatureProviderGesture", buf, 2u);
          }

          goto LABEL_113;
        }

        v46 = [(VCPCoreMLRequest *)self->gestureCoreMLRequest model];
        v103 = [v46 predictionFromFeatures:v45 error:a5];

        if (!v103)
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to get output feature", buf, 2u);
          }

          goto LABEL_113;
        }

        v47 = [v103 featureValueForName:@"output"];
        v48 = [v47 multiArrayValue];
        v49 = v48;
        v50 = [v48 dataPointer];

        if (!v50)
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            v80 = MEMORY[0x1E69E9C10];
            goto LABEL_111;
          }

LABEL_112:

LABEL_113:
          if (a5)
          {
            v81 = MEMORY[0x1E696ABC0];
            v132 = *MEMORY[0x1E696A578];
            v82 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error: failed to processImage"];
            v133 = v82;
            v83 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v133 forKeys:&v132 count:1];
            *a5 = [v81 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v83];
          }

          v84 = 0;
          v36 = m;
          goto LABEL_116;
        }

        v51 = [v47 multiArrayValue];
        v52 = [v51 count] == 12;

        if (!v52)
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            v80 = MEMORY[0x1E69E9C10];
LABEL_111:
            _os_log_impl(&dword_1C9B70000, v80, OS_LOG_TYPE_ERROR, "Failed to get multierarrayvalue", buf, 2u);
          }

          goto LABEL_112;
        }

        v53 = 0;
        v54 = 0;
        v55 = 0.0;
        while (1)
        {
          v56 = [v47 multiArrayValue];
          v57 = [v56 count] > v53;

          if (!v57)
          {
            break;
          }

          if (*(v50 + 4 * v53) <= v55)
          {
            v54 = v54;
          }

          else
          {
            v55 = *(v50 + 4 * v53);
            v54 = v53;
          }

          ++v53;
        }

        v58 = [(VCPHandGestureImageRequest *)self taxonomyMappingStatic];
        v59 = [MEMORY[0x1E696AD98] numberWithInt:v54];
        v60 = [v58 objectForKeyedSubscript:v59];
        [v44 setGestureType:{objc_msgSend(v60, "intValue")}];

        if ([v44 gestureType] == 9)
        {
          [v44 setGestureType:{-[VCPHandGestureImageRequest heuristicThumb:rotationInDegrees:](self, "heuristicThumb:rotationInDegrees:", v44, RotationInDegrees)}];
        }

        *&v61 = v55;
        [v44 setGestureConfidence:v61];
      }

      v42 = [v96 countByEnumeratingWithState:&v116 objects:v136 count:16];
      if (v42)
      {
        continue;
      }

      break;
    }

LABEL_65:

    if ([v96 count] < 2)
    {
      goto LABEL_90;
    }

    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v104 = v96;
    v62 = [v104 countByEnumeratingWithState:&v112 objects:v135 count:16];
    if (!v62)
    {

      v64 = 0;
      v63 = 0;
      goto LABEL_89;
    }

    v63 = 0;
    v64 = 0;
    v65 = *v113;
    while (2)
    {
      v66 = 0;
      while (2)
      {
        if (*v113 != v65)
        {
          objc_enumerationMutation(v104);
        }

        v67 = *(*(&v112 + 1) + 8 * v66);
        if ([(VCPHandObservation *)v67 chirality]!= -1)
        {
          if ([(VCPHandObservation *)v67 chirality]!= 1)
          {
            goto LABEL_82;
          }

          if (v64)
          {
            v68 = handArea(v64);
            v69 = v64;
            v70 = v63;
            v71 = v67;
            if (v68 >= handArea(v67))
            {
              goto LABEL_82;
            }
          }

          else
          {
            v69 = 0;
            v70 = v63;
            v71 = v67;
          }

          goto LABEL_81;
        }

        if (!v63)
        {
          v69 = 0;
          v70 = v67;
          v71 = v64;
          goto LABEL_81;
        }

        v72 = handArea(v63);
        v69 = v63;
        v70 = v67;
        v71 = v64;
        if (v72 < handArea(v67))
        {
LABEL_81:
          v73 = v67;

          v63 = v70;
          v64 = v71;
        }

LABEL_82:
        if (v62 != ++v66)
        {
          continue;
        }

        break;
      }

      v62 = [v104 countByEnumeratingWithState:&v112 objects:v135 count:16];
      if (v62)
      {
        continue;
      }

      break;
    }

    if (v63 && v64 && [objc_opt_class() heuristicHeart:v63 andRightHand:v64 rotationInDegrees:RotationInDegrees relax:0])
    {
      [(VCPHandObservation *)v63 setGestureType:15];
      LODWORD(v74) = 0.5;
      [(VCPHandObservation *)v63 setGestureConfidence:v74];
      [(VCPHandObservation *)v64 setGestureType:15];
      LODWORD(v75) = 0.5;
      [(VCPHandObservation *)v64 setGestureConfidence:v75];
    }

LABEL_89:

LABEL_90:
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v76 = v96;
    v77 = [v76 countByEnumeratingWithState:&v108 objects:v134 count:16];
    if (v77)
    {
      v78 = *v109;
      do
      {
        for (ii = 0; ii != v77; ++ii)
        {
          if (*v109 != v78)
          {
            objc_enumerationMutation(v76);
          }

          [v106 addObject:*(*(&v108 + 1) + 8 * ii)];
        }

        v77 = [v76 countByEnumeratingWithState:&v108 objects:v134 count:16];
      }

      while (v77);
    }

    v37 = v90 + 1;
  }

  v86 = VCPSignPostLog();
  v87 = v86;
  if (v88 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v86))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v87, OS_SIGNPOST_INTERVAL_END, spid, "VCPHandGestureImageRequest_processImage", "", buf, 2u);
  }

  v84 = v106;
LABEL_116:

  return v84;
}

- (void)updateWithOptions:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  if (queue)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__VCPHandGestureImageRequest_updateWithOptions_completion___block_invoke;
    block[3] = &unk_1E834DBD8;
    block[4] = self;
    v12 = v6;
    v13 = v7;
    dispatch_async(queue, block);
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPHandGestureImageRequest : queue not available for async updateWithOptions", v10, 2u);
    }

    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:0];
    (*(v7 + 2))(v7, v9);
  }
}

void __59__VCPHandGestureImageRequest_updateWithOptions_completion___block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = *(a1[4] + 64);
  v8 = 0;
  v4 = [v3 updateWithOptions:v2 error:&v8];
  v5 = v8;
  v6 = a1[6];
  if (v4)
  {
    (*(v6 + 16))(v6, 0);
  }

  else
  {
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:0];
    (*(v6 + 16))(v6, v7);
  }
}

- (void)processImage:(__CVBuffer *)a3 withOptions:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (self->_queue)
  {
    *buf = 0;
    v17 = buf;
    v18 = 0x2020000000;
    v19 = CFRetain(a3);
    queue = self->_queue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __66__VCPHandGestureImageRequest_processImage_withOptions_completion___block_invoke;
    v12[3] = &unk_1E834DF90;
    v12[4] = self;
    v15 = buf;
    v13 = v8;
    v14 = v9;
    dispatch_async(queue, v12);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPHandGestureImageRequest : queue not available for async processImage", buf, 2u);
    }

    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:0];
    (*(v9 + 2))(v9, 0, v11);
  }
}

void __66__VCPHandGestureImageRequest_processImage_withOptions_completion___block_invoke(void *a1)
{
  v2 = *(*(a1[7] + 8) + 24);
  v3 = a1[4];
  v4 = a1[5];
  v8 = 0;
  v5 = [v3 processImage:v2 withOptions:v4 error:&v8];
  v6 = v8;
  v7 = *(*(a1[7] + 8) + 24);
  if (v7)
  {
    CFRelease(v7);
  }

  (*(a1[6] + 16))();
}

@end