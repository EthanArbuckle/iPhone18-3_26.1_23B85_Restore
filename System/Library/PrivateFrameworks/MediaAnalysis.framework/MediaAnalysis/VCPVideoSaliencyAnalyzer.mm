@interface VCPVideoSaliencyAnalyzer
- (BOOL)isOutOfBoundary:(CGRect)a3;
- (VCPVideoSaliencyAnalyzer)initWithTransform:(CGAffineTransform *)a3;
- (float)boundDistance:(CGRect)a3 relativeTo:(CGRect)a4 landscape:(BOOL)a5;
- (float)updateConfidence:(float)a3 prevBound:(CGRect)a4 newBound:(CGRect)a5 width:(int)a6 height:(int)a7;
- (id)pruneRegions:(id)a3 withOverlapRatio:(float)a4;
- (id)results;
- (int)analyzeFrame:(__CVBuffer *)a3 withTimestamp:(id *)a4 andDuration:(id *)a5 flags:(unint64_t *)a6;
- (int)finishAnalysisPass:(id *)a3;
@end

@implementation VCPVideoSaliencyAnalyzer

- (VCPVideoSaliencyAnalyzer)initWithTransform:(CGAffineTransform *)a3
{
  v23.receiver = self;
  v23.super_class = VCPVideoSaliencyAnalyzer;
  v3 = [(VCPVideoSaliencyAnalyzer *)&v23 init];
  if (v3)
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v5 = *(v3 + 1);
    *(v3 + 1) = v4;

    v6 = [MEMORY[0x1E695DF70] array];
    v7 = *(v3 + 2);
    *(v3 + 2) = v6;

    v8 = MEMORY[0x1E6960C80];
    v9 = *MEMORY[0x1E6960C80];
    *(v3 + 5) = *(MEMORY[0x1E6960C80] + 16);
    *(v3 + 24) = v9;
    v10 = *v8;
    *(v3 + 8) = *(v8 + 2);
    *(v3 + 3) = v10;
    v11 = *(MEMORY[0x1E6960C70] + 16);
    *(v3 + 72) = *MEMORY[0x1E6960C70];
    *(v3 + 11) = v11;
    v12 = [VCPImageSaliencyAnalyzer analyzerWith:3 prune:0];
    v13 = *(v3 + 12);
    *(v3 + 12) = v12;

    v14 = *(v3 + 12);
    if (v14)
    {
      v15 = [MEMORY[0x1E695DF90] dictionary];
      v16 = *(v3 + 13);
      *(v3 + 13) = v15;

      v17 = [MEMORY[0x1E695DF90] dictionary];
      v18 = *(v3 + 14);
      *(v3 + 14) = v17;

      v19 = [MEMORY[0x1E695DEC8] array];
      v20 = *(v3 + 15);
      *(v3 + 15) = v19;

      v14 = v3;
    }

    v21 = v14;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (float)updateConfidence:(float)a3 prevBound:(CGRect)a4 newBound:(CGRect)a5 width:(int)a6 height:(int)a7
{
  v11.f64[0] = a5.origin.x;
  v10.f64[0] = a5.origin.y;
  *v7.i32 = vcvts_n_f32_s32(a6, 1uLL);
  v13.f64[0] = a5.size.width;
  v12.f64[0] = a5.size.height;
  *v8.i32 = vcvts_n_f32_s32(a7, 1uLL);
  v13.f64[1] = a4.size.width;
  __asm { FMOV            V3.2D, #0.5 }

  v11.f64[1] = a4.origin.x;
  v12.f64[1] = a4.size.height;
  v10.f64[1] = a4.origin.y;
  v19 = vsub_f32(vcvt_f32_f64(vaddq_f64(v11, vmulq_f64(v13, _Q3))), vdup_lane_s32(v7, 0));
  *&v10.f64[0] = vsub_f32(vcvt_f32_f64(vaddq_f64(v10, vmulq_f64(v12, _Q3))), vdup_lane_s32(v8, 0));
  *&v10.f64[0] = vmla_f32(vmul_f32(*&v10.f64[0], *&v10.f64[0]), v19, v19);
  v20 = expf((-2.0 * vsub_f32(*&v10.f64[0], vdup_lane_s32(*&v10.f64[0], 1)).f32[0]) / (a6 * a6 + a7 * a7)) * a3;
  v21 = 1.0;
  if (v20 < 1.0)
  {
    v21 = v20;
  }

  v22 = v20 > 0.0;
  result = 0.0;
  if (v22)
  {
    return v21;
  }

  return result;
}

- (BOOL)isOutOfBoundary:(CGRect)a3
{
  v3 = a3.origin.x + a3.size.width * 0.5;
  v4 = a3.origin.y + a3.size.height * 0.5;
  if (v4 >= v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (v3 < v4)
  {
    v3 = v4;
  }

  return v3 > 0.9 || v5 < 0.1;
}

- (id)pruneRegions:(id)a3 withOverlapRatio:(float)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v35 = a3;
  v34 = [MEMORY[0x1E695DF70] array];
  v4 = [MEMORY[0x1E695DF70] arrayWithArray:v35];
  v5 = 0;
  v6 = MEMORY[0x1E695F058];
  while ([v35 count] > v5)
  {
    if (v5 >= 2)
    {
      v7 = 2;
    }

    else
    {
      v7 = v5;
    }

    v38 = kConfidenceThresh[v7];
    y = v6[1];
    rect[0] = *v6;
    width = v6[2];
    height = v6[3];
    v11 = [MEMORY[0x1E695DF70] array];
    v40 = 0u;
    v41 = 0u;
    memset(&rect[1], 0, 32);
    v12 = [v4 reverseObjectEnumerator];
    v13 = [v12 countByEnumeratingWithState:&rect[1] objects:v42 count:16];
    if (v13)
    {
      v14 = **&rect[3];
      v37 = 0.0;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (**&rect[3] != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*&rect[2] + 8 * i);
          [v16 confidence];
          v18 = v17;
          if (v17 > v38)
          {
            [v16 bound];
            v20 = v19;
            v22 = v21;
            v24 = v23;
            v26 = v25;
            v45.origin.x = rect[0];
            v45.origin.y = y;
            v45.size.width = width;
            v45.size.height = height;
            if (CGRectIsEmpty(v45))
            {
              [v11 addObject:v16];
              v37 = v18;
              rect[0] = v20;
              y = v22;
              width = v24;
              height = v26;
            }

            else
            {
              v46.origin.x = rect[0];
              v46.origin.y = y;
              v46.size.width = width;
              v46.size.height = height;
              v52.origin.x = v20;
              v52.origin.y = v22;
              v52.size.width = v24;
              v52.size.height = v26;
              if (CGRectIntersectsRect(v46, v52))
              {
                v47.origin.x = rect[0];
                v47.origin.y = y;
                v47.size.width = width;
                v47.size.height = height;
                v53.origin.x = v20;
                v53.origin.y = v22;
                v53.size.width = v24;
                v53.size.height = v26;
                v48 = CGRectIntersection(v47, v53);
                v27 = width * height;
                if (v24 * v26 < width * height)
                {
                  v27 = v24 * v26;
                }

                v28 = v27;
                if (v48.size.width * v48.size.height > (v28 * a4))
                {
                  v49.origin.x = rect[0];
                  v49.origin.y = y;
                  v49.size.width = width;
                  v49.size.height = height;
                  v54.origin.x = v20;
                  v54.origin.y = v22;
                  v54.size.width = v24;
                  v54.size.height = v26;
                  v50 = CGRectUnion(v49, v54);
                  rect[0] = v50.origin.x;
                  y = v50.origin.y;
                  width = v50.size.width;
                  height = v50.size.height;
                  v29 = v37;
                  if (v37 < v18)
                  {
                    v29 = v18;
                  }

                  v37 = v29;
                  [v11 addObject:v16];
                }
              }
            }
          }
        }

        v13 = [v12 countByEnumeratingWithState:&rect[1] objects:v42 count:16];
      }

      while (v13);
    }

    else
    {
      v37 = 0.0;
    }

    v51.origin.x = rect[0];
    v51.origin.y = y;
    v51.size.width = width;
    v51.size.height = height;
    if (!CGRectIsEmpty(v51))
    {
      v30 = [VCPSaliencyRegion alloc];
      *&v31 = v37;
      v32 = [(VCPSaliencyRegion *)v30 initWith:rect[0] confidence:y, width, height, v31];
      if (!v32)
      {
        goto LABEL_30;
      }

      [v34 addObject:v32];
    }

    [v4 removeObjectsInArray:v11];
    if (![v4 count])
    {
LABEL_30:

      break;
    }

    ++v5;
  }

  return v34;
}

