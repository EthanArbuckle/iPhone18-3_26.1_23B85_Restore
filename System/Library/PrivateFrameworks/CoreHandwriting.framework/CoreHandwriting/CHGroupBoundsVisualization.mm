@interface CHGroupBoundsVisualization
- (CGRect)dirtyRectForStrokeGroup:(id)group;
- (void)drawVisualizationInRect:(CGRect)rect context:(CGContext *)context viewBounds:(CGRect)bounds;
@end

@implementation CHGroupBoundsVisualization

- (CGRect)dirtyRectForStrokeGroup:(id)group
{
  v3.receiver = self;
  v3.super_class = CHGroupBoundsVisualization;
  [(CHStrokeGroupBasedVisualization *)&v3 dirtyRectForStrokeGroup:group];
  return CGRectInset(v4, -2.0, -2.0);
}

- (void)drawVisualizationInRect:(CGRect)rect context:(CGContext *)context viewBounds:(CGRect)bounds
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v74 = *MEMORY[0x1E69E9840];
  v71.receiver = self;
  v71.super_class = CHGroupBoundsVisualization;
  [(CHStrokeGroupBasedVisualization *)&v71 drawVisualizationInRect:rect.origin.x context:rect.origin.y viewBounds:rect.size.width, rect.size.height, bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  v16 = objc_msgSend_resultDrawn(self, v11, v12, v13, v14, v15);
  v22 = objc_msgSend_strokeGroupingResult(v16, v17, v18, v19, v20, v21);

  v28 = objc_msgSend_strokeGroups(v22, v23, v24, v25, v26, v27);
  v34 = objc_msgSend_allObjects(v28, v29, v30, v31, v32, v33);
  v38 = objc_msgSend_sortedArrayWithOptions_usingComparator_(v34, v35, 1, &unk_1EF1BF320, v36, v37);

  CGContextSetLineWidth(context, 2.0);
  *lengths = xmmword_1839CE6F0;
  CGContextSetLineDash(context, 0.0, lengths, 2uLL);
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v39 = v38;
  v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v40, &v67, v72, 16, v41);
  if (v42)
  {
    v48 = v42;
    v49 = *v68;
    do
    {
      for (i = 0; i != v48; ++i)
      {
        if (*v68 != v49)
        {
          objc_enumerationMutation(v39);
        }

        v51 = *(*(&v67 + 1) + 8 * i);
        objc_msgSend_bounds(v51, v43, v44, v45, v46, v47, v67);
        v52 = v75.origin.x;
        v53 = v75.origin.y;
        v54 = v75.size.width;
        v55 = v75.size.height;
        v77.origin.x = x;
        v77.origin.y = y;
        v77.size.width = width;
        v77.size.height = height;
        if (CGRectIntersectsRect(v75, v77))
        {
          v56 = objc_msgSend_delegate(self, v43, v44, v45, v46, v47);
          v61 = objc_msgSend_visualizationIndexForStrokeGroup_(v56, v57, v51, v58, v59, v60);

          v66 = objc_msgSend_newColorForVisualizedItemAtIndex_(CHVisualizationManager, v62, v61, v63, v64, v65);
          CGContextSetStrokeColorWithColor(context, v66);
          CGColorRelease(v66);
          v76.origin.x = v52;
          v76.origin.y = v53;
          v76.size.width = v54;
          v76.size.height = v55;
          CGContextStrokeRect(context, v76);
        }
      }

      v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v43, &v67, v72, 16, v47);
    }

    while (v48);
  }
}

@end