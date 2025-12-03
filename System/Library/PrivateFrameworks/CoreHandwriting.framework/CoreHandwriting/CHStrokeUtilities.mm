@interface CHStrokeUtilities
+ (BOOL)isMatchingStrokeClassification:(int64_t)classification scriptClassification:(int64_t)scriptClassification;
+ (BOOL)isPointEnumerationSupportedForStroke:(id)stroke;
+ (BOOL)isStroke:(id)stroke intersectingAnyPolygonInSet:(id)set;
+ (BOOL)isStroke:(id)stroke intersectingPolygon:(id)polygon;
+ (BOOL)isStrokeClassificationTextOrMath:(int64_t)math;
+ (BOOL)isStrokeGroup:(id)group inlineWithNextGroup:(id)nextGroup;
+ (BOOL)linearScratchOutTestForPoints:(const void *)points direction:(const CGVector *)direction origin:(const CGPoint *)origin threshold:(float)threshold cutIndex:(int64_t *)index;
+ (BOOL)linearScratchOutTestForPoints:(const void *)points threshold:(float)threshold cutIndex:(int64_t *)index;
+ (CGRect)boundingBoxOfPoints:(const void *)points rotatedAroundPoint:(CGPoint)point byAngle:(double)angle;
+ (CGRect)boundsForStroke:(id)stroke usingCache:(id)cache;
+ (CGRect)boundsForStrokes:(id)strokes;
+ (CGRect)unionStrokeBounds:(const void *)bounds aroundXPosition:(double)position usingOneSideStrokeCountLimit:(int64_t)limit;
+ (CGRect)unionStrokeBounds:(const void *)bounds usingStrokeCountLimit:(int64_t)limit reverseOrder:(BOOL)order;
+ (double)arcLengthForStroke:(id)stroke;
+ (double)circumferenceRatioOfCircleFittedToPoints:(const void *)points circleCenter:(CGPoint *)center circleRadius:(double *)radius;
+ (double)distanceFromPoint:(CGPoint)point toRectangle:(CGRect)rectangle;
+ (double)distanceFromPoint:(CGPoint)point toSegmentFromPoint:(CGPoint)fromPoint toPoint:(CGPoint)toPoint;
+ (double)distanceFromPoint:(CGPoint)point toStroke:(id)stroke withStrokeProvider:(id)provider;
+ (double)distanceFromPoint:(CGPoint)point toStrokes:(id)strokes withStrokeProvider:(id)provider;
+ (double)distanceFromRectangle:(CGRect)rectangle toRectangle:(CGRect)toRectangle;
+ (double)durationOfStrokesInStrokeGroup:(id)group strokeProvider:(id)provider;
+ (double)horizontalDistanceBetweenRectangle:(CGRect)rectangle rectangle:(CGRect)a4;
+ (double)horizontalOverlapOfIndividualStrokeBounds:(const void *)bounds otherStrokeBounds:(const void *)strokeBounds;
+ (double)lineOrientationForStrokePoints:(const void *)points error:(double *)error;
+ (double)speedForFinalTimeRange:(double)range stroke:(id)stroke;
+ (double)vectorMeanWithoutOutliers:(void *)outliers;
+ (double)verticalDistanceBetweenRectangle:(CGRect)rectangle rectangle:(CGRect)a4;
+ (id)createDrawingForStrokeIdentifiers:(id)identifiers strokeProvider:(id)provider interpolationType:(int64_t)type resolution:(int64_t)resolution cancellationBlock:(id)block;
+ (id)createDrawingForStrokes:(id)strokes interpolationType:(int64_t)type resolution:(int64_t)resolution cancellationBlock:(id)block;
+ (id)defaultScriptClassificationDictionary;
+ (id)encodedStrokeIdentifiers:(id)identifiers withStrokeProvider:(id)provider;
+ (id)encodedStrokeIdentifiersFromStrokes:(id)strokes withStrokeProvider:(id)provider shouldCancel:(id)cancel;
+ (id)polygonForStrokes:(id)strokes;
+ (id)polygonSetForScratchOutStroke:(id)stroke;
+ (id)remainingGroupStrokes:(id)strokes remainingStrokes:(id)remainingStrokes strokeProvider:(id)provider;
+ (id)sortedStrokesForIdentifiers:(id)identifiers inStrokeProvider:(id)provider;
+ (id)strokeForIdentifier:(id)identifier inStrokeProvider:(id)provider;
+ (id)strokeIdentifiersByStrokeClusterPolygonsFromStrokeBounds:(id)bounds strokes:(id)strokes;
+ (id)strokeIdentifiersForData:(id)data withStrokeProvider:(id)provider;
+ (id)strokesForIdentifiers:(id)identifiers inStrokeProvider:(id)provider;
+ (id)strokesIntersectingPolygons:(id)polygons fromStrokes:(id)strokes intersectedPolygons:(id *)intersectedPolygons;
+ (int64_t)minRectangleDistanceFromStrokes:(id)strokes toPolygons:(id)polygons;
+ (vector<CGPoint,)convexHullForPoints:()vector<CGPoint;
+ (vector<CGPoint,)convexHullForStroke:(id)stroke;
+ (vector<CGPoint,)convexHullForStrokes:(id)strokes;
+ (vector<CGPoint,)convexHullForStrokes:(id)strokes inDrawing:(SEL)drawing;
+ (vector<CGPoint,)enlargedConvexHull:()vector<CGPoint withMargin:(std:(SEL)margin :(const void *)a4 allocator<CGPoint>> *)result;
+ (vector<CGPoint,)regularizedPathFromPoints:()vector<CGPoint delta:(std:(SEL)delta :(const void *)a4 allocator<CGPoint>> *)result gamma:(double)gamma outError:(double)error;
+ (vector<CGRect,)horizontallyOverlappedChunks:(id)chunks;
+ (vector<_NSRange,)segmentationRangesForScratchOutPoints:(id)points;
+ (vector<float,)projectionForPoints:(id)points direction:(SEL)direction origin:(const void *)origin;
+ (void)enumeratePointsForStroke:(id)stroke interpolationType:(int64_t)type resolution:(int64_t)resolution usingBlock:(id)block;
+ (void)getAddedStrokes:(id *)strokes removedStrokeIdentifiers:(id *)identifiers inStrokeProvider:(id)provider lastGroupingResult:(id)result shouldCancel:(id)cancel;
+ (void)principalComponentsForPoints:(const void *)points outFirstComponent:(CGVector *)component outSecondComponent:(CGVector *)secondComponent outMeanPoint:(CGPoint *)point;
@end

@implementation CHStrokeUtilities

+ (void)getAddedStrokes:(id *)strokes removedStrokeIdentifiers:(id *)identifiers inStrokeProvider:(id)provider lastGroupingResult:(id)result shouldCancel:(id)cancel
{
  v152 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  resultCopy = result;
  cancelCopy = cancel;
  if (!providerCopy)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v15 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v15, OS_LOG_TYPE_ERROR, "strokeProvider cannot be nil.", buf, 2u);
    }

    if (qword_1EA84DC48 == -1)
    {
      v16 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
LABEL_9:

        providerCopy = 0;
        goto LABEL_10;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v16 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_9;
      }
    }

    *buf = 0;
    _os_log_impl(&dword_18366B000, v16, OS_LOG_TYPE_FAULT, "strokeProvider cannot be nil.", buf, 2u);
    goto LABEL_9;
  }

LABEL_10:
  v132 = providerCopy;
  v133 = objc_msgSend_orderedStrokes(providerCopy, v10, v11, v12, v13, v14, identifiers);
  v22 = objc_msgSend_array(MEMORY[0x1E695DF70], v17, v18, v19, v20, v21);
  v28 = objc_msgSend_set(MEMORY[0x1E695DFA8], v23, v24, v25, v26, v27);
  v144 = 0u;
  v145 = 0u;
  v142 = 0u;
  v143 = 0u;
  v34 = objc_msgSend_strokeGroups(resultCopy, v29, v30, v31, v32, v33);
  v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v35, &v142, v151, 16, v36);
  if (v42)
  {
    v43 = *v143;
    do
    {
      for (i = 0; i != v42; ++i)
      {
        if (*v143 != v43)
        {
          objc_enumerationMutation(v34);
        }

        v45 = objc_msgSend_strokeIdentifiers(*(*(&v142 + 1) + 8 * i), v37, v38, v39, v40, v41);
        objc_msgSend_unionSet_(v28, v46, v45, v47, v48, v49);
      }

      v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v37, &v142, v151, 16, v41);
    }

    while (v42);
  }

  v140 = 0u;
  v141 = 0u;
  v138 = 0u;
  v139 = 0u;
  v50 = v133;
  v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v51, &v138, v150, 16, v52);
  if (v58)
  {
    v59 = *v139;
    if (cancelCopy)
    {
      while (2)
      {
        for (j = 0; j != v58; ++j)
        {
          if (*v139 != v59)
          {
            objc_enumerationMutation(v50);
          }

          v61 = *(*(&v138 + 1) + 8 * j);
          v62 = objc_msgSend_encodedStrokeIdentifier(v61, v53, v54, v55, v56, v57);
          if (objc_msgSend_containsObject_(v28, v63, v62, v64, v65, v66))
          {
            objc_msgSend_removeObject_(v28, v67, v62, v68, v69, v70);
          }

          else
          {
            objc_msgSend_addObject_(v22, v67, v61, v68, v69, v70);
          }

          if (__ROR8__(0x8F5C28F5C28F5C29 * objc_msgSend_count(v22, v71, v72, v73, v74, v75), 2) <= 0x28F5C28F5C28F5CuLL && (cancelCopy[2]() & 1) != 0)
          {

            v28 = 0;
            goto LABEL_55;
          }
        }

        v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v53, &v138, v150, 16, v57);
        if (v58)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      do
      {
        for (k = 0; k != v58; ++k)
        {
          if (*v139 != v59)
          {
            objc_enumerationMutation(v50);
          }

          v77 = *(*(&v138 + 1) + 8 * k);
          v78 = objc_msgSend_encodedStrokeIdentifier(v77, v53, v54, v55, v56, v57);
          if (objc_msgSend_containsObject_(v28, v79, v78, v80, v81, v82))
          {
            objc_msgSend_removeObject_(v28, v83, v78, v84, v85, v86);
          }

          else
          {
            objc_msgSend_addObject_(v22, v83, v77, v84, v85, v86);
          }

          objc_msgSend_count(v22, v87, v88, v89, v90, v91);
        }

        v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v53, &v138, v150, 16, v57);
      }

      while (v58);
    }
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v92 = qword_1EA84DC68;
  if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
  {
    v98 = objc_msgSend_count(v22, v93, v94, v95, v96, v97);
    v104 = objc_msgSend_count(v28, v99, v100, v101, v102, v103);
    *buf = 134218240;
    v147 = v98;
    v148 = 2048;
    v149 = v104;
    _os_log_impl(&dword_18366B000, v92, OS_LOG_TYPE_DEBUG, "  Stroke provider change added %ld strokes, removed %ld strokes.", buf, 0x16u);
  }

  v136[0] = MEMORY[0x1E69E9820];
  v136[1] = 3221225472;
  v136[2] = sub_1836EF0C4;
  v136[3] = &unk_1E6DDCA48;
  v105 = cancelCopy;
  v137 = v105;
  v115 = objc_msgSend_indexesOfObjectsPassingTest_(v22, v106, v136, v107, v108, v109);
  if (v105 && ((v105[2])(v105) & 1) != 0)
  {

    goto LABEL_55;
  }

  if (objc_msgSend_count(v115, v110, v111, v112, v113, v114))
  {
    objc_msgSend_removeObjectsAtIndexes_(v22, v116, v115, v117, v118, v119);
    if (qword_1EA84DC48 == -1)
    {
      v120 = qword_1EA84DC68;
      if (!os_log_type_enabled(v120, OS_LOG_TYPE_DEBUG))
      {
LABEL_49:

        goto LABEL_50;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v120 = qword_1EA84DC68;
      if (!os_log_type_enabled(v120, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_49;
      }
    }

    v126 = objc_msgSend_count(v115, v121, v122, v123, v124, v125);
    *buf = 134217984;
    v147 = v126;
    _os_log_impl(&dword_18366B000, v120, OS_LOG_TYPE_DEBUG, "  Ignoring %ld added strokes that cannot enumerate their points.", buf, 0xCu);
    goto LABEL_49;
  }

LABEL_50:

  if (strokes)
  {
    v127 = v22;
    *strokes = v22;
  }

  if (v130)
  {
    v128 = v28;
    *v130 = v28;
  }

LABEL_55:
}

+ (id)strokeForIdentifier:(id)identifier inStrokeProvider:(id)provider
{
  providerCopy = provider;
  v10 = objc_msgSend_strokeIdentifierFromData_(providerCopy, v6, identifier, v7, v8, v9);
  v15 = objc_msgSend_strokeForIdentifier_(providerCopy, v11, v10, v12, v13, v14);

  return v15;
}

+ (id)strokesForIdentifiers:(id)identifiers inStrokeProvider:(id)provider
{
  v55 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  providerCopy = provider;
  v7 = MEMORY[0x1E695DF70];
  v13 = objc_msgSend_count(identifiersCopy, v8, v9, v10, v11, v12);
  v18 = objc_msgSend_arrayWithCapacity_(v7, v14, v13, v15, v16, v17);
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v19 = identifiersCopy;
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v46, v54, 16, v21);
  if (v22)
  {
    v23 = *v47;
    while (2)
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v47 != v23)
        {
          objc_enumerationMutation(v19);
        }

        v25 = *(*(&v46 + 1) + 8 * i);
        v26 = objc_opt_class();
        v34 = objc_msgSend_strokeForIdentifier_inStrokeProvider_(v26, v27, v25, providerCopy, v28, v29, v46);
        if (!v34)
        {
          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          v38 = qword_1EA84DC60;
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            v44 = objc_msgSend_strokeProviderVersion(providerCopy, v39, v40, v41, v42, v43);
            *buf = 138412546;
            v51 = v25;
            v52 = 2112;
            v53 = v44;
            _os_log_impl(&dword_18366B000, v38, OS_LOG_TYPE_ERROR, "Failed to get stroke with id: %@ from stroke provider version %@, return empty group instead.", buf, 0x16u);
          }

          v37 = MEMORY[0x1E695E0F0];
          goto LABEL_15;
        }

        objc_msgSend_addObject_(v18, v30, v34, v31, v32, v33);
      }

      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v35, &v46, v54, 16, v36);
      if (v22)
      {
        continue;
      }

      break;
    }
  }

  v37 = v18;