- (float)boundDistance:(CGRect)a3 relativeTo:(CGRect)a4 landscape:(BOOL)a5
{
  if (!a5)
  {
    return 0.0;
  }

  v5 = a3.origin.x + a3.size.width * 0.5 - (a4.origin.x + a4.size.width * 0.5);
  return fabsf(v5);
}

- (int)analyzeFrame:(__CVBuffer *)a3 withTimestamp:(id *)a4 andDuration:(id *)a5 flags:(unint64_t *)a6
{
  v128 = *MEMORY[0x1E69E9840];
  v92 = a4;
  p_timeLastTracking = &self->_timeLastTracking;
  *&lhs.a = *&a4->var0;
  *&lhs.c = a4->var3;
  rhs = self->_timeLastTracking;
  CMTimeSubtract(&time, &lhs, &rhs);
  if (CMTimeGetSeconds(&time) >= 0.200000003 || (*&lhs.a = *&v92->var0, *&lhs.c = v92->var3, rhs = self->_timeLastDetection, CMTimeSubtract(&time, &lhs, &rhs), CMTimeGetSeconds(&time) >= 1.0))
  {
    Width = CVPixelBufferGetWidth(a3);
    Height = CVPixelBufferGetHeight(a3);
    context = objc_autoreleasePoolPush();
    v118 = 0;
    v81 = [MEMORY[0x1E695DF70] array];
    v83 = [MEMORY[0x1E695DF70] array];
    v10 = self;
    v11 = [MEMORY[0x1E695DF70] array];
    v12 = Width;
    v112 = 0u;
    v117 = 0uLL;
    trackers = self->_trackers;
    v107[0] = MEMORY[0x1E69E9820];
    v107[1] = 3221225472;
    v107[2] = __73__VCPVideoSaliencyAnalyzer_analyzeFrame_withTimestamp_andDuration_flags___block_invoke;
    v107[3] = &unk_1E834D820;
    v111 = (1.0 / Width);
    v113 = (-1.0 / Height);
    v114 = xmmword_1C9F61010;
    v110 = a3;
    v107[4] = self;
    v14 = v11;
    v108 = v14;
    v115 = Width;
    v116 = Height;
    v15 = v81;
    v109 = v15;
    v80 = v14;
    [(NSMutableDictionary *)trackers enumerateKeysAndObjectsUsingBlock:v107];
    v16 = *&v92->var0;
    p_timeLastTracking->epoch = v92->var3;
    *&p_timeLastTracking->value = v16;
    [(NSMutableDictionary *)self->_trackers removeObjectsForKeys:v14];
    *&lhs.a = *&v92->var0;
    *&lhs.c = v92->var3;
    rhs = self->_timeLastDetection;
    CMTimeSubtract(&time, &lhs, &rhs);
    v78 = v15;
    if (CMTimeGetSeconds(&time) >= 1.0)
    {
      [(NSMutableDictionary *)self->_trackers removeAllObjects];
      saliencyAnalyer = self->_saliencyAnalyer;
      v106 = 0;
      v8 = [(VCPImageSaliencyAnalyzer *)saliencyAnalyer analyzePixelBuffer:a3 flags:&v118 results:&v106 cancel:&__block_literal_global_26];
      v82 = v106;
      if (v8)
      {
LABEL_49:

        objc_autoreleasePoolPop(context);
        return v8;
      }

      obj = [MEMORY[0x1E695DF70] array];
      v23 = MEMORY[0x1E695DF70];
      v24 = [v82 objectForKeyedSubscript:@"SaliencyResults"];
      v25 = [v23 arrayWithArray:v24];

      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v26 = [v82 objectForKeyedSubscript:@"SaliencyResults"];
      v27 = [v26 countByEnumeratingWithState:&v102 objects:v127 count:16];
      if (v27)
      {
        v28 = *v103;
        while (2)
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v103 != v28)
            {
              objc_enumerationMutation(v26);
            }

            v30 = [*(*(&v102 + 1) + 8 * i) objectForKeyedSubscript:@"attributes"];
            v31 = [v30 objectForKeyedSubscript:@"saliencyBounds"];
            if (v31)
            {
              v32 = [v30 objectForKeyedSubscript:@"saliencyConfidence"];
              [v32 floatValue];
              v34 = v33;

              v35 = [VCPSaliencyRegion alloc];
              v129 = NSRectFromString(v31);
              LODWORD(v36) = v34;
              v37 = [(VCPSaliencyRegion *)v35 initWith:v129.origin.x confidence:v129.origin.y, v129.size.width, v129.size.height, v36];
              if (!v37)
              {

LABEL_45:
                v8 = -108;
                goto LABEL_48;
              }

              [obj addObject:v37];
            }
          }

          v27 = [v26 countByEnumeratingWithState:&v102 objects:v127 count:16];
          if (v27)
          {
            continue;
          }

          break;
        }
      }

      [obj sortUsingComparator:&__block_literal_global_235];
      LODWORD(v38) = 0.5;
      v39 = [(VCPVideoSaliencyAnalyzer *)self pruneRegions:obj withOverlapRatio:v38];
      v100 = 0u;
      v101 = 0u;
      v98 = 0u;
      v99 = 0u;
      v86 = v39;
      v40 = [v86 countByEnumeratingWithState:&v98 objects:v126 count:16];
      if (v40)
      {
        v41 = 0;
        v42 = v12;
        v43 = -Height;
        v44 = Height;
        v88 = *v99;
LABEL_24:
        v45 = 0;
        if (v41 <= 4)
        {
          v46 = 4;
        }

        else
        {
          v46 = v41;
        }

        v47 = (v46 - v41);
        while (1)
        {
          if (*v99 != v88)
          {
            objc_enumerationMutation(v86);
          }

          if (v47 == v45)
          {
            break;
          }

          v48 = *(*(&v98 + 1) + 8 * v45);
          [v48 bound];
          *&lhs.b = v117;
          lhs.a = v42;
          lhs.d = v43;
          lhs.tx = 0.0;
          lhs.ty = v44;
          v131 = CGRectApplyAffineTransform(v130, &lhs);
          x = v131.origin.x;
          y = v131.origin.y;
          v51 = v131.size.width;
          v52 = v131.size.height;
          v53 = [VCPVideoObjectTracker alloc];
          *&lhs.a = *&v92->var0;
          *&lhs.c = v92->var3;
          v54 = [(VCPVideoObjectTracker *)v53 initWithObjectBounds:a3 inFrame:&lhs timestamp:x, y, v51, v52];
          if (!v54)
          {

            goto LABEL_45;
          }

          v55 = self->_trackers;
          v56 = [MEMORY[0x1E696AD98] numberWithInt:v41];
          [(NSMutableDictionary *)v55 setObject:v54 forKey:v56];

          confidences = self->_confidences;
          v58 = MEMORY[0x1E696AD98];
          [v48 confidence];
          v59 = [v58 numberWithFloat:?];
          v60 = [MEMORY[0x1E696AD98] numberWithInt:v41];
          [(NSMutableDictionary *)confidences setObject:v59 forKey:v60];

          [v83 addObject:v48];
          v41 = (v41 + 1);
          if (v40 == ++v45)
          {
            v40 = [v86 countByEnumeratingWithState:&v98 objects:v126 count:16];
            if (v40)
            {
              goto LABEL_24;
            }

            break;
          }
        }
      }

      v61 = *&v92->var0;
      self->_timeLastDetection.epoch = v92->var3;
      *&self->_timeLastDetection.value = v61;

      v10 = self;
    }

    else
    {
      [v83 addObjectsFromArray:v15];
      v82 = 0;
    }

    LODWORD(v17) = 1045220557;
    obj = [(VCPVideoSaliencyAnalyzer *)v10 pruneRegions:v83 withOverlapRatio:v17];
    [(NSMutableArray *)v10->_latestRegions removeAllObjects];
    [(NSMutableArray *)v10->_latestRegions addObjectsFromArray:obj];
    v18 = [obj copy];
    [VCPSaliencyRegion attachSalientRegions:v18 toPixelBuffer:a3];

    v19 = self;
    if ([obj count] && !-[NSArray count](self->_activeRegions, "count"))
    {
      objc_storeStrong(&self->_activeRegions, obj);
      v19 = self;
      var3 = v92->var3;
      *&self->_start.value = *&v92->var0;
      self->_start.epoch = var3;
    }

    p_start = &v19->_start;
    *&lhs.a = *&v92->var0;
    *&lhs.c = v92->var3;
    rhs = v19->_start;
    CMTimeSubtract(&time, &lhs, &rhs);
    if (CMTimeGetSeconds(&time) >= 1.0)
    {
      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v77 = 120;
      v85 = v19->_activeRegions;
      v62 = [(NSArray *)v85 countByEnumeratingWithState:&v93 objects:v125 count:16];
      if (v62)
      {
        pixelBuffera = *v94;
        do
        {
          for (j = 0; j != v62; ++j)
          {
            if (*v94 != pixelBuffera)
            {
              objc_enumerationMutation(v85);
            }

            v64 = *(*(&v93 + 1) + 8 * j);
            v123[0] = @"saliencyBounds";
            [v64 bound];
            v65 = NSStringFromRect(v132);
            v124[0] = v65;
            v123[1] = @"saliencyConfidence";
            v66 = MEMORY[0x1E696AD98];
            [v64 confidence];
            v67 = [v66 numberWithFloat:?];
            v124[1] = v67;
            v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v124 forKeys:v123 count:2];

            detections = self->_detections;
            v121[0] = @"start";
            *&lhs.a = *&p_start->value;
            *&lhs.c = p_start->epoch;
            v70 = CMTimeCopyAsDictionary(&lhs, 0);
            v122[0] = v70;
            v121[1] = @"duration";
            *&lhs.a = *&v92->var0;
            *&lhs.c = v92->var3;
            rhs = *p_start;
            CMTimeSubtract(&time, &lhs, &rhs);
            *&lhs.a = *&time.value;
            *&lhs.c = time.epoch;
            v71 = CMTimeCopyAsDictionary(&lhs, 0);
            v121[2] = @"attributes";
            v122[1] = v71;
            v122[2] = v68;
            v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v122 forKeys:v121 count:3];
            [(NSMutableArray *)detections addObject:v72];
          }

          v62 = [(NSArray *)v85 countByEnumeratingWithState:&v93 objects:v125 count:16];
        }

        while (v62);
      }

      if ([obj count])
      {
        v73 = obj;
      }

      else
      {
        v73 = [MEMORY[0x1E695DEC8] array];
        v92 = MEMORY[0x1E6960C70];
      }

      v74 = *(&self->super.super.isa + v77);
      *(&self->super.super.isa + v77) = v73;

      v8 = 0;
      v75 = *&v92->var0;
      p_start->epoch = v92->var3;
      *&p_start->value = v75;
    }

    else
    {
      v8 = 0;
    }

