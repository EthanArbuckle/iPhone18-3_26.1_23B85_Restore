@interface VDGDetectionUtilsV2
- ($DC080E558804126FE14A0ED6851A46A4)configuration;
- (BOOL)ghostIsHighConfidence:(id)a3;
- (BOOL)isBoxSizeValidForProcessing:(float)a3 AndErodeBy:;
- (BOOL)locIsInSearchRange:(float)a3 searchLocation:(float)a4 defaultSearchLocation:(BOOL)a5 searchRadius:defaultSearchRange:searchInGivenLocsOnly:;
- (BOOL)updatePrevLSDoGAndLumaFeaturesWithMetalBuffers:(id *)a3;
- (VDGDetectionUtilsV2)initWithMetalToolBox:(id)a3 configuration:(id *)a4 tuningParams:(id *)a5;
- (double)getSearchLocation:(void *)a3;
- (float)getTemporalDetectionSearchRadiusForReferenceFrameIndex:(float)a3 minSearchRadius:(float)a4 slope:(float)a5;
- (float)getTrajectoryMatchingCostGG:(id)a3;
- (float32x2_t)predictPrevLSLocation:(int32x4_t)a3 usingPrevToCurrentHomography:(uint64_t)a4;
- (id)getBestROIInROIList:(id)a3 referenceROI:(id)a4;
- (id)getReflLsListAsDetectedROIFromMeta:(id *)a3;
- (id)pruneGhostList:(id)a3 againstReflLsList:(id)a4 dilation:(float)a5;
- (id)removeRois:(id)a3 thatOverlapRefRois:(id)a4 dilationRadius:(float)a5;
- (id)warpRoisUsingMv:(id *)a3;
- (int64_t)generateDetectionRoiList:(id)a3 outputArray:(id *)a4;
- (int64_t)getDetectionRoiListFromMeta:(id *)a3 outputArray:;
- (int64_t)getReflLsListFromMeta:(id *)a3 outputArray:;
- (signed)getClosestRoi:(id *)a3 forCoord:;
- (void)clearReferencedROIsForROIList:(id)a3;
- (void)dealloc;
- (void)findTinyKeypointLocationsFromLS:(id)a3 inputTexture:(id)a4 dilation:(float)a5 estimatedOpticalCenter:(id *)a6 metalBuffers:(int)a7 maxBufferLength:(float)a8 keypointSampleStepCount:;
- (void)generateBoxesForDoGAndLumaAndForLSROIs:(id)a3 prevGGROIs:(id)a4 inputTexture:(id)a5 opticalCenter:(id *)a6 metalBuffers:(int)a7 maxBufferLength:;
- (void)generateBoxesForDoGAndLumaAndForPrevLSROIs:(double)a3 homography:(double)a4 metalBuffers:(uint64_t)a5 maxBufferLength:(void *)a6;
- (void)generateTrajectoryForROI:(id)a3 isGG:(BOOL)a4;
- (void)generateTrajectoryForROIList:(id)a3 isGG:(BOOL)a4;
- (void)getGGCandidatesFromROIList:(id)a3 GGList:(id *)a4;
- (void)getGhostTrackIdFromLs:(id *)a3;
- (void)getHighRiskLS:(id)a3;
- (void)getRoiMvForRoiList:(id)a3 fromMeta:(id *)a4;
- (void)getTopGhostsInList:(id)a3 k:(signed __int16)a4 opticalCenter:(int)a5 ghostCntGatingTh:;
- (void)getTopLSInListByDroppingBottoms:(id)a3 k:(signed __int16)a4 dist2ghostTol:(float)a5;
- (void)getTopLSInListByKeepingTops:(id)a3 k:(signed __int16)a4 dist2ghostTol:(float)a5;
- (void)pruneGGList:(id *)a3 LSBBoxList:(id *)a4 reflectedLSBBoxList:getMatchedLS:pruneLS:pruneGG:;
- (void)pruneGGList:(id *)a3 LSList:(id *)a4 opticalCenter:(float)a5 costToKeepLS:(float)a6 costToKeepGG:;
- (void)pruneLSBasedOnDist2Ghost:(id)a3;
- (void)pruneUsingTrajectoryGGList:(id)a3;
- (void)removeDuplicateRois:(id)a3;
- (void)removeRedundantLS:(id)a3;
- (void)setConfiguration:(id *)a3;
- (void)setDefaultOpticalCenterForList:(id)a3 opticalCenter:;
- (void)setRoiMvForMeta:(id *)a3 fromRoiList:;
- (void)sortKPs:(id)a3 opticalCenter:;
- (void)trackMeta:(VDGDetectionUtilsV2 *)self refMeta:(SEL)a2 currMaxTrackId:(id *)a3;
- (void)updateDoGAndLumaFeaturesWithMetalBuffers:(id *)a3;
- (void)updateNewRoiPixFea:(VDGDetectionUtilsV2 *)self withRefPixFea:(SEL)a2;
@end

@implementation VDGDetectionUtilsV2

- (void)dealloc
{
  free(*self->_bboxList);
  free(self->_reflectedLSList);
  free(*self->_locationList);
  free(self->_kpIsFromHWList);
  free(self->_dist2OpticalCenterList);
  v3.receiver = self;
  v3.super_class = VDGDetectionUtilsV2;
  [(VDGDetectionUtilsV2 *)&v3 dealloc];
}

- (BOOL)ghostIsHighConfidence:(id)a3
{
  v3 = a3;
  if (([v3 isTrajectoryPruningPassed] & 1) != 0 || objc_msgSend(v3, "trackedCnt") >= 1)
  {
    v4 = [v3 isReflectedLS] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)generateTrajectoryForROI:(id)a3 isGG:(BOOL)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (a4)
  {
    [v5 temporalDetectionMatched];
  }

  else
  {
    [v5 LSTrackingMatched];
  }
  v7 = ;
  v8 = v7;
  if (v7)
  {
    [v7 bbox];
    v18 = v9;
    [v8 bbox];
    v11 = vadd_f32(v18, vmul_f32(*&vextq_s8(v10, v10, 8uLL), 0x3F0000003F000000));
    [v6 bbox];
    v19 = v12;
    [v6 bbox];
    v14 = vadd_f32(v19, vmul_f32(*&vextq_s8(v13, v13, 8uLL), 0x3F0000003F000000));
    if (!a4)
    {
      [v8 defaultOpticalCenter];
      v11 = reflectPointSimd(v11, v15);
      [v6 defaultOpticalCenter];
      v14 = reflectPointSimd(v14, v16);
    }

    v17 = vsub_f32(v14, v11);
    v38 = 0u;
    *v39[0].f32 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    [v8 descriptor];
    v39[1] = v17;
    v26 = v36;
    v27 = v37;
    v28 = v38;
    v29 = *v39[0].f32;
    v22 = v32;
    v23 = v33;
    v24 = v34;
    v25 = v35;
    v20 = v30;
    v21 = v31;
    [v8 setDescriptor:&v20];
  }

  else
  {
    v17 = vneg_f32(0x7F0000007FLL);
  }

  v38 = 0u;
  *v39[0].f32 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  if (v6)
  {
    [v6 descriptor];
  }

  v39[0] = v17;
  v26 = v36;
  v27 = v37;
  v28 = v38;
  v29 = *v39[0].f32;
  v22 = v32;
  v23 = v33;
  v24 = v34;
  v25 = v35;
  v20 = v30;
  v21 = v31;
  [v6 setDescriptor:&v20];
}

- (void)generateTrajectoryForROIList:(id)a3 isGG:(BOOL)a4
{
  v4 = a4;
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(VDGDetectionUtilsV2 *)self generateTrajectoryForROI:*(*(&v11 + 1) + 8 * v10++) isGG:v4];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (float)getTrajectoryMatchingCostGG:(id)a3
{
  v63 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 matchedLS];
  if (v4)
  {
    [v4 descriptor];
    v6 = v62;
  }

  else
  {
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v6 = 0;
    v53 = 0u;
    v54 = 0u;
  }

  v7 = 1.0;
  if ([v5 count])
  {
    v8 = vceq_f32(v6, vneg_f32(0x7F0000007FLL));
    if ((vpmin_u32(v8, v8).u32[0] & 0x80000000) == 0)
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v9 = v5;
      v10 = [v9 countByEnumeratingWithState:&v38 objects:v52 count:16];
      if (v10)
      {
        v12 = v10;
        v3.i32[0] = 0;
        *&v11 = vmul_f32(v6, v6);
        v13 = vaddv_f32(*&v11);
        LODWORD(v11) = vadd_f32(*&v11, vdup_lane_s32(*&v11, 1)).u32[0];
        v14 = vrsqrte_f32(v11);
        v15 = vmul_f32(v14, vrsqrts_f32(v11, vmul_f32(v14, v14)));
        v16 = vmul_n_f32(v6, vmul_f32(v15, vrsqrts_f32(v11, vmul_f32(v15, v15))).f32[0]);
        v17 = *v39;
        v18 = 0;
        *&v11 = 0;
        v36 = v11;
        v19 = vneg_f32(0x7F0000007FLL);
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v39 != v17)
            {
              objc_enumerationMutation(v9);
            }

            v21 = *(*(&v38 + 1) + 8 * i);
            if (v21)
            {
              [v21 descriptor];
              v22 = v51;
            }

            else
            {
              v50 = 0u;
              v51 = 0u;
              v48 = 0u;
              v49 = 0u;
              v46 = 0u;
              v47 = 0u;
              v44 = 0u;
              v45 = 0u;
              v22 = 0;
              v42 = 0u;
              v43 = 0u;
            }

            v23 = vceq_f32(v22, v19);
            v24 = vpmin_u32(v23, v23);
            v25 = v24.i32[0];
            v18 = vbsl_s8(vdup_lane_s32(vcgt_s32(v3, v24), 0), v18, vadd_f32(v18, v22));
            v26 = v36;
            if (v25 >= 0)
            {
              *&v26 = *&v36 + 1.0;
            }

            v36 = v26;
          }

          v12 = [v9 countByEnumeratingWithState:&v38 objects:v52 count:16];
        }

        while (v12);

        v7 = 1.0;
        if (*&v36 != 0.0)
        {
          v27 = vdiv_f32(v18, vdup_lane_s32(*&v36, 0));
          v28 = vmul_f32(v27, v27);
          v29 = sqrtf(vaddv_f32(v28));
          if (v29 > 10.0)
          {
            v37 = v28;
            [v4 setIsTrajectoryPruningPassed:1];
            v30 = sqrtf(v13);
            v7 = -1.0;
            if (v30 > 1.0)
            {
              v31 = vabds_f32(v30, v29);
              if (v30 >= v29)
              {
                v30 = v29;
              }

              if (v31 <= (v30 + v30))
              {
                v32 = vadd_f32(v37, vdup_lane_s32(v37, 1)).u32[0];
                v33 = vrsqrte_f32(v32);
                v34 = vmul_f32(v33, vrsqrts_f32(v32, vmul_f32(v33, v33)));
                v7 = vaddv_f32(vmul_f32(v16, vmul_n_f32(v27, vmul_f32(v34, vrsqrts_f32(v32, vmul_f32(v34, v34))).f32[0])));
              }
            }
          }
        }
      }

      else
      {
      }
    }
  }

  return v7;
}

