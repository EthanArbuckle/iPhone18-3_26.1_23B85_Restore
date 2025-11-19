@interface CHStrokeGroupingVisualization
- (CGColor)newColorForStrokeInGroup:(id)a3;
- (CGRect)dirtyRectForStrokeGroup:(id)a3;
- (void)drawVisualizationInRect:(CGRect)a3 context:(CGContext *)a4 viewBounds:(CGRect)a5;
@end

@implementation CHStrokeGroupingVisualization

- (CGRect)dirtyRectForStrokeGroup:(id)a3
{
  v3.receiver = self;
  v3.super_class = CHStrokeGroupingVisualization;
  [(CHStrokeGroupBasedVisualization *)&v3 dirtyRectForStrokeGroup:a3];
  return CGRectInset(v4, -1.5, -1.5);
}

- (void)drawVisualizationInRect:(CGRect)a3 context:(CGContext *)a4 viewBounds:(CGRect)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v105 = *MEMORY[0x1E69E9840];
  v102.receiver = self;
  v102.super_class = CHStrokeGroupingVisualization;
  [(CHStrokeGroupBasedVisualization *)&v102 drawVisualizationInRect:a3.origin.x context:a3.origin.y viewBounds:a3.size.width, a3.size.height, a5.origin.x, a5.origin.y, a5.size.width, a5.size.height];
  v16 = objc_msgSend_recognitionSession(self, v11, v12, v13, v14, v15);
  v92 = objc_msgSend_latestStrokeProvider(v16, v17, v18, v19, v20, v21);

  v90 = self;
  v27 = objc_msgSend_resultDrawn(self, v22, v23, v24, v25, v26);
  v33 = objc_msgSend_strokeGroupingResult(v27, v28, v29, v30, v31, v32);

  v85 = v33;
  v39 = objc_msgSend_strokeGroups(v33, v34, v35, v36, v37, v38);
  v45 = objc_msgSend_allObjects(v39, v40, v41, v42, v43, v44);
  v49 = objc_msgSend_sortedArrayWithOptions_usingComparator_(v45, v46, 1, &unk_1EF1BDFB0, v47, v48);

  space = CGColorSpaceCreateDeviceRGB();
  color = CGColorCreate(space, dbl_1839D0118);
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  obj = v49;
  v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v50, &v98, v104, 16, v51);
  if (v52)
  {
    v58 = v52;
    v59 = *v99;
    v86 = *v99;
    do
    {
      v60 = 0;
      v87 = v58;
      do
      {
        if (*v99 != v59)
        {
          objc_enumerationMutation(obj);
        }

        v61 = *(*(&v98 + 1) + 8 * v60);
        objc_msgSend_bounds(v61, v53, v54, v55, v56, v57);
        v107.origin.x = x;
        v107.origin.y = y;
        v107.size.width = width;
        v107.size.height = height;
        if (CGRectIntersectsRect(v106, v107))
        {
          v89 = v60;
          v96 = 0u;
          v97 = 0u;
          v94 = 0u;
          v95 = 0u;
          v62 = objc_msgSend_strokeIdentifiers(v61, v53, v54, v55, v56, v57);
          v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(v62, v63, &v94, v103, 16, v64);
          if (v65)
          {
            v66 = v65;
            v67 = *v95;
            do
            {
              for (i = 0; i != v66; ++i)
              {
                if (*v95 != v67)
                {
                  objc_enumerationMutation(v62);
                }

                v71 = *(*(&v94 + 1) + 8 * i);
                v72 = objc_opt_class();
                v76 = objc_msgSend_strokeForIdentifier_inStrokeProvider_(v72, v73, v71, v92, v74, v75);
                if (v76)
                {
                  Mutable = CGPathCreateMutable();
                  v93[0] = MEMORY[0x1E69E9820];
                  v93[1] = 3221225472;
                  v93[2] = sub_1837B8CFC;
                  v93[3] = &unk_1E6DDE2D8;
                  v93[4] = Mutable;
                  objc_msgSend_enumeratePointsForStroke_interpolationType_resolution_usingBlock_(CHStrokeUtilities, v78, v76, 1, 1, v93);
                  CGContextSetStrokeColorWithColor(a4, color);
                  CGContextSetLineWidth(a4, 3.0);
                  CGContextAddPath(a4, Mutable);
                  CGContextStrokePath(a4);
                  CGContextSetLineWidth(a4, 1.5);
                  v83 = objc_msgSend_newColorForStrokeInGroup_(v90, v79, v61, v80, v81, v82);
                  CGContextSetStrokeColorWithColor(a4, v83);
                  CGContextAddPath(a4, Mutable);
                  CGContextStrokePath(a4);
                  CGColorRelease(v83);
                  CGPathRelease(Mutable);
                }
              }

              v66 = objc_msgSend_countByEnumeratingWithState_objects_count_(v62, v69, &v94, v103, 16, v70);
            }

            while (v66);
          }

          v59 = v86;
          v58 = v87;
          v60 = v89;
        }

        ++v60;
      }

      while (v60 != v58);
      v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v53, &v98, v104, 16, v57);
    }

    while (v58);
  }

  CGColorSpaceRelease(space);
  CGColorRelease(color);
}

- (CGColor)newColorForStrokeInGroup:(id)a3
{
  v4 = a3;
  v10 = objc_msgSend_delegate(self, v5, v6, v7, v8, v9);
  v15 = objc_msgSend_visualizationIndexForStrokeGroup_(v10, v11, v4, v12, v13, v14);

  return objc_msgSend_newColorForVisualizedItemAtIndex_(CHVisualizationManager, v16, v15, v17, v18, v19);
}

@end