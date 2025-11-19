@interface VCPFaceMerger
- (VCPFaceMerger)initWithThreshold:(double)a3;
- (id)_alignFaceObservations:(id)a3 withRequestHandler:(id)a4 error:(id *)a5;
- (id)_faceObservationsWithBoundingBoxFromFaces:(id)a3 withFaceHashMapping:(id)a4;
- (id)_sortedViableFaceMergePairsFromQueryFaces:(id)a3 andCandidateFaces:(id)a4;
- (id)mergeExistingFaces:(id)a3 andDetectedFaces:(id)a4 withRequestHandler:(id)a5 orientedWidth:(unint64_t)a6 orientedHeight:(unint64_t)a7 assetWidth:(unint64_t)a8 assetHeight:(unint64_t)a9;
- (void)_alignBoundingBoxOfFaces:(id)a3 withRequestHandler:(id)a4 orientedWidth:(unint64_t)a5 orientedHeight:(unint64_t)a6;
@end

@implementation VCPFaceMerger

- (VCPFaceMerger)initWithThreshold:(double)a3
{
  v5.receiver = self;
  v5.super_class = VCPFaceMerger;
  result = [(VCPFaceMerger *)&v5 init];
  if (result)
  {
    result->_mergeDistanceThreshold = a3;
  }

  return result;
}

- (id)_faceObservationsWithBoundingBoxFromFaces:(id)a3 withFaceHashMapping:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DF70] array];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v31;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v30 + 1) + 8 * i);
        if (![v13 algorithmVersion] && (objc_msgSend(v13, "manual") & 1) == 0)
        {
          [v13 size];
          v15 = v14;
          v16 = [v13 sourceWidth];
          v17 = [v13 sourceHeight];
          if (v16 <= v17)
          {
            v18 = v17;
          }

          else
          {
            v18 = v16;
          }

          v19 = v15 * v18;
          v20 = v19 / [v13 sourceWidth];
          v21 = v19 / [v13 sourceHeight];
          [v13 centerX];
          v23 = v22 - v20 * 0.5;
          [v13 centerY];
          v25 = [MEMORY[0x1E6984518] observationWithBoundingBox:{v23, v24 - v21 * 0.5, v20, v21}];
          [v7 addObject:v25];
          v26 = [v13 localIdentifier];
          v27 = [v26 hash];

          [v25 setFaceId:v27];
          v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v27];
          [v6 setObject:v13 forKey:v28];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v10);
  }

  return v7;
}

- (id)_alignFaceObservations:(id)a3 withRequestHandler:(id)a4 error:(id *)a5
{
  v28[1] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = MEMORY[0x1E69843F8];
  v9 = a3;
  v10 = [[v8 alloc] initWithFaceObservations:v9];

  if (v10)
  {
    [v10 setRevision:1];
    [v10 setMetalContextPriority:1];
    [v10 setPreferBackgroundProcessing:1];
    if (DeviceHasANE() && [objc_opt_class() _allowANE])
    {
      v11 = [MEMORY[0x1E6984608] defaultANEDevice];
      [v10 setProcessingDevice:v11];
    }

    v26 = v10;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
    v23 = 0;
    v13 = [v7 performRequests:v12 error:&v23];
    v14 = v23;

    if (v13)
    {
      v15 = [v10 results];
      goto LABEL_10;
    }

    v19 = MEMORY[0x1E696ABC0];
    v20 = *MEMORY[0x1E696A768];
    v24 = *MEMORY[0x1E696A578];
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to exercise Vision request - %@", v14];
    v25 = v18;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    *a5 = [v19 errorWithDomain:v20 code:-18 userInfo:v21];
  }

  else
  {
    v16 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E696A768];
    v27 = *MEMORY[0x1E696A578];
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create VNAlignFaceRectangleRequest"];
    v28[0] = v14;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    *a5 = [v16 errorWithDomain:v17 code:-18 userInfo:v18];
  }

  v15 = 0;