- (void)pruneUsingTrajectoryGGList:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (global_logLevel)
  {
    NSLog(&cfstr_BeforePruningW.isa, [v4 count]);
  }

  v6 = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if (([v12 isReflectedLS] & 1) == 0)
        {
          [(VDGDetectionUtilsV2 *)self getTrajectoryMatchingCostGG:v12];
          if (v13 <= 0.3)
          {
            [v6 addObject:v12];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  [v7 removeObjectsInArray:v6];
  if (global_logLevel)
  {
    NSLog(&cfstr_AfterPruningWT.isa, [v7 count]);
  }
}

- (void)getHighRiskLS:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    v7 = vneg_f32(0x7F0000007FLL);
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        if (v9)
        {
          [*(*(&v16 + 1) + 8 * i) descriptor];
          v10 = v29;
        }

        else
        {
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          v22 = 0u;
          v23 = 0u;
          v10 = 0;
          v20 = 0u;
          v21 = 0u;
        }

        [v9 bbox];
        v12 = v11;
        [v9 bbox];
        v15 = 0;
        if (vmuls_lane_f32(v12, v13, 3) > 10000.0)
        {
          if (sqrtf(vaddv_f32(vmul_f32(v10, v10))) <= 10.0 || (v14 = vceq_f32(v10, v7), (vpmin_u32(v14, v14).u32[0] & 0x80000000) != 0))
          {
            v15 = 1;
          }
        }

        [v9 setLSIsHighRisk:v15];
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v30 count:16];
    }

    while (v5);
  }
}

- (void)setDefaultOpticalCenterForList:(id)a3 opticalCenter:
{
  v4 = v3;
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) setDefaultOpticalCenter:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (double)getSearchLocation:(void *)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = a3;
  [v3 bbox];
  v23 = v4;
  [v3 bbox];
  v22 = v5;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = [v3 matchedLS];
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v49 count:16];
  if (!v7)
  {

    goto LABEL_18;
  }

  v8 = v7;
  v9 = vextq_s8(v22, v22, 8uLL);
  v10 = vadd_f32(v23, vmul_f32(*v9.i8, 0x3F0000003F000000));
  v11 = *v26;
  v9.i64[0] = 0;
  v24 = v9;
  v12 = 0;
  v13 = vneg_f32(0x7F0000007FLL);
  do
  {
    v14 = 0;
    v15 = 0uLL;
    do
    {
      if (*v26 != v11)
      {
        objc_enumerationMutation(v6);
        v15 = 0uLL;
      }

      v16 = *(*(&v25 + 1) + 8 * v14);
      if (!v16)
      {
        v47 = v15;
        v48 = v15;
        v45 = v15;
        v46 = v15;
        v43 = v15;
        v44 = v15;
        v41 = v15;
        v42 = v15;
        v39 = v15;
        v40 = v15;
        if ((vpmin_u32(*&v15, *&v15).u32[0] & 0x80000000) != 0)
        {
          goto LABEL_13;
        }

        v37 = v15;
        v38 = v15;
        v35 = v15;
        v36 = v15;
        v33 = v15;
        v34 = v15;
        v31 = v15;
        v32 = v15;
        v18 = 0;
        v29 = v15;
        v30 = v15;
        goto LABEL_11;
      }

      [*(*(&v25 + 1) + 8 * v14) descriptor];
      v17 = vceq_f32(*(&v48 + 8), v13);
      if ((vpmin_u32(v17, v17).u32[0] & 0x80000000) == 0)
      {
        [v16 descriptor];
        v18 = *(&v38 + 8);
        v15 = 0uLL;
LABEL_11:
        v12 = vadd_f32(v12, v18);
        v19 = v24;
        *v19.i32 = *v24.i32 + 1.0;
        v24 = v19;
        goto LABEL_13;
      }

      v15 = 0uLL;
LABEL_13:
      ++v14;
    }

    while (v8 != v14);
    v8 = [v6 countByEnumeratingWithState:&v25 objects:v49 count:16];
  }

  while (v8);

  if (*v24.i32 <= 0.0)
  {
LABEL_18:
    v20 = vneg_f32(0x7F0000007FLL);
    goto LABEL_19;
  }

  v20 = vadd_f32(v10, vdiv_f32(v12, vdup_lane_s32(*v24.i8, 0)));
LABEL_19:

  return *&v20;
}

- (BOOL)locIsInSearchRange:(float)a3 searchLocation:(float)a4 defaultSearchLocation:(BOOL)a5 searchRadius:defaultSearchRange:searchInGivenLocsOnly:
{
  v8 = vsub_f32(*&a4, *&a3);
  v9 = sqrtf(vaddv_f32(vmul_f32(v8, v8))) <= v6;
  v10 = vsub_f32(v5, *&a3);
  v11 = !a5;
  if (sqrtf(vaddv_f32(vmul_f32(v10, v10))) > v7)
  {
    v11 = 0;
  }

  if (a4 == INFINITY)
  {
    return v11;
  }

  else
  {
    return v9;
  }
}

- (void)removeRedundantLS:(id)a3
{
  v45 = a3;
  v3 = [MEMORY[0x277CBEB18] array];
  if ([v45 count])
  {
    v4 = 0;
    v5 = 1;
    while (1)
    {
      v6 = [v45 objectAtIndexedSubscript:v4];
      [v6 bbox];
      v43 = v7;
      [v6 bbox];
      v42 = v8;
      [v6 bbox];
      rect1_8 = v9;
      [v6 bbox];
      v40 = v10;
      if ([v45 count] > ++v4)
      {
        break;
      }

LABEL_27:

      ++v5;
      if ([v45 count] <= v4)
      {
        goto LABEL_28;
      }
    }

    v34 = v43;
    v35 = v42;
    v33 = vmuls_lane_f32(rect1_8, v40, 3);
    v11 = v5;
    while (1)
    {
      v12 = [v45 objectAtIndexedSubscript:v11];
      [v12 bbox];
      v14 = v13;
      [v12 bbox];
      v16 = v15;
      [v12 bbox];
      v37 = v17;
      v18 = v17;
      [v12 bbox];
      v36 = v19;
      v51.size.height = v19;
      v47.origin.x = v34;
      v47.origin.y = v35;
      v47.size.width = rect1_8;
      v47.size.height = v40.f32[3];
      v44 = v14;
      v51.origin.x = v14;
      v41 = v16;
      v51.origin.y = v16;
      *v40.i64 = v18;
      v51.size.width = v18;
      rect1 = v19;
      v48 = CGRectIntersection(v47, v51);
      x = v48.origin.x;
      y = v48.origin.y;
      width = v48.size.width;
      height = v48.size.height;
      v48.origin.x = v34;
      v48.origin.y = v35;
      v48.size.width = rect1_8;
      v48.size.height = v40.f32[3];
      v52.origin.x = x;
      v52.origin.y = y;
      v52.size.width = width;
      v52.size.height = height;
      v24 = CGRectEqualToRect(v48, v52);
      v25 = v6;
      if (!v24)
      {
        v49.origin.x = v44;
        v49.origin.y = v41;
        *&v49.size.width = v40.i64[0];
        v49.size.height = rect1;
        v53.origin.x = x;
        v53.origin.y = y;
        v53.size.width = width;
        v53.size.height = height;
        v26 = CGRectEqualToRect(v49, v53);
        v25 = v12;
        if (!v26)
        {
          v50.origin.x = x;
          v50.origin.y = y;
          v50.size.width = width;
          v50.size.height = height;
          if (CGRectIsNull(v50))
          {
            goto LABEL_8;
          }

          v27 = height * width;
          v28 = v27 / v33;
          v29 = v27 / (v37 * v36);
          v30 = v28 >= 0.5 && v29 < 0.5;
          v25 = v6;
          if (!v30)
          {
            v31 = v28 >= 0.5 || v29 < 0.5;
            v25 = v12;
            if (v31)
            {
              if (v28 < 0.5 || v29 < 0.5)
              {
                goto LABEL_8;
              }

              if (v28 <= v29)
              {
                v25 = v12;
              }

              else
              {
                v25 = v6;
              }
            }
          }
        }
      }

      [v3 addObject:v25];
LABEL_8:

      if ([v45 count] <= ++v11)
      {
        goto LABEL_27;
      }
    }
  }

LABEL_28:
  [v45 removeObjectsInArray:v3];
}

- (float32x2_t)predictPrevLSLocation:(int32x4_t)a3 usingPrevToCurrentHomography:(uint64_t)a4
{
  if (a6)
  {
    v12 = a2;
    v13 = a3;
    v11 = a1;
    v6 = a6;
    [v6 descriptor];
    v14 = v16;
    [v6 descriptor];

    a1 = v11;
    a2 = v12;
    a3 = v13;
    v7 = v15;
  }

  else
  {
    v7 = 0;
    v14 = 0.0;
  }

  v8 = vtrn2q_s32(a1, a2);
  v8.i32[2] = a3.i32[1];
  v9 = vaddq_f32(vzip1q_s32(vzip2q_s32(a1, a3), vdupq_laneq_s32(a2, 2)), vmlaq_lane_f32(vmulq_n_f32(vzip1q_s32(vzip1q_s32(a1, a3), a2), v14), v8, v7, 1));
  return vdiv_f32(*v9.i8, vdup_laneq_s32(v9, 2));
}

