@interface CHStrokeVisualization
- (void)drawStrokesFromStrokeProvider:(id)provider inRect:(CGRect)rect context:(CGContext *)context;
- (void)drawVisualizationInRect:(CGRect)rect context:(CGContext *)context viewBounds:(CGRect)bounds;
- (void)recognitionSessionDidUpdateRecognitionResult;
@end

@implementation CHStrokeVisualization

- (void)recognitionSessionDidUpdateRecognitionResult
{
  v95 = *MEMORY[0x1E69E9840];
  if (!self || (strokeProviderDrawn = self->__strokeProviderDrawn, self->__strokeProviderDrawn = 0, strokeProviderDrawn, !strokeProviderDrawn))
  {
    v76 = objc_msgSend_delegate(self, a2, v2, v3, v4, v5);
    objc_msgSend_visualizationNeedsDisplay_(v76, v81, self, v82, v83, v84);
    goto LABEL_20;
  }

  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v12 = objc_msgSend_recognitionSession(self, a2, v2, v3, v4, v5);
  v18 = objc_msgSend_lastRecognitionResult(v12, v13, v14, v15, v16, v17);
  v24 = objc_msgSend_strokeGroupingResult(v18, v19, v20, v21, v22, v23);

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v30 = objc_msgSend_createdStrokeGroups(v24, v25, v26, v27, v28, v29);
  v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v89, v94, 16, v32);
  if (v33)
  {
    v39 = v33;
    v40 = *v90;
    do
    {
      v41 = 0;
      do
      {
        if (*v90 != v40)
        {
          objc_enumerationMutation(v30);
        }

        objc_msgSend_bounds(*(*(&v89 + 1) + 8 * v41), v34, v35, v36, v37, v38);
        v103.origin.x = v42;
        v103.origin.y = v43;
        v103.size.width = v44;
        v103.size.height = v45;
        v96.origin.x = x;
        v96.origin.y = y;
        v96.size.width = width;
        v96.size.height = height;
        v97 = CGRectUnion(v96, v103);
        x = v97.origin.x;
        y = v97.origin.y;
        width = v97.size.width;
        height = v97.size.height;
        ++v41;
      }

      while (v39 != v41);
      v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v34, &v89, v94, 16, v38);
    }

    while (v39);
  }

  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v51 = objc_msgSend_deletedStrokeGroups(v24, v46, v47, v48, v49, v50, 0);
  v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v51, v52, &v85, v93, 16, v53);
  if (v54)
  {
    v60 = v54;
    v61 = *v86;
    do
    {
      v62 = 0;
      do
      {
        if (*v86 != v61)
        {
          objc_enumerationMutation(v51);
        }

        objc_msgSend_bounds(*(*(&v85 + 1) + 8 * v62), v55, v56, v57, v58, v59);
        v104.origin.x = v63;
        v104.origin.y = v64;
        v104.size.width = v65;
        v104.size.height = v66;
        v98.origin.x = x;
        v98.origin.y = y;
        v98.size.width = width;
        v98.size.height = height;
        v99 = CGRectUnion(v98, v104);
        x = v99.origin.x;
        y = v99.origin.y;
        width = v99.size.width;
        height = v99.size.height;
        ++v62;
      }

      while (v60 != v62);
      v60 = objc_msgSend_countByEnumeratingWithState_objects_count_(v51, v55, &v85, v93, 16, v59);
    }

    while (v60);
  }

  v100.origin.x = x;
  v100.origin.y = y;
  v100.size.width = width;
  v100.size.height = height;
  v101 = CGRectInset(v100, -1.0, -1.0);
  v67 = v101.origin.x;
  v68 = v101.origin.y;
  v69 = v101.size.width;
  v70 = v101.size.height;

  v102.origin.x = v67;
  v102.origin.y = v68;
  v102.size.width = v69;
  v102.size.height = v70;
  if (!CGRectIsEmpty(v102))
  {
    v76 = objc_msgSend_delegate(self, v71, v72, v73, v74, v75);
    objc_msgSend_visualization_needsDisplayInRect_(v76, v77, self, v78, v79, v80, v67, v68, v69, v70);
LABEL_20:
  }
}

- (void)drawVisualizationInRect:(CGRect)rect context:(CGContext *)context viewBounds:(CGRect)bounds
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v27.receiver = self;
  v27.super_class = CHStrokeVisualization;
  [(CHVisualization *)&v27 drawVisualizationInRect:rect.origin.x context:rect.origin.y viewBounds:rect.size.width, rect.size.height, bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  if (self)
  {
    strokeProviderDrawn = self->__strokeProviderDrawn;
    if (strokeProviderDrawn)
    {
      goto LABEL_5;
    }
  }

  v16 = objc_msgSend_recognitionSession(self, v11, strokeProviderDrawn, v13, v14, v15);
  v22 = objc_msgSend_latestStrokeProvider(v16, v17, v18, v19, v20, v21);
  v23 = v22;
  if (self)
  {
    objc_storeStrong(&self->__strokeProviderDrawn, v22);

    strokeProviderDrawn = self->__strokeProviderDrawn;
LABEL_5:
    objc_msgSend_drawStrokesFromStrokeProvider_inRect_context_(self, v11, strokeProviderDrawn, context, v14, v15, x, y, width, height);
    return;
  }

  objc_msgSend_drawStrokesFromStrokeProvider_inRect_context_(0, v24, 0, context, v25, v26, x, y, width, height);
}

- (void)drawStrokesFromStrokeProvider:(id)provider inRect:(CGRect)rect context:(CGContext *)context
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v42 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  *components = xmmword_1839DA110;
  v41 = unk_1839DA120;
  v12 = CGColorCreate(DeviceRGB, components);
  CGContextSetStrokeColorWithColor(context, v12);
  CGColorRelease(v12);
  CGColorSpaceRelease(DeviceRGB);
  CGContextSetLineWidth(context, 1.0);
  *lengths = xmmword_1839CE6F0;
  CGContextSetLineDash(context, 0.0, lengths, 2uLL);
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v18 = objc_msgSend_orderedStrokes(providerCopy, v13, v14, v15, v16, v17, 0);
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v34, v38, 16, v20);
  if (v21)
  {
    v27 = v21;
    v28 = *v35;
    do
    {
      v29 = 0;
      do
      {
        if (*v35 != v28)
        {
          objc_enumerationMutation(v18);
        }

        objc_msgSend_bounds(*(*(&v34 + 1) + 8 * v29), v22, v23, v24, v25, v26);
        v30 = v43.origin.x;
        v31 = v43.origin.y;
        v32 = v43.size.width;
        v33 = v43.size.height;
        v45.origin.x = x;
        v45.origin.y = y;
        v45.size.width = width;
        v45.size.height = height;
        if (CGRectIntersectsRect(v43, v45))
        {
          v44.origin.x = v30;
          v44.origin.y = v31;
          v44.size.width = v32;
          v44.size.height = v33;
          CGContextStrokeRect(context, v44);
        }

        ++v29;
      }

      while (v27 != v29);
      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v22, &v34, v38, 16, v26);
    }

    while (v27);
  }
}

@end