LABEL_10:

  return v15;
}

- (void)_alignBoundingBoxOfFaces:(id)a3 withRequestHandler:(id)a4 orientedWidth:(unint64_t)a5 orientedHeight:(unint64_t)a6
{
  v49 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = [MEMORY[0x1E695DF90] dictionary];
  v13 = [(VCPFaceMerger *)self _faceObservationsWithBoundingBoxFromFaces:v10 withFaceHashMapping:v12];
  if ([v13 count])
  {
    v45 = 0;
    v14 = [(VCPFaceMerger *)self _alignFaceObservations:v13 withRequestHandler:v11 error:&v45];
    v15 = v45;
    v16 = v15;
    if (v14)
    {
      v37 = v15;
      v38 = v14;
      v39 = v13;
      v40 = v10;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v17 = v14;
      v18 = [v17 countByEnumeratingWithState:&v41 objects:v46 count:16];
      if (!v18)
      {
        goto LABEL_25;
      }

      v19 = v18;
      v20 = *v42;
      v21 = a5;
      v22 = a6;
      if (a5 <= a6)
      {
        v23 = a6;
      }

      else
      {
        v23 = a5;
      }

      v24 = v23;
      while (1)
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v42 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v26 = *(*(&v41 + 1) + 8 * i);
          v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v26, "faceId")}];
          v28 = [v12 objectForKeyedSubscript:v27];

          if (v28)
          {
            [v26 boundingBox];
            x = v50.origin.x;
            y = v50.origin.y;
            width = v50.size.width;
            height = v50.size.height;
            if (CGRectIsEmpty(v50))
            {
              if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                v33 = MEMORY[0x1E69E9C10];
                v34 = "[VCPFaceMerger] Bounding box aligner returned an empty rectangle";
                v35 = 2;
LABEL_19:
                _os_log_impl(&dword_1C9B70000, v33, OS_LOG_TYPE_DEFAULT, v34, buf, v35);
              }
            }

            else
            {
              v51.origin.x = x;
              v51.origin.y = y;
              v51.size.width = width;
              v51.size.height = height;
              [v28 setCenterX:CGRectGetMidX(v51)];
              v52.origin.x = x;
              v52.origin.y = y;
              v52.size.width = width;
              v52.size.height = height;
              [v28 setCenterY:CGRectGetMidY(v52)];
              v36 = width * v21;
              if (width * v21 < height * v22)
              {
                v36 = height * v22;
              }

              [v28 setSize:v36 / v24];
            }
          }

          else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v48 = v26;
            v33 = MEMORY[0x1E69E9C10];
            v34 = "[VCPFaceMerger] Missing face for observation %@ from mapping";
            v35 = 12;
            goto LABEL_19;
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v41 objects:v46 count:16];
        if (!v19)
        {
LABEL_25:

          v10 = v40;
          v14 = v38;
          v13 = v39;
          v16 = v37;
          goto LABEL_29;
        }
      }
    }

    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v48 = v16;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[VCPFaceMerger] Failed to align face observation - %@", buf, 0xCu);
    }

LABEL_29:
  }
}