LABEL_48:

    goto LABEL_49;
  }

  v7 = [(NSMutableArray *)self->_latestRegions copy];
  [VCPSaliencyRegion attachSalientRegions:v7 toPixelBuffer:a3];

  return 0;
}

void __73__VCPVideoSaliencyAnalyzer_analyzeFrame_withTimestamp_andDuration_flags___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [v6 trackObjectInFrame:*(a1 + 56)];
  [v6 objectBounds];
  v7 = *(a1 + 80);
  *&v34.a = *(a1 + 64);
  *&v34.c = v7;
  *&v34.tx = *(a1 + 96);
  v36 = CGRectApplyAffineTransform(v35, &v34);
  x = v36.origin.x;
  y = v36.origin.y;
  width = v36.size.width;
  height = v36.size.height;
  [v6 objectBounds];
  if (CGRectIsEmpty(v37) || [v6 lostCount] > 10 || objc_msgSend(*(a1 + 32), "isOutOfBoundary:", x, y, width, height))
  {
    [*(a1 + 40) addObject:v5];
  }

  else
  {
    v12 = [*(*(a1 + 32) + 112) objectForKeyedSubscript:v5];

    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = [v13[14] objectForKeyedSubscript:v5];
      [v14 floatValue];
      v33 = v15;
      [v6 objectBoundsInitial];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;
      [v6 objectBounds];
      v32 = v24;
      LODWORD(v24) = v33;
      [v13 updateConfidence:*(a1 + 112) prevBound:*(a1 + 116) newBound:v24 width:v17 height:{v19, v21, v23, *&v32, v25, v26, v27}];
      LODWORD(v23) = v28;

      v29 = [VCPSaliencyRegion alloc];
      LODWORD(v30) = LODWORD(v23);
      v31 = [(VCPSaliencyRegion *)v29 initWith:x confidence:y, width, height, v30];
      [*(a1 + 48) addObject:v31];
    }
  }
}

