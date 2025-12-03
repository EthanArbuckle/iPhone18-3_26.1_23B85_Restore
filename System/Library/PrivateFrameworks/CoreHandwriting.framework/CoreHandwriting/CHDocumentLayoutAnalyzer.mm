@interface CHDocumentLayoutAnalyzer
- (CHDocumentLayoutAnalyzer)init;
- (id)analyzeDrawing:(id)drawing strokeIdentifiers:(id)identifiers contextStrokeIdentifiers:(id)strokeIdentifiers options:(id)options shouldCancel:(id)cancel;
@end

@implementation CHDocumentLayoutAnalyzer

- (CHDocumentLayoutAnalyzer)init
{
  v19.receiver = self;
  v19.super_class = CHDocumentLayoutAnalyzer;
  v2 = [(CHDocumentLayoutAnalyzer *)&v19 init];
  if (v2)
  {
    v3 = [CHDocumentLayoutAnalysisModel alloc];
    v7 = objc_msgSend_initWithEncoderName_decoderName_(v3, v4, @"stroke_processor_encoder.bundle", @"stroke_processor_decoder.bundle", v5, v6);
    documentLayoutAnalysisModel = v2->_documentLayoutAnalysisModel;
    v2->_documentLayoutAnalysisModel = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.CoreHandwriting.documentLayoutAnalyzerQueue", v9);
    modelDispatchQueue = v2->_modelDispatchQueue;
    v2->_modelDispatchQueue = v10;

    v2->_contextNumStrokes = 30;
    v17 = objc_msgSend_maxNumStrokes(v2->_documentLayoutAnalysisModel, v12, v13, v14, v15, v16);
    v2->_maxNumInputStrokes = v17;
    v2->_contentNumStrokes = v17 - 2 * v2->_contextNumStrokes;
  }

  return v2;
}

- (id)analyzeDrawing:(id)drawing strokeIdentifiers:(id)identifiers contextStrokeIdentifiers:(id)strokeIdentifiers options:(id)options shouldCancel:(id)cancel
{
  v198 = *MEMORY[0x1E69E9840];
  drawingCopy = drawing;
  identifiersCopy = identifiers;
  strokeIdentifiersCopy = strokeIdentifiers;
  optionsCopy = options;
  cancelCopy = cancel;
  v186 = drawingCopy;
  if (objc_msgSend_strokeCount(drawingCopy, v13, v14, v15, v16, v17) <= self->_maxNumInputStrokes)
  {
    v98 = sub_183948EA8(self, drawingCopy, cancelCopy);
  }

  else
  {
    selfCopy = self;
    if (objc_msgSend_strokeCount(drawingCopy, v18, v19, v20, v21, v22) > self->_maxNumInputStrokes)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v28 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = objc_msgSend_strokeCount(drawingCopy, v29, v30, v31, v32, v33);
        _os_log_impl(&dword_18366B000, v28, OS_LOG_TYPE_ERROR, "Drawing with too many strokes (%lu) sent into document layout analyzer. This might indicate a problem in clutter filter.", &buf, 0xCu);
      }
    }

    if (objc_msgSend_strokeCount(drawingCopy, v23, v24, v25, v26, v27) > self->_maxNumInputStrokes)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v39 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
      {
        v45 = objc_msgSend_strokeCount(drawingCopy, v40, v41, v42, v43, v44);
        LODWORD(buf) = 134217984;
        *(&buf + 4) = v45;
        _os_log_impl(&dword_18366B000, v39, OS_LOG_TYPE_FAULT, "Drawing with too many strokes (%lu) sent into document layout analyzer. This might indicate a problem in clutter filter.", &buf, 0xCu);
      }
    }

    v46 = objc_msgSend_strokeCount(drawingCopy, v34, v35, v36, v37, v38);
    buf = 0uLL;
    v197 = 0;
    __p = &buf;
    LOBYTE(v194) = 0;
    if (v46)
    {
      if (v46 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_18368964C();
    }

    v52 = objc_msgSend_strokeCount(drawingCopy, v47, v48, v49, v50, v51);
    __p = 0;
    v194 = 0;
    v195 = 0;
    p_p = &__p;
    LOBYTE(v191) = 0;
    if (v52)
    {
      if (v52 <= 0x666666666666666)
      {
        operator new();
      }

      sub_18368964C();
    }

    for (i = 0; i < objc_msgSend_strokeCount(v186, v53, v54, v55, v56, v57); i += selfCopy->_contentNumStrokes)
    {
      if (cancelCopy && (cancelCopy[2]() & 1) != 0)
      {
        goto LABEL_35;
      }

      maxNumInputStrokes = self->_maxNumInputStrokes;
      if (maxNumInputStrokes >= objc_msgSend_strokeCount(v186, v59, v60, v61, v62, v63) - i)
      {
        v70 = objc_msgSend_strokeCount(v186, v65, v66, v67, v68, v69) - i;
      }

      else
      {
        v70 = self->_maxNumInputStrokes;
      }

      objc_msgSend_strokeCount(v186, v65, v66, v67, v68, v69);
      v74 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x1E696AC90], v71, i, v70, v72, v73);
      v182 = objc_msgSend_drawingWithStrokesFromIndexSet_(v186, v75, v74, v76, v77, v78);

      v184 = sub_183948EA8(selfCopy, v182, cancelCopy);
      if (v184)
      {
        v191 = 0;
        v192 = 0;
        p_p = &v191;
        v188 = 0;
        v189 = 0;
        v187 = &v188;
        if (v70)
        {
          operator new();
        }

        v84 = objc_msgSend_strokeClassificationMatrix(v184, v79, v80, v81, v82, v83);
        v90 = objc_msgSend_sparseAdjacencyMatrix(v184, v85, v86, v87, v88, v89);
        objc_msgSend_mergeTileStrokeClassificationMatrix_tileSparseAdjacencyMatrix_intoMergedStrokeClassificationMatrix_mergedAdjacencyMatrix_strokeIndexMapping_tileOverlapStrokeIndexes_(CHDocumentLayoutAnalysisResult, v91, v84, v90, &buf, &__p, &p_p, &v187);
        sub_18368D56C(&v187, v188);
        sub_18368D56C(&p_p, v191);
      }

      v92 = v70 + i == objc_msgSend_strokeCount(v186, v79, v80, v81, v82, v83);

      self = selfCopy;
      if (v92)
      {
        break;
      }
    }

    if (!cancelCopy)
    {
      goto LABEL_38;
    }