- (id)_sortedViableFaceMergePairsFromQueryFaces:(id)a3 andCandidateFaces:(id)a4
{
  v77 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 && [v6 count])
  {
    v52 = [MEMORY[0x1E695DF70] array];
    v51 = [MEMORY[0x1E695DF70] array];
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v44 = v5;
    obj = v5;
    v48 = [obj countByEnumeratingWithState:&v63 objects:v76 count:16];
    if (!v48)
    {
      goto LABEL_39;
    }

    v8 = MEMORY[0x1E69E9C10];
    v46 = *v64;
    v9 = 2;
    v47 = v7;
    while (1)
    {
      v10 = 0;
      do
      {
        if (*v64 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v50 = v10;
        v11 = *(*(&v63 + 1) + 8 * v10);
        context = objc_autoreleasePoolPush();
        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v12 = v7;
        v56 = [v12 countByEnumeratingWithState:&v59 objects:v75 count:16];
        if (v56)
        {
          v13 = *v60;
          v54 = *v60;
          do
          {
            for (i = 0; i != v56; ++i)
            {
              if (*v60 != v13)
              {
                objc_enumerationMutation(v12);
              }

              v15 = *(*(&v59 + 1) + 8 * i);
              v16 = [v15 imageprintWrapper];
              if (v16 && (v17 = [v15 algorithmVersion], v17 == objc_msgSend(v11, "algorithmVersion")))
              {
                v18 = [v15 detectionType];
                v19 = [v11 detectionType];

                if (v18 == v19)
                {
                  v58 = 1.0;
                  v20 = [v11 imageprintWrapper];
                  v21 = [v15 imageprintWrapper];
                  v57 = 0;
                  v22 = [v20 calculateDistance:&v58 toWrapper:v21 andError:&v57];
                  v23 = v57;

                  if (v22)
                  {
                    if (self->_mergeDistanceThreshold > v58)
                    {
                      v24 = [VCPPhotosFacePair pairWithFace:v11 andFace:v15 distance:?];
                      if (v24)
                      {
                        v25 = [MEMORY[0x1E696AD98] numberWithDouble:self->_mergeDistanceThreshold];
                        v26 = [v51 indexOfObject:v25 inSortedRange:0 options:objc_msgSend(v51 usingComparator:{"count"), 1024, &__block_literal_global_87}];
                        [v51 insertObject:v25 atIndex:v26];
                        [v52 insertObject:v24 atIndex:v26];
                      }

                      goto LABEL_34;
                    }

                    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(v8, v9))
                    {
                      v37 = [v15 localIdentifier];
                      mergeDistanceThreshold = self->_mergeDistanceThreshold;
                      *buf = 138412802;
                      v68 = v37;
                      v69 = 2048;
                      *v70 = v58;
                      *&v70[8] = 2048;
                      *&v70[10] = mergeDistanceThreshold;
                      v38 = v8;
                      v39 = v9;
                      v40 = "[VCPFaceMerger] Cannot merge face with face %@ - distance %f > threashold %f";
                      v41 = 32;
LABEL_33:
                      _os_log_impl(&dword_1C9B70000, v38, v39, v40, buf, v41);
                    }
                  }

                  else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
                  {
                    v37 = [v15 localIdentifier];
                    *buf = 138412546;
                    v68 = v37;
                    v69 = 2112;
                    *v70 = v23;
                    v38 = v8;
                    v39 = OS_LOG_TYPE_DEFAULT;
                    v40 = "[VCPFaceMerger] Cannot merge face with face %@ - distance calculation failed %@";
                    v41 = 22;
                    goto LABEL_33;
                  }

LABEL_34:

                  v13 = v54;
                  continue;
                }
              }

              else
              {
              }

              if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(v8, v9))
              {
                v55 = [v11 algorithmVersion];
                v27 = [v11 detectionType];
                v28 = [v15 localIdentifier];
                v29 = [v15 algorithmVersion];
                v30 = v11;
                v31 = v12;
                v32 = v9;
                v33 = v8;
                v34 = [v15 detectionType];
                v35 = [v15 imageprintWrapper];
                *buf = 134219266;
                v36 = "has";
                if (!v35)
                {
                  v36 = "no";
                }

                v68 = v55;
                v69 = 1024;
                *v70 = v27;
                *&v70[4] = 2112;
                *&v70[6] = v28;
                *&v70[14] = 2048;
                *&v70[16] = v29;
                v13 = v54;
                v71 = 1024;
                v72 = v34;
                v8 = v33;
                v9 = v32;
                v12 = v31;
                v11 = v30;
                v73 = 2080;
                v74 = v36;
                _os_log_impl(&dword_1C9B70000, v8, v9, "[VCPFaceMerger] Cannot merge face (v%lu, type-%d) with face %@ (v%lu, type-%d, %s imageprint)", buf, 0x36u);
              }
            }

            v56 = [v12 countByEnumeratingWithState:&v59 objects:v75 count:16];
          }

          while (v56);
        }

        objc_autoreleasePoolPop(context);
        v10 = v50 + 1;
        v7 = v47;
      }

      while (v50 + 1 != v48);
      v48 = [obj countByEnumeratingWithState:&v63 objects:v76 count:16];
      if (!v48)
      {
LABEL_39:

        v5 = v44;
        goto LABEL_41;
      }
    }
  }

  v52 = 0;
