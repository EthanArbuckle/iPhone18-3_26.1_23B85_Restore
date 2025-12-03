@interface CHRecognizerResultCache
- (CHRecognizerResultCache)init;
- (id)retrievePartialResultsForDrawing:(id)drawing recognitionEngineCachingKey:(id)key matchingColumnRange:(_NSRange *)range;
- (void)cacheTextResult:(id)result drawing:(id)drawing recognitionEngineCachingKey:(id)key;
- (void)clearCacheForKey:(id)key;
@end

@implementation CHRecognizerResultCache

- (CHRecognizerResultCache)init
{
  v8.receiver = self;
  v8.super_class = CHRecognizerResultCache;
  v2 = [(CHRecognizerResultCache *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    lastDrawings = v2->_lastDrawings;
    v2->_lastDrawings = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    textResults = v2->_textResults;
    v2->_textResults = v5;
  }

  return v2;
}

- (void)cacheTextResult:(id)result drawing:(id)drawing recognitionEngineCachingKey:(id)key
{
  resultCopy = result;
  drawingCopy = drawing;
  keyCopy = key;
  v14 = objc_msgSend_objectForKeyedSubscript_(self->_lastDrawings, v10, keyCopy, v11, v12, v13);
  if ((objc_msgSend_isEqualToDrawing_(v14, v15, drawingCopy, v16, v17, v18) & 1) == 0)
  {
    v24 = objc_msgSend_copy(resultCopy, v19, v20, v21, v22, v23);
    objc_msgSend_setObject_forKeyedSubscript_(self->_textResults, v25, v24, keyCopy, v26, v27);

    v33 = objc_msgSend_copy(drawingCopy, v28, v29, v30, v31, v32);
    objc_msgSend_setObject_forKeyedSubscript_(self->_lastDrawings, v34, v33, keyCopy, v35, v36);
  }
}

- (id)retrievePartialResultsForDrawing:(id)drawing recognitionEngineCachingKey:(id)key matchingColumnRange:(_NSRange *)range
{
  drawingCopy = drawing;
  keyCopy = key;
  v14 = objc_msgSend_objectForKeyedSubscript_(self->_lastDrawings, v10, keyCopy, v11, v12, v13);
  v19 = objc_msgSend_matchingStrokePrefixRangeForDrawing_(v14, v15, drawingCopy, v16, v17, v18);
  v25 = v20;
  if (!v20)
  {
    objc_msgSend_clearCacheForKey_(self, 0, keyCopy, v22, v23, v24);
    v80 = 0;
    v38 = 0;
    v81 = 0x7FFFFFFFFFFFFFFFLL;
    if (!range)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v26 = v19;
  if (v20 == objc_msgSend_strokeCount(v14, v20, v21, v22, v23, v24) && v25 < objc_msgSend_strokeCount(drawingCopy, v27, v28, v29, v30, v31))
  {
    v32 = objc_msgSend_objectForKeyedSubscript_(self->_textResults, v27, keyCopy, v29, v30, v31);
    v38 = v32;
    if (v32)
    {
LABEL_20:
      v80 = objc_msgSend_tokenColumnCount(v32, v33, v34, v35, v36, v37);
      v81 = 0;
      if (!range)
      {
        goto LABEL_15;
      }

LABEL_14:
      range->location = v81;
      range->length = v80;
      goto LABEL_15;
    }
  }

  else if (v25 < objc_msgSend_strokeCount(v14, v27, v28, v29, v30, v31) && v25 == objc_msgSend_strokeCount(drawingCopy, v39, v40, v41, v42, v43))
  {
    v38 = objc_msgSend_objectForKeyedSubscript_(self->_textResults, v39, keyCopy, v41, v42, v43);
    if (v38)
    {
      v54 = objc_msgSend_strokeCount(v14, v44, v45, v46, v47, v48) - v25;
      if (v54 < 1)
      {
        v79 = 0;
      }

      else
      {
        v55 = 0;
        do
        {
          v56 = objc_msgSend_tokenColumns(v38, v49, v50, v51, v52, v53);
          v62 = objc_msgSend_tokenColumnCount(v38, v57, v58, v59, v60, v61);
          v67 = objc_msgSend_objectAtIndexedSubscript_(v56, v63, v55 + v62 - 1, v64, v65, v66);
          v73 = objc_msgSend_strokeIndexes(v67, v68, v69, v70, v71, v72);
          v54 -= objc_msgSend_count(v73, v74, v75, v76, v77, v78);

          --v55;
        }

        while (v54 > 0);
        v79 = -v55;
      }

      v120 = objc_msgSend_tokenColumnCount(v38, v49, v50, v51, v52, v53);
      v81 = 0;
      v80 = v120 - v79;
      if (!range)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v87 = objc_msgSend_strokeCount(drawingCopy, v39, v40, v41, v42, v43);
    textResults = self->_textResults;
    if (v25 == v87)
    {
      v32 = objc_msgSend_objectForKeyedSubscript_(textResults, v83, keyCopy, v84, v85, v86);
      v38 = v32;
      if (v32)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v38 = objc_msgSend_objectForKeyedSubscript_(textResults, v83, keyCopy, v84, v85, v86);
      if (v38)
      {
        v121 = keyCopy;
        v122 = drawingCopy;
        v94 = 0;
        v95 = 0;
        v96 = v26 + v25;
        v97 = 0x7FFFFFFFFFFFFFFFLL;
        while (v95 < objc_msgSend_tokenColumnCount(v38, v89, v90, v91, v92, v93, v121, v122))
        {
          v103 = objc_msgSend_tokenColumns(v38, v98, v99, v100, v101, v102);
          v108 = objc_msgSend_objectAtIndexedSubscript_(v103, v104, v95, v105, v106, v107);
          v114 = objc_msgSend_strokeIndexes(v108, v109, v110, v111, v112, v113);
          v94 += objc_msgSend_count(v114, v115, v116, v117, v118, v119);

          if (v94 <= v96)
          {
            v97 = v95;
          }

          ++v95;
        }

        v81 = 0x7FFFFFFFFFFFFFFFLL;
        if (v97 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v80 = 0;
        }

        else
        {
          v81 = 0;
          v80 = v97 + 1;
        }

        keyCopy = v121;
        drawingCopy = v122;
        if (range)
        {
          goto LABEL_14;
        }

        goto LABEL_15;
      }
    }
  }

  v80 = 0;
  v81 = 0x7FFFFFFFFFFFFFFFLL;
  if (range)
  {
    goto LABEL_14;
  }

LABEL_15:

  return v38;
}

- (void)clearCacheForKey:(id)key
{
  keyCopy = key;
  objc_msgSend_removeObjectForKey_(self->_lastDrawings, v4, keyCopy, v5, v6, v7);
  objc_msgSend_removeObjectForKey_(self->_textResults, v8, keyCopy, v9, v10, v11);
}

@end