LABEL_15:

  return v37;
}

+ (id)sortedStrokesForIdentifiers:(id)identifiers inStrokeProvider:(id)provider
{
  providerCopy = provider;
  v11 = objc_msgSend_allObjects(identifiers, v6, v7, v8, v9, v10);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = sub_1836EF5E0;
  v23[3] = &unk_1E6DDCA70;
  v12 = providerCopy;
  v24 = v12;
  v17 = objc_msgSend_sortedArrayUsingComparator_(v11, v13, v23, v14, v15, v16);

  v21 = objc_msgSend_strokesForIdentifiers_inStrokeProvider_(CHStrokeUtilities, v18, v17, v12, v19, v20);

  return v21;
}

+ (id)strokeIdentifiersForData:(id)data withStrokeProvider:(id)provider
{
  v51 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  providerCopy = provider;
  v12 = providerCopy;
  v13 = 0;
  if (dataCopy && providerCopy)
  {
    v13 = objc_msgSend_array(MEMORY[0x1E695DF70], v7, v8, v9, v10, v11);
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v14 = dataCopy;
    v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v44, v50, 16, v16);
    if (v21)
    {
      v22 = *v45;
      while (2)
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v45 != v22)
          {
            objc_enumerationMutation(v14);
          }

          v24 = *(*(&v44 + 1) + 8 * i);
          v25 = objc_msgSend_strokeIdentifierFromData_(v12, v17, v24, v18, v19, v20, v44);
          if (!v25 || (objc_opt_respondsToSelector() & 1) != 0 && !objc_msgSend_isValidStrokeIdentifier_(v12, v26, v25, v27, v28, v29))
          {
            if (qword_1EA84DC48 != -1)
            {
              dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
            }

            v30 = qword_1EA84DC50[0];
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              v36 = objc_msgSend_encodedStrokeIdentifier(v24, v31, v32, v33, v34, v35);
              v42 = objc_msgSend_description(v36, v37, v38, v39, v40, v41);
              *buf = 138412290;
              v49 = v42;
              _os_log_impl(&dword_18366B000, v30, OS_LOG_TYPE_ERROR, "retrieving stroke identifier gave nil or invalid result. Encoded stroke identifier: %@", buf, 0xCu);
            }

            v13 = 0;
            goto LABEL_19;
          }

          objc_msgSend_addObject_(v13, v26, v25, v27, v28, v29);
        }

        v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v44, v50, 16, v20);
        if (v21)
        {
          continue;
        }

        break;
      }
    }

LABEL_19:
  }

  return v13;
}

+ (id)encodedStrokeIdentifiers:(id)identifiers withStrokeProvider:(id)provider
{
  v34 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  providerCopy = provider;
  v12 = objc_msgSend_array(MEMORY[0x1E695DF70], v7, v8, v9, v10, v11);
  if (identifiersCopy && providerCopy)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v13 = identifiersCopy;
    v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v29, v33, 16, v15);
    if (v20)
    {
      v21 = *v30;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v30 != v21)
          {
            objc_enumerationMutation(v13);
          }

          v23 = objc_msgSend_encodedStrokeIdentifier_(providerCopy, v16, *(*(&v29 + 1) + 8 * i), v17, v18, v19, v29);
          objc_msgSend_addObject_(v12, v24, v23, v25, v26, v27);
        }

        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v29, v33, 16, v19);
      }

      while (v20);
    }
  }

  return v12;
}

+ (id)encodedStrokeIdentifiersFromStrokes:(id)strokes withStrokeProvider:(id)provider shouldCancel:(id)cancel
{
  v67 = *MEMORY[0x1E69E9840];
  strokesCopy = strokes;
  providerCopy = provider;
  cancelCopy = cancel;
  v14 = objc_msgSend_array(MEMORY[0x1E695DF70], v9, v10, v11, v12, v13);
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v15 = strokesCopy;
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v62, v66, 16, v17);
  if (v23)
  {
    v24 = *v63;
    if (cancelCopy)
    {
      while (2)
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v63 != v24)
          {
            objc_enumerationMutation(v15);
          }

          v26 = *(*(&v62 + 1) + 8 * i);
          if (__ROR8__(0x8F5C28F5C28F5C29 * objc_msgSend_count(v14, v18, v19, v20, v21, v22), 2) <= 0x28F5C28F5C28F5CuLL && (cancelCopy[2]() & 1) != 0)
          {

            v59 = 0;
            goto LABEL_18;
          }

          v32 = objc_msgSend_strokeIdentifier(v26, v27, v28, v29, v30, v31);
          v37 = objc_msgSend_encodedStrokeIdentifier_(providerCopy, v33, v32, v34, v35, v36);

          objc_msgSend_addObject_(v14, v38, v37, v39, v40, v41);
        }

        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v18, &v62, v66, 16, v22);
        if (v23)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v63 != v24)
          {
            objc_enumerationMutation(v15);
          }

          v43 = *(*(&v62 + 1) + 8 * j);
          objc_msgSend_count(v14, v18, v19, v20, v21, v22);
          v49 = objc_msgSend_strokeIdentifier(v43, v44, v45, v46, v47, v48);
          v54 = objc_msgSend_encodedStrokeIdentifier_(providerCopy, v50, v49, v51, v52, v53);

          objc_msgSend_addObject_(v14, v55, v54, v56, v57, v58);
        }

        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v18, &v62, v66, 16, v22);
      }

      while (v23);
    }
  }

  v59 = v14;
LABEL_18:

  return v59;
}

+ (double)distanceFromPoint:(CGPoint)point toStroke:(id)stroke withStrokeProvider:(id)provider
{
  y = point.y;
  x = point.x;
  providerCopy = provider;
  v13 = objc_msgSend_strokeIdentifierFromData_(providerCopy, v9, stroke, v10, v11, v12);
  v18 = objc_msgSend_strokeForIdentifier_(providerCopy, v14, v13, v15, v16, v17);
  objc_msgSend_bounds(v18, v19, v20, v21, v22, v23);
  MidX = CGRectGetMidX(v33);
  objc_msgSend_bounds(v18, v25, v26, v27, v28, v29);
  MidY = CGRectGetMidY(v34);
  v31 = sqrt((y - MidY) * (y - MidY) + (x - MidX) * (x - MidX));

  return v31;
}

+ (double)distanceFromPoint:(CGPoint)point toStrokes:(id)strokes withStrokeProvider:(id)provider
{
  y = point.y;
  x = point.x;
  v27 = *MEMORY[0x1E69E9840];
  strokesCopy = strokes;
  providerCopy = provider;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = strokesCopy;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v22, v26, 16, v12);
  if (v16)
  {
    v17 = *v23;
    v18 = 1.79769313e308;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v10);
        }

        objc_msgSend_distanceFromPoint_toStroke_withStrokeProvider_(CHStrokeUtilities, v13, *(*(&v22 + 1) + 8 * i), providerCopy, v14, v15, x, y, v22);
        if (v20 < v18)
        {
          v18 = v20;
        }
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v22, v26, 16, v15);
    }

    while (v16);
  }

  else
  {
    v18 = 1.79769313e308;
  }

  return v18;
}

+ (void)enumeratePointsForStroke:(id)stroke interpolationType:(int64_t)type resolution:(int64_t)resolution usingBlock:(id)block
{
  strokeCopy = stroke;
  blockCopy = block;
  if (!strokeCopy)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v12 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v12, OS_LOG_TYPE_ERROR, "Unexpected nil stroke passed to enumeration method. Skipping.", buf, 2u);
    }

    goto LABEL_31;
  }

  if (!type)
  {
    goto LABEL_11;
  }

  if (type == 1)
  {
    if (objc_opt_respondsToSelector())
    {
      if (resolution < 3)
      {
        v11 = dbl_1839CE668[resolution];
LABEL_30:
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = sub_1836F0488;
        v26[3] = &unk_1E6DDCA98;
        v27 = blockCopy;
        objc_msgSend_enumeratePointsWithDistanceStep_usingBlock_(strokeCopy, v22, v26, v23, v24, v25, v11);
        v12 = v27;
        goto LABEL_31;
      }

      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v20 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_18366B000, v20, OS_LOG_TYPE_ERROR, "timestep must be > 0", buf, 2u);
      }

      if (qword_1EA84DC48 == -1)
      {
        v21 = qword_1EA84DC50[0];
        if (!os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
        {
LABEL_29:

          v11 = 0.0;
          goto LABEL_30;
        }
      }

      else
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        v21 = qword_1EA84DC50[0];
        if (!os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_29;
        }
      }

      *buf = 0;
      _os_log_impl(&dword_18366B000, v21, OS_LOG_TYPE_FAULT, "timestep must be > 0", buf, 2u);
      goto LABEL_29;
    }

LABEL_11:
    if (resolution < 3)
    {
      v13 = dbl_1839CE650[resolution];
LABEL_21:
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = sub_1836F0478;
      v28[3] = &unk_1E6DDCA98;
      v29 = blockCopy;
      objc_msgSend_enumeratePointsWithTimestep_usingBlock_(strokeCopy, v16, v28, v17, v18, v19, v13);
      v12 = v29;
LABEL_31:

      goto LABEL_32;
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v14 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v14, OS_LOG_TYPE_ERROR, "timestep must be > 0", buf, 2u);
    }

    if (qword_1EA84DC48 == -1)
    {
      v15 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
LABEL_20:

        v13 = 0.0;
        goto LABEL_21;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v15 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_20;
      }
    }

    *buf = 0;
    _os_log_impl(&dword_18366B000, v15, OS_LOG_TYPE_FAULT, "timestep must be > 0", buf, 2u);
    goto LABEL_20;
  }

LABEL_32:
}

+ (BOOL)isPointEnumerationSupportedForStroke:(id)stroke
{
  strokeCopy = stroke;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v4 = objc_opt_class();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1836F0584;
  v8[3] = &unk_1E6DDCAC0;
  v8[4] = &v9;
  objc_msgSend_enumeratePointsForStroke_interpolationType_resolution_usingBlock_(v4, v5, strokeCopy, 0, 1, v8);
  v6 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return v6;
}

+ (double)durationOfStrokesInStrokeGroup:(id)group strokeProvider:(id)provider
{
  groupCopy = group;
  providerCopy = provider;
  v12 = objc_msgSend_firstStrokeIdentifier(groupCopy, v7, v8, v9, v10, v11);
  v18 = objc_msgSend_lastStrokeIdentifier(groupCopy, v13, v14, v15, v16, v17);
  v23 = v18;
  v24 = 0;
  v25 = 0.0;
  if (v12 && v18)
  {
    v26 = objc_msgSend_strokeIdentifierFromData_(providerCopy, v19, v12, v20, v21, v22);
    v31 = objc_msgSend_strokeIdentifierFromData_(providerCopy, v27, v23, v28, v29, v30);
    v36 = v31;
    v37 = 0;
    v24 = 0;
    if (v26 && v31)
    {
      v24 = objc_msgSend_strokeForIdentifier_(providerCopy, v32, v26, v33, v34, v35);
      v37 = objc_msgSend_strokeForIdentifier_(providerCopy, v38, v36, v39, v40, v41);
    }

    if (v24 && v37)
    {
      objc_msgSend_endTimestamp(v37, v42, v43, v44, v45, v46);
      v48 = v47;
      objc_msgSend_startTimestamp(v24, v49, v50, v51, v52, v53);
      v25 = v48 - v54;
    }
  }

  else
  {
    v37 = 0;
  }

  return v25;
}