LABEL_41:

  return v52;
}

- (id)mergeExistingFaces:(id)a3 andDetectedFaces:(id)a4 withRequestHandler:(id)a5 orientedWidth:(unint64_t)a6 orientedHeight:(unint64_t)a7 assetWidth:(unint64_t)a8 assetHeight:(unint64_t)a9
{
  v106 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a5;
  v16 = [MEMORY[0x1E695DF70] arrayWithArray:a4];
  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MEMORY[0x1E695DF70] array];
  v76 = [MEMORY[0x1E695DF70] array];
  v74 = v18;
  v69 = v15;
  v70 = v14;
  v71 = v16;
  v72 = v17;
  if ([v14 count])
  {
    [(VCPFaceMerger *)self _alignBoundingBoxOfFaces:v14 withRequestHandler:v15 orientedWidth:a6 orientedHeight:a7];
    [v18 addObjectsFromArray:v14];
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v19 = v18;
    v20 = [v19 countByEnumeratingWithState:&v94 objects:v105 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v95;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v95 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v94 + 1) + 8 * i);
          v25 = [v24 imageprintWrapper];

          if (v25)
          {
            v26 = [v24 imageprintWrapper];
            [v76 addObject:v26];
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v94 objects:v105 count:16];
      }

      while (v21);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __124__VCPFaceMerger_mergeExistingFaces_andDetectedFaces_withRequestHandler_orientedWidth_orientedHeight_assetWidth_assetHeight___block_invoke;
    aBlock[3] = &unk_1E8351820;
    v27 = v71;
    v90 = v27;
    v28 = v19;
    v91 = v28;
    v92 = v76;
    v67 = v72;
    v93 = v67;
    v29 = _Block_copy(aBlock);
    v78 = v28;
    v30 = [(VCPFaceMerger *)self _sortedViableFaceMergePairsFromQueryFaces:v27 andCandidateFaces:v28];
    v68 = v29;
    (*(v29 + 2))(v29, v30);
    v31 = [MEMORY[0x1E695DF70] array];

    v82 = [MEMORY[0x1E695DF70] array];
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    obj = v27;
    v79 = [obj countByEnumeratingWithState:&v85 objects:v104 count:16];
    if (v79)
    {
      v77 = *v86;
      p_superclass = VCPProtoImagePetsResult.superclass;
      do
      {
        v33 = 0;
        do
        {
          if (*v86 != v77)
          {
            objc_enumerationMutation(obj);
          }

          v80 = v33;
          v34 = *(*(&v85 + 1) + 8 * v33);
          [v34 size];
          if (v35 == 0.0)
          {
            v83 = 0;
            v36 = &v83;
            [MEMORY[0x1E69C07E0] sortedViableMergeCandidateTorsosFor:v34 from:v78 ignoreSourceAssetDimensions:0 matchScores:&v83];
          }

          else
          {
            v84 = 0;
            v36 = &v84;
            [MEMORY[0x1E69C07E0] sortedViableMergeCandidateFacesFor:v34 from:v78 ignoreSourceAssetDimensions:0 matchScores:&v84];
          }
          v37 = ;
          v38 = *v36;
          if ([v37 count])
          {
            v39 = 0;
            v81 = v37;
            do
            {
              v40 = [v37 objectAtIndex:v39];
              v41 = [v38 objectAtIndexedSubscript:v39];
              [v41 doubleValue];
              v42 = [p_superclass + 119 pairWithFace:v34 andFace:v40 distance:?];
              if (v42)
              {
                if ([v31 count])
                {
                  v43 = v38;
                  v44 = v34;
                  v45 = p_superclass;
                  v46 = [v82 indexOfObject:v41 inSortedRange:0 options:objc_msgSend(v82 usingComparator:{"count"), 1024, &__block_literal_global_397_0}];
                  [v82 insertObject:v41 atIndex:v46];
                  v47 = v46;
                  p_superclass = v45;
                  v34 = v44;
                  v38 = v43;
                  v37 = v81;
                  [v31 insertObject:v42 atIndex:v47];
                }

                else
                {
                  [v31 addObject:v42];
                  [v82 addObject:v41];
                }
              }

              ++v39;
            }

            while (v39 < [v37 count]);
          }

          v33 = v80 + 1;
        }

        while (v80 + 1 != v79);
        v79 = [obj countByEnumeratingWithState:&v85 objects:v104 count:16];
      }

      while (v79);
    }

    (v68)[2](v68, v31);
    [v67 addObjectsFromArray:obj];

    v48 = v74;
  }

  else
  {
    [v17 addObjectsFromArray:v16];
    v48 = v18;
  }

  v49 = [v48 count];
  if (v49)
  {
    v50 = v49 - 1;
    v51 = MEMORY[0x1E69E9C10];
    v52 = &dword_1C9B70000;
    v53 = "[VCPFaceMerger] Deleting manual face %@ with mismatched asset dimension (%ldx%ld)";
    while (1)
    {
      v54 = [v74 objectAtIndexedSubscript:v50];
      if (([v54 manual] & 1) == 0 && !objc_msgSend(v54, "algorithmVersion"))
      {
        break;
      }

      if ([v54 manual])
      {
        if ([v54 sourceWidth] != a8 || objc_msgSend(v54, "sourceHeight") != a9)
        {
          if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            v56 = [v54 gist];
            *buf = 138412802;
            v99 = v56;
            v100 = 2048;
            v101 = a8;
            v102 = 2048;
            v103 = a9;
            _os_log_impl(v52, v51, OS_LOG_TYPE_DEFAULT, v53, buf, 0x20u);
          }

          goto LABEL_54;
        }

        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
        {
          v55 = [v54 localIdentifier];
          *buf = 138412290;
          v99 = v55;
          _os_log_impl(v52, v51, OS_LOG_TYPE_DEBUG, "[VCPFaceMerger] Manual face %@; skip deletion", buf, 0xCu);
        }

LABEL_53:
        [v74 removeObjectAtIndex:v50];
      }

LABEL_54:

      if (--v50 == -1)
      {
        goto LABEL_55;
      }
    }

    if ([v54 detectionType] != 1)
    {
      goto LABEL_54;
    }

    v57 = [v54 personLocalIdentifier];
    if (!v57)
    {
      goto LABEL_54;
    }

    v58 = v57;
    if ([v54 nameSource] == 1)
    {
    }

    else
    {
      v59 = v52;
      v60 = v53;
      v61 = [v54 nameSource];

      v62 = v61 == 3;
      v53 = v60;
      v52 = v59;
      if (!v62)
      {
        goto LABEL_54;
      }
    }

    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
    {
      v63 = [v54 localIdentifier];
      *buf = 138412290;
      v99 = v63;
      _os_log_impl(v52, v51, OS_LOG_TYPE_DEBUG, "[VCPFaceMerger] Face %@ with valid personIdentifier; reinstate as manual face", buf, 0xCu);
    }

    [v54 setManual:1];
    [v54 setImageprintWrapper:0];
    [v72 addObject:v54];
    goto LABEL_53;
  }