LABEL_35:
    if (cancelCopy[2]())
    {
      v98 = 0;
      v99 = __p;
      if (!__p)
      {
        goto LABEL_48;
      }

      goto LABEL_39;
    }

LABEL_38:
    v100 = [CHDocumentLayoutAnalysisTileResult alloc];
    v98 = objc_msgSend_initWithStrokeClassificationMatrix_sparseAdjacencyMatrix_(v100, v101, &buf, &__p, v102, v103);
    v99 = __p;
    if (!__p)
    {
      goto LABEL_48;
    }

LABEL_39:
    v104 = v194;
    v105 = v99;
    if (v194 != v99)
    {
      do
      {
        v106 = *(v104 - 3);
        if (v106)
        {
          do
          {
            v107 = *v106;
            operator delete(v106);
            v106 = v107;
          }

          while (v107);
        }

        v109 = *(v104 - 5);
        v104 -= 5;
        v108 = v109;
        *v104 = 0;
        if (v109)
        {
          operator delete(v108);
        }
      }

      while (v104 != v99);
      v105 = __p;
    }

    v194 = v99;
    operator delete(v105);
LABEL_48:
    v110 = buf;
    if (buf)
    {
      v111 = *(&buf + 1);
      v112 = buf;
      if (*(&buf + 1) != buf)
      {
        v113 = *(&buf + 1);
        do
        {
          v115 = *(v113 - 24);
          v113 -= 24;
          v114 = v115;
          if (v115)
          {
            *(v111 - 16) = v114;
            operator delete(v114);
          }

          v111 = v113;
        }

        while (v113 != v110);
        v112 = buf;
      }

      *(&buf + 1) = v110;
      operator delete(v112);
    }
  }

  if (v98 && objc_msgSend_count(strokeIdentifiersCopy, v93, v94, v95, v96, v97) && (!cancelCopy || (cancelCopy[2]() & 1) == 0))
  {
    v121 = objc_msgSend_count(identifiersCopy, v116, v117, v118, v119, v120);
    v127 = objc_msgSend_count(strokeIdentifiersCopy, v122, v123, v124, v125, v126);
    buf = 0uLL;
    v197 = 0;
    __p = &buf;
    LOBYTE(v194) = 0;
    if (v121 != v127)
    {
      if ((v121 - v127) <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_18368964C();
    }

    __p = 0;
    v194 = 0;
    v195 = 0;
    v133 = 0;
    v134 = 0;
    v191 = 0;
    v192 = 0;
    v189 = 0;
    p_p = &v191;
    v187 = &v188;
    v188 = 0;
    while (v133 < objc_msgSend_count(identifiersCopy, v128, v129, v130, v131, v132))
    {
      v140 = objc_msgSend_objectAtIndexedSubscript_(identifiersCopy, v135, v133, v137, v138, v139);
      v145 = objc_msgSend_containsObject_(strokeIdentifiersCopy, v141, v140, v142, v143, v144);

      v146 = v191;
      if (v145)
      {
        if (!v191)
        {
LABEL_72:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v147 = v146;
            v148 = v146[4];
            if (v133 >= v148)
            {
              break;
            }

            v146 = *v147;
            if (!*v147)
            {
              goto LABEL_72;
            }
          }

          if (v148 >= v133)
          {
            break;
          }

          v146 = v147[1];
          if (!v146)
          {
            goto LABEL_72;
          }
        }

        v147[5] = 0x7FFFFFFFFFFFFFFFLL;
        ++v133;
      }

      else
      {
        if (!v191)
        {
LABEL_79:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v149 = v146;
            v150 = v146[4];
            if (v133 >= v150)
            {
              break;
            }

            v146 = *v149;
            if (!*v149)
            {
              goto LABEL_79;
            }
          }

          if (v150 >= v133)
          {
            break;
          }

          v146 = v149[1];
          if (!v146)
          {
            goto LABEL_79;
          }
        }

        v149[5] = v134++;
        ++v133;
      }
    }

    v151 = objc_msgSend_strokeClassificationMatrix(v98, v135, v136, v137, v138, v139);
    v157 = objc_msgSend_sparseAdjacencyMatrix(v98, v152, v153, v154, v155, v156);
    objc_msgSend_mergeTileStrokeClassificationMatrix_tileSparseAdjacencyMatrix_intoMergedStrokeClassificationMatrix_mergedAdjacencyMatrix_strokeIndexMapping_tileOverlapStrokeIndexes_(CHDocumentLayoutAnalysisResult, v158, v151, v157, &buf, &__p, &p_p, &v187);
    v159 = [CHDocumentLayoutAnalysisTileResult alloc];
    v163 = objc_msgSend_initWithStrokeClassificationMatrix_sparseAdjacencyMatrix_(v159, v160, &buf, &__p, v161, v162);

    sub_18368D56C(&v187, v188);
    sub_18368D56C(&p_p, v191);
    v164 = __p;
    if (__p)
    {
      v165 = v194;
      v166 = __p;
      if (v194 != __p)
      {
        do
        {
          v167 = *(v165 - 3);
          if (v167)
          {
            do
            {
              v168 = *v167;
              operator delete(v167);
              v167 = v168;
            }

            while (v168);
          }

          v170 = *(v165 - 5);
          v165 -= 5;
          v169 = v170;
          *v165 = 0;
          if (v170)
          {
            operator delete(v169);
          }
        }

        while (v165 != v164);
        v166 = __p;
      }

      v194 = v164;
      operator delete(v166);
    }

    v171 = buf;
    if (buf)
    {
      v172 = *(&buf + 1);
      v173 = buf;
      if (*(&buf + 1) != buf)
      {
        v174 = *(&buf + 1);
        do
        {
          v176 = *(v174 - 24);
          v174 -= 24;
          v175 = v176;
          if (v176)
          {
            *(v172 - 16) = v175;
            operator delete(v175);
          }

          v172 = v174;
        }

        while (v174 != v171);
        v173 = buf;
      }

      *(&buf + 1) = v171;
      operator delete(v173);
    }

    v98 = v163;
  }

  v177 = v98;

  return v98;
}

@end