+ (double)speedForFinalTimeRange:(double)range stroke:(id)stroke
{
  strokeCopy = stroke;
  v10 = vcvtpd_s64_f64(range * 120.0);
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x4812000000;
  v34[3] = sub_1836F0B5C;
  v34[4] = sub_1836F0B80;
  v34[5] = &unk_183A5AC72;
  v36 = 0;
  v37 = 0;
  v35 = 0;
  if (v10)
  {
    if (!(v10 >> 60))
    {
      operator new();
    }

    sub_18369761C();
  }

  v25 = 0;
  v26 = &v25;
  v27 = 0x4812000000;
  v28 = sub_1836F0B98;
  v29 = sub_1836F0BBC;
  v30 = &unk_183A5AC72;
  v32 = 0;
  v33 = 0;
  __p = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_1836F0BD4;
  v20[3] = &unk_1E6DDCAE8;
  v20[4] = &v21;
  v20[5] = v34;
  v20[6] = &v25;
  v20[7] = 0;
  objc_msgSend_enumeratePointsWithTimestep_usingBlock_(strokeCopy, v5, v20, v6, v7, v8, 0.00833333333);
  v11 = v22[3];
  v12 = -1.0;
  if (v11 >= 0)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1836F0C24;
    v19[3] = &unk_1E6DDCB08;
    v19[4] = v11 % 0uLL;
    v19[5] = 0;
    v13 = MEMORY[0x1865E6810](v19);
    v14 = v26;
    v15 = *(v14[6] + 8 * v13[2](v13, 0));
    v16 = v26;
    v17 = *(v16[6] + 8 * v13[2](v13, -1)) - v15;
    if (v17 <= 0.0)
    {
      v12 = -1.0;
    }

    else
    {
      v12 = 0.0 / v17;
    }
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
  if (__p)
  {
    v32 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(v34, 8);
  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }

  return v12;
}

+ (double)arcLengthForStroke:(id)stroke
{
  strokeCopy = stroke;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x4012000000;
  v11[3] = sub_1836F0DCC;
  v11[4] = nullsub_14;
  v11[5] = &unk_183A5AC72;
  v12 = *MEMORY[0x1E695EFF8];
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v10 = 0;
  v4 = objc_opt_class();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1836F0DDC;
  v8[3] = &unk_1E6DDCB30;
  v8[4] = v9;
  v8[5] = &v13;
  v8[6] = v11;
  objc_msgSend_enumeratePointsForStroke_interpolationType_resolution_usingBlock_(v4, v5, strokeCopy, 0, 1, v8);
  v6 = v14[3];
  _Block_object_dispose(v9, 8);
  _Block_object_dispose(v11, 8);
  _Block_object_dispose(&v13, 8);

  return v6;
}

+ (CGRect)boundsForStrokes:(id)strokes
{
  v32 = *MEMORY[0x1E69E9840];
  strokesCopy = strokes;
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = strokesCopy;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v27, v31, 16, v10);
  if (v16)
  {
    v17 = *v28;
    do
    {
      v18 = 0;
      do
      {
        if (*v28 != v17)
        {
          objc_enumerationMutation(v8);
        }

        objc_msgSend_bounds(*(*(&v27 + 1) + 8 * v18), v11, v12, v13, v14, v15, v27);
        v36.origin.x = v19;
        v36.origin.y = v20;
        v36.size.width = v21;
        v36.size.height = v22;
        v33.origin.x = x;
        v33.origin.y = y;
        v33.size.width = width;
        v33.size.height = height;
        v34 = CGRectUnion(v33, v36);
        x = v34.origin.x;
        y = v34.origin.y;
        width = v34.size.width;
        height = v34.size.height;
        ++v18;
      }

      while (v16 != v18);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v27, v31, 16, v15);
    }

    while (v16);
  }

  v23 = x;
  v24 = y;
  v25 = width;
  v26 = height;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

+ (CGRect)boundsForStroke:(id)stroke usingCache:(id)cache
{
  strokeCopy = stroke;
  cacheCopy = cache;
  v12 = objc_msgSend_encodedStrokeIdentifier(strokeCopy, v7, v8, v9, v10, v11);
  v17 = objc_msgSend_objectForKeyedSubscript_(cacheCopy, v13, v12, v14, v15, v16);
  v23 = v17;
  if (v17)
  {
    objc_msgSend_ch_CGRectValue(v17, v18, v19, v20, v21, v22);
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
  }

  else
  {
    objc_msgSend_bounds(strokeCopy, v18, v19, v20, v21, v22);
    v25 = v32;
    v27 = v33;
    v29 = v34;
    v31 = v35;
    v23 = objc_msgSend_ch_valueWithCGRect_(MEMORY[0x1E696B098], v36, v37, v38, v39, v40);
    objc_msgSend_setObject_forKeyedSubscript_(cacheCopy, v41, v23, v12, v42, v43);
  }

  v44 = v25;
  v45 = v27;
  v46 = v29;
  v47 = v31;
  result.size.height = v47;
  result.size.width = v46;
  result.origin.y = v45;
  result.origin.x = v44;
  return result;
}

+ (CGRect)boundingBoxOfPoints:(const void *)points rotatedAroundPoint:(CGPoint)point byAngle:(double)angle
{
  y = point.y;
  x = point.x;
  angleCopy = angle;
  v9 = __sincosf_stret(angleCopy);
  v10 = *(points + 1) - *points;
  if (v10)
  {
    cosval = v9.__cosval;
    sinval = v9.__sinval;
    v13 = v10 >> 4;
    if (v13 <= 1)
    {
      v13 = 1;
    }

    v14 = (*points + 8);
    v15 = 1.79769313e308;
    v16 = -1.79769313e308;
    v17 = -1.79769313e308;
    v18 = 1.79769313e308;
    do
    {
      v19 = *(v14 - 1) - x;
      v20 = *v14 - y;
      v21 = x + cosval * v19 - v20 * sinval;
      v22 = y + v20 * cosval + sinval * v19;
      if (v21 < v18)
      {
        v18 = v21;
      }

      if (v21 > v17)
      {
        v17 = v21;
      }

      if (v22 < v15)
      {
        v15 = v22;
      }

      if (v22 > v16)
      {
        v16 = v22;
      }

      v14 += 2;
      --v13;
    }

    while (v13);
    v23 = v17 - v18;
    v24 = v16 - v15;
  }

  else
  {
    v18 = 1.79769313e308;
    v15 = 1.79769313e308;
    v23 = -1.79769313e308 - 1.79769313e308;
    v24 = -1.79769313e308 - 1.79769313e308;
  }

  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v15;
  result.origin.x = v18;
  return result;
}

+ (vector<CGRect,)horizontallyOverlappedChunks:(id)chunks
{
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  v5 = MEMORY[0x1E695F050];
  v6 = *(MEMORY[0x1E695F050] + 16);
  v14.origin = *MEMORY[0x1E695F050];
  v14.size = v6;
  v7 = *a4;
  v8 = *(a4 + 1);
  x = v14.origin.x;
  if (*a4 == v8)
  {
    y = v14.origin.y;
    height = v14.size.height;
    width = v14.size.width;
  }

  else
  {
    y = v14.origin.y;
    height = v14.size.height;
    width = v14.size.width;
    do
    {
      while (1)
      {
        v19.origin.x = x;
        v19.size.width = width;
        x = *v7;
        width = v7[2];
        v15.origin.x = *v7;
        v15.origin.y = -8.98846567e307;
        v15.size.width = width;
        v15.size.height = 1.79769313e308;
        v19.origin.y = y;
        v19.size.height = height;
        if (!CGRectIntersectsRect(v15, v19))
        {
          break;
        }

        v16.origin.x = x;
        v16.origin.y = -8.98846567e307;
        v16.size.width = width;
        v16.size.height = 1.79769313e308;
        v17 = CGRectUnion(v16, v14);
        x = v17.origin.x;
        y = v17.origin.y;
        width = v17.size.width;
        height = v17.size.height;
        v14 = v17;
        v7 += 4;
        if (v7 == v8)
        {
          goto LABEL_10;
        }
      }

      if (!CGRectEqualToRect(v14, *v5))
      {
        sub_1836F13C4(retstr, &v14);
      }

      height = 1.79769313e308;
      y = -8.98846567e307;
      v14.origin.x = x;
      v14.origin.y = -8.98846567e307;
      v14.size.width = width;
      v14.size.height = 1.79769313e308;
      v7 += 4;
    }

    while (v7 != v8);
  }

LABEL_10:
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  result = CGRectEqualToRect(v18, *v5);
  if (result)
  {
    sub_1836F13C4(retstr, &v14);
  }

  return result;
}

+ (double)horizontalOverlapOfIndividualStrokeBounds:(const void *)bounds otherStrokeBounds:(const void *)strokeBounds
{
  objc_msgSend_horizontallyOverlappedChunks_(CHStrokeUtilities, a2, bounds, strokeBounds, v4, v5);
  objc_msgSend_horizontallyOverlappedChunks_(CHStrokeUtilities, v7, strokeBounds, v8, v9, v10);
  v11 = v22;
  v12 = 0.0;
  v13 = __p;
  if (v22 != v23 && __p != v21)
  {
    do
    {
      v14 = __p;
      if (__p != v21)
      {
        v15 = *v11;
        v16 = v11[1];
        v17 = v11[2];
        v18 = v11[3];
        do
        {
          v24.origin.x = v15;
          v24.origin.y = v16;
          v24.size.width = v17;
          v24.size.height = v18;
          v25 = CGRectIntersection(v24, *v14);
          v12 = v12 + v25.size.width;
          ++v14;
        }

        while (v14 != v21);
      }

      v11 += 4;
    }

    while (v11 != v23);
    v13 = __p;
  }

  if (v13)
  {
    operator delete(v13);
  }

  if (v22)
  {
    operator delete(v22);
  }

  return v12;
}

+ (CGRect)unionStrokeBounds:(const void *)bounds usingStrokeCountLimit:(int64_t)limit reverseOrder:(BOOL)order
{
  v7 = *MEMORY[0x1E695F050];
  v8 = *(MEMORY[0x1E695F050] + 8);
  v9 = *(MEMORY[0x1E695F050] + 16);
  v10 = *(MEMORY[0x1E695F050] + 24);
  v11 = *bounds;
  v12 = *(bounds + 1) - *bounds;
  limitCopy = v12 >> 5;
  if (v12 >> 5 >= limit)
  {
    limitCopy = limit;
  }

  if (order)
  {
    if (limitCopy)
    {
      v14 = 0;
      v15 = 0;
      do
      {
        *&v7 = CGRectUnion(*&v7, *(v11 + v12 + v14 - 32));
        ++v15;
        v11 = *bounds;
        v12 = *(bounds + 1) - *bounds;
        limitCopy2 = v12 >> 5;
        if (v12 >> 5 >= limit)
        {
          limitCopy2 = limit;
        }

        v14 -= 32;
      }

      while (v15 < limitCopy2);
    }
  }

  else if (limitCopy)
  {
    v17 = 0;
    v18 = 0;
    do
    {
      *&v7 = CGRectUnion(*&v7, *(v11 + v17));
      ++v18;
      v11 = *bounds;
      limitCopy3 = (*(bounds + 1) - *bounds) >> 5;
      if (limitCopy3 >= limit)
      {
        limitCopy3 = limit;
      }

      v17 += 32;
    }

    while (v18 < limitCopy3);
  }

  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

+ (CGRect)unionStrokeBounds:(const void *)bounds aroundXPosition:(double)position usingOneSideStrokeCountLimit:(int64_t)limit
{
  v8 = *MEMORY[0x1E695F050];
  v9 = *(MEMORY[0x1E695F050] + 8);
  v10 = *(MEMORY[0x1E695F050] + 16);
  v11 = *(MEMORY[0x1E695F050] + 24);
  v12 = *bounds;
  v13 = *(bounds + 1) - *bounds;
  v14 = v13 >> 5;
  if (v13)
  {
    v15 = *MEMORY[0x1E695F050];
    v16 = *(MEMORY[0x1E695F050] + 8);
    v17 = *(MEMORY[0x1E695F050] + 16);
    v18 = *(MEMORY[0x1E695F050] + 24);
    v19 = 0;
    v20 = 0;
    while (CGRectGetMidX(*(v12 + v19)) <= position)
    {
      ++v20;
      v12 = *bounds;
      v19 += 32;
      if (v20 >= (*(bounds + 1) - *bounds) >> 5)
      {
        goto LABEL_7;
      }
    }

    v14 = v20;
LABEL_7:
    v11 = v18;
    v10 = v17;
    v9 = v16;
    v8 = v15;
  }

  v21 = (v14 + ~limit) & ~((v14 + ~limit) >> 63);
  v22 = v14 - v21;
  if (v14 > v21)
  {
    v23 = 32 * v21;
    do
    {
      *&v8 = CGRectUnion(*&v8, *(*bounds + v23));
      v23 += 32;
      --v22;
    }

    while (v22);
  }

  v24 = v14 + limit;
  v25 = *bounds;
  v26 = (*(bounds + 1) - *bounds) >> 5;
  if (v24 < v26)
  {
    v26 = v24;
  }

  if (v14 < v26)
  {
    v27 = 32 * v14;
    do
    {
      *&v8 = CGRectUnion(*&v8, *(v25 + v27));
      ++v14;
      v25 = *bounds;
      v28 = (*(bounds + 1) - *bounds) >> 5;
      if (v24 < v28)
      {
        v28 = v24;
      }

      v27 += 32;
    }

    while (v14 < v28);
  }

  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

+ (id)createDrawingForStrokeIdentifiers:(id)identifiers strokeProvider:(id)provider interpolationType:(int64_t)type resolution:(int64_t)resolution cancellationBlock:(id)block
{
  blockCopy = block;
  v16 = objc_msgSend_strokesForIdentifiers_inStrokeProvider_(self, v13, identifiers, provider, v14, v15);
  v18 = objc_msgSend_createDrawingForStrokes_interpolationType_resolution_cancellationBlock_(self, v17, v16, type, resolution, blockCopy);

  return v18;
}

+ (id)createDrawingForStrokes:(id)strokes interpolationType:(int64_t)type resolution:(int64_t)resolution cancellationBlock:(id)block
{
  v52 = *MEMORY[0x1E69E9840];
  strokesCopy = strokes;
  blockCopy = block;
  v41 = objc_alloc_init(CHDrawing);
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = strokesCopy;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v47, v51, 16, v10, strokesCopy);
  if (v11)
  {
    v12 = *v48;
    if (blockCopy)
    {
LABEL_3:
      v13 = 0;
      while (1)
      {
        if (*v48 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v47 + 1) + 8 * v13);
        if (blockCopy[2]())
        {
          break;
        }

        v15 = objc_opt_class();
        v42 = MEMORY[0x1E69E9820];
        v43 = 3221225472;
        v44 = sub_1836F1C74;
        v45 = &unk_1E6DDCB58;
        v16 = v41;
        v46 = v16;
        objc_msgSend_enumeratePointsForStroke_interpolationType_resolution_usingBlock_(v15, v17, v14, type, resolution, &v42);
        objc_msgSend_endStroke(v16, v18, v19, v20, v21, v22);

        if (v11 == ++v13)
        {
          v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v23, &v47, v51, 16, v24);
          if (v11)
          {
            goto LABEL_3;
          }

          break;
        }
      }
    }

    else
    {
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v48 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v47 + 1) + 8 * i);
          v27 = objc_opt_class();
          v42 = MEMORY[0x1E69E9820];
          v43 = 3221225472;
          v44 = sub_1836F1C74;
          v45 = &unk_1E6DDCB58;
          v28 = v41;
          v46 = v28;
          objc_msgSend_enumeratePointsForStroke_interpolationType_resolution_usingBlock_(v27, v29, v26, type, resolution, &v42);
          objc_msgSend_endStroke(v28, v30, v31, v32, v33, v34);
        }

        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v35, &v47, v51, 16, v36);
      }

      while (v11);
    }
  }

  return v41;
}