LABEL_55:
  v64 = [MEMORY[0x1E695DF90] dictionary];
  v65 = v64;
  if (v72)
  {
    [v64 setObject:v72 forKeyedSubscript:@"FacesToPersist"];
  }

  if (v74)
  {
    [v65 setObject:v74 forKeyedSubscript:@"FacesToDelete"];
  }

  return v65;
}

void __124__VCPFaceMerger_mergeExistingFaces_andDetectedFaces_withRequestHandler_orientedWidth_orientedHeight_assetWidth_assetHeight___block_invoke(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v30 objects:v40 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v31;
    *&v5 = 138412802;
    v28 = v5;
    v29 = v3;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v30 + 1) + 8 * i);
        v10 = [v9 face1];
        v11 = [v9 face2];
        LODWORD(v9) = [v10 detectionType];
        if (v9 == [v11 detectionType])
        {
          if ([*(a1 + 32) containsObject:v10] && objc_msgSend(*(a1 + 40), "containsObject:", v11))
          {
            [v11 replaceCoordinatesAndFeaturesFromDetectedFace:v10];
            v12 = [v10 adjustmentVersion];
            [v11 setAdjustmentVersion:v12];

            [v11 setManual:0];
            v13 = [v11 imageprintWrapper];

            if (v13)
            {
              v14 = *(a1 + 48);
              v15 = [v11 imageprintWrapper];
              [v14 removeObject:v15];
            }

            v16 = [v10 imageprintWrapper];
            [v11 setImageprintWrapper:v16];

            [*(a1 + 56) addObject:v11];
            [*(a1 + 40) removeObject:v11];
            [*(a1 + 32) removeObject:v10];
            [v10 size];
            if (v17 == 0.0)
            {
              v18 = @"Torso";
            }

            else
            {
              [v10 bodyWidth];
              v18 = @"Face";
              if (v19 != 0.0)
              {
                v18 = @"Facetorso";
              }
            }

            v20 = v18;
            if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
            {
              v21 = [v10 gist];
              v27 = [v11 gist];
              *buf = v28;
              v35 = v20;
              v36 = 2112;
              v37 = v21;
              v38 = 2112;
              v39 = v27;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[VCPFaceMerger] Merged %@: detected %@ to existing %@", buf, 0x20u);

              v3 = v29;
LABEL_18:
            }

            goto LABEL_36;
          }

          if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            v22 = [v10 gist];
            v23 = [v11 gist];
            *buf = 138412546;
            v35 = v22;
            v36 = 2112;
            v37 = v23;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[VCPFaceMerger] Failed to merge detected face %@ to existing face %@", buf, 0x16u);

            v3 = v29;
          }

          if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            if ([*(a1 + 32) containsObject:v10])
            {
              v24 = @"Yes";
            }

            else
            {
              v24 = @"No";
            }

            v25 = [*(a1 + 40) containsObject:v11];
            *buf = 138412546;
            if (v25)
            {
              v26 = @"Yes";
            }

            else
            {
              v26 = @"No";
            }

            v35 = v24;
            v3 = v29;
            v36 = 2112;
            v37 = v26;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[VCPFaceMerger] [mutableDetectedFaces containsObject:detectedFace] %@ [facesToDelete containsObject:matchedExistingFace] %@ ", buf, 0x16u);
          }
        }

        else if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          v20 = [v10 gist];
          v21 = [v11 gist];
          *buf = 138412546;
          v35 = v20;
          v36 = 2112;
          v37 = v21;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, " [VCPFaceMerger] Cannot Merge due to mismatched detection type:detected face: %@, existing face: %@", buf, 0x16u);
          goto LABEL_18;
        }

LABEL_36:
      }

      v6 = [v3 countByEnumeratingWithState:&v30 objects:v40 count:16];
    }

    while (v6);
  }
}

@end