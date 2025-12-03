@interface CHSubstrokeBoundsVisualization
- (CGRect)dirtyRectForStrokeGroup:(id)group;
- (void)drawVisualizationInRect:(CGRect)rect context:(CGContext *)context viewBounds:(CGRect)bounds;
@end

@implementation CHSubstrokeBoundsVisualization

- (CGRect)dirtyRectForStrokeGroup:(id)group
{
  v3.receiver = self;
  v3.super_class = CHSubstrokeBoundsVisualization;
  [(CHStrokeGroupBasedVisualization *)&v3 dirtyRectForStrokeGroup:group];
  return CGRectInset(v4, -2.0, -2.0);
}

- (void)drawVisualizationInRect:(CGRect)rect context:(CGContext *)context viewBounds:(CGRect)bounds
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v81 = *MEMORY[0x1E69E9840];
  v77.receiver = self;
  v77.super_class = CHSubstrokeBoundsVisualization;
  [(CHStrokeGroupBasedVisualization *)&v77 drawVisualizationInRect:rect.origin.x context:rect.origin.y viewBounds:rect.size.width, rect.size.height, bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  v16 = objc_msgSend_resultDrawn(self, v11, v12, v13, v14, v15);
  v67 = objc_msgSend_strokeGroupingResult(v16, v17, v18, v19, v20, v21);

  v27 = objc_msgSend_strokeGroups(v67, v22, v23, v24, v25, v26);
  v33 = objc_msgSend_allObjects(v27, v28, v29, v30, v31, v32);
  v66 = objc_msgSend_sortedArrayWithOptions_usingComparator_(v33, v34, 1, &unk_1EF1BDE68, v35, v36);

  CGContextSetLineWidth(context, 2.0);
  *lengths = xmmword_1839CE6F0;
  CGContextSetLineDash(context, 0.0, lengths, 2uLL);
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  obj = v66;
  v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v37, &v73, v79, 16, v38);
  if (v44)
  {
    v45 = *v74;
    do
    {
      for (i = 0; i != v44; ++i)
      {
        if (*v74 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v47 = *(*(&v73 + 1) + 8 * i);
        objc_msgSend_bounds(v47, v39, v40, v41, v42, v43);
        v84.origin.x = x;
        v84.origin.y = y;
        v84.size.width = width;
        v84.size.height = height;
        if (CGRectIntersectsRect(v82, v84))
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v48 = v47;
            v54 = objc_msgSend_writingDirectionSortedSubstrokes(v48, v49, v50, v51, v52, v53);
            v71 = 0u;
            v72 = 0u;
            v69 = 0u;
            v70 = 0u;
            v55 = v54;
            v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v56, &v69, v78, 16, v57);
            if (v63)
            {
              v64 = *v70;
              do
              {
                for (j = 0; j != v63; ++j)
                {
                  if (*v70 != v64)
                  {
                    objc_enumerationMutation(v55);
                  }

                  objc_msgSend_rotatedBounds(*(*(&v69 + 1) + 8 * j), v58, v59, v60, v61, v62);
                  CGContextStrokeRect(context, v83);
                }

                v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v58, &v69, v78, 16, v62);
              }

              while (v63);
            }
          }
        }
      }

      v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v39, &v73, v79, 16, v43);
    }

    while (v44);
  }
}

@end