@interface CHResultRenderingVisualization
- (BOOL)shouldRenderStrokeGroupResult:(id)result;
- (CGRect)dirtyRectForStrokeGroup:(id)group;
- (CHResultRenderingVisualization)initWithRecognitionSession:(id)session;
- (void)drawVisualizationInRect:(CGRect)rect context:(CGContext *)context viewBounds:(CGRect)bounds;
@end

@implementation CHResultRenderingVisualization

- (CHResultRenderingVisualization)initWithRecognitionSession:(id)session
{
  v12.receiver = self;
  v12.super_class = CHResultRenderingVisualization;
  v8 = [(CHVisualization *)&v12 initWithRecognitionSession:session];
  if (v8)
  {
    v9 = objc_msgSend_array(MEMORY[0x1E695DF70], v3, v4, v5, v6, v7);
    renderedResults = v8->_renderedResults;
    v8->_renderedResults = v9;
  }

  return v8;
}

- (CGRect)dirtyRectForStrokeGroup:(id)group
{
  v9.receiver = self;
  v9.super_class = CHResultRenderingVisualization;
  [(CHStrokeGroupBasedVisualization *)&v9 dirtyRectForStrokeGroup:group];
  v6 = v5 + 60.0;
  v8 = v7 + -60.0;
  result.size.height = v6;
  result.size.width = v4;
  result.origin.y = v8;
  result.origin.x = v3;
  return result;
}

- (void)drawVisualizationInRect:(CGRect)rect context:(CGContext *)context viewBounds:(CGRect)bounds
{
  v142 = *MEMORY[0x1E69E9840];
  v139.receiver = self;
  v139.super_class = CHResultRenderingVisualization;
  [(CHStrokeGroupBasedVisualization *)&v139 drawVisualizationInRect:rect.origin.x context:rect.origin.y viewBounds:rect.size.width, rect.size.height, bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  v132 = objc_msgSend_resultDrawn(self, v6, v7, v8, v9, v10);
  v16 = objc_msgSend_strokeGroupingResult(v132, v11, v12, v13, v14, v15);
  objc_msgSend_removeAllObjects(self->_renderedResults, v17, v18, v19, v20, v21);
  v137 = 0u;
  v138 = 0u;
  v135 = 0u;
  v136 = 0u;
  v128 = v16;
  obj = objc_msgSend_strokeGroups(v16, v22, v23, v24, v25, v26);
  v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v27, &v135, v141, 16, v28);
  if (v29)
  {
    v34 = v29;
    v35 = *v136;
    v129 = *v136;
    do
    {
      v36 = 0;
      v131 = v34;
      do
      {
        if (*v136 == v35)
        {
          v37 = *(*(&v135 + 1) + 8 * v36);
          if (!objc_msgSend_shouldRenderStrokeGroupResult_(self, v30, v37, v31, v32, v33))
          {
            goto LABEL_6;
          }
        }

        else
        {
          objc_enumerationMutation(obj);
          v37 = *(*(&v135 + 1) + 8 * v36);
          if (!objc_msgSend_shouldRenderStrokeGroupResult_(self, v39, v37, v40, v41, v42))
          {
            goto LABEL_6;
          }
        }

        v43 = objc_msgSend_uniqueIdentifier(v37, v30, v38, v31, v32, v33);
        v48 = objc_msgSend_recognitionResultForStrokeGroupIdentifier_(v132, v44, v43, v45, v46, v47);
        v54 = objc_msgSend_mathResult(v48, v49, v50, v51, v52, v53);

        if (v54)
        {
          objc_msgSend_bounds(v37, v55, v56, v57, v58, v59);
          v61 = v60;
          objc_msgSend_bounds(v37, v62, v63, v64, v65, v66);
          v68 = v67 + -60.0;
          objc_msgSend_bounds(v37, v69, v70, v71, v72, v73);
          v143.size.height = 60.0;
          v143.origin.x = v61;
          v143.origin.y = v68;
          v144 = CGRectInset(v143, 1.0, 1.0);
          x = v144.origin.x;
          y = v144.origin.y;
          width = v144.size.width;
          height = v144.size.height;
          DeviceRGB = CGColorSpaceCreateDeviceRGB();
          v79 = CGColorCreate(DeviceRGB, dbl_1839D0060);
          CGContextSetStrokeColorWithColor(context, v79);
          CGContextSetLineWidth(context, 1.0);
          v145.origin.x = x;
          v145.origin.y = y;
          v145.size.width = width;
          v145.size.height = height;
          CGContextStrokeRect(context, v145);
          CGColorRelease(v79);
          CGColorSpaceRelease(DeviceRGB);
          v146.origin.x = x;
          v146.origin.y = y;
          v146.size.width = width;
          v146.size.height = height;
          v147 = CGRectInset(v146, 1.0, 1.0);
          v80 = v147.origin.x;
          v81 = v147.origin.y;
          v82 = v147.size.width;
          v83 = v147.size.height;
          renderedResults = self->_renderedResults;
          v89 = objc_msgSend_mathResult(v48, v84, v85, v86, v87, v88);
          v95 = objc_msgSend_preferredTranscription(v89, v90, v91, v92, v93, v94);
          v140[0] = v95;
          v101 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v96, v97, v98, v99, v100, v80);
          v140[1] = v101;
          v107 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v102, v103, v104, v105, v106, v81);
          v140[2] = v107;
          v113 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v108, v109, v110, v111, v112, v82);
          v140[3] = v113;
          v119 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v114, v115, v116, v117, v118, v83);
          v140[4] = v119;
          v123 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v120, v140, 5, v121, v122);
          objc_msgSend_addObject_(renderedResults, v124, v123, v125, v126, v127);

          v35 = v129;
          v34 = v131;
        }

LABEL_6:
        ++v36;
      }

      while (v34 != v36);
      v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v30, &v135, v141, 16, v33);
    }

    while (v34);
  }
}

- (BOOL)shouldRenderStrokeGroupResult:(id)result
{
  resultCopy = result;
  v5 = objc_opt_class();
  v11 = objc_msgSend_classification(resultCopy, v6, v7, v8, v9, v10);
  if (objc_msgSend_isStrokeClassificationTextOrMath_(v5, v12, v11, v13, v14, v15))
  {
    v21 = objc_msgSend_activeStrokeGroupAncestorIdentifiers(self, v16, v17, v18, v19, v20);
    v22 = MEMORY[0x1E696AD98];
    v28 = objc_msgSend_ancestorIdentifier(resultCopy, v23, v24, v25, v26, v27);
    v33 = objc_msgSend_numberWithInteger_(v22, v29, v28, v30, v31, v32);
    LOBYTE(v22) = objc_msgSend_containsObject_(v21, v34, v33, v35, v36, v37);

    return v22;
  }

  else
  {

    return 0;
  }
}

@end