+ (vector<CGPoint,)convexHullForStroke:(id)stroke
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v15[0] = v5;
  v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v6, v15, 1, v7, v8);
  objc_msgSend_convexHullForStrokes_(stroke, v10, v9, v11, v12, v13);

  return result;
}

+ (vector<CGPoint,)convexHullForStrokes:(id)strokes
{
  v40 = *MEMORY[0x1E69E9840];
  v28 = 0;
  v29 = &v28;
  v30 = 0x4812000000;
  v31 = sub_1836F0B5C;
  v32 = sub_1836F0B80;
  v33 = &unk_183A5AC72;
  v35 = 0;
  v36 = 0;
  __p = 0;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = a4;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v24, v39, 16, v7);
  if (v8)
  {
    v9 = *v25;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        v12 = objc_opt_class();
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = sub_1836F200C;
        v23[3] = &unk_1E6DDCAC0;
        v23[4] = &v28;
        objc_msgSend_enumeratePointsForStroke_interpolationType_resolution_usingBlock_(v12, v13, v11, 0, 1, v23);
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v14, &v24, v39, 16, v15);
    }

    while (v8);
  }

  if (v29[7] == v29[6])
  {
    retstr->__begin_ = 0;
    retstr->__end_ = 0;
    retstr->__cap_ = 0;
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v20 = qword_1EA84DC68;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v38 = v5;
      _os_log_impl(&dword_18366B000, v20, OS_LOG_TYPE_ERROR, "Strokes with no enumerable points found, recognition results may be affected. Strokes: %@", buf, 0xCu);
    }
  }

  else
  {
    objc_msgSend_convexHullForPoints_(strokes, v16, (v29 + 6), v17, v18, v19);
  }

  _Block_object_dispose(&v28, 8);
  if (__p)
  {
    v35 = __p;
    operator delete(__p);
  }

  return result;
}

+ (vector<CGPoint,)convexHullForStrokes:(id)strokes inDrawing:(SEL)drawing
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v23 = 0;
  v24 = &v23;
  v25 = 0x4812000000;
  v26 = sub_1836F0B5C;
  v27 = sub_1836F0B80;
  v28 = &unk_183A5AC72;
  v30 = 0;
  v31 = 0;
  __p = 0;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_1836F2264;
  v20[3] = &unk_1E6DDCB80;
  v9 = v8;
  v21 = v9;
  v22 = &v23;
  objc_msgSend_enumerateIndexesUsingBlock_(a4, v10, v20, v11, v12, v13);
  if (v24[7] == v24[6])
  {
    retstr->__begin_ = 0;
    retstr->__end_ = 0;
    retstr->__cap_ = 0;
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v18 = qword_1EA84DC68;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v33 = v9;
      _os_log_impl(&dword_18366B000, v18, OS_LOG_TYPE_ERROR, "Drawing with no enumerable points found, recognition results may be affected. Drawing: %@", buf, 0xCu);
    }
  }

  else
  {
    objc_msgSend_convexHullForPoints_(strokes, v14, (v24 + 6), v15, v16, v17);
  }

  _Block_object_dispose(&v23, 8);
  if (__p)
  {
    v30 = __p;
    operator delete(__p);
  }

  return result;
}

+ (vector<CGPoint,)convexHullForPoints:()vector<CGPoint
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = *a4;
  v7 = *a4;
  if (v7.n128_u64[1] != v7.n128_u64[0])
  {
    v8 = *a4;
    do
    {
      v6.n128_u64[0] = *v8;
      v8 += 2;
    }

    while (v8 != v7.n128_u64[1]);
  }

  v9 = v7.n128_u64[1] - v7.n128_u64[0];
  if (((v7.n128_u64[1] - v7.n128_u64[0]) >> 4) > 1)
  {
    v10 = 126 - 2 * __clz(v9 >> 4);
    if (v7.n128_u64[1] == v7.n128_u64[0])
    {
      v11 = 0;
    }

    else
    {
      v11 = v10;
    }

    sub_1836F8A60(v7.n128_u64[0], v7.n128_u64[1], v11, 1, v6);
    v13 = *a4;
    v12 = *(a4 + 1);
    retstr->__end_ = 0;
    retstr->__cap_ = 0;
    retstr->__begin_ = 0;
    v14 = v12 - v13;
    if (v12 != v13)
    {
      if (!((v14 >> 3) >> 60))
      {
        operator new();
      }

      sub_18369761C();
    }

    v39 = v14 >> 4;
    if (v14 >> 4 >= 1)
    {
      v15 = 0;
      v16 = 0;
      do
      {
        v17 = 16 * v15 - 16;
        do
        {
          v18 = v15;
          v19 = v17;
          if (v15 < 2)
          {
            break;
          }

          v20 = objc_opt_class();
          result = objc_msgSend_threePointsOrientationWithOrigin_pointA_pointB_(v20, v21, v22, v23, v24, v25, *(v19 - 16), *(v19 - 8), *v19, *(v19 + 8), *(*a4 + 16 * v16), *(*a4 + 16 * v16 + 8));
          v17 = v19 - 16;
          --v15;
        }

        while (v26 <= 0.000000001);
        v15 = v18 + 1;
        *(v19 + 16) = *(*a4 + 16 * v16++);
      }

      while (v16 != v39);
      if (v14 != 16)
      {
        v27 = v39 - 2;
        v28 = v18 + 1;
        do
        {
          v30 = 16 * v28 - 16;
          do
          {
            v18 = v28;
            v31 = v30;
            if (v28 <= v15)
            {
              break;
            }

            v32 = objc_opt_class();
            result = objc_msgSend_threePointsOrientationWithOrigin_pointA_pointB_(v32, v33, v34, v35, v36, v37, *(v31 - 16), *(v31 - 8), *v31, *(v31 + 8), *(*a4 + 16 * v27), *(*a4 + 16 * v27 + 8));
            v30 = v31 - 16;
            v28 = v18 - 1;
          }

          while (v38 <= 0.000000001);
          v28 = v18 + 1;
          *(v31 + 16) = *(*a4 + 16 * v27);
        }

        while (v27-- > 0);
      }
    }

    else
    {
      v18 = -1;
    }

    if (v18)
    {
      if (!(v18 >> 60))
      {
        operator new();
      }

      sub_18369761C();
    }
  }

  else
  {
    retstr->__begin_ = 0;
    retstr->__end_ = 0;
    retstr->__cap_ = 0;
    if (v7.n128_u64[1] != v7.n128_u64[0])
    {
      if ((v9 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_18369761C();
    }
  }

  return result;
}

+ (vector<CGPoint,)enlargedConvexHull:()vector<CGPoint withMargin:(std:(SEL)margin :(const void *)a4 allocator<CGPoint>> *)result
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  v7 = *a4;
  v6 = *(a4 + 1);
  v8 = v6 - *a4;
  v9 = v8 >> 4;
  if (((v8 >> 4) & 0x8000000000000000) == 0)
  {
    v11 = *(v7 + v8 - 16);
    v12 = vcvt_f32_f64(vsubq_f64(*v7, v11));
    v13.i32[0] = vdup_lane_s32(v12, 1).u32[0];
    v13.f32[1] = -v12.f32[0];
    v14 = vmvn_s8(vceqz_f32(v12));
    if ((v14.i32[1] | v14.i32[0]))
    {
      v15 = vmul_f32(v13, v13);
      v15.i32[0] = vadd_f32(v15, vdup_lane_s32(v15, 1)).u32[0];
      v16 = vrsqrte_f32(v15.u32[0]);
      v17 = vmul_f32(v16, vrsqrts_f32(v15.u32[0], vmul_f32(v16, v16)));
      v13 = vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vmul_n_f32(v13, vmul_f32(v17, vrsqrts_f32(v15.u32[0], vmul_f32(v17, v17))).f32[0])), a5));
    }

    if (v6 != v7)
    {
      v18 = 0;
      v19 = vcvtq_f64_f32(v13);
      v51 = vaddq_f64(*v7, v19);
      v20 = vaddq_f64(v11, v19);
      do
      {
        v21 = *a4;
        if (v9 - 1 == v18)
        {
          v22 = 0;
        }

        else
        {
          v22 = v18 + 1;
        }

        v23 = v21[v18];
        v24 = v21[v22];
        v25 = vcvt_f32_f64(vsubq_f64(v24, v23));
        v26.i32[0] = vdup_lane_s32(v25, 1).u32[0];
        v26.f32[1] = -v25.f32[0];
        v27 = vmvn_s8(vceqz_f32(v25));
        if ((v27.i32[1] | v27.i32[0]))
        {
          v28 = vmul_f32(v26, v26);
          v28.i32[0] = vadd_f32(v28, vdup_lane_s32(v28, 1)).u32[0];
          v29 = vrsqrte_f32(v28.u32[0]);
          v30 = vmul_f32(v29, vrsqrts_f32(v28.u32[0], vmul_f32(v29, v29)));
          v26 = vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vmul_n_f32(v26, vmul_f32(v30, vrsqrts_f32(v28.u32[0], vmul_f32(v30, v30))).f32[0])), a5));
        }

        v31 = vcvtq_f64_f32(v26);
        v32 = vaddq_f64(v23, v31);
        v33 = vaddq_f64(v24, v31);
        v34 = COERCE_DOUBLE(vcvt_f32_f64(vsubq_f64(v51, v20)));
        v35 = vmul_f32(*&v34, *&v34);
        *v35.i32 = *&v35.i32[1] + (*&v34 * *&v34);
        v36 = *v35.i32 <= 0.0;
        v37 = COERCE_DOUBLE(vdiv_f32(*&v34, vdup_lane_s32(v35, 0)));
        if (!v36)
        {
          v34 = v37;
        }

        v51 = v33;
        v52 = v32;
        v38 = vcvt_f32_f64(vsubq_f64(v33, v32));
        v39 = vmul_f32(v38, v38);
        *v39.i32 = *&v39.i32[1] + (v38.f32[0] * v38.f32[0]);
        if (*v39.i32 > 0.0)
        {
          v38.i32[0] = vdiv_f32(v38, vdup_lane_s32(v39, 0)).u32[0];
        }

        _Q1 = vcvtq_f64_f32(*&v34);
        _D3 = v38.f32[0];
        __asm { FMLS            D4, D3, V1.D[1] }

        v47 = _D4;
        if (v47 != 0.0)
        {
          _Q5 = vsubq_f64(v20, v32);
          __asm { FMLA            D2, D3, V5.D[1] }

          *&_D2 = _D2 / v47;
          v53 = vmlaq_n_f64(v20, _Q1, *&_D2);
        }

        sub_1836973A4(retstr, &v53);
        ++v18;
        v20 = v52;
      }

      while (v9 != v18);
    }
  }

  return result;
}

+ (id)polygonForStrokes:(id)strokes
{
  objc_msgSend_convexHullForStrokes_(self, a2, strokes, v3, v4, v5);
  v7 = __p;
  v6 = v22;
  v8 = (v22 - __p) >> 4;
  v9 = malloc_type_calloc(v8, 0x10uLL, 0x1000040451B5BE8uLL);
  v10 = v9;
  if (v6 != v7)
  {
    if (v8 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v8;
    }

    v12 = v6 - v7 - 16;
    v13 = v9;
    do
    {
      *v13++ = *(__p + v12);
      v12 -= 16;
      --v11;
    }

    while (v11);
  }

  v14 = [CHPolygon alloc];
  v18 = objc_msgSend_initWithVertices_vertexCount_(v14, v15, v10, v8, v16, v17);
  if (__p)
  {
    v22 = __p;
    v19 = v18;
    operator delete(__p);
    v18 = v19;
  }

  return v18;
}

+ (double)circumferenceRatioOfCircleFittedToPoints:(const void *)points circleCenter:(CGPoint *)center circleRadius:(double *)radius
{
  v5 = *(points + 1);
  v6 = *(v5 + 16);
  v7 = *(v5 + 8);
  v8 = *(v7 + 16);
  v9 = *(*(v7 + 8) + 16);
  v10 = vsubq_f64(v8, v6);
  result = 0.0;
  if (*v10.i64 != 0.0 || *&v10.i64[1] != 0.0)
  {
    v12 = vsubq_f64(v9, v8);
    v13 = *v12.i64 == 0.0 && *v10.i64 == 0.0;
    v14 = *&v12.i64[1] == 0.0 && *v12.i64 == 0.0;
    if (!v13 && !v14)
    {
      if (*v10.i64 == 0.0)
      {
        v15 = vsubq_f64(v8, v9);
        v16 = vsubq_f64(v9, v6);
        v18 = v9.f64[1];
        v17 = v9.f64[0];
        v19 = v8.f64[1];
        v9.f64[0] = v8.f64[0];
        v20 = v6.f64[1];
        v8.f64[0] = v6.f64[0];
        v21 = vdivq_f64(vzip2q_s64(v16, v15), vzip1q_s64(v16, v15));
        v22 = v21.f64[1];
        if (v21.f64[0] == v21.f64[1])
        {
          return result;
        }
      }

      else
      {
        v19 = v9.f64[1];
        v20 = v8.f64[1];
        if (*v12.i64 == 0.0)
        {
          v23 = vsubq_f64(v9, v6);
          v24 = vsubq_f64(v6, v8);
          v18 = v6.f64[1];
          v17 = v6.f64[0];
          v21 = vdivq_f64(vzip2q_s64(v24, v23), vzip1q_s64(v24, v23));
          v22 = v21.f64[1];
          if (v21.f64[0] == v21.f64[1])
          {
            return result;
          }
        }

        else
        {
          v18 = v8.f64[1];
          v17 = v8.f64[0];
          v20 = v6.f64[1];
          v8.f64[0] = v6.f64[0];
          v21 = vdivq_f64(vzip2q_s64(v10, v12), vzip1q_s64(v10, v12));
          v22 = v21.f64[1];
          if (v21.f64[0] == v21.f64[1])
          {
            return result;
          }
        }
      }

      v25 = (v22 * (v17 + v8.f64[0]) + v22 * v21.f64[0] * (v20 - v19) - v21.f64[0] * (v9.f64[0] + v17)) / (v22 - v21.f64[0] + v22 - v21.f64[0]);
      v26 = v21.f64[0] == 0.0;
      v27 = (v19 + v18) * 0.5 + -1.0 / v22 * (v25 - (v9.f64[0] + v17) * 0.5);
      v28 = (v18 + v20) * 0.5 + -1.0 / v21.f64[0] * (v25 - (v17 + v8.f64[0]) * 0.5);
      if (v26)
      {
        v28 = v27;
      }

      v29.f64[0] = v25;
      v29.f64[1] = v28;
      v31.f32[0] = v8.f64[0];
      v30 = v20;
      v31.f32[1] = v30;
      v32 = vsub_f32(vcvt_f32_f64(v29), v31);
      v33 = sqrtf(vaddv_f32(vmul_f32(v32, v32)));
      if (center)
      {
        center->x = v25;
        center->y = v28;
      }

      v34 = v33;
      if (radius)
      {
        *radius = v34;
      }

      v35.f32[0] = v17;
      v36 = v18;
      v35.f32[1] = v36;
      v37 = vsub_f32(v31, v35);
      v38 = vmul_f32(v37, v37);
      v39.f32[0] = v9.f64[0];
      v40 = v19;
      v39.f32[1] = v40;
      v41 = vsub_f32(v35, v39);
      v42 = vmul_f32(v41, v41);
      return vaddvq_f64(vcvtq_f64_f32(vsqrt_f32(vadd_f32(vzip1_s32(v42, v38), vzip2_s32(v42, v38))))) / v34;
    }
  }

  return result;
}

+ (double)vectorMeanWithoutOutliers:(void *)outliers
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(outliers + 1);
  if (v4 != *outliers)
  {
    v5 = *outliers;
    do
    {
      v5 += 8;
    }

    while (v5 != v4);
  }

  std::__sort<std::__less<double,double> &,double *>();
  v6 = *outliers;
  v7 = (*(outliers + 1) - *outliers) >> 3;
  v8 = v7 / 5;
  v9 = 0.0;
  if (v7 / 5 < v7 - v7 / 5)
  {
    v10 = v7 - 2 * v8;
    if (v10 <= 3)
    {
      v11 = v7 / 5;
LABEL_10:
      v14 = v11 + v8 - v7;
      v15 = (v6 + 8 * v11);
      do
      {
        v16 = *v15++;
        v9 = v9 + v16;
      }

      while (!__CFADD__(v14++, 1));
      return v9 / (v7 - 2 * v8);
    }

    v11 = v8 + (v10 & 0xFFFFFFFFFFFFFFFCLL);
    v12 = (v6 + 8 * v8 + 16);
    v13 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v9 = v9 + *(v12 - 2) + *(v12 - 1) + *v12 + v12[1];
      v12 += 4;
      v13 -= 4;
    }

    while (v13);
    if (v10 != (v10 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_10;
    }
  }

  return v9 / (v7 - 2 * v8);
}

+ (double)lineOrientationForStrokePoints:(const void *)points error:(double *)error
{
  v5 = *points;
  v6 = (*(points + 1) - *points) >> 4;
  if (v6 < 2)
  {
    result = 0.0;
    if (!error)
    {
      return result;
    }

    v8 = 1.79769313e308;
    goto LABEL_37;
  }

  v9 = v5 + 1;
  v10 = 0uLL;
  v11 = v6 & 0xFFFFFFFFFFFFFFFELL;
  do
  {
    v10 = vaddq_f64(vaddq_f64(v10, v9[-1]), *v9);
    v9 += 2;
    v11 -= 2;
  }

  while (v11);
  v12 = v6 >> 1;
  v13 = v6 - (v6 & 0xFFFFFFFFFFFFFFFELL);
  if (v13)
  {
    v14 = &v5[2 * v12];
    do
    {
      v15 = *v14++;
      v10 = vaddq_f64(v10, v15);
      --v13;
    }

    while (v13);
  }

  v16 = vdivq_f64(v10, vdupq_lane_s64(COERCE__INT64(v6), 0));
  v17 = v5 + 1;
  v18 = 0uLL;
  _D1 = 0.0;
  v20 = v6 & 0xFFFFFFFFFFFFFFFELL;
  do
  {
    v21 = vsubq_f64(v17[-1], v16);
    v22 = vsubq_f64(*v17, v16);
    v18 = vaddq_f64(vaddq_f64(v18, vmulq_n_f64(v21, v21.f64[0])), vmulq_n_f64(v22, v22.f64[0]));
    _D1 = _D1 + COERCE_DOUBLE(*&vmulq_f64(v21, v21).f64[1]) + COERCE_DOUBLE(*&vmulq_f64(v22, v22).f64[1]);
    v17 += 2;
    v20 -= 2;
  }

  while (v20);
  v23 = v6 - (v6 & 0xFFFFFFFFFFFFFFFELL);
  if (v23)
  {
    v24 = &v5[2 * v12];
    do
    {
      v25 = *v24++;
      _Q2 = vsubq_f64(v25, v16);
      v18 = vmlaq_n_f64(v18, _Q2, _Q2.f64[0]);
      _D3 = _Q2.f64[1];
      __asm { FMLA            D1, D3, V2.D[1] }

      --v23;
    }

    while (v23);
  }

  if (v18.f64[0] != 0.0 && _D1 != 0.0)
  {
    *&v48 = *&vdivq_f64(vdupq_laneq_s64(v18, 1), v18);
    v49 = v16;
    v32 = atan(v48);
    result = -v32;
    if (!error)
    {
      return result;
    }

    v33 = sqrt(v48 * v48 + 1.0);
    v34 = -v32;
    v35 = cos(v32);
    v36 = sin(v34);
    v37 = &v5->f64[1];
    v38 = 0.0;
    v39 = 1.79769313e308;
    v40 = -1.79769313e308;
    do
    {
      v41 = *(v37 - 1);
      v42 = vabdd_f64(*v37 + -v48 * v41, v49.f64[1] + -v48 * v49.f64[0]) / v33;
      if (v38 <= v42)
      {
        v38 = v42;
      }

      v43 = v41 * v35 - *v37 * v36;
      if (v43 < v39)
      {
        v39 = v43;
      }

      if (v43 > v40)
      {
        v40 = v43;
      }

      v37 += 2;
      --v6;
    }

    while (v6);
    v8 = v38 / ((v40 - v39 + 1.0) * 0.1);
    result = v34;
    goto LABEL_37;
  }

  v44 = _D1 == 0.0;
  v45 = v18.f64[0] == 0.0;
  v8 = 1.79769313e308;
  if (!v45 || !v44)
  {
    v8 = 0.0;
  }

  v46 = 1.57079633;
  if (v45 && v44)
  {
    v46 = 0.0;
  }

  if (v18.f64[1] == 0.0)
  {
    v47 = 0.0;
  }

  else
  {
    v47 = 1.79769313e308;
  }

  if (v18.f64[0] == 0.0)
  {
    result = v46;
  }

  else
  {
    v8 = v47;
    result = 0.0;
  }

  if (error)
  {
LABEL_37:
    *error = v8;
  }

  return result;
}

+ (double)distanceFromPoint:(CGPoint)point toSegmentFromPoint:(CGPoint)fromPoint toPoint:(CGPoint)toPoint
{
  y = toPoint.y;
  fromPointCopy = fromPoint;
  v7 = vcvt_f32_f64(vsubq_f64(toPoint, fromPoint));
  v8 = vaddv_f32(vmul_f32(v7, v7));
  if (v8 != 0.0)
  {
    v9.f32[0] = point.x - fromPoint.x;
    v10 = point.y - fromPoint.y;
    v9.f32[1] = v10;
    v11 = vaddv_f32(vmul_f32(v9, v7)) / v8;
    if (v11 > 1.0)
    {
      v11 = 1.0;
    }

    if (v11 < 0.0)
    {
      v11 = 0.0;
    }

    fromPointCopy = vmlaq_n_f64(fromPointCopy, vcvtq_f64_f32(v7), v11);
  }

  v12 = point.y;
  v13 = vsub_f32(vcvt_f32_f64(point), vcvt_f32_f64(fromPointCopy));
  return sqrtf(vaddv_f32(vmul_f32(v13, v13)));
}

+ (double)distanceFromRectangle:(CGRect)rectangle toRectangle:(CGRect)toRectangle
{
  height = toRectangle.size.height;
  width = toRectangle.size.width;
  y = toRectangle.origin.y;
  x = toRectangle.origin.x;
  v8 = rectangle.size.width;
  v9 = rectangle.origin.y;
  v10 = rectangle.origin.x;
  v91 = rectangle.size.height;
  v11 = 0.0;
  if (CGRectIntersectsRect(rectangle, toRectangle))
  {
    return v11;
  }

  v92.origin.x = v10;
  v92.origin.y = v9;
  v92.size.width = v8;
  v92.size.height = v91;
  MinX = CGRectGetMinX(v92);
  v93.origin.x = v10;
  v93.origin.y = v9;
  v93.size.width = v8;
  v93.size.height = v91;
  MinY = CGRectGetMinY(v93);
  v94.origin.x = v10;
  v94.origin.y = v9;
  v94.size.width = v8;
  v94.size.height = v91;
  MaxX = CGRectGetMaxX(v94);
  v95.origin.x = v10;
  v95.origin.y = v9;
  v95.size.width = v8;
  v95.size.height = v91;
  v77 = CGRectGetMinY(v95);
  v96.origin.x = v10;
  v96.origin.y = v9;
  v96.size.width = v8;
  v96.size.height = v91;
  v87 = CGRectGetMaxX(v96);
  v97.origin.x = v10;
  v97.origin.y = v9;
  v97.size.width = v8;
  v97.size.height = v91;
  MaxY = CGRectGetMaxY(v97);
  v98.origin.x = v10;
  v98.origin.y = v9;
  v98.size.width = v8;
  v98.size.height = v91;
  v89 = CGRectGetMinX(v98);
  v99.origin.x = v10;
  v99.origin.y = v9;
  v99.size.width = v8;
  v99.size.height = v91;
  v83 = CGRectGetMaxY(v99);
  v12 = objc_opt_class();
  objc_msgSend_distanceFromPoint_toRectangle_(v12, v13, v14, v15, v16, v17, MinX, MinY, x, y, width, height);
  v19 = fmin(v18, 3.40282347e38);
  v20 = objc_opt_class();
  objc_msgSend_distanceFromPoint_toRectangle_(v20, v21, v22, v23, v24, v25, MaxX, v77, x, y, width, height);
  v27 = fmin(v19, v26);
  v28 = objc_opt_class();
  objc_msgSend_distanceFromPoint_toRectangle_(v28, v29, v30, v31, v32, v33, v87, MaxY, x, y, width, height);
  v35 = fmin(v27, v34);
  v36 = objc_opt_class();
  objc_msgSend_distanceFromPoint_toRectangle_(v36, v37, v38, v39, v40, v41, v89, v83, x, y, width, height);
  v11 = fmin(v35, v42);
  if (fabs(v11) < 0.001)
  {
    return v11;
  }

  v100.origin.x = x;
  v100.origin.y = y;
  v100.size.width = width;
  v100.size.height = height;
  v84 = CGRectGetMinX(v100);
  v101.origin.x = x;
  v101.origin.y = y;
  v101.size.width = width;
  v101.size.height = height;
  v78 = CGRectGetMinY(v101);
  v102.origin.x = x;
  v102.origin.y = y;
  v102.size.width = width;
  v102.size.height = height;
  v86 = CGRectGetMaxX(v102);
  v103.origin.x = x;
  v103.origin.y = y;
  v103.size.width = width;
  v103.size.height = height;
  v80 = CGRectGetMinY(v103);
  v104.origin.x = x;
  v104.origin.y = y;
  v104.size.width = width;
  v104.size.height = height;
  v88 = CGRectGetMaxX(v104);
  v105.origin.x = x;
  v105.origin.y = y;
  v105.size.width = width;
  v105.size.height = height;
  v82 = CGRectGetMaxY(v105);
  v106.origin.x = x;
  v106.origin.y = y;
  v106.size.width = width;
  v106.size.height = height;
  v90 = CGRectGetMinX(v106);
  v107.origin.x = x;
  v107.origin.y = y;
  v107.size.width = width;
  v107.size.height = height;
  v44 = CGRectGetMaxY(v107);
  v45 = objc_opt_class();
  objc_msgSend_distanceFromPoint_toRectangle_(v45, v46, v47, v48, v49, v50, v84, v78, v10, v9, v8, v91);
  v52 = fmin(v11, v51);
  v53 = objc_opt_class();
  objc_msgSend_distanceFromPoint_toRectangle_(v53, v54, v55, v56, v57, v58, v86, v80, v10, v9, v8, v91);
  v60 = fmin(v52, v59);
  v61 = objc_opt_class();
  objc_msgSend_distanceFromPoint_toRectangle_(v61, v62, v63, v64, v65, v66, v88, v82, v10, v9, v8, v91);
  v68 = fmin(v60, v67);
  v69 = objc_opt_class();
  objc_msgSend_distanceFromPoint_toRectangle_(v69, v70, v71, v72, v73, v74, v90, v44, v10, v9, v8, v91);
  return fmin(v68, v75);
}

+ (double)distanceFromPoint:(CGPoint)point toRectangle:(CGRect)rectangle
{
  height = rectangle.size.height;
  width = rectangle.size.width;
  y = rectangle.origin.y;
  x = rectangle.origin.x;
  v31 = point.y;
  v29 = point.x;
  MinX = CGRectGetMinX(rectangle);
  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  MinY = CGRectGetMinY(v32);
  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = width;
  v33.size.height = height;
  MaxX = CGRectGetMaxX(v33);
  v34.origin.x = x;
  v34.origin.y = y;
  v34.size.width = width;
  v34.size.height = height;
  v25 = CGRectGetMinY(v34);
  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = height;
  v24 = CGRectGetMaxX(v35);
  v36.origin.x = x;
  v36.origin.y = y;
  v36.size.width = width;
  v36.size.height = height;
  MaxY = CGRectGetMaxY(v36);
  v37.origin.x = x;
  v37.origin.y = y;
  v37.size.width = width;
  v37.size.height = height;
  v26 = CGRectGetMinX(v37);
  v38.origin.x = x;
  v38.origin.y = y;
  v38.size.width = width;
  v38.size.height = height;
  v8 = CGRectGetMaxY(v38);
  v9.f64[0] = MinX;
  v10.f64[0] = v29;
  if (v29 < MinX)
  {
    v11 = v31;
    v12 = v31 <= v8;
    v13.f64[0] = v29;
    v13.f64[1] = v31;
    v14.f64[0] = v26;
    v14.f64[1] = v8;
    v15 = vsub_f32(vcvt_f32_f64(v13), vcvt_f32_f64(v14));
    result = sqrtf(vaddv_f32(vmul_f32(v15, v15)));
    if (v12)
    {
      result = MinX - v29;
    }

    v10.f64[1] = v31;
    v17 = vcvt_f32_f64(v10);
    v18 = MinY;
LABEL_9:
    v9.f64[1] = v18;
    v21 = vsub_f32(v17, vcvt_f32_f64(v9));
    v22 = sqrtf(vaddv_f32(vmul_f32(v21, v21)));
    if (v11 < v18)
    {
      return v22;
    }

    return result;
  }

  v9.f64[0] = MaxX;
  if (v29 > MaxX)
  {
    v11 = v31;
    v19.f64[0] = v29;
    v19.f64[1] = v31;
    v20.f64[0] = v24;
    v20.f64[1] = MaxY;
    *&v19.f64[0] = vsub_f32(vcvt_f32_f64(v19), vcvt_f32_f64(v20));
    result = sqrtf(vaddv_f32(vmul_f32(*&v19.f64[0], *&v19.f64[0])));
    if (v31 <= MaxY)
    {
      result = v29 - v24;
    }

    v10.f64[1] = v31;
    v17 = vcvt_f32_f64(v10);
    v18 = v25;
    goto LABEL_9;
  }

  v12 = v31 <= v8;
  result = v31 - v8;
  if (v12)
  {
    result = 0.0;
  }

  if (v31 < MinY)
  {
    return MinY - v31;
  }

  return result;
}

+ (double)horizontalDistanceBetweenRectangle:(CGRect)rectangle rectangle:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = rectangle.size.height;
  v9 = rectangle.size.width;
  v10 = rectangle.origin.y;
  v11 = rectangle.origin.x;
  MinX = CGRectGetMinX(rectangle);
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  v12 = CGRectGetMinX(v28);
  v13 = MinX <= v12;
  if (MinX <= v12)
  {
    v14 = x;
  }

  else
  {
    v14 = v11;
  }

  if (v13)
  {
    v15 = y;
  }

  else
  {
    v15 = v10;
  }

  if (v13)
  {
    v16 = width;
  }

  else
  {
    v16 = v9;
  }

  if (v13)
  {
    v17 = height;
  }

  else
  {
    v17 = v8;
  }

  v27 = CGRectGetMinX(*&v14);
  v29.origin.x = v11;
  v29.origin.y = v10;
  v29.size.width = v9;
  v29.size.height = v8;
  MaxX = CGRectGetMaxX(v29);
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  v18 = CGRectGetMaxX(v30);
  v19 = MaxX < v18;
  if (MaxX >= v18)
  {
    v20 = x;
  }

  else
  {
    v20 = v11;
  }

  if (v19)
  {
    v21 = v10;
  }

  else
  {
    v21 = y;
  }

  if (v19)
  {
    v22 = v9;
  }

  else
  {
    v22 = width;
  }

  if (v19)
  {
    v23 = v8;
  }

  else
  {
    v23 = height;
  }

  return v27 - CGRectGetMaxX(*&v20);
}

+ (double)verticalDistanceBetweenRectangle:(CGRect)rectangle rectangle:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = rectangle.size.height;
  v9 = rectangle.size.width;
  v10 = rectangle.origin.y;
  v11 = rectangle.origin.x;
  MinY = CGRectGetMinY(rectangle);
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  v12 = CGRectGetMinY(v28);
  v13 = MinY <= v12;
  if (MinY <= v12)
  {
    v14 = x;
  }

  else
  {
    v14 = v11;
  }

  if (v13)
  {
    v15 = y;
  }

  else
  {
    v15 = v10;
  }

  if (v13)
  {
    v16 = width;
  }

  else
  {
    v16 = v9;
  }

  if (v13)
  {
    v17 = height;
  }

  else
  {
    v17 = v8;
  }

  v27 = CGRectGetMinY(*&v14);
  v29.origin.x = v11;
  v29.origin.y = v10;
  v29.size.width = v9;
  v29.size.height = v8;
  MaxY = CGRectGetMaxY(v29);
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  v18 = CGRectGetMaxY(v30);
  v19 = MaxY < v18;
  if (MaxY >= v18)
  {
    v20 = x;
  }

  else
  {
    v20 = v11;
  }

  if (v19)
  {
    v21 = v10;
  }

  else
  {
    v21 = y;
  }

  if (v19)
  {
    v22 = v9;
  }

  else
  {
    v22 = width;
  }

  if (v19)
  {
    v23 = v8;
  }

  else
  {
    v23 = height;
  }

  return v27 - CGRectGetMaxY(*&v20);
}

+ (BOOL)isStrokeGroup:(id)group inlineWithNextGroup:(id)nextGroup
{
  groupCopy = group;
  nextGroupCopy = nextGroup;
  v7 = objc_opt_class();
  objc_msgSend_bounds(groupCopy, v8, v9, v10, v11, v12);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  objc_msgSend_bounds(nextGroupCopy, v21, v22, v23, v24, v25);
  objc_msgSend_horizontalDistanceBetweenRectangle_rectangle_(v7, v26, v27, v28, v29, v30, v14, v16, v18, v20, v31, v32, v33, v34);
  v36 = v35;
  v37 = objc_opt_class();
  objc_msgSend_bounds(groupCopy, v38, v39, v40, v41, v42);
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  objc_msgSend_bounds(nextGroupCopy, v51, v52, v53, v54, v55);
  objc_msgSend_verticalDistanceBetweenRectangle_rectangle_(v37, v56, v57, v58, v59, v60, v44, v46, v48, v50, v61, v62, v63, v64);
  v66 = v65 < 0.0 && v36 > 0.0;
  v67 = objc_opt_class();
  objc_msgSend_bounds(groupCopy, v68, v69, v70, v71, v72);
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v80 = v79;
  objc_msgSend_bounds(nextGroupCopy, v81, v82, v83, v84, v85);
  objc_msgSend_distanceFromRectangle_toRectangle_(v67, v86, v87, v88, v89, v90, v74, v76, v78, v80, v91, v92, v93, v94);
  if (v66)
  {
    v101 = v100;
    objc_msgSend_bounds(groupCopy, v95, v96, v97, v98, v99);
    v103 = v102;
    objc_msgSend_bounds(nextGroupCopy, v104, v105, v106, v107, v108);
    v110 = fmax(v103, v109);
    v111 = v101 < v110 + v110;
  }

  else
  {
    v111 = 0;
  }

  return v111;
}

+ (id)remainingGroupStrokes:(id)strokes remainingStrokes:(id)remainingStrokes strokeProvider:(id)provider
{
  v69 = *MEMORY[0x1E69E9840];
  strokesCopy = strokes;
  remainingStrokesCopy = remainingStrokes;
  providerCopy = provider;
  v58 = objc_msgSend_array(MEMORY[0x1E695DF70], v9, v10, v11, v12, v13, strokesCopy);
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = strokesCopy;
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v63, v68, 16, v15);
  if (v21)
  {
    v22 = *v64;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v64 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v63 + 1) + 8 * i);
        v25 = objc_msgSend_array(MEMORY[0x1E695DF70], v16, v17, v18, v19, v20);
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v31 = objc_msgSend_strokeIdentifiers(v24, v26, v27, v28, v29, v30);
        v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v32, &v59, v67, 16, v33);
        if (v38)
        {
          v39 = *v60;
          do
          {
            for (j = 0; j != v38; ++j)
            {
              if (*v60 != v39)
              {
                objc_enumerationMutation(v31);
              }

              v41 = *(*(&v59 + 1) + 8 * j);
              if (objc_msgSend_containsObject_(remainingStrokesCopy, v34, v41, v35, v36, v37))
              {
                objc_msgSend_addObject_(v25, v34, v41, v35, v36, v37);
              }
            }

            v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v34, &v59, v67, 16, v37);
          }

          while (v38);
        }

        if (objc_msgSend_count(v25, v42, v43, v44, v45, v46))
        {
          v50 = objc_msgSend_strokesForIdentifiers_inStrokeProvider_(CHStrokeUtilities, v47, v25, providerCopy, v48, v49);
          objc_msgSend_addObject_(v58, v51, v50, v52, v53, v54);
        }
      }

      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, &v63, v68, 16, v20);
    }

    while (v21);
  }

  return v58;
}

+ (vector<CGPoint,)regularizedPathFromPoints:()vector<CGPoint delta:(std:(SEL)delta :(const void *)a4 allocator<CGPoint>> *)result gamma:(double)gamma outError:(double)error
{
  if (a7)
  {
    *a7 = 0.0;
  }

  v11 = *a4;
  v10 = *(a4 + 1);
  v12 = v10 - *a4;
  v13 = v12 >> 4;
  if ((v12 >> 4) < 2)
  {
    retstr->__begin_ = 0;
    retstr->__end_ = 0;
    retstr->__cap_ = 0;
    if (v10 != v11)
    {
      if ((v12 & 0x8000000000000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_23;
    }

    return result;
  }

  v14 = v11 + 1;
  v15 = 0uLL;
  v16 = v13 & 0xFFFFFFFFFFFFFFFELL;
  do
  {
    v15 = vaddq_f64(vaddq_f64(v15, v14[-1]), *v14);
    v14 += 2;
    v16 -= 2;
  }

  while (v16);
  v17 = v13 - (v13 & 0xFFFFFFFFFFFFFFFELL);
  if (v17)
  {
    v18 = &v11[2 * (v13 >> 1)];
    do
    {
      v19 = *v18++;
      v15 = vaddq_f64(v15, v19);
      --v17;
    }

    while (v17);
  }

  v20 = v13;
  v21 = v15.f64[0] / v13;
  v22 = v15.f64[1] / v13;
  if (v13 > 3)
  {
    v23 = v13 & 0xFFFFFFFFFFFFFFFCLL;
    v26 = vdupq_lane_s64(*&v21, 0);
    v27 = vdupq_lane_s64(*&v22, 0);
    f64 = v11[2].f64;
    v24 = 0.0;
    v29 = v13 & 0xFFFFFFFFFFFFFFFCLL;
    v25 = 0.0;
    do
    {
      v30 = f64 - 4;
      v57 = vld2q_f64(v30);
      v58 = vld2q_f64(f64);
      v31 = vsubq_f64(v57.val[0], v26);
      v32 = vsubq_f64(v58.val[0], v26);
      v57.val[0] = vmulq_f64(v31, vsubq_f64(v57.val[1], v27));
      v57.val[1] = vmulq_f64(v32, vsubq_f64(v58.val[1], v27));
      v33 = vmulq_f64(v31, v31);
      v34 = vmulq_f64(v32, v32);
      v24 = v24 + v57.val[0].f64[0] + v57.val[0].f64[1] + v57.val[1].f64[0] + v57.val[1].f64[1];
      v25 = v25 + v33.f64[0] + v33.f64[1] + v34.f64[0] + v34.f64[1];
      f64 += 8;
      v29 -= 4;
    }

    while (v29);
    if (v13 == v23)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v23 = 0;
    v24 = 0.0;
    v25 = 0.0;
  }

  v35 = v13 - v23;
  v36 = &v11[v23].f64[1];
  do
  {
    v37 = *(v36 - 1) - v21;
    v24 = v24 + v37 * (*v36 - v22);
    v25 = v25 + v37 * v37;
    v36 += 2;
    --v35;
  }

  while (v35);
LABEL_20:
  v38 = v25 / v20;
  if (v38 != 0.0)
  {
    retstr->__begin_ = 0;
    retstr->__end_ = 0;
    retstr->__cap_ = 0;
    if (v10 == v11)
    {
      v44 = 0.0;
      if (!a7)
      {
        return result;
      }
    }

    else
    {
      v39 = a7;
      v40 = 0;
      v41 = 0;
      v42 = v24 / v20 / v38;
      v43 = v22 - v42 * v21;
      v44 = 0.0;
      do
      {
        v45 = v11[v40].f64;
        v46 = v45[1];
        v47 = v43 + v42 * *v45;
        v48 = v47 - v46;
        v49 = vabdd_f64(v47, v46);
        v56 = 0uLL;
        v51 = *v45;
        if (v48 < 0.0)
        {
          gammaCopy = -gamma;
        }

        else
        {
          gammaCopy = gamma;
        }

        v50 = v45[1];
        v53 = v50 + gammaCopy * pow(v49, error);
        *&v56 = v51;
        *(&v56 + 1) = v53;
        v54 = v45[1];
        sub_1836973A4(retstr, &v56);
        v44 = v44 + (v54 - v53) * (v54 - v53);
        ++v41;
        v11 = *a4;
        v13 = (*(a4 + 1) - *a4) >> 4;
        ++v40;
      }

      while (v13 > v41);
      a7 = v39;
      if (!v39)
      {
        return result;
      }
    }

    *a7 = v44 / v13;
    return result;
  }

  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  if (v10 != v11)
  {
    if ((v12 & 0x8000000000000000) == 0)
    {
LABEL_6:
      operator new();
    }

LABEL_23:
    sub_18369761C();
  }

  return result;
}

+ (BOOL)isStrokeClassificationTextOrMath:(int64_t)math
{
  v4 = objc_opt_class();
  if (objc_msgSend_isStrokeClassificationMath_(v4, v5, math, v6, v7, v8))
  {
    return 1;
  }

  v10 = objc_opt_class();

  return objc_msgSend_isStrokeClassificationText_(v10, v11, math, v12, v13, v14);
}

+ (BOOL)isMatchingStrokeClassification:(int64_t)classification scriptClassification:(int64_t)scriptClassification
{
  result = 0;
  if (scriptClassification <= 0x10)
  {
    if (((1 << scriptClassification) & 0xEFE) != 0)
    {
      v5 = classification - 1;
      return v5 < 2;
    }

    if (((1 << scriptClassification) & 0x1F000) != 0)
    {
      v5 = classification - 3;
      return v5 < 2;
    }

    if (scriptClassification == 8)
    {
      v7 = objc_opt_class();
      v12 = objc_msgSend_isStrokeClassificationTextOrMath_(v7, v8, classification, v9, v10, v11) ^ 1;
      if (classification)
      {
        return v12;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

+ (id)defaultScriptClassificationDictionary
{
  if (qword_1EA84CDC0 == -1)
  {
    v3 = qword_1EA84CDB8;
  }

  else
  {
    dispatch_once(&qword_1EA84CDC0, &unk_1EF1BC430);
    v3 = qword_1EA84CDB8;
  }

  return v3;
}

+ (BOOL)isStroke:(id)stroke intersectingPolygon:(id)polygon
{
  strokeCopy = stroke;
  polygonCopy = polygon;
  v12 = objc_msgSend_polygonDrawing(polygonCopy, v7, v8, v9, v10, v11);
  objc_msgSend_bounds(v12, v13, v14, v15, v16, v17);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  objc_msgSend_bounds(strokeCopy, v26, v27, v28, v29, v30);
  v47.origin.x = v31;
  v47.origin.y = v32;
  v47.size.width = v33;
  v47.size.height = v34;
  v46.origin.x = v19;
  v46.origin.y = v21;
  v46.size.width = v23;
  v46.size.height = v25;
  v35 = CGRectIntersectsRect(v46, v47);

  if (v35)
  {
    v42 = 0;
    v43 = &v42;
    v44 = 0x2020000000;
    v45 = 0;
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = sub_1836F46F8;
    v39[3] = &unk_1E6DDCBA8;
    v40 = polygonCopy;
    v41 = &v42;
    objc_msgSend_enumeratePointsForStroke_interpolationType_resolution_usingBlock_(CHStrokeUtilities, v36, strokeCopy, 0, 1, v39);
    v37 = *(v43 + 24);

    _Block_object_dispose(&v42, 8);
  }

  else
  {
    v37 = 0;
  }

  return v37 & 1;
}

+ (id)strokesIntersectingPolygons:(id)polygons fromStrokes:(id)strokes intersectedPolygons:(id *)intersectedPolygons
{
  v57 = *MEMORY[0x1E69E9840];
  polygonsCopy = polygons;
  strokesCopy = strokes;
  v42 = objc_msgSend_array(MEMORY[0x1E695DF70], v6, v7, v8, v9, v10);
  v16 = objc_msgSend_set(MEMORY[0x1E695DFA8], v11, v12, v13, v14, v15);
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = strokesCopy;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v17, &v51, v56, 16, v18);
  if (v19)
  {
    v45 = *v52;
    do
    {
      v20 = 0;
      v44 = v19;
      do
      {
        if (*v52 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v51 + 1) + 8 * v20);
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v24 = polygonsCopy;
        v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v47, v55, 16, v26);
        if (v30)
        {
          v31 = 0;
          v32 = *v48;
          do
          {
            for (i = 0; i != v30; ++i)
            {
              if (*v48 != v32)
              {
                objc_enumerationMutation(v24);
              }

              v34 = *(*(&v47 + 1) + 8 * i);
              if (objc_msgSend_isStroke_intersectingPolygon_(CHStrokeUtilities, v27, v23, v34, v28, v29))
              {
                objc_msgSend_addObject_(v16, v27, v34, v35, v28, v29);
                v31 = 1;
              }
            }

            v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v27, &v47, v55, 16, v29);
          }

          while (v30);

          v19 = v44;
          if (v31)
          {
            objc_msgSend_addObject_(v42, v21, v23, v36, v37, v22);
          }
        }

        else
        {
        }

        ++v20;
      }

      while (v20 != v19);
      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, &v51, v56, 16, v22);
    }

    while (v19);
  }

  if (intersectedPolygons)
  {
    v38 = v16;
    *intersectedPolygons = v16;
  }

  return v42;
}

+ (int64_t)minRectangleDistanceFromStrokes:(id)strokes toPolygons:(id)polygons
{
  v70 = *MEMORY[0x1E69E9840];
  strokesCopy = strokes;
  polygonsCopy = polygons;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = strokesCopy;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v64, v69, 16, v7);
  if (v8)
  {
    v58 = *v65;
    v9 = 1.79769313e308;
    do
    {
      v10 = 0;
      do
      {
        if (*v65 != v58)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v64 + 1) + 8 * v10);
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v12 = polygonsCopy;
        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v60, v68, 16, v14);
        if (v20)
        {
          v21 = *v61;
          do
          {
            v22 = 0;
            do
            {
              if (*v61 != v21)
              {
                objc_enumerationMutation(v12);
              }

              v23 = *(*(&v60 + 1) + 8 * v22);
              objc_msgSend_bounds(v11, v15, v16, v17, v18, v19);
              v25 = v24;
              v27 = v26;
              v29 = v28;
              v31 = v30;
              v37 = objc_msgSend_polygonDrawing(v23, v32, v33, v34, v35, v36);
              objc_msgSend_bounds(v37, v38, v39, v40, v41, v42);
              objc_msgSend_distanceFromRectangle_toRectangle_(CHStrokeUtilities, v43, v44, v45, v46, v47, v25, v27, v29, v31, v48, v49, v50, v51);
              v53 = v52;

              if (v53 < v9)
              {
                v9 = v53;
              }

              ++v22;
            }

            while (v20 != v22);
            v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v60, v68, 16, v19);
          }

          while (v20);
        }

        ++v10;
      }

      while (v10 != v8);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v54, &v64, v69, 16, v55);
    }

    while (v8);
    v8 = v9;
  }

  return v8;
}

+ (id)strokeIdentifiersByStrokeClusterPolygonsFromStrokeBounds:(id)bounds strokes:(id)strokes
{
  v212 = *MEMORY[0x1E69E9840];
  boundsCopy = bounds;
  strokesCopy = strokes;
  v198 = boundsCopy;
  v199 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v6, v7, v8, v9, v10);
  if (objc_msgSend_count(boundsCopy, v11, v12, v13, v14, v15) && objc_msgSend_count(strokesCopy, v16, v17, v18, v19, v20))
  {
    v26 = objc_msgSend_count(boundsCopy, v21, v22, v23, v24, v25);
    if (v26 != objc_msgSend_count(strokesCopy, v27, v28, v29, v30, v31))
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v37 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109376;
        v209 = objc_msgSend_count(boundsCopy, v38, v39, v40, v41, v42);
        v210 = 1024;
        v211 = objc_msgSend_count(strokesCopy, v43, v44, v45, v46, v47);
        _os_log_impl(&dword_18366B000, v37, OS_LOG_TYPE_ERROR, "strokeClusterPolygonsError: should have matching strokes and strokeBounds, but have %d strokes and %d strokeBounds", buf, 0xEu);
      }
    }

    v48 = objc_msgSend_count(boundsCopy, v32, v33, v34, v35, v36);
    if (v48 != objc_msgSend_count(strokesCopy, v49, v50, v51, v52, v53))
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v54 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v54, OS_LOG_TYPE_FAULT))
      {
        v60 = objc_msgSend_count(boundsCopy, v55, v56, v57, v58, v59);
        v66 = objc_msgSend_count(strokesCopy, v61, v62, v63, v64, v65);
        *buf = 67109376;
        v209 = v60;
        v210 = 1024;
        v211 = v66;
        _os_log_impl(&dword_18366B000, v54, OS_LOG_TYPE_FAULT, "strokeClusterPolygonsError: should have matching strokes and strokeBounds, but have %d strokes and %d strokeBounds", buf, 0xEu);
      }
    }

    v72 = sub_1837A7FA4(v198);
    if (v72)
    {
      v201 = objc_msgSend_array(MEMORY[0x1E695DF70], v67, v68, v69, v70, v71);
      v200 = objc_msgSend_array(MEMORY[0x1E695DF70], v73, v74, v75, v76, v77);
      for (i = 0; i < objc_msgSend_count(v72, v78, v79, v80, v81, v82); ++i)
      {
        v89 = objc_msgSend_set(MEMORY[0x1E695DFA8], v84, v85, v86, v87, v88);
        v95 = objc_msgSend_set(MEMORY[0x1E695DFA8], v90, v91, v92, v93, v94);
        v205 = 0u;
        v206 = 0u;
        v203 = 0u;
        v204 = 0u;
        v96 = strokesCopy;
        v103 = objc_msgSend_countByEnumeratingWithState_objects_count_(v96, v97, &v203, v207, 16, v98);
        if (v103)
        {
          v104 = *v204;
          do
          {
            for (j = 0; j != v103; ++j)
            {
              if (*v204 != v104)
              {
                objc_enumerationMutation(v96);
              }

              v106 = *(*(&v203 + 1) + 8 * j);
              v107 = objc_msgSend_objectAtIndexedSubscript_(v72, v99, i, v100, v101, v102);
              objc_msgSend_ch_CGRectValue(v107, v108, v109, v110, v111, v112);
              v114 = v113;
              v116 = v115;
              v118 = v117;
              v120 = v119;

              objc_msgSend_bounds(v106, v121, v122, v123, v124, v125);
              v215.origin.x = v126;
              v215.origin.y = v127;
              v215.size.width = v128;
              v215.size.height = v129;
              v214.origin.x = v114;
              v214.origin.y = v116;
              v214.size.width = v118;
              v214.size.height = v120;
              if (CGRectContainsRect(v214, v215))
              {
                objc_msgSend_addObject_(v89, v99, v106, v100, v101, v102);
                v135 = objc_msgSend_encodedStrokeIdentifier(v106, v130, v131, v132, v133, v134);
                objc_msgSend_addObject_(v95, v136, v135, v137, v138, v139);
              }
            }

            v103 = objc_msgSend_countByEnumeratingWithState_objects_count_(v96, v99, &v203, v207, 16, v102);
          }

          while (v103);
        }

        if (objc_msgSend_count(v89, v140, v141, v142, v143, v144))
        {
          objc_msgSend_addObject_(v201, v145, v89, v146, v147, v148);
          objc_msgSend_addObject_(v200, v149, v95, v150, v151, v152);
        }
      }

      if (objc_msgSend_count(v201, v84, v85, v86, v87, v88) && objc_msgSend_count(v200, v155, v156, v157, v158, v159))
      {
        for (k = 0; k < objc_msgSend_count(v201, v160, v161, v162, v163, v164); ++k)
        {
          v170 = objc_msgSend_objectAtIndexedSubscript_(v201, v166, k, v167, v168, v169);
          if (objc_msgSend_count(v170, v171, v172, v173, v174, v175))
          {
            v181 = objc_msgSend_allObjects(v170, v176, v177, v178, v179, v180);
            v186 = objc_msgSend_polygonForStrokes_(CHStrokeUtilities, v182, v181, v183, v184, v185);

            v191 = objc_msgSend_objectAtIndexedSubscript_(v200, v187, k, v188, v189, v190);
            objc_msgSend_setObject_forKey_(v199, v192, v191, v186, v193, v194);
          }
        }
      }

      v195 = v199;
    }

    else
    {
      v196 = v199;
    }

    v153 = v199;
  }

  else
  {
    v153 = v199;
    v154 = v199;
  }

  return v199;
}

+ (BOOL)isStroke:(id)stroke intersectingAnyPolygonInSet:(id)set
{
  v21 = *MEMORY[0x1E69E9840];
  strokeCopy = stroke;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  setCopy = set;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(setCopy, v7, &v16, v20, 16, v8);
  if (v12)
  {
    v13 = *v17;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(setCopy);
        }

        if (objc_msgSend_isStroke_intersectingPolygon_(CHStrokeUtilities, v9, strokeCopy, *(*(&v16 + 1) + 8 * i), v10, v11, v16))
        {
          LOBYTE(v12) = 1;
          goto LABEL_11;
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(setCopy, v9, &v16, v20, 16, v11);
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v12;
}

+ (void)principalComponentsForPoints:(const void *)points outFirstComponent:(CGVector *)component outSecondComponent:(CGVector *)secondComponent outMeanPoint:(CGPoint *)point
{
  if (component)
  {
    if (secondComponent)
    {
      goto LABEL_3;
    }

    goto LABEL_15;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v12 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v12, OS_LOG_TYPE_ERROR, "vector pointer for firstComponent should not be nil", buf, 2u);
  }

  if (qword_1EA84DC48 == -1)
  {
    v13 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  v13 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
LABEL_13:
    *buf = 0;
    _os_log_impl(&dword_18366B000, v13, OS_LOG_TYPE_FAULT, "vector pointer for firstComponent should not be nil", buf, 2u);
  }

LABEL_14:

  if (secondComponent)
  {
LABEL_3:
    if (point)
    {
      goto LABEL_4;
    }

    goto LABEL_23;
  }

LABEL_15:
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v14 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v14, OS_LOG_TYPE_ERROR, "vector pointer for secondComponent should not be nil", buf, 2u);
  }

  if (qword_1EA84DC48 == -1)
  {
    v15 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  v15 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
LABEL_21:
    *buf = 0;
    _os_log_impl(&dword_18366B000, v15, OS_LOG_TYPE_FAULT, "vector pointer for secondComponent should not be nil", buf, 2u);
  }

LABEL_22:

  if (point)
  {
LABEL_4:
    v10 = *points;
    v11 = *(points + 1);
    if (*points != v11)
    {
      goto LABEL_5;
    }

    goto LABEL_31;
  }

LABEL_23:
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v16 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v16, OS_LOG_TYPE_ERROR, "vector pointer for meanPoint should not be nil", buf, 2u);
  }

  if (qword_1EA84DC48 == -1)
  {
    v17 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  v17 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
  {
LABEL_29:
    *buf = 0;
    _os_log_impl(&dword_18366B000, v17, OS_LOG_TYPE_FAULT, "vector pointer for meanPoint should not be nil", buf, 2u);
  }

LABEL_30:

  v10 = *points;
  v11 = *(points + 1);
  if (*points != v11)
  {
LABEL_5:
    *buf = 0;
    v19 = 0;
    v20 = 0;
    if (!(((v11 - v10) >> 4) >> 62))
    {
      operator new();
    }

    sub_18369761C();
  }

LABEL_31:
  if (component && secondComponent && point)
  {
    *component = xmmword_1839CE630;
    *secondComponent = xmmword_1839CE640;
    point->x = 0.0;
    point->y = 0.0;
  }
}

+ (vector<float,)projectionForPoints:(id)points direction:(SEL)direction origin:(const void *)origin
{
  v7 = *origin;
  v6 = *(origin + 1);
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  if (v6 != v7)
  {
    if (!(((v6 - v7) >> 4) >> 62))
    {
      operator new();
    }

    sub_18369761C();
  }

  operator new();
}

+ (BOOL)linearScratchOutTestForPoints:(const void *)points direction:(const CGVector *)direction origin:(const CGPoint *)origin threshold:(float)threshold cutIndex:(int64_t *)index
{
  pointsCopy2 = points;
  if (!index)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v11 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v11, OS_LOG_TYPE_ERROR, "outCutIndex should be nonnull", buf, 2u);
    }

    if (qword_1EA84DC48 == -1)
    {
      v12 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
LABEL_9:

        pointsCopy2 = points;
        goto LABEL_10;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v12 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_9;
      }
    }

    *buf = 0;
    _os_log_impl(&dword_18366B000, v12, OS_LOG_TYPE_FAULT, "outCutIndex should be nonnull", buf, 2u);
    goto LABEL_9;
  }

LABEL_10:
  dy = 0.0;
  v32 = 0.0;
  objc_opt_self();
  v13 = -direction->dx;
  dy = direction->dy;
  v32 = v13;
  objc_msgSend_projectionForPoints_direction_origin_(CHStrokeUtilities, v14, pointsCopy2, &dy, origin, v15);
  sub_1836F62F4(&v27, CHStrokeUtilities, buf);
  memset(v26, 0, sizeof(v26));
  if (v30 != *buf)
  {
    if (((v30 - *buf) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_18369761C();
  }

  MEMORY[0x1865E6E50]();
  sub_1836F62F4(&v24, CHStrokeUtilities, v26);
  v21 = 0;
  __dst = 0;
  v23 = 0;
  v16 = ((v25 - v24) >> 3) + ((v28 - v27) >> 3);
  if (v16)
  {
    if (!(v16 >> 61))
    {
      operator new();
    }

    sub_1836D58DC();
  }

  sub_1836FA2A0(&v21, 0, v27, v28, (v28 - v27) >> 3);
  sub_1836FA2A0(&v21, __dst, v24, v25, (v25 - v24) >> 3);
  std::__sort<std::__less<unsigned long,unsigned long> &,unsigned long *>();
  if (v21 != __dst)
  {
    operator new();
  }

  __C = 0;
  __D = 0;
  vDSP_nzcros(0, 1, 0, &__C, &__D, 0);
  *index = 0x7FFFFFFFFFFFFFFFLL;
  if (v21)
  {
    __dst = v21;
    operator delete(v21);
  }

  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  if (v26[0])
  {
    operator delete(v26[0]);
  }

  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }

  if (*buf)
  {
    v30 = *buf;
    operator delete(*buf);
  }

  return 1;
}

+ (BOOL)linearScratchOutTestForPoints:(const void *)points threshold:(float)threshold cutIndex:(int64_t *)index
{
  if (!index)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v8 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v8, OS_LOG_TYPE_ERROR, "outCutIndex should be nonnull", buf, 2u);
    }

    if (qword_1EA84DC48 == -1)
    {
      v9 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
LABEL_9:

        goto LABEL_10;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v9 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_9;
      }
    }

    *buf = 0;
    _os_log_impl(&dword_18366B000, v9, OS_LOG_TYPE_FAULT, "outCutIndex should be nonnull", buf, 2u);
    goto LABEL_9;
  }

LABEL_10:
  objc_msgSend_principalComponentsForPoints_outFirstComponent_outSecondComponent_outMeanPoint_(CHStrokeUtilities, a2, points, buf, v21, v20);
  v19 = 0x7FFFFFFFFFFFFFFFLL;
  *&v10 = threshold;
  if (objc_msgSend_linearScratchOutTestForPoints_direction_origin_threshold_cutIndex_(CHStrokeUtilities, v11, points, buf, v20, &v19, v10))
  {
    LOBYTE(v14) = 1;
    v15 = v19;
  }

  else
  {
    v18 = 0x7FFFFFFFFFFFFFFFLL;
    *&v13 = threshold;
    v14 = objc_msgSend_linearScratchOutTestForPoints_direction_origin_threshold_cutIndex_(CHStrokeUtilities, v12, points, v21, v20, &v18, v13);
    if (v14)
    {
      v16 = &v18;
    }

    else
    {
      v16 = &v19;
    }

    v15 = *v16;
  }

  *index = v15;
  return v14;
}

+ (vector<_NSRange,)segmentationRangesForScratchOutPoints:(id)points
{
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  operator new();
}

+ (id)polygonSetForScratchOutStroke:(id)stroke
{
  strokeCopy = stroke;
  v9 = objc_msgSend_set(MEMORY[0x1E695DFA8], v4, v5, v6, v7, v8);
  v50 = 0;
  v51 = &v50;
  v52 = 0x4812000000;
  v53 = sub_1836F0B5C;
  v54 = sub_1836F0B80;
  v55 = &unk_183A5AC72;
  v57 = 0;
  v58 = 0;
  v56 = 0;
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = sub_1836F8930;
  v49[3] = &unk_1E6DDCAC0;
  v49[4] = &v50;
  objc_msgSend_enumeratePointsForStroke_interpolationType_resolution_usingBlock_(CHStrokeUtilities, v10, strokeCopy, 0, 0, v49);
  objc_msgSend_segmentationRangesForScratchOutPoints_(CHStrokeUtilities, v11, (v51 + 6), v12, v13, v14);
  v19 = v47;
  v20 = v48;
  if (v47 != v48)
  {
    v41 = strokeCopy;
    do
    {
      v21 = v19[1];
      v45 = 0;
      v46 = 0;
      v44 = 0;
      if (v21)
      {
        if (((16 * v21) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_18369761C();
      }

      objc_msgSend_convexHullForPoints_(CHStrokeUtilities, v15, &v44, v16, v17, v18, v41);
      v22 = __p;
      v23 = v43;
      v24 = v43 - 16;
      if (__p != v43 && v24 > __p)
      {
        v26 = __p + 16;
        do
        {
          v27 = *(v26 - 1);
          *(v26 - 1) = *v24;
          *v24 = v27;
          v24 -= 16;
          v28 = v26 >= v24;
          v26 += 16;
        }

        while (!v28);
        v22 = __p;
        v23 = v43;
      }

      v29 = malloc_type_calloc((v23 - v22) >> 4, 0x10uLL, 0x1000040451B5BE8uLL);
      memcpy(v29, __p, v43 - __p);
      v30 = [CHPolygon alloc];
      v34 = objc_msgSend_initWithVertices_vertexCount_(v30, v31, v29, (v43 - __p) >> 4, v32, v33);
      objc_msgSend_addObject_(v9, v35, v34, v36, v37, v38);

      if (__p)
      {
        v43 = __p;
        operator delete(__p);
      }

      if (v44)
      {
        v45 = v44;
        operator delete(v44);
      }

      v19 += 2;
    }

    while (v19 != v20);
    v19 = v47;
    strokeCopy = v41;
  }

  v39 = v9;
  if (v19)
  {
    v48 = v19;
    operator delete(v19);
  }

  _Block_object_dispose(&v50, 8);
  if (v56)
  {
    v57 = v56;
    operator delete(v56);
  }

  return v39;
}

@end