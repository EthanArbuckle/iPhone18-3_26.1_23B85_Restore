@interface CHPrincipalLinesVisualization
- (CGRect)dirtyRectForStrokeGroup:(id)a3;
- (void)drawVisualizationInRect:(CGRect)a3 context:(CGContext *)a4 viewBounds:(CGRect)a5;
@end

@implementation CHPrincipalLinesVisualization

- (CGRect)dirtyRectForStrokeGroup:(id)a3
{
  objc_msgSend_bounds(a3, a2, a3, v3, v4, v5);
  result = CGRectInset(v8, -22.0, -22.0);
  v6 = result.size.height + 13.0;
  v7 = result.size.width + 7.0;
  result.size.height = v6;
  result.size.width = v7;
  return result;
}

- (void)drawVisualizationInRect:(CGRect)a3 context:(CGContext *)a4 viewBounds:(CGRect)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v91 = *MEMORY[0x1E69E9840];
  v89.receiver = self;
  v89.super_class = CHPrincipalLinesVisualization;
  [(CHStrokeGroupBasedVisualization *)&v89 drawVisualizationInRect:a3.origin.x context:a3.origin.y viewBounds:a3.size.width, a3.size.height, a5.origin.x, a5.origin.y, a5.size.width, a5.size.height];
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v17 = objc_msgSend_resultDrawn(self, v12, v13, v14, v15, v16);
  v23 = objc_msgSend_autoRefineResults(v17, v18, v19, v20, v21, v22);
  v29 = objc_msgSend_firstObject(v23, v24, v25, v26, v27, v28);

  v88[0] = MEMORY[0x1E69E9820];
  v88[1] = 3221225472;
  v88[2] = sub_183827698;
  v88[3] = &unk_1E6DDED38;
  v88[4] = a4;
  v35 = MEMORY[0x1865E6810](v88);
  if (v29)
  {
    v36 = objc_msgSend_strokeGroup(v29, v30, v31, v32, v33, v34);
    objc_msgSend_dirtyRectForStrokeGroup_(self, v37, v36, v38, v39, v40);
    v93.origin.x = x;
    v93.origin.y = y;
    v93.size.width = width;
    v93.size.height = height;
    if (CGRectIntersectsRect(v92, v93))
    {
      CGContextSaveGState(a4);
      *lengths = xmmword_1839CE6F0;
      CGContextSetLineWidth(a4, 2.0);
      CGContextSetLineDash(a4, 0.0, lengths, 2uLL);
      CGContextSetAlpha(a4, 0.8);
      v46 = objc_msgSend_textResult(v29, v41, v42, v43, v44, v45);
      v71 = *MEMORY[0x1E695EFF8];
      v51 = objc_msgSend_newColorForPrincipalLineType_(CHVisualizationManager, v47, 1, v48, v49, v50);
      v56 = objc_msgSend_newColorForPrincipalLineType_(CHVisualizationManager, v52, 2, v53, v54, v55);
      v61 = objc_msgSend_newColorForPrincipalLineType_(CHVisualizationManager, v57, 3, v58, v59, v60);
      v66 = objc_msgSend_newColorForPrincipalLineType_(CHVisualizationManager, v62, 4, v63, v64, v65);
      v72[0] = MEMORY[0x1E69E9820];
      v72[1] = 3221225472;
      v72[2] = sub_1838277C8;
      v72[3] = &unk_1E6DDED60;
      v73 = v29;
      v75 = v71;
      v76 = v71;
      v77 = v71;
      v78 = v71;
      v79 = v71;
      v80 = v71;
      v81 = v71;
      v82 = v71;
      v74 = v35;
      v83 = v51;
      v84 = v61;
      v85 = v56;
      v86 = v66;
      v87 = DeviceRGB;
      objc_msgSend_enumerateTokensInTopTranscriptionPathWithBlock_(v46, v67, v72, v68, v69, v70);
      CGColorRelease(v51);
      CGColorRelease(v56);
      CGColorRelease(v61);
      CGColorRelease(v66);

      CGContextRestoreGState(a4);
    }
  }

  CGColorSpaceRelease(DeviceRGB);
}

@end