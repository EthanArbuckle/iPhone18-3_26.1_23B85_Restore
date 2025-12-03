@interface CHMathStrokeGroupingStrategy
- (CHMathStrokeGroupingStrategy)initWithStrokeProvider:(id)provider;
- (id)recognizableDrawingForStrokeGroup:(id)group translationVector:(CGVector)vector originalDrawing:(id *)drawing orderedStrokesIDs:(id *)ds rescalingFactor:(double *)factor replacementStrokeGroup:(id *)strokeGroup;
@end

@implementation CHMathStrokeGroupingStrategy

- (CHMathStrokeGroupingStrategy)initWithStrokeProvider:(id)provider
{
  providerCopy = provider;
  v10.receiver = self;
  v10.super_class = CHMathStrokeGroupingStrategy;
  v5 = [(CHStrokeGroupingStrategy *)&v10 initWithStrokeProvider:providerCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    strategyIdentifier = v5->_strategyIdentifier;
    v5->_strategyIdentifier = v7;
  }

  return v5;
}

- (id)recognizableDrawingForStrokeGroup:(id)group translationVector:(CGVector)vector originalDrawing:(id *)drawing orderedStrokesIDs:(id *)ds rescalingFactor:(double *)factor replacementStrokeGroup:(id *)strokeGroup
{
  v110 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  v16 = objc_msgSend_strokeIdentifiers(groupCopy, v11, v12, v13, v14, v15);
  v22 = objc_msgSend_allObjects(v16, v17, v18, v19, v20, v21);
  factorCopy = factor;
  strokeGroupCopy = strokeGroup;
  v108[0] = MEMORY[0x1E69E9820];
  v108[1] = 3221225472;
  v108[2] = sub_1837BFCF8;
  v108[3] = &unk_1E6DDCA70;
  v108[4] = self;
  v99 = objc_msgSend_sortedArrayUsingComparator_(v22, v23, v108, v24, v25, v26);

  v31 = objc_msgSend_strokesForIdentifiers_(self, v27, v99, v28, v29, v30);
  if (drawing)
  {
    v32 = objc_alloc_init(CHDrawing);
  }

  else
  {
    v32 = 0;
  }

  v33 = objc_alloc_init(CHDrawing);
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  obj = v31;
  v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v34, &v104, v109, 16, v35, v31);
  if (v36)
  {
    v37 = *v105;
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v105 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v39 = *(*(&v104 + 1) + 8 * i);
        v40 = objc_opt_class();
        v101[0] = MEMORY[0x1E69E9820];
        v101[1] = 3221225472;
        v101[2] = sub_1837BFE24;
        v101[3] = &unk_1E6DDE398;
        v41 = v32;
        v102 = v41;
        v42 = v33;
        v103 = v42;
        objc_msgSend_enumeratePointsForStroke_interpolationType_resolution_usingBlock_(v40, v43, v39, 0, 1, v101);
        if (v32)
        {
          objc_msgSend_endStroke(v41, v44, v45, v46, v47, v48);
          objc_msgSend_startTimestamp(v39, v49, v50, v51, v52, v53);
          objc_msgSend_addStartTime_(v41, v54, v55, v56, v57, v58);
          objc_msgSend_endTimestamp(v39, v59, v60, v61, v62, v63);
          objc_msgSend_addEndTime_(v41, v64, v65, v66, v67, v68);
        }

        objc_msgSend_endStroke(v42, v44, v45, v46, v47, v48);
        objc_msgSend_startTimestamp(v39, v69, v70, v71, v72, v73);
        objc_msgSend_addStartTime_(v42, v74, v75, v76, v77, v78);
        objc_msgSend_endTimestamp(v39, v79, v80, v81, v82, v83);
        objc_msgSend_addEndTime_(v42, v84, v85, v86, v87, v88);
      }

      v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v89, &v104, v109, 16, v90);
    }

    while (v36);
  }

  if (drawing)
  {
    v91 = v32;
    *drawing = v32;
  }

  if (ds)
  {
    v92 = v99;
    *ds = v99;
  }

  if (factorCopy)
  {
    *factorCopy = 1.0;
  }

  if (strokeGroupCopy)
  {
    *strokeGroupCopy = 0;
  }

  return v33;
}

@end