uint64_t __73__VCPVideoSaliencyAnalyzer_analyzeFrame_withTimestamp_andDuration_flags___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 confidence];
  v7 = v6;
  [v5 confidence];
  if (v7 >= v8)
  {
    [v5 confidence];
    v11 = v10;
    [v5 confidence];
    v9 = v11 > v12;
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

- (int)finishAnalysisPass:(id *)a3
{
  v35 = *MEMORY[0x1E69E9840];
  if ([(NSArray *)self->_activeRegions count])
  {
    memset(&v28, 0, sizeof(v28));
    v4 = *&a3->var0.var3;
    *&range.start.value = *&a3->var0.var0;
    *&range.start.epoch = v4;
    *&range.duration.timescale = *&a3->var1.var1;
    CMTimeRangeGetEnd(&v27, &range);
    range.start = v27;
    rhs = self->_start;
    CMTimeSubtract(&v28, &range.start, &rhs);
    range.start = v28;
    if (CMTimeGetSeconds(&range.start) > 1.0)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      obj = self->_activeRegions;
      v5 = [(NSArray *)obj countByEnumeratingWithState:&v22 objects:v34 count:16];
      if (v5)
      {
        v20 = *v23;
        do
        {
          for (i = 0; i != v5; ++i)
          {
            if (*v23 != v20)
            {
              objc_enumerationMutation(obj);
            }

            v7 = *(*(&v22 + 1) + 8 * i);
            v32[0] = @"saliencyBounds";
            [v7 bound];
            v8 = NSStringFromRect(v36);
            v33[0] = v8;
            v32[1] = @"saliencyConfidence";
            v9 = MEMORY[0x1E696AD98];
            [v7 confidence];
            v10 = [v9 numberWithFloat:?];
            v33[1] = v10;
            v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];

            detections = self->_detections;
            v30[0] = @"start";
            *&range.start.value = *&self->_start.value;
            range.start.epoch = self->_start.epoch;
            v13 = CMTimeCopyAsDictionary(&range.start, 0);
            v31[0] = v13;
            v30[1] = @"duration";
            range.start = v28;
            v14 = CMTimeCopyAsDictionary(&range.start, 0);
            v30[2] = @"attributes";
            v31[1] = v14;
            v31[2] = v11;
            v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:3];
            [(NSMutableArray *)detections addObject:v15];
          }

          v5 = [(NSArray *)obj countByEnumeratingWithState:&v22 objects:v34 count:16];
        }

        while (v5);
      }
    }

    v16 = [MEMORY[0x1E695DEC8] array];
    activeRegions = self->_activeRegions;
    self->_activeRegions = v16;
  }

  return 0;
}

- (id)results
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableArray *)self->_detections count];
  if (v3)
  {
    detections = self->_detections;
    v6 = @"SaliencyResults";
    v7[0] = detections;
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  }

  return v3;
}

@end