- (void)pruneGGList:(id *)a3 LSBBoxList:(id *)a4 reflectedLSBBoxList:getMatchedLS:pruneLS:pruneGG:
{
  v8 = v4;
  v10 = a3;
  v70 = *MEMORY[0x277D85DE8];
  if (v6)
  {
    v40 = [MEMORY[0x277CBEB18] array];
    if ([*a4 count])
    {
      v11 = 0;
      v12 = 0;
      v13 = 0;
      do
      {
        v43 = *(v8 + 16 * v11);
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v14 = *v10;
        v15 = [v14 countByEnumeratingWithState:&v45 objects:v69 count:16];
        if (v15)
        {
          v16 = v15;
          v42 = vextq_s8(v43, v43, 8uLL).u64[0];
          v17 = *v46;
          while (2)
          {
            v18 = 0;
            v19 = v12;
            do
            {
              if (*v46 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v12 = *(*(&v45 + 1) + 8 * v18);

              if (v12)
              {
                [v12 descriptor];
                v20 = vcvt_s32_f32(*&v59);
              }

              else
              {
                v67 = 0u;
                v68 = 0u;
                v65 = 0u;
                v66 = 0u;
                v63 = 0u;
                v64 = 0u;
                v61 = 0u;
                v62 = 0u;
                v20 = 0;
                v59 = 0u;
                v60 = 0u;
              }

              v21 = vcge_s32(v20, *v43.i8);
              if ((vpmin_u32(v21, v21).u32[0] & 0x80000000) != 0)
              {
                v22 = vcge_s32(v42, v20);
                if ((vpmin_u32(v22, v22).u32[0] & 0x80000000) != 0)
                {

                  v14 = [*a4 objectAtIndexedSubscript:v11];
                  [v40 addObject:v14];
                  goto LABEL_18;
                }
              }

              ++v18;
              v19 = v12;
            }

            while (v16 != v18);
            v16 = [v14 countByEnumeratingWithState:&v45 objects:v69 count:16];
            if (v16)
            {
              continue;
            }

            break;
          }
        }

        v12 = 0;
LABEL_18:

        v11 = ++v13;
        v10 = a3;
      }

      while ([*a4 count] > v13);
    }

    else
    {
      v12 = 0;
    }

    v39 = *a4;
    *a4 = v40;

LABEL_43:
    return;
  }

  if (v7)
  {
    v23 = v5;
    if ([*a3 count])
    {
      v24 = 0;
      v12 = 0;
      v25 = 0;
      do
      {
        v26 = v12;
        v12 = [*v10 objectAtIndexedSubscript:v24];

        if (v12)
        {
          [v12 descriptor];
          v44 = vcvt_s32_f32(*&v49);
        }

        else
        {
          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          v53 = 0u;
          v54 = 0u;
          v51 = 0u;
          v52 = 0u;
          v44 = 0;
          v49 = 0u;
          v50 = 0u;
        }

        if ([*a4 count])
        {
          v27 = 0;
          v28 = 0;
          v29 = 1;
          do
          {
            v30 = *(v8 + 16 * v27);
            v31 = vcge_s32(v44, *v30.i8);
            if ((vpmin_u32(v31, v31).u32[0] & 0x80000000) != 0)
            {
              v32 = vcge_s32(*&vextq_s8(v30, v30, 8uLL), v44);
              v33 = vpmin_u32(v32, v32).u32[0];
              if ((v33 & 0x80000000) != 0 && v23)
              {
                v34 = [v12 matchedLS];

                if (!v34)
                {
                  v35 = [MEMORY[0x277CBEB18] array];
                  [v12 setMatchedLS:v35];
                }

                v36 = [v12 matchedLS];
                v37 = [*a4 objectAtIndexedSubscript:v27];
                [v36 addObject:v37];

                v28 = 1;
              }

              else if ((v33 & 0x80000000) != 0)
              {
                v10 = a3;
                goto LABEL_38;
              }
            }

            v27 = v29;
          }

          while ([*a4 count] > v29++);
          v10 = a3;
          if (v28)
          {
            goto LABEL_38;
          }
        }

        [*v10 removeObjectAtIndex:v24];
        --v25;
LABEL_38:
        v24 = ++v25;
      }

      while ([*v10 count] > v25);
      goto LABEL_43;
    }
  }
}

- (float)getTemporalDetectionSearchRadiusForReferenceFrameIndex:(float)a3 minSearchRadius:(float)a4 slope:(float)a5
{
  result = a3 * a5;
  if (result <= a4)
  {
    return a4;
  }

  return result;
}

- (id)getBestROIInROIList:(id)a3 referenceROI:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 1;
    v11 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
    while (1)
    {
      if (v10 == 1)
      {
        v14 = [v5 objectAtIndexedSubscript:0];

        if (v14)
        {
          [v14 descriptor];
          v15 = *(&v39 + 8);
          if (v6)
          {
            goto LABEL_6;
          }

LABEL_11:
          v38 = 0;
          v16 = 0;
        }

        else
        {
          v39 = 0u;
          v15 = 0;
          if (!v6)
          {
            goto LABEL_11;
          }

LABEL_6:
          [v6 descriptor];
          v16 = v38;
        }

        v19 = vaddv_f32(vabd_f32(v15, v16));
        if (v14)
        {
          [v14 descriptor];
          v13 = v37;
          [v14 descriptor];
          v12 = v36;
        }

        else
        {
          v37 = 0.0;
          v36 = 0.0;
          v13 = 0.0;
          v12 = 0.0;
        }

        goto LABEL_30;
      }

      v14 = [v5 objectAtIndexedSubscript:v7];

      if (v14)
      {
        [v14 descriptor];
        v17 = *(&v35 + 8);
        if (v6)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v35 = 0u;
        v17 = 0;
        if (v6)
        {
LABEL_9:
          [v6 descriptor];
          v18 = *(&v34 + 8);
          goto LABEL_16;
        }
      }

      v34 = 0u;
      v18 = 0;
LABEL_16:
      v19 = vaddv_f32(vabd_f32(v17, v18));
      if (v19 <= (v11 + -1.0))
      {
        v9 = v14;

        if (!v14)
        {
          v9 = 0;
          v33 = 0u;
          v32 = 0.0;
          v13 = 0.0;
          v12 = 0.0;
          goto LABEL_30;
        }

        [v9 descriptor];
        v13 = *(&v33 + 3);
        [v9 descriptor];
        v12 = v32;
        goto LABEL_22;
      }

      if (vabds_f32(v19, v11) <= 1.0)
      {
        if (!v14)
        {
          v31 = 0u;
          if ((v13 + 0.03) <= 0.0)
          {

            v9 = 0;
            v14 = 0;
            v30 = 0u;
            v29 = 0.0;
            v13 = 0.0;
            v12 = 0.0;
            goto LABEL_30;
          }

          v28 = 0.0;
          if (vabds_f32(0.0, v13) <= 0.03)
          {
            v27 = 0.0;
            if (v12 <= 0.0)
            {

              v9 = 0;
              v14 = 0;
              v25 = 0u;
              v26 = 0.0;
              v12 = 0.0;
              v23 = 0u;
              v24 = 0u;
              goto LABEL_30;
            }
          }

          v9 = 0;
          v19 = v11;
          goto LABEL_19;
        }

        [v14 descriptor];
        LODWORD(v20) = HIDWORD(v31);
        if (*(&v31 + 3) >= (v13 + 0.03))
        {
          v9 = v14;

          [v9 descriptor];
          v13 = *(&v30 + 3);
          [v9 descriptor];
          v12 = v29;
          goto LABEL_22;
        }

        [v14 descriptor];
        if (vabds_f32(v28, v13) <= 0.03)
        {
          [v14 descriptor];
          if (v27 >= v12)
          {
            v9 = v14;

            [v9 descriptor];
            v12 = v26;
LABEL_22:
            v14 = v9;
            goto LABEL_30;
          }
        }
      }

      v19 = v11;
      v9 = v14;
LABEL_19:
      v14 = v8;
LABEL_30:
      v7 = v10;
      v21 = [v5 count] > v10++;
      v8 = v14;
      v11 = v19;
      if (!v21)
      {
        goto LABEL_40;
      }
    }
  }

  v9 = 0;
  v14 = 0;
LABEL_40:

  return v14;
}

- (void)pruneGGList:(id *)a3 LSList:(id *)a4 opticalCenter:(float)a5 costToKeepLS:(float)a6 costToKeepGG:
{
  v7 = v6;
  v9 = *&a5;
  v70 = *MEMORY[0x277D85DE8];
  v11 = [MEMORY[0x277CBEB18] array];
  [MEMORY[0x277CBEB18] array];
  v46 = v45 = a4;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = *a4;
  v12 = [obj countByEnumeratingWithState:&v62 objects:v69 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v48 = *v63;
    do
    {
      v15 = 0;
      v16 = v14;
      do
      {
        if (*v63 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v62 + 1) + 8 * v15);

        [v14 reflectAroundCenter:v9];
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v17 = *a3;
        v18 = [v17 countByEnumeratingWithState:&v58 objects:v68 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = 0;
          v21 = *v59;
          v22 = INFINITY;
          do
          {
            v23 = 0;
            v24 = v20;
            do
            {
              if (*v59 != v21)
              {
                objc_enumerationMutation(v17);
              }

              v20 = *(*(&v58 + 1) + 8 * v23);

              [v14 getLocationMatchCostWith:v20];
              if (v25 < v22)
              {
                v22 = v25;
              }

              ++v23;
              v24 = v20;
            }

            while (v19 != v23);
            v19 = [v17 countByEnumeratingWithState:&v58 objects:v68 count:16];
          }

          while (v19);
        }

        else
        {
          v22 = INFINITY;
        }

        if (v22 <= a6)
        {
          [v11 addObject:v14];
        }

        ++v15;
        v16 = v14;
      }

      while (v15 != v13);
      v13 = [obj countByEnumeratingWithState:&v62 objects:v69 count:16];
    }

    while (v13);
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v26 = *a3;
  v27 = [v26 countByEnumeratingWithState:&v54 objects:v67 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = 0;
    v30 = 0;
    v31 = *v55;
    do
    {
      v32 = 0;
      v33 = v30;
      do
      {
        if (*v55 != v31)
        {
          objc_enumerationMutation(v26);
        }

        v30 = *(*(&v54 + 1) + 8 * v32);

        if ([v11 count])
        {
          v34 = 0;
          v35 = 1;
          v36 = INFINITY;
          v37 = v29;
          do
          {
            v29 = [v11 objectAtIndexedSubscript:v34];

            [v30 getLocationMatchCostWith:v29];
            if (v38 < v36)
            {
              v36 = v38;
            }

            v34 = v35;
            v39 = [v11 count] > v35++;
            v37 = v29;
          }

          while (v39);
        }

        else
        {
          v36 = INFINITY;
        }

        if (v36 <= v7)
        {
          [v46 addObject:v30];
        }

        ++v32;
        v33 = v30;
      }

      while (v32 != v28);
      v28 = [v26 countByEnumeratingWithState:&v54 objects:v67 count:16];
    }

    while (v28);
  }

  else
  {
    v29 = 0;
  }

  objc_storeStrong(a3, v46);
  objc_storeStrong(v45, v11);
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v40 = *v45;
  v41 = [v40 countByEnumeratingWithState:&v50 objects:v66 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v51;
    do
    {
      for (i = 0; i != v42; ++i)
      {
        if (*v51 != v43)
        {
          objc_enumerationMutation(v40);
        }

        [*(*(&v50 + 1) + 8 * i) reflectAroundCenter:v9];
      }

      v42 = [v40 countByEnumeratingWithState:&v50 objects:v66 count:16];
    }

    while (v42);
  }
}

- (void)sortKPs:(id)a3 opticalCenter:
{
  v4 = v3;
  v6 = a3;
  v7 = [v6 count];
  if (v7 > self->_locationListLen || (v8 = v7, v7 > self->_dist2OpticalCenterListLen) || v7 > self->_kpIsFromHWListLen)
  {
    [v6 removeAllObjects];
  }

  else if (v7 >= 1)
  {
    v9 = 0;
    do
    {
      v10 = [v6 objectAtIndexedSubscript:{v9, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39}];
      v11 = v10;
      if (v10)
      {
        [v10 descriptor];
        v12 = v30;
      }

      else
      {
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v12 = 0;
        v30 = 0u;
        v31 = 0u;
      }

      *(*self->_locationList + 8 * v9) = v12;

      v13 = vsub_f32(v4, *(*self->_locationList + 8 * v9));
      self->_dist2OpticalCenterList[v9] = sqrtf(vaddv_f32(vmul_f32(v13, v13)));
      v14 = [v6 objectAtIndexedSubscript:v9];
      self->_kpIsFromHWList[v9] = [v14 kpIsFromHW];

      ++v9;
    }

    while (v8 != v9);
    v19 = 0;
    kpIsFromHWList = self->_kpIsFromHWList;
    dist2OpticalCenterList = self->_dist2OpticalCenterList;
    do
    {
      v22 = v19 + 1;
      v23 = v19;
      if (v19 + 1 < v8)
      {
        v24 = *self->_locationList;
        v25 = kpIsFromHWList[v19];
        *&v15 = dist2OpticalCenterList[v19];
        v16 = *(v24 + 8 * v19);
        v23 = v19;
        v26 = v19 + 1;
        do
        {
          v17 = *(v24 + 8 * v26);
          *&v18 = dist2OpticalCenterList[v26];
          if (!v25 && kpIsFromHWList[v26] || (!v25 || kpIsFromHWList[v26]) && (*&v18 < *&v15 || *&v18 <= *&v15 && ((v27 = vcgt_f32(*&v16, *&v17), (v27.i8[0] & 1) != 0) || (vceq_f32(*&v17, *&v16).u32[0] & 1) != 0 && (v27.i8[4] & 1) != 0)))
          {
            v25 = kpIsFromHWList[v26];
            *&v15 = dist2OpticalCenterList[v26];
            v16 = *(v24 + 8 * v26);
            v23 = v26;
          }

          ++v26;
        }

        while (v8 != v26);
      }

      if (v19 != v23)
      {
        [v6 exchangeObjectAtIndex:v19 withObjectAtIndex:{v23, v15, v16, v17, v18}];
        v28 = *self->_locationList;
        v15 = *(v28 + 8 * v19);
        v16 = *(v28 + 8 * v23);
        *(v28 + 8 * v19) = v16;
        *(*self->_locationList + 8 * v23) = v15;
        kpIsFromHWList = self->_kpIsFromHWList;
        v29 = kpIsFromHWList[v19];
        kpIsFromHWList[v19] = kpIsFromHWList[v23];
        kpIsFromHWList[v23] = v29;
        dist2OpticalCenterList = self->_dist2OpticalCenterList;
        *&v15 = dist2OpticalCenterList[v19];
        *&v16 = dist2OpticalCenterList[v23];
        dist2OpticalCenterList[v19] = *&v16;
        dist2OpticalCenterList[v23] = *&v15;
      }

      ++v19;
    }

    while (v22 != v8);
  }
}

- (void)removeDuplicateRois:(id)a3
{
  v50 = a3;
  v4 = [v50 count];
  if (v4 > self->_reflectedLSListLen || (v5 = v4, v4 > self->_bboxListLen))
  {
    [v50 removeAllObjects];
  }

  else
  {
    v49 = [MEMORY[0x277CBEB18] array];
    v6 = v50;
    if (v5 >= 1)
    {
      for (i = 0; i != v5; ++i)
      {
        v8 = [v6 objectAtIndexedSubscript:{i, v49}];
        [v8 bbox];
        *(*self->_bboxList + 16 * i) = v9;

        v10 = [v50 objectAtIndexedSubscript:i];
        self->_reflectedLSList[i] = [v10 isReflectedLS];

        v6 = v50;
      }

      v11 = 0;
      v12 = 0;
      v13 = 2;
      while (1)
      {
        v14 = v11;
        v15 = self->_reflectedLSList[v11];
        v11 = v12 + 1;
        if (!v15 && v5 > v11)
        {
          break;
        }

LABEL_53:
        ++v13;
        ++v12;
        if (v5 <= v11)
        {
          goto LABEL_54;
        }
      }

      v16 = *self->_bboxList;
      v17 = COERCE_FLOAT(HIDWORD(*(v16 + 16 * v14)));
      v18 = COERCE_FLOAT(*(v16 + 16 * v14 + 8));
      v19 = COERCE_FLOAT(HIDWORD(*(v16 + 16 * v14)));
      v20 = COERCE_FLOAT(*(v16 + 16 * v14));
      v21 = v13;
      v22 = v12 + 1;
      while (1)
      {
        if (self->_reflectedLSList[v22])
        {
          goto LABEL_52;
        }

        v23 = *self->_bboxList;
        v24 = COERCE_FLOAT(*(v23 + 16 * v22));
        v25 = COERCE_FLOAT(HIDWORD(*(v23 + 16 * v22)));
        v26 = COERCE_FLOAT(*(v23 + 16 * v22 + 8));
        v27 = COERCE_FLOAT(HIDWORD(*(v23 + 16 * v22)));
        v52.origin.x = v20;
        v52.origin.y = v19;
        v52.size.width = v18;
        v52.size.height = v17;
        v56.origin.x = v24;
        v56.origin.y = v25;
        v56.size.width = v26;
        v56.size.height = v27;
        v28 = CGRectIntersectsRect(v52, v56);
        v6 = v50;
        if (!v28)
        {
          goto LABEL_52;
        }

        v53.origin.x = v20;
        v53.origin.y = v19;
        v53.size.width = v18;
        v53.size.height = v17;
        v57.origin.x = v24;
        v57.origin.y = v25;
        v57.size.width = v26;
        v57.size.height = v27;
        if (CGRectEqualToRect(v53, v57))
        {
          break;
        }

        v54.origin.x = v20;
        v54.origin.y = v19;
        v54.size.width = v18;
        v54.size.height = v17;
        v58.origin.x = v24;
        v58.origin.y = v25;
        v58.size.width = v26;
        v58.size.height = v27;
        if (CGRectContainsRect(v54, v58))
        {
          v29 = [v50 objectAtIndexedSubscript:v14];
          v31 = [v50 objectAtIndexedSubscript:v22];
          if (([v29 isTracked] & 1) != 0 || !objc_msgSend(v31, "isTracked"))
          {
            if ([v29 isTracked] && objc_msgSend(v31, "isTracked"))
            {
              v35 = [v29 trackID];
              v36 = [v31 trackID];
              if (v35 >= v36)
              {
                v37 = v36;
              }

              else
              {
                v37 = v35;
              }

              [v29 setTrackID:v37];
              v38 = [v29 trackedCnt];
              v39 = [v31 trackedCnt];
              if (v38 <= v39)
              {
                v40 = v39;
              }

              else
              {
                v40 = v38;
              }

              [v29 setTrackedCnt:v40];
            }
          }

          else
          {
            [v29 setIsTracked:1];
            [v29 setTrackedCnt:{objc_msgSend(v31, "trackedCnt")}];
            [v29 setTrackID:{objc_msgSend(v31, "trackID")}];
            v32 = [v31 temporalDetectionMatched];
            [v29 setTemporalDetectionMatched:v32];

            [v29 setIsPredictedFromPast:{objc_msgSend(v31, "isPredictedFromPast")}];
            [v29 setPredictedFromPastCnt:{objc_msgSend(v31, "predictedFromPastCnt")}];
            [v29 setIsTrajectoryPruningPassed:{objc_msgSend(v31, "isTrajectoryPruningPassed")}];
          }

          v30 = v31;
          goto LABEL_50;
        }

        v55.origin.x = v24;
        v55.origin.y = v25;
        v55.size.width = v26;
        v55.size.height = v27;
        v59.origin.x = v20;
        v59.origin.y = v19;
        v59.size.width = v18;
        v59.size.height = v17;
        v33 = CGRectContainsRect(v55, v59);
        v6 = v50;
        if (v33)
        {
          v31 = [v50 objectAtIndexedSubscript:v14];
          v30 = [v50 objectAtIndexedSubscript:v22];
          if (([v30 isTracked] & 1) != 0 || !objc_msgSend(v31, "isTracked"))
          {
            if ([v31 isTracked] && objc_msgSend(v30, "isTracked"))
            {
              v41 = [v31 trackID];
              v42 = [v30 trackID];
              if (v41 >= v42)
              {
                v43 = v42;
              }

              else
              {
                v43 = v41;
              }

              [v30 setTrackID:v43];
              v44 = [v31 trackedCnt];
              v45 = [v30 trackedCnt];
              if (v44 <= v45)
              {
                v46 = v45;
              }

              else
              {
                v46 = v44;
              }

              [v30 setTrackedCnt:v46];
            }
          }

          else
          {
            [v30 setIsTracked:1];
            [v30 setTrackedCnt:{objc_msgSend(v31, "trackedCnt")}];
            [v30 setTrackID:{objc_msgSend(v31, "trackID")}];
            v34 = [v31 temporalDetectionMatched];
            [v30 setTemporalDetectionMatched:v34];

            [v30 setIsPredictedFromPast:{objc_msgSend(v31, "isPredictedFromPast")}];
            [v30 setPredictedFromPastCnt:{objc_msgSend(v31, "predictedFromPastCnt")}];
            [v30 setIsTrajectoryPruningPassed:{objc_msgSend(v31, "isTrajectoryPruningPassed")}];
          }

          v29 = v31;
          goto LABEL_50;
        }

LABEL_52:
        v22 = v21;
        if (v5 <= v21++)
        {
          goto LABEL_53;
        }
      }

      v29 = [v50 objectAtIndexedSubscript:v14];
      v30 = [v50 objectAtIndexedSubscript:v22];
      if (v29 != v30)
      {
        if ([v29 isTracked] && !objc_msgSend(v30, "isTracked"))
        {
          v31 = v30;
          goto LABEL_50;
        }

        if ([v29 isTracked] & 1) == 0 && (objc_msgSend(v30, "isTracked"))
        {
          v31 = v29;
          goto LABEL_50;
        }

        v31 = v30;
        if (v21 - 1 > v12)
        {
LABEL_50:
          [v49 addObject:v31];
        }
      }

      v6 = v50;
      goto LABEL_52;
    }

LABEL_54:
    v48 = v49;
    [v6 removeObjectsInArray:{v49, v49}];
  }
}

- (void)updateNewRoiPixFea:(VDGDetectionUtilsV2 *)self withRefPixFea:(SEL)a2
{
  v4 = 0;
  v6 = v2[2];
  v5 = v2[3];
  v8 = *v2;
  v7 = v2[1];
  do
  {
    v19[0] = v8;
    v19[1] = v7;
    v19[2] = v6;
    v19[3] = v5;
    v9 = *(v19 + (v4 & 0x1F));
    v10 = *v3;
    v11 = v3[1];
    v12 = v3[3];
    v18[2] = v3[2];
    v18[3] = v12;
    v18[0] = v10;
    v18[1] = v11;
    v13 = ((*(v18 + (v4 & 0x1F)) * 0.9) + (v9 * 0.1));
    v14 = v8;
    v15 = v7;
    v16 = v6;
    v17 = v5;
    *(&v14 + (v4 & 0x1F)) = v13;
    v6 = v16;
    v5 = v17;
    v8 = v14;
    v7 = v15;
    v2[2] = v16;
    v2[3] = v5;
    *v2 = v8;
    v2[1] = v7;
    ++v4;
  }

  while (v4 != 32);
}

- (int64_t)generateDetectionRoiList:(id)a3 outputArray:(id *)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  [*a4 removeAllObjects];
  if ([v6 count])
  {
    v7 = 0;
    v8 = *MEMORY[0x277CBF398];
    v9 = *(MEMORY[0x277CBF398] + 8);
    v10 = *(MEMORY[0x277CBF398] + 16);
    v11 = *(MEMORY[0x277CBF398] + 24);
    while (1)
    {
      v12 = [v6 objectAtIndexedSubscript:v7];
      [v12 bbox];
      v31 = v13;
      [v12 bbox];
      v30 = v14;
      [v12 bbox];
      v29 = v15;
      [v12 bbox];
      v28 = v16;
      if (self->_configuration.externalCfg.drawBoundingBox)
      {
        [v12 LSOrGGBbox];
        v8 = v17;
        [v12 LSOrGGBbox];
        v9 = v18;
        [v12 LSOrGGBbox];
        v10 = v19;
        [v12 LSOrGGBbox];
        v11 = v20;
      }

      v34 = 0;
      v32 = 0u;
      v33 = 0u;
      LODWORD(v32) = [v12 trackID];
      BYTE4(v32) = [v12 isTracked];
      BYTE5(v32) = [v12 isPredictedFromPast];
      HIDWORD(v32) = [v12 predictedFromPastCnt];
      if (v12)
      {
        [v12 descriptor];
        v21 = v36;
      }

      else
      {
        v36 = 0u;
        v21 = 0;
        memset(&v35[10], 0, 144);
      }

      *(&v33 + 1) = v21;
      LODWORD(v33) = [v12 lowSaliencyCnt];
      LOBYTE(v34) = [v12 isTrajectoryPruningPassed];
      DWORD2(v32) = [v12 trackedCnt];
      BYTE1(v34) = [v12 isReflectedLS];
      v22 = [DetectedROI alloc];
      if (v12)
      {
        [v12 descriptor];
      }

      else
      {
        memset(v35, 0, 160);
      }

      v23 = [(DetectedROI *)v22 initWithTrackingSessionId:0 roiId:v7 roi:v35 LSRoi:&v32 descriptor:v31 propertiesForPostProcPipeVisualization:v30, v29, *(&v28 + 3), v8, v9, v10, v11];
      if (!v23)
      {
        break;
      }

      v24 = v23;
      *&v25 = getConfidenceOffline();
      [v24 setConfidence:v25];
      [*a4 addObject:v24];

      if ([v6 count] <= ++v7)
      {
        goto LABEL_13;
      }
    }

    v26 = 6;
  }

  else
  {
LABEL_13:
    v26 = 0;
  }

  return v26;
}

- (int64_t)getDetectionRoiListFromMeta:(id *)a3 outputArray:
{
  v43 = *MEMORY[0x277D85DE8];
  if (v3)
  {
    v4 = v3;
    [*v3 removeAllObjects];
    if (a3->var0 < 1)
    {
LABEL_6:
      v17 = (COERCE_FLOAT(*&a3[1].var4) + -5.0);
      v18 = (COERCE_FLOAT(HIDWORD(*&a3[1].var4)) + -5.0);
      v32 = 0;
      v30 = 0u;
      v31 = 0u;
      LODWORD(v30) = 3;
      DWORD2(v30) = 100;
      v19 = [DetectedROI alloc];
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v20 = [(DetectedROI *)v19 initWithTrackingSessionId:0 roiId:0 roi:&v33 LSRoi:&v30 descriptor:v17 propertiesForPostProcPipeVisualization:v18, 10.0, 10.0, v17, v18, 10.0, 10.0];
      if (v20)
      {
        [*v4 addObject:v20];
        LODWORD(v30) = 9;
        DWORD2(v30) = 100;
        v21 = [DetectedROI alloc];
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v22 = [(DetectedROI *)v21 initWithTrackingSessionId:0 roiId:0 roi:&v33 LSRoi:&v30 descriptor:955.0 propertiesForPostProcPipeVisualization:535.0, 10.0, 10.0, 955.0, 535.0, 10.0, 10.0];
        [*v4 addObject:v22];
        var2 = a3[6].var9[10].var2;
        v24 = var2 + 960.0 + -10.0;
        v25 = var2 + 540.0 + -10.0;
        LODWORD(v30) = 0;
        DWORD2(v30) = 100;
        v26 = [DetectedROI alloc];
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v27 = [(DetectedROI *)v26 initWithTrackingSessionId:0 roiId:0 roi:&v33 LSRoi:&v30 descriptor:v24 propertiesForPostProcPipeVisualization:v25, 20.0, 20.0, v24, v25, 20.0, 20.0];
        [*v4 addObject:v27];

        v28 = 0;
      }

      else
      {
        [VDGDetectionUtilsV2 getDetectionRoiListFromMeta:outputArray:];
        v28 = v33;
      }
    }

    else
    {
      v6 = 0;
      v7 = 40;
      while (1)
      {
        v8 = *(&a3->var0 + v7);
        v9 = *(&a3->var2 + v7);
        v10 = (*(&a3->var7 + v7) + *(&a3->var7 + v7));
        v11 = (*(&a3->var8 + v7) + *(&a3->var8 + v7));
        v32 = 0;
        v12 = a3->var11[v6 + 2];
        v30 = 0u;
        v31 = 0u;
        v13 = a3[3].var14[v6 + 108];
        LODWORD(v30) = v12;
        *(&v30 + 2) = v13;
        v14 = [DetectedROI alloc];
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v15 = [(DetectedROI *)v14 initWithTrackingSessionId:0 roiId:v6 roi:&v33 LSRoi:&v30 descriptor:v8 propertiesForPostProcPipeVisualization:v9, v10, v11, v8, v9, v10, v11];
        if (!v15)
        {
          break;
        }

        v16 = v15;
        [*v4 addObject:v15];

        ++v6;
        v7 += 32;
        if (v6 >= a3->var0)
        {
          goto LABEL_6;
        }
      }

      [VDGDetectionUtilsV2 getDetectionRoiListFromMeta:outputArray:];
      return 6;
    }
  }

  else
  {
    [VDGDetectionUtilsV2 getDetectionRoiListFromMeta:outputArray:];
    return v33;
  }

  return v28;
}

- (int64_t)getReflLsListFromMeta:(id *)a3 outputArray:
{
  if (!v3)
  {
    [VDGDetectionUtilsV2 getReflLsListFromMeta:outputArray:];
    return v14;
  }

  v4 = v3;
  [*v3 removeAllObjects];
  if (a3->var0 >= 1)
  {
    v6 = 0;
    for (i = 2059; ; ++i)
    {
      v8 = *&a3->var9[v6].var2;
      v9 = [[ROI alloc] initWithBbox:v8];
      if (!v9)
      {
        break;
      }

      v10 = v9;
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", *(&a3->var0 + i)];
      [(ROI *)v10 setLSTrackID:v11];

      [*v4 addObject:v10];
      v12 = i - 2058;
      ++v6;
      if (v12 >= a3->var0)
      {
        return 0;
      }
    }

    [VDGDetectionUtilsV2 getReflLsListFromMeta:outputArray:];
    return v14;
  }

  return 0;
}

- (id)warpRoisUsingMv:(id *)a3
{
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (a3->var0 >= 1)
  {
    v5 = 0;
    v6 = 40;
    do
    {
      v7 = [[DetectedROI alloc] initWithTrackingSessionId:0 roiId:v5 roi:a3->var11[v5 + 2] trackId:(*(&a3->var0 + v6) + COERCE_FLOAT(*(&a3[3].var9[61].var5 + v5))), (*(&a3->var2 + v6) + COERCE_FLOAT(HIDWORD(*(&a3[3].var9[61].var5 + v5)))), (*(&a3->var7 + v6) + *(&a3->var7 + v6)), (*(&a3->var8 + v6) + *(&a3->var8 + v6))];
      [v4 addObject:v7];

      ++v5;
      v6 += 32;
    }

    while (v5 < a3->var0);
  }

  return v4;
}

- (void)trackMeta:(VDGDetectionUtilsV2 *)self refMeta:(SEL)a2 currMaxTrackId:(id *)a3
{
  v5 = v4;
  v6 = v3;
  v25 = [(VDGDetectionUtilsV2 *)self warpRoisUsingMv:?];
  if (a3->var0 >= 1)
  {
    v8 = 0;
    do
    {
      v9 = [v25 objectAtIndexedSubscript:v8];
      [v9 roi];
      if (*v6 < 1)
      {
        goto LABEL_9;
      }

      v14 = v10;
      v15 = v11;
      v16 = v12;
      v17 = v13;
      v18 = v12 * v13;
      v19 = 0x7FFFFFFF;
      v20 = 0.0;
      v21 = 20;
      v22 = 2059;
      do
      {
        v29.origin.x = *&v6[v21];
        v29.origin.y = *&v6[v21 + 2];
        v29.size.width = (*&v6[v21 + 12] + *&v6[v21 + 12]);
        v29.size.height = (*&v6[v21 + 14] + *&v6[v21 + 14]);
        v27.origin.x = v14;
        v27.origin.y = v15;
        v27.size.width = v16;
        v27.size.height = v17;
        v28 = CGRectIntersection(v27, v29);
        *&v28.origin.x = v28.size.width * v28.size.height;
        v23 = *&v28.origin.x / v18;
        if (v23 > v20)
        {
          v19 = *&v6[2 * v22];
          v20 = v23;
        }

        v24 = v22 - 2058;
        ++v22;
        v21 += 16;
      }

      while (v24 < *v6);
      if (v19 == 0x7FFFFFFF)
      {
LABEL_9:
        v19 = (*v5)++;
      }

      a3->var11[v8 + 2] = v19;

      ++v8;
    }

    while (v8 < a3->var0);
  }
}

- (signed)getClosestRoi:(id *)a3 forCoord:
{
  var0 = a3->var0;
  if (var0 < 1)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  v7 = &a3->var9[1];
  v8 = 255.0;
  do
  {
    v9 = vsub_f32(vabd_f32(v3, v7[-1]), *v7);
    v10 = v9.f32[1];
    if (v9.f32[0] >= v9.f32[1])
    {
      v10 = v9.f32[0];
    }

    v11 = vaddv_f32(v9);
    v12 = vcgtz_f32(v9);
    if (vpmin_u32(v12, v12).i32[0] >= 0)
    {
      v13 = v10;
    }

    else
    {
      v13 = v11;
    }

    if (v13 < v8)
    {
      v6 = v5;
    }

    if (v13 <= 0.0)
    {
      break;
    }

    if (v13 < v8)
    {
      v8 = v13;
    }

    ++v5;
    v7 += 4;
  }

  while (var0 != v5);
  return v6;
}

- (void)getGhostTrackIdFromLs:(id *)a3
{
  var0 = a3->var0;
  if (var0 >= 1)
  {
    v4 = &a3->var11[2];
    do
    {
      ++v4;
      --var0;
    }

    while (var0);
  }
}

- (id)getReflLsListAsDetectedROIFromMeta:(id *)a3
{
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (a3->var2 >= 1)
  {
    v5 = 0;
    p_var1 = &a3->var9[1].var1;
    do
    {
      v7 = [[DetectedROI alloc] initWithTrackingSessionId:0 roiId:0 andRoi:*(p_var1 - 7), *(p_var1 - 6), (*(p_var1 - 1) + *(p_var1 - 1)), (*p_var1 + *p_var1)];
      [v4 addObject:v7];

      ++v5;
      p_var1 += 8;
    }

    while (v5 < a3->var2);
  }

  return v4;
}

- (void)getRoiMvForRoiList:(id)a3 fromMeta:(id *)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        [v11 roi];
        MidX = CGRectGetMidX(v22);
        [v11 roi];
        MidY = CGRectGetMidY(v23);
        v13.f64[0] = MidX;
        v13.f64[1] = MidY;
        v14 = [(VDGDetectionUtilsV2 *)self getClosestRoi:a4 forCoord:COERCE_DOUBLE(vcvt_f32_f64(v13))];
        [v11 setRoiMv:*(&a4[3].var9[61].var5 + v14)];
        [v11 setTrackedCnt:LODWORD(a4[3].var14[v14 + 108])];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }
}

- (void)setRoiMvForMeta:(id *)a3 fromRoiList:
{
  v11 = v3;
  if ([v11 count])
  {
    v5 = 0;
    v6 = 0;
    p_var5 = &a3[3].var9[61].var5;
    v8 = &a3[3].var14[108];
    do
    {
      v9 = [v11 objectAtIndexedSubscript:v5];
      [v9 roiMv];
      *&p_var5[8 * v5] = v10;
      *&v8[4 * v5] = [v9 trackedCnt];

      v5 = ++v6;
    }

    while ([v11 count] > v6);
  }
}

- (id)pruneGhostList:(id)a3 againstReflLsList:(id)a4 dilation:(float)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v30 = [MEMORY[0x277CBEB18] array];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v36;
    v13 = -a5;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v36 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v35 + 1) + 8 * i);
        [v15 roi];
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v23 = v22;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v24 = v8;
        v25 = [v24 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v32;
          while (2)
          {
            for (j = 0; j != v26; ++j)
            {
              if (*v32 != v27)
              {
                objc_enumerationMutation(v24);
              }

              [*(*(&v31 + 1) + 8 * j) roi];
              v45 = CGRectInset(v43, v13, v13);
              v44.origin.x = v17;
              v44.origin.y = v19;
              v44.size.width = v21;
              v44.size.height = v23;
              if (CGRectIntersectsRect(v44, v45))
              {

                goto LABEL_16;
              }
            }

            v26 = [v24 countByEnumeratingWithState:&v31 objects:v39 count:16];
            if (v26)
            {
              continue;
            }

            break;
          }
        }

        [v30 addObject:v15];
LABEL_16:
        ;
      }

      v11 = [v9 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v11);
  }

  [v9 removeObjectsInArray:v30];

  return v9;
}

- (id)removeRois:(id)a3 thatOverlapRefRois:(id)a4 dilationRadius:(float)a5
{
  v50 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v35 = [MEMORY[0x277CBEB18] array];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v45;
    v13 = -a5;
    obj = v9;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v45 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v44 + 1) + 8 * i);
        [v15 bbox];
        v39 = v16;
        [v15 bbox];
        v38 = v17;
        [v15 bbox];
        v37 = v18;
        [v15 bbox];
        v36 = v19;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v20 = v8;
        v21 = [v20 countByEnumeratingWithState:&v40 objects:v48 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v41;
          while (2)
          {
            for (j = 0; j != v22; ++j)
            {
              if (*v41 != v23)
              {
                objc_enumerationMutation(v20);
              }

              v25 = *(*(&v40 + 1) + 8 * j);
              [v25 bbox];
              v27 = v26;
              [v25 bbox];
              v29 = v28;
              [v25 bbox];
              v31 = v30;
              [v25 bbox];
              v52.size.height = v32;
              v52.origin.x = v27;
              v52.origin.y = v29;
              v52.size.width = v31;
              v53 = CGRectInset(v52, v13, v13);
              v54.origin.x = v39;
              v54.origin.y = v38;
              v54.size.width = v37;
              v54.size.height = v36;
              if (CGRectIntersectsRect(v53, v54))
              {
                [v35 addObject:v15];
                goto LABEL_16;
              }
            }

            v22 = [v20 countByEnumeratingWithState:&v40 objects:v48 count:16];
            if (v22)
            {
              continue;
            }

            break;
          }
        }

LABEL_16:
      }

      v9 = obj;
      v11 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v11);
  }

  [v9 removeObjectsInArray:v35];

  return v9;
}

- (void)findTinyKeypointLocationsFromLS:(id)a3 inputTexture:(id)a4 dilation:(float)a5 estimatedOpticalCenter:(id *)a6 metalBuffers:(int)a7 maxBufferLength:(float)a8 keypointSampleStepCount:
{
  v11 = *&a8;
  v40 = *&a5;
  v42 = v8;
  v44 = a3;
  v13 = a4;
  v14 = [a6->var5 contents];
  v15 = [v13 width];
  v16 = [v13 height];
  if ([v44 count])
  {
    v18 = 0;
    v19 = 0;
    v20 = vadd_s32(__PAIR64__(v16, v15), 0x200000002);
    *v17.i32 = *v40.i32 + *v40.i32;
    v21 = vdup_lane_s32(v40, 0);
    v22 = vdup_lane_s32(v17, 0);
    v23 = vadd_s32(__PAIR64__(v16, v15), -1);
    v24 = vdup_lane_s32(v42, 0);
    v43 = 0u;
    do
    {
      v25 = [v44 objectAtIndexedSubscript:v18];
      [v25 reflectAroundCenter:v11];
      [v25 bbox];
      v41 = vmax_s32(vcvt_s32_f32(vsub_f32(v26, v21)), 0);
      [v25 bbox];
      v38 = v27;
      [v25 bbox];
      v39 = vmin_s32(v23, vcvt_s32_f32(vadd_f32(v21, vadd_f32(v38, *&vextq_s8(v28, v28, 8uLL)))));
      [v25 bbox];
      v30 = __PAIR64__(DWORD1(v43), v41.u32[0]);
      *(&v31 + 1) = *(&v43 + 1);
      if (vcgt_s32(v41, v39).u8[0])
      {
        *&v31 = __PAIR64__(DWORD1(v43), v41.u32[0]);
      }

      else
      {
        v32 = vcvt_s32_f32(vdiv_f32(vadd_f32(v22, *&vextq_s8(v29, v29, 8uLL)), v24));
        v33 = vclez_s32(v32);
        v34 = vsub_s32(vbic_s8(v32, v33), v33);
        do
        {
          v30.i32[1] = v41.i32[1];
          if (v41.i32[1] <= v39.i32[1])
          {
            v35 = v41.i32[1];
            do
            {
              v36 = vcgt_s32(v30, 0x100000001);
              if ((vpmin_u32(v36, v36).u32[0] & 0x80000000) != 0)
              {
                v37 = vcge_s32(v20, v30);
                if ((vpmin_u32(v37, v37).u32[0] & 0x80000000) != 0 && v19 < a7)
                {
                  *(v14 + 8 * v19++) = vcvt_f32_s32(v30);
                }
              }

              v35 += v34.i32[1];
              v30.i32[1] = v35;
            }

            while (v35 <= v39.i32[1]);
          }

          LODWORD(v31) = vadd_s32(v30, v34).u32[0];
          DWORD1(v31) = v30.i32[1];
          v30.i32[0] = v31;
        }

        while (v31 <= v39.i32[0]);
      }

      v43 = v31;
      [v25 reflectAroundCenter:v11];

      ++v18;
    }

    while ([v44 count] > v18);
  }

  else
  {
    v19 = 0;
  }

  *[a6->var7 contents] = v19;
}

- (void)getGGCandidatesFromROIList:(id)a3 GGList:(id *)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        v11 = v8;
        if (*v14 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v8 = *(*(&v13 + 1) + 8 * i);

        if (v8)
        {
          [v8 descriptor];
          LODWORD(v12) = DWORD1(v20);
          if (*(&v20 + 1) > 0.99)
          {
            [*a4 addObject:{v8, v12}];
          }
        }

        else
        {
          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          v21 = 0u;
          v22 = 0u;
          v19 = 0u;
          v20 = 0u;
          v17 = 0u;
          v18 = 0u;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v27 count:16];
    }

    while (v7);
  }
}

- (BOOL)isBoxSizeValidForProcessing:(float)a3 AndErodeBy:
{
  v5 = v3;
  if (v3 >= v6)
  {
    v5 = v6;
  }

  *v4.i32 = *v4.i32 + *v4.i32;
  if (v5 <= *v4.i32)
  {
    return 0;
  }

  v7 = vsub_f32(*&vextq_s8(*&a3, *&a3, 8uLL), vdup_lane_s32(v4, 0));
  return sqrtf(0.03125 * vmul_lane_f32(v7, v7, 1).f32[0]) > 0.0;
}

- (void)generateBoxesForDoGAndLumaAndForPrevLSROIs:(double)a3 homography:(double)a4 metalBuffers:(uint64_t)a5 maxBufferLength:(void *)a6
{
  v44 = *MEMORY[0x277D85DE8];
  v11 = a6;
  v12 = v11;
  if (v11 && [v11 count])
  {
    if (a7)
    {
      v13 = [MEMORY[0x277CBEB18] array];
      v14 = a1[4];
      a1[4] = v13;

      v15 = [MEMORY[0x277CBEB18] array];
      v16 = a1[5];
      a1[5] = v15;

      v32 = a7;
      v17 = [*(a7 + 72) contents];
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v33 = v12;
      v18 = v12;
      v19 = [v18 countByEnumeratingWithState:&v39 objects:v43 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = 0;
        v22 = *v40;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v40 != v22)
            {
              objc_enumerationMutation(v18);
            }

            v24 = *(*(&v39 + 1) + 8 * i);
            [a1 predictPrevLSLocation:v24 usingPrevToCurrentHomography:{a2, a3, a4}];
            v26 = v25;
            [v24 bbox];
            v38 = vadd_f32(v26, vmul_f32(*&vextq_s8(v27, v27, 8uLL), 0xBF000000BF000000));
            [v24 bbox];
            *&v29 = vextq_s8(v28, v28, 8uLL).u64[0];
            v37 = *&v29;
            LODWORD(v29) = 5.0;
            if ([a1 isBoxSizeValidForProcessing:*&v38 AndErodeBy:v29])
            {
              v30 = v21 < a8;
            }

            else
            {
              v30 = 0;
            }

            if (v30)
            {
              [a1[4] addObject:v24];
              [a1[5] addObject:&unk_285B42898];
              *v31.f32 = v38;
              v31.i64[1] = v37;
              *(v17 + 16 * v21++) = vaddq_f32(v31, xmmword_2487C3AF0);
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v39 objects:v43 count:16];
        }

        while (v20);
      }

      else
      {
        v21 = 0;
      }

      *[*(v32 + 104) contents] = v21;
      v12 = v33;
    }

    else
    {
      [VDGDetectionUtilsV2 generateBoxesForDoGAndLumaAndForPrevLSROIs:homography:metalBuffers:maxBufferLength:];
    }
  }

  else
  {
    [VDGDetectionUtilsV2 generateBoxesForDoGAndLumaAndForPrevLSROIs:homography:metalBuffers:maxBufferLength:];
  }
}

- (void)generateBoxesForDoGAndLumaAndForLSROIs:(id)a3 prevGGROIs:(id)a4 inputTexture:(id)a5 opticalCenter:(id *)a6 metalBuffers:(int)a7 maxBufferLength:
{
  v10 = v7;
  v63 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = [MEMORY[0x277CBEB18] array];
  processedROIs = self->_processedROIs;
  self->_processedROIs = v15;

  v17 = [MEMORY[0x277CBEB18] array];
  processedType = self->_processedType;
  self->_processedType = v17;

  LODWORD(a4) = [v13 count];
  if ([v14 count] + 2 * a4)
  {
    v46 = a6;
    v19 = [a6->var8 contents];
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v47 = v13;
    v20 = v13;
    v21 = [v20 countByEnumeratingWithState:&v57 objects:v62 count:16];
    v48 = v14;
    if (v21)
    {
      v22 = v21;
      v23 = 0;
      v24 = 0;
      v25 = *v58;
      do
      {
        v26 = 0;
        v27 = v24;
        do
        {
          if (*v58 != v25)
          {
            objc_enumerationMutation(v20);
          }

          v24 = *(*(&v57 + 1) + 8 * v26);

          [v24 bbox];
          if ([VDGDetectionUtilsV2 isBoxSizeValidForProcessing:"isBoxSizeValidForProcessing:AndErodeBy:" AndErodeBy:?])
          {
            v28 = v23 < a7;
          }

          else
          {
            v28 = 0;
          }

          if (v28)
          {
            [(NSMutableArray *)self->_processedROIs addObject:v24];
            [(NSMutableArray *)self->_processedType addObject:&unk_285B428B0];
            [v24 bbox];
            v50 = v29;
            [v24 bbox];
            *(v19 + 16 * v23++) = vaddq_f32(__PAIR128__(v30, v50), xmmword_2487C3AF0);
          }

          [v24 getReflectedBboxAroundCenter:v10];
          if ([VDGDetectionUtilsV2 isBoxSizeValidForProcessing:"isBoxSizeValidForProcessing:AndErodeBy:" AndErodeBy:?])
          {
            v31 = v23 < a7;
          }

          else
          {
            v31 = 0;
          }

          if (v31)
          {
            [(NSMutableArray *)self->_processedROIs addObject:v24];
            [(NSMutableArray *)self->_processedType addObject:&unk_285B428C8];
            [v24 getReflectedBboxAroundCenter:v10];
            *(v19 + 16 * v23++) = v32;
          }

          ++v26;
          v27 = v24;
        }

        while (v22 != v26);
        v22 = [v20 countByEnumeratingWithState:&v57 objects:v62 count:16];
      }

      while (v22);

      v14 = v48;
    }

    else
    {
      v23 = 0;
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v33 = v14;
    v34 = [v33 countByEnumeratingWithState:&v53 objects:v61 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = 0;
      v37 = *v54;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          v39 = v36;
          if (*v54 != v37)
          {
            objc_enumerationMutation(v33);
          }

          v36 = *(*(&v53 + 1) + 8 * i);

          [(VDGDetectionUtilsV2 *)self getSearchLocation:v36];
          if (v40.f32[0] != INFINITY)
          {
            v51 = v40;
            [v36 bbox];
            v52 = vadd_f32(v51, vmul_f32(*&vextq_s8(v41, v41, 8uLL), 0xBF000000BF000000));
            [v36 bbox];
            *&v43 = vextq_s8(v42, v42, 8uLL).u64[0];
            v49 = *&v43;
            LODWORD(v43) = 5.0;
            if ([(VDGDetectionUtilsV2 *)self isBoxSizeValidForProcessing:*&v52 AndErodeBy:v43])
            {
              v44 = v23 < a7;
            }

            else
            {
              v44 = 0;
            }

            if (v44)
            {
              [(NSMutableArray *)self->_processedROIs addObject:v36];
              [(NSMutableArray *)self->_processedType addObject:&unk_285B42898];
              *v45.f32 = v52;
              v45.i64[1] = v49;
              *(v19 + 16 * v23++) = vaddq_f32(v45, xmmword_2487C3AF0);
            }
          }
        }

        v35 = [v33 countByEnumeratingWithState:&v53 objects:v61 count:16];
      }

      while (v35);

      v14 = v48;
    }

    *[v46->var12 contents] = v23;
    v13 = v47;
  }
}

- (void)updateDoGAndLumaFeaturesWithMetalBuffers:(id *)a3
{
  v56 = *MEMORY[0x277D85DE8];
  if (*[a3->var12 contents] <= 0)
  {
    [VDGDetectionUtilsV2 updateDoGAndLumaFeaturesWithMetalBuffers:];
  }

  else
  {
    v5 = [a3->var10 contents];
    v6 = [(NSMutableArray *)self->_processedROIs count];
    v7 = v6;
    var20 = a3->var20;
    if (var20 >= v6)
    {
      var20 = v6;
    }

    else if ((global_logLevel & 2) != 0)
    {
      v9 = global_logger;
      if (os_log_type_enabled(global_logger, OS_LOG_TYPE_DEFAULT))
      {
        v10 = a3->var20;
        *buf = 67109376;
        *&buf[4] = v7;
        *&buf[8] = 1024;
        *&buf[10] = v10;
        _os_log_impl(&dword_24874B000, v9, OS_LOG_TYPE_DEFAULT, "Total ROI count clipped from %d to %d in updateDoGAndLumaFeatures", buf, 0xEu);
      }

      var20 = a3->var20;
    }

    if (var20 >= 1)
    {
      v11 = 0;
      v12 = 0;
      v35 = 0u;
      v37 = 0u;
      v31 = 0u;
      v33 = 0u;
      v13 = var20;
      do
      {
        v14 = v12;
        v12 = [(NSMutableArray *)self->_processedROIs objectAtIndexedSubscript:v11, v31, v33, v35, v37];

        v15 = 0;
        v16 = v5 + 136 * v11;
        v44 = *(v16 + 128);
        v17 = *(v16 + 112);
        v43[6] = *(v16 + 96);
        v43[7] = v17;
        v18 = *(v16 + 48);
        v43[2] = *(v16 + 32);
        v43[3] = v18;
        v19 = *(v16 + 80);
        v43[4] = *(v16 + 64);
        v43[5] = v19;
        v20 = *(v16 + 16);
        v43[0] = *v16;
        v43[1] = v20;
        v22 = v36;
        v21 = v38;
        v24 = v32;
        v23 = v34;
        do
        {
          v25 = *(v43 + v15);
          v39 = v21;
          v40 = v24;
          v41 = v22;
          v42 = v23;
          *(&v39 + (v15 & 0x1F)) = v25;
          v22 = v41;
          v23 = v42;
          v21 = v39;
          v24 = v40;
          ++v15;
        }

        while (v15 != 32);
        v31 = v40;
        v33 = v42;
        v35 = v41;
        v37 = v39;
        v26 = *(v16 + 128);
        v27 = [(NSMutableArray *)self->_processedType objectAtIndexedSubscript:v11];
        v28 = [v27 intValue];

        if (v28)
        {
          v29 = [(NSMutableArray *)self->_processedType objectAtIndexedSubscript:v11];
          v30 = [v29 intValue];

          *buf = v37;
          v47 = v31;
          v48 = v35;
          v49 = v33;
          if (v30 == 1)
          {
            [v12 setLumaFeatureVectorReflection:buf];
            [v12 setDifferenceOfGaussianAndLumaFeatureReflection:v26];
          }

          else
          {
            [v12 setLumaFeatureVectorPredictedLocation:buf];
            [v12 setDifferenceOfGaussianAndLumaFeaturePredictedLocation:v26];
          }
        }

        else
        {
          *buf = v37;
          v47 = v31;
          v48 = v35;
          v49 = v33;
          [v12 setLumaFeatureVector:buf];
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          *buf = 0u;
          v47 = 0u;
          if (v12)
          {
            [v12 descriptor];
          }

          v50 = v37;
          v51 = v31;
          v52 = v35;
          v53 = v33;
          LODWORD(v54) = 32;
          [v12 setDifferenceOfGaussianAndLumaFeature:v26];
          v45[6] = v52;
          v45[7] = v53;
          v45[8] = v54;
          v45[9] = v55;
          v45[2] = v48;
          v45[3] = v49;
          v45[4] = v50;
          v45[5] = v51;
          v45[0] = *buf;
          v45[1] = v47;
          [v12 setDescriptor:v45];
        }

        ++v11;
      }

      while (v11 != v13);
    }
  }
}

- (BOOL)updatePrevLSDoGAndLumaFeaturesWithMetalBuffers:(id *)a3
{
  v55 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    [VDGDetectionUtilsV2 updatePrevLSDoGAndLumaFeaturesWithMetalBuffers:buf];
    return buf[0];
  }

  if (*[a3->var13 contents] <= 0)
  {
    [VDGDetectionUtilsV2 updatePrevLSDoGAndLumaFeaturesWithMetalBuffers:buf];
    return buf[0];
  }

  v5 = [a3->var11 contents];
  var21 = [(NSMutableArray *)self->_processedPrevLSROIs count];
  if (a3->var20 < var21)
  {
    if ((global_logLevel & 2) != 0)
    {
      v7 = global_logger;
      if (os_log_type_enabled(global_logger, OS_LOG_TYPE_DEFAULT))
      {
        var20 = a3->var20;
        *buf = 67109376;
        *&buf[4] = var21;
        *&buf[8] = 1024;
        *&buf[10] = var20;
        _os_log_impl(&dword_24874B000, v7, OS_LOG_TYPE_DEFAULT, "Total ROI count clipped from %d to %d in updateDoGAndLumaFeature for prevLS", buf, 0xEu);
      }
    }

    var21 = a3->var21;
  }

  if (var21 >= 1)
  {
    v9 = 0;
    v10 = 0;
    v34 = 0u;
    v36 = 0u;
    v30 = 0u;
    v32 = 0u;
    v11 = var21;
    do
    {
      v12 = v10;
      v10 = [(NSMutableArray *)self->_processedPrevLSROIs objectAtIndexedSubscript:v9, v30, v32, v34, v36];

      v13 = 0;
      v14 = v5 + 136 * v9;
      v43 = *(v14 + 128);
      v15 = *(v14 + 112);
      v42[6] = *(v14 + 96);
      v42[7] = v15;
      v16 = *(v14 + 48);
      v42[2] = *(v14 + 32);
      v42[3] = v16;
      v17 = *(v14 + 80);
      v42[4] = *(v14 + 64);
      v42[5] = v17;
      v18 = *(v14 + 16);
      v42[0] = *v14;
      v42[1] = v18;
      v20 = v35;
      v19 = v37;
      v22 = v31;
      v21 = v33;
      do
      {
        v23 = *(v42 + v13);
        v38 = v19;
        v39 = v22;
        v40 = v20;
        v41 = v21;
        *(&v38 + (v13 & 0x1F)) = v23;
        v20 = v40;
        v21 = v41;
        v19 = v38;
        v22 = v39;
        ++v13;
      }

      while (v13 != 32);
      v30 = v39;
      v32 = v41;
      v34 = v40;
      v36 = v38;
      v24 = *(v14 + 128);
      v25 = [(NSMutableArray *)self->_processedPrevLSType objectAtIndexedSubscript:v9];
      v26 = [v25 intValue];

      if (v26)
      {
        v27 = [(NSMutableArray *)self->_processedPrevLSType objectAtIndexedSubscript:v9];
        v28 = [v27 intValue];

        *buf = v36;
        v46 = v30;
        v47 = v34;
        v48 = v32;
        if (v28 == 1)
        {
          [v10 setLumaFeatureVectorReflection:buf];
          [v10 setDifferenceOfGaussianAndLumaFeatureReflection:v24];
        }

        else
        {
          [v10 setLumaFeatureVectorPredictedLocation:buf];
          [v10 setDifferenceOfGaussianAndLumaFeaturePredictedLocation:v24];
        }
      }

      else
      {
        *buf = v36;
        v46 = v30;
        v47 = v34;
        v48 = v32;
        [v10 setLumaFeatureVector:buf];
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        *buf = 0u;
        v46 = 0u;
        if (v10)
        {
          [v10 descriptor];
        }

        v49 = v36;
        v50 = v30;
        v51 = v34;
        v52 = v32;
        LODWORD(v53) = 32;
        [v10 setDifferenceOfGaussianAndLumaFeature:v24];
        v44[6] = v51;
        v44[7] = v52;
        v44[8] = v53;
        v44[9] = v54;
        v44[2] = v47;
        v44[3] = v48;
        v44[4] = v49;
        v44[5] = v50;
        v44[0] = *buf;
        v44[1] = v46;
        [v10 setDescriptor:v44];
      }

      ++v9;
    }

    while (v9 != v11);
  }

  return 1;
}

- (void)clearReferencedROIsForROIList:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        [v8 setTemporalDetectionMatched:0];
        [v8 setLSTrackingMatched:0];
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)getTopLSInListByDroppingBottoms:(id)a3 k:(signed __int16)a4 dist2ghostTol:(float)a5
{
  v6 = a4;
  v15 = a3;
  if ([v15 count] > v6)
  {
    v7 = v6;
    do
    {
      v8 = [v15 objectAtIndexedSubscript:0];
      if ([v15 count] < 2)
      {
        v11 = v15;
      }

      else
      {
        v9 = 1;
        v10 = 1;
        v11 = v15;
        do
        {
          v12 = [v11 objectAtIndexedSubscript:v9];
          if (shouldRankLS1OverLS2(v8, v12, a5))
          {
            v13 = v12;

            v8 = v13;
          }

          v9 = ++v10;
          v14 = [v15 count] > v10;
          v11 = v15;
        }

        while (v14);
      }

      [v11 removeObject:v8];
    }

    while ([v15 count] > v7);
  }
}

- (void)getTopLSInListByKeepingTops:(id)a3 k:(signed __int16)a4 dist2ghostTol:(float)a5
{
  v6 = a4;
  v17 = a3;
  if ([v17 count] > v6)
  {
    v7 = v6;
    v8 = [MEMORY[0x277CBEB18] array];
    v9 = v8;
    while ([v8 count] < v7)
    {
      v10 = [v17 objectAtIndexedSubscript:0];
      if ([v17 count] < 2)
      {
        v13 = v17;
      }

      else
      {
        v11 = 1;
        v12 = 1;
        v13 = v17;
        do
        {
          v14 = [v13 objectAtIndexedSubscript:v11];
          if (!shouldRankLS1OverLS2(v10, v14, a5))
          {
            v15 = v14;

            v10 = v15;
          }

          v11 = ++v12;
          v16 = [v17 count] > v12;
          v13 = v17;
        }

        while (v16);
      }

      [v13 removeObject:v10];
      [v9 addObject:v10];

      v8 = v9;
    }

    [v17 removeAllObjects];
    [v17 addObjectsFromArray:v9];
  }
}

- (void)pruneLSBasedOnDist2Ghost:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        [v10 dist2ghost];
        if (v11 > 128.0)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [v5 removeObjectsInArray:v4];
}

- (void)getTopGhostsInList:(id)a3 k:(signed __int16)a4 opticalCenter:(int)a5 ghostCntGatingTh:
{
  v7 = v5;
  v8 = a4;
  v39 = *MEMORY[0x277D85DE8];
  v9 = a3;
  if ([v9 count] > v8)
  {
    if ([v9 count] > a5)
    {
      if ((global_logLevel & 2) != 0)
      {
        v10 = global_logger;
        if (os_log_type_enabled(global_logger, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_24874B000, v10, OS_LOG_TYPE_DEFAULT, "Ghost cnt (before merge) exceeds hard gating threshold. All ghosts are discarded", buf, 2u);
        }
      }

      [v9 removeAllObjects];
    }

    if ((global_logLevel & 2) != 0)
    {
      v11 = global_logger;
      if (os_log_type_enabled(global_logger, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v38 = v8;
        _os_log_impl(&dword_24874B000, v11, OS_LOG_TYPE_DEFAULT, "Ghost cnt (before merge) exceeds soft gating threshold. Only keeping top %d ghosts", buf, 8u);
      }
    }

    v12 = v8;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v13 = v9;
    v14 = [v13 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v33;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v33 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v32 + 1) + 8 * i);
          [v18 bbox];
          v31 = v19;
          [v18 bbox];
          *v20.i8 = vsub_f32(vmla_f32(v31, 0x3F0000003F000000, *&vextq_s8(v20, v20, 8uLL)), v7);
          *v20.i8 = vmul_f32(*v20.i8, *v20.i8);
          *v20.i32 = sqrtf(vaddv_f32(*v20.i8));
          [v18 setDist2opticalCenter:*v20.i64];
        }

        v15 = [v13 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v15);
    }

    while (1)
    {
      if ([v13 count] <= v12)
      {
        goto LABEL_32;
      }

      v21 = [v13 objectAtIndexedSubscript:0];
      if ([v13 count] >= 2)
      {
        break;
      }

LABEL_31:
      [v13 removeObject:v21];
    }

    v22 = 1;
    v23 = 1;
    while (1)
    {
      v24 = [v13 objectAtIndexedSubscript:v22];
      v21 = v21;
      v25 = v24;
      if (([v25 isTracked] & 1) == 0)
      {
        if ([v21 isTracked])
        {
          break;
        }
      }

      if ([v25 isTracked] && (objc_msgSend(v21, "isTracked") & 1) == 0)
      {

        v30 = v21;
        goto LABEL_29;
      }

      [v25 dist2opticalCenter];
      v27 = v26;
      [v21 dist2opticalCenter];
      v29 = v28;

      if (v27 > v29)
      {
        goto LABEL_27;
      }

LABEL_30:

      v22 = ++v23;
      if ([v13 count] <= v23)
      {
        goto LABEL_31;
      }
    }

LABEL_27:
    v30 = v25;
LABEL_29:

    v21 = v30;
    goto LABEL_30;
  }

LABEL_32:
}

- ($DC080E558804126FE14A0ED6851A46A4)configuration
{
  v3 = *&self[2].var0.var7;
  *&retstr->var0.var0 = *&self[2].var0.var0;
  *&retstr->var0.var7 = v3;
  v4 = *&self[2].var1.var4;
  *&retstr->var1.var0 = *&self[2].var1.var0;
  *&retstr->var1.var4 = v4;
  return self;
}

- (void)setConfiguration:(id *)a3
{
  v3 = *&a3->var0.var0;
  v4 = *&a3->var0.var7;
  v5 = *&a3->var1.var4;
  *&self->_configuration.externalCfg.lightMode = *&a3->var1.var0;
  *&self->_configuration.externalCfg.frameDelay = v5;
  *&self->_configuration.internalCfg.clipThreshold = v3;
  *&self->_configuration.internalCfg.enableColorMask = v4;
}

- (VDGDetectionUtilsV2)initWithMetalToolBox:(id)a3 configuration:(id *)a4 tuningParams:(id *)a5
{
  v8 = a3;
  v23.receiver = self;
  v23.super_class = VDGDetectionUtilsV2;
  v9 = [(VDGDetectionUtilsV2 *)&v23 init];
  if (v9 && (!v8 ? (v10 = objc_alloc_init(GGMMetalToolBox)) : (v10 = v8), (metalToolBox = v9->_metalToolBox, v9->_metalToolBox = v10, metalToolBox, v12 = *&a4->var0.var0, v13 = *&a4->var0.var7, v14 = *&a4->var1.var4, *&v9->_configuration.externalCfg.lightMode = *&a4->var1.var0, *&v9->_configuration.externalCfg.frameDelay = v14, *&v9->_configuration.internalCfg.clipThreshold = v12, *&v9->_configuration.internalCfg.enableColorMask = v13, v15 = a5->var12 + a5->var15, v9->_reflectedLSListLen = v15, v9->_reflectedLSList = malloc_type_malloc(v15, 0x100004077774924uLL), v16 = a5->var12 + a5->var15, v9->_bboxListLen = v16, *v9->_bboxList = malloc_type_malloc(16 * v16, 0x1000040451B5BE8uLL), var15 = a5->var15, v9->_locationListLen = var15, *v9->_locationList = malloc_type_malloc(8 * var15, 0x100004000313F17uLL), v18 = a5->var15, v9->_kpIsFromHWListLen = v18, v9->_kpIsFromHWList = malloc_type_malloc(v18, 0x100004077774924uLL), v19 = a5->var15, v9->_dist2OpticalCenterListLen = v19, v20 = malloc_type_malloc(4 * v19, 0x100004052888210uLL), v9->_dist2OpticalCenterList = v20, v9->_reflectedLSList) && *v9->_bboxList && *v9->_locationList))
  {
    v21 = 0;
    if (v9->_kpIsFromHWList && v20)
    {
      v21 = v9;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (void)getDetectionRoiListFromMeta:outputArray:.cold.1()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "currRoi in %s fail", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_3_13(6);
}

- (void)getDetectionRoiListFromMeta:outputArray:.cold.2()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0)
  {
    v1 = global_logger;
    if (os_log_type_enabled(global_logger, OS_LOG_TYPE_DEFAULT))
    {
      v2 = 136315138;
      v3 = "[VDGDetectionUtilsV2 getDetectionRoiListFromMeta:outputArray:]";
      _os_log_impl(&dword_24874B000, v1, OS_LOG_TYPE_DEFAULT, "currRoi in %s fail", &v2, 0xCu);
    }
  }
}

- (void)getDetectionRoiListFromMeta:outputArray:.cold.3()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s: Invaild array roiList", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_3_13(5);
}

- (void)getReflLsListFromMeta:outputArray:.cold.1()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "currRoi in %s fail", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_3_13(6);
}

- (void)getReflLsListFromMeta:outputArray:.cold.2()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s: Invaild array roiList", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_3_13(5);
}

- (void)generateBoxesForDoGAndLumaAndForPrevLSROIs:homography:metalBuffers:maxBufferLength:.cold.1()
{
  if ((global_logLevel & 4) != 0 && os_log_type_enabled(global_logger, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_2_14(&dword_24874B000, v0, v1, "metal buffer is NULL", v2, v3, v4, v5, 0);
  }
}

- (void)generateBoxesForDoGAndLumaAndForPrevLSROIs:homography:metalBuffers:maxBufferLength:.cold.2()
{
  if ((global_logLevel & 4) != 0 && os_log_type_enabled(global_logger, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_2_14(&dword_24874B000, v0, v1, "no previous LS ROIs for feature extraction", v2, v3, v4, v5, 0);
  }
}

- (void)updateDoGAndLumaFeaturesWithMetalBuffers:.cold.1()
{
  if ((global_logLevel & 4) != 0 && os_log_type_enabled(global_logger, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_2_14(&dword_24874B000, v0, v1, "No boxes to updates DoG and luma features", v2, v3, v4, v5, 0);
  }
}

- (void)updatePrevLSDoGAndLumaFeaturesWithMetalBuffers:(_BYTE *)a1 .cold.1(_BYTE *a1)
{
  if ((global_logLevel & 4) != 0 && os_log_type_enabled(global_logger, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_4_8(&dword_24874B000, v2, v3, "No prev LS boxes to updates DoG and luma features", v4, v5, v6, v7, 0);
  }

  *a1 = 0;
}

- (void)updatePrevLSDoGAndLumaFeaturesWithMetalBuffers:(_BYTE *)a1 .cold.2(_BYTE *a1)
{
  if ((global_logLevel & 4) != 0 && os_log_type_enabled(global_logger, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_4_8(&dword_24874B000, v2, v3, "metal buffer is NULL", v4, v5, v6, v7, 0);
  }

  *a1 = 0;
}

@end