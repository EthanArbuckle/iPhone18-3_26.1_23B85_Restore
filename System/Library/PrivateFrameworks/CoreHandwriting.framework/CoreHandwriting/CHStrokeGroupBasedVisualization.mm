@interface CHStrokeGroupBasedVisualization
- (CGRect)dirtyRectForStrokeGroup:(id)group;
- (void)drawVisualizationInRect:(CGRect)rect context:(CGContext *)context viewBounds:(CGRect)bounds;
- (void)recognitionSessionDidUpdateRecognitionResult;
- (void)toggleVisualizationRegionAtPoint:(CGPoint)point;
@end

@implementation CHStrokeGroupBasedVisualization

- (CGRect)dirtyRectForStrokeGroup:(id)group
{
  objc_msgSend_bounds(group, a2, group, v3, v4, v5);
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (void)recognitionSessionDidUpdateRecognitionResult
{
  v106 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_resultDrawn(self, a2, v2, v3, v4, v5);

  if (self)
  {
    resultDrawn = self->_resultDrawn;
    self->_resultDrawn = 0;
  }

  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v18 = objc_msgSend_recognitionSession(self, v8, v9, v10, v11, v12);
  v24 = objc_msgSend_lastRecognitionResult(v18, v19, v20, v21, v22, v23);

  v30 = objc_msgSend_strokeGroupingResult(v24, v25, v26, v27, v28, v29);
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v36 = objc_msgSend_createdStrokeGroups(v30, v31, v32, v33, v34, v35);
  v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v37, &v100, v105, 16, v38);
  if (v39)
  {
    v44 = v39;
    v45 = *v101;
    do
    {
      v46 = 0;
      do
      {
        if (*v101 != v45)
        {
          objc_enumerationMutation(v36);
        }

        objc_msgSend_dirtyRectForStrokeGroup_(self, v40, *(*(&v100 + 1) + 8 * v46), v41, v42, v43);
        v112.origin.x = v47;
        v112.origin.y = v48;
        v112.size.width = v49;
        v112.size.height = v50;
        v107.origin.x = x;
        v107.origin.y = y;
        v107.size.width = width;
        v107.size.height = height;
        v108 = CGRectUnion(v107, v112);
        x = v108.origin.x;
        y = v108.origin.y;
        width = v108.size.width;
        height = v108.size.height;
        ++v46;
      }

      while (v44 != v46);
      v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v40, &v100, v105, 16, v43);
    }

    while (v44);
  }

  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v56 = objc_msgSend_deletedStrokeGroups(v30, v51, v52, v53, v54, v55, 0);
  v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(v56, v57, &v96, v104, 16, v58);
  if (v59)
  {
    v64 = v59;
    v65 = *v97;
    do
    {
      v66 = 0;
      do
      {
        if (*v97 != v65)
        {
          objc_enumerationMutation(v56);
        }

        objc_msgSend_dirtyRectForStrokeGroup_(self, v60, *(*(&v96 + 1) + 8 * v66), v61, v62, v63);
        v113.origin.x = v67;
        v113.origin.y = v68;
        v113.size.width = v69;
        v113.size.height = v70;
        v109.origin.x = x;
        v109.origin.y = y;
        v109.size.width = width;
        v109.size.height = height;
        v110 = CGRectUnion(v109, v113);
        x = v110.origin.x;
        y = v110.origin.y;
        width = v110.size.width;
        height = v110.size.height;
        ++v66;
      }

      while (v64 != v66);
      v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(v56, v60, &v96, v104, 16, v63);
    }

    while (v64);
  }

  if (objc_msgSend_newGroupsDefaultToActive(self, v71, v72, v73, v74, v75))
  {
    v81 = objc_msgSend_createdStrokeGroups(v30, v76, v77, v78, v79, v80);
    sub_1838B3228(self, v81);
  }

  if (!v7)
  {
    v87 = objc_msgSend_delegate(self, v76, v77, v78, v79, v80);
    objc_msgSend_visualizationNeedsDisplay_(v87, v92, self, v93, v94, v95);
    goto LABEL_23;
  }

  v111.origin.x = x;
  v111.origin.y = y;
  v111.size.width = width;
  v111.size.height = height;
  if (!CGRectIsEmpty(v111))
  {
    v87 = objc_msgSend_delegate(self, v82, v83, v84, v85, v86);
    objc_msgSend_visualization_needsDisplayInRect_(v87, v88, self, v89, v90, v91, x, y, width, height);
LABEL_23:
  }
}

- (void)drawVisualizationInRect:(CGRect)rect context:(CGContext *)context viewBounds:(CGRect)bounds
{
  v9 = objc_msgSend_resultDrawn(self, a2, context, v5, v6, v7, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height, bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height);

  if (!v9)
  {
    v15 = objc_msgSend_recognitionSession(self, v10, v11, v12, v13, v14);
    v21 = objc_msgSend_lastRecognitionResult(v15, v16, v17, v18, v19, v20);
    if (self)
    {
      objc_storeStrong(&self->_resultDrawn, v21);
    }

    if (objc_msgSend_newGroupsDefaultToActive(self, v22, v23, v24, v25, v26))
    {
      v44 = objc_msgSend_resultDrawn(self, v27, v28, v29, v30, v31);
      v37 = objc_msgSend_strokeGroupingResult(v44, v32, v33, v34, v35, v36);
      v43 = objc_msgSend_strokeGroups(v37, v38, v39, v40, v41, v42);
      sub_1838B3228(self, v43);
    }
  }
}

- (void)toggleVisualizationRegionAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v104 = *MEMORY[0x1E69E9840];
  v10 = objc_msgSend_activeStrokeGroupAncestorIdentifiers(self, a2, v3, v4, v5, v6);
  v16 = objc_msgSend_mutableCopy(v10, v11, v12, v13, v14, v15);

  if (!v16)
  {
    v16 = objc_msgSend_set(MEMORY[0x1E695DFA8], v17, v18, v19, v20, v21);
  }

  v22 = MEMORY[0x1E695F050];
  v23 = objc_msgSend_resultDrawn(self, v17, v18, v19, v20, v21);

  if (!v23)
  {
    v29 = objc_msgSend_recognitionSession(self, v24, v25, v26, v27, v28);
    v35 = objc_msgSend_lastRecognitionResult(v29, v30, v31, v32, v33, v34);
    if (self)
    {
      objc_storeStrong(&self->_resultDrawn, v35);
    }
  }

  v37 = *v22;
  v36 = v22[1];
  width = v22[2];
  height = v22[3];
  v40 = objc_msgSend_resultDrawn(self, v24, v25, v26, v27, v28);
  v46 = objc_msgSend_strokeGroupingResult(v40, v41, v42, v43, v44, v45);

  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v52 = objc_msgSend_strokeGroups(v46, v47, v48, v49, v50, v51, 0);
  v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(v52, v53, &v99, v103, 16, v54);
  if (v55)
  {
    v61 = v55;
    v62 = *v100;
    do
    {
      for (i = 0; i != v61; ++i)
      {
        if (*v100 != v62)
        {
          objc_enumerationMutation(v52);
        }

        v72 = *(*(&v99 + 1) + 8 * i);
        objc_msgSend_bounds(v72, v56, v57, v58, v59, v60);
        v105.x = x;
        v105.y = y;
        if (CGRectContainsPoint(v108, v105))
        {
          v73 = MEMORY[0x1E696AD98];
          v74 = objc_msgSend_ancestorIdentifier(v72, v56, v57, v58, v59, v60);
          v79 = objc_msgSend_numberWithInteger_(v73, v75, v74, v76, v77, v78);
          if (objc_msgSend_containsObject_(v16, v80, v79, v81, v82, v83))
          {
            objc_msgSend_removeObject_(v16, v84, v79, v85, v86, v87);
          }

          else
          {
            objc_msgSend_addObject_(v16, v84, v79, v85, v86, v87);
          }

          objc_msgSend_dirtyRectForStrokeGroup_(self, v64, v72, v65, v66, v67);
          v110.origin.x = v68;
          v110.origin.y = v69;
          v110.size.width = v70;
          v110.size.height = v71;
          v106.origin.x = v37;
          v106.origin.y = v36;
          v106.size.width = width;
          v106.size.height = height;
          v107 = CGRectUnion(v106, v110);
          v37 = v107.origin.x;
          v36 = v107.origin.y;
          width = v107.size.width;
          height = v107.size.height;
        }
      }

      v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v52, v56, &v99, v103, 16, v60);
    }

    while (v61);
  }

  if (self)
  {
    objc_setProperty_nonatomic_copy(self, v88, v16, 40);
  }

  v109.origin.x = v37;
  v109.origin.y = v36;
  v109.size.width = width;
  v109.size.height = height;
  if (!CGRectIsNull(v109))
  {
    v94 = objc_msgSend_delegate(self, v89, v90, v91, v92, v93);
    objc_msgSend_visualization_needsDisplayInRect_(v94, v95, self, v96, v97, v98, v37, v36, width, height);
  }
}

@end