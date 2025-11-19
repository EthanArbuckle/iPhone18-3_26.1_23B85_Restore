@interface CHDiffusionTextSynthesizerBase
- (BOOL)isLoaded;
- (BOOL)shouldAlignAlphaShapesForOriginalString:(id)a3 replacementString:(id)a4;
- (id).cxx_construct;
- (id)refineDrawing:(id)a3 transcription:(id)a4 options:(id)a5 shouldCancel:(id)a6 error:(id *)a7;
- (id)replaceDrawing:(id)a3 originalTranscription:(id)a4 replacementTranscription:(id)a5 options:(id)a6 shouldCancel:(id)a7 error:(id *)a8;
- (id)runPipeline:(id)a3 options:(id)a4 shouldCancel:(id)a5 mode:(int)a6;
- (id)runStyleEmbedding:(id)a3 drawings:(id)a4 shouldCancel:(id)a5;
- (id)stylePredictionResultForTranscriptions:(id)a3 drawings:(id)a4 shouldCancel:(id)a5;
- (id)supportedCharacterIndexesForString:(id)a3 options:(id)a4;
- (id)synthesizeDrawingForString:(id)a3 options:(id)a4 shouldCancel:(id)a5 error:(id *)a6;
- (shared_ptr<CoreHandwriting::synthesis::CHDiffusionPipelineContext>)context;
- (shared_ptr<CoreHandwriting::synthesis::CHDiffusionPipelinePostprocessing>)postprocessor;
- (shared_ptr<CoreHandwriting::synthesis::CHDiffusionPipelinePreprocessing>)preprocessor;
@end

@implementation CHDiffusionTextSynthesizerBase

- (id)synthesizeDrawingForString:(id)a3 options:(id)a4 shouldCancel:(id)a5 error:(id *)a6
{
  v142 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v137 = a5;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v11 = qword_1EA84DC98;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138740227;
    v139 = v9;
    v140 = 2048;
    v141 = objc_msgSend_length(v9, v12, v13, v14, v15, v16);
    _os_log_impl(&dword_18366B000, v11, OS_LOG_TYPE_DEFAULT, "Synthesizer: Synthesizing drawing with content=%{sensitive}@ (length=%lu)", buf, 0x16u);
  }

  if (!objc_msgSend_length(v9, v17, v18, v19, v20, v21))
  {
    v105 = 0;
    goto LABEL_18;
  }

  v26 = objc_msgSend_synthesisOptionsWithDictionary_(CHSynthesisRequestOptions, v22, v10, v23, v24, v25);
  v31 = objc_msgSend_objectForKeyedSubscript_(v10, v27, CHTextSynthesisOptionXZeroDrawing[0], v28, v29, v30);
  v32 = v31 != 0;

  v39 = objc_msgSend_runPipeline_options_shouldCancel_mode_(self, v33, v9, v26, v137, v32);
  if (!v39)
  {
    v105 = 0;
    goto LABEL_17;
  }

  if (!objc_msgSend_saveStyleSample(v26, v34, v35, v36, v37, v38) || !os_variant_has_internal_diagnostics())
  {
    v106 = [CHSynthesisResult alloc];
    v62 = objc_msgSend_content(v39, v107, v108, v109, v110, v111);
    v69 = objc_msgSend_drawing(v39, v112, v113, v114, v115, v116);
    v75 = objc_msgSend_segmentContents(v39, v117, v118, v119, v120, v121);
    v81 = objc_msgSend_segmentStrokeIndexes(v39, v122, v123, v124, v125, v126);
    v132 = objc_msgSend_numberOfNotSynthesizedCharacters(v39, v127, v128, v129, v130, v131);
    v105 = objc_msgSend_initWithContent_drawing_segmentContents_segmentStrokeIndexes_numberOfNotSynthesizedCharacters_(v106, v133, v62, v69, v75, v81, v132);
    goto LABEL_15;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v40 = qword_1EA84DC98;
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v40 = qword_1EA84DC98;
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
  {
LABEL_11:
    v46 = objc_msgSend_styleContents(v26, v41, v42, v43, v44, v45);
    *buf = 138412290;
    v139 = v46;
    _os_log_impl(&dword_18366B000, v40, OS_LOG_TYPE_DEBUG, "Style Sampling: saving style sample with content: %@ for inventory debugging experiments", buf, 0xCu);
  }

LABEL_12:

  v52 = objc_msgSend_styleDrawings(v26, v47, v48, v49, v50, v51);
  v58 = objc_msgSend_styleContents(v26, v53, v54, v55, v56, v57);
  v62 = objc_msgSend_concatenatedSampleWithDrawings_transcriptions_(CHSynthesisStyleInventory, v59, v52, v58, v60, v61);

  v63 = [CHSynthesisResult alloc];
  v69 = objc_msgSend_content(v39, v64, v65, v66, v67, v68);
  v75 = objc_msgSend_drawing(v39, v70, v71, v72, v73, v74);
  v81 = objc_msgSend_segmentContents(v39, v76, v77, v78, v79, v80);
  v136 = objc_msgSend_segmentStrokeIndexes(v39, v82, v83, v84, v85, v86);
  v135 = objc_msgSend_drawing(v62, v87, v88, v89, v90, v91);
  v97 = objc_msgSend_transcription(v62, v92, v93, v94, v95, v96);
  v103 = objc_msgSend_numberOfNotSynthesizedCharacters(v39, v98, v99, v100, v101, v102);
  v105 = objc_msgSend_initWithContent_drawing_segmentContents_segmentStrokeIndexes_inventoryDebuggingStyleDrawing_inventoryDebuggingStyleContent_numberOfNotSynthesizedCharacters_(v63, v104, v69, v75, v81, v136, v135, v97, v103);

LABEL_15:
LABEL_17:

LABEL_18:

  return v105;
}

- (id)refineDrawing:(id)a3 transcription:(id)a4 options:(id)a5 shouldCancel:(id)a6 error:(id *)a7
{
  v136 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v129 = a5;
  v128 = a6;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v13 = qword_1EA84DC98;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138740227;
    v133 = v12;
    v134 = 2048;
    v135 = objc_msgSend_length(v12, v14, v15, v16, v17, v18);
    _os_log_impl(&dword_18366B000, v13, OS_LOG_TYPE_DEFAULT, "Synthesizer: Refining drawing with transcription=%{sensitive}@ (length=%lu)", buf, 0x16u);
  }

  if (!objc_msgSend_length(v12, v19, v20, v21, v22, v23) || !objc_msgSend_pointCount(v11, v24, v25, v26, v27, v28))
  {
    v52 = 0;
    goto LABEL_30;
  }

  v33 = objc_msgSend_synthesisOptionsWithDictionary_(CHSynthesisRequestOptions, v29, v129, v30, v31, v32);
  v44 = objc_msgSend_styleContents(v33, v34, v35, v36, v37, v38);
  if (!v44)
  {
    goto LABEL_13;
  }

  v50 = objc_msgSend_styleDrawings(v33, v39, v40, v41, v42, v43);
  if (!v50)
  {

    goto LABEL_13;
  }

  v51 = objc_msgSend_useSegmentationForRefine(self, v45, v46, v47, v48, v49);

  if ((v51 & 1) == 0)
  {
LABEL_13:
    if (v11)
    {
      v131 = v11;
      v53 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v39, &v131, 1, v42, v43);
      objc_msgSend_setStyleDrawings_(v33, v54, v53, v55, v56, v57);
    }

    else
    {
      v53 = 0;
      objc_msgSend_setStyleDrawings_(v33, v39, 0, v41, v42, v43);
    }

    if (v11)
    {
    }

    if (v12)
    {
      v130 = v12;
      v62 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v58, &v130, 1, v60, v61);
      objc_msgSend_setStyleContents_(v33, v63, v62, v64, v65, v66);
    }

    else
    {
      v62 = 0;
      objc_msgSend_setStyleContents_(v33, v58, 0, v59, v60, v61);
    }

    if (v12)
    {
    }
  }

  v72 = objc_msgSend_runPipeline_options_shouldCancel_mode_(self, v39, v12, v33, v128, 2);
  if (v72)
  {
    v73 = objc_msgSend_styleContents(v33, v67, v68, v69, v70, v71);
    v127 = objc_msgSend_componentsJoinedByString_(v73, v74, &stru_1EF1C0318, v75, v76, v77);

    if (objc_msgSend_length(v12, v78, v79, v80, v81, v82) >= 6 && objc_msgSend_isEqualToString_(v12, v83, v127, v84, v85, v86))
    {
      objc_msgSend_alignAlphaShapesToDrawing_allowAnisotropicScaling_(v72, v87, v11, 0, v88, v89);
    }

    v90 = [CHSynthesisResult alloc];
    v96 = objc_msgSend_content(v72, v91, v92, v93, v94, v95);
    v102 = objc_msgSend_drawing(v72, v97, v98, v99, v100, v101);
    v106 = objc_msgSend_rescaleAndShiftSynthesizedDrawing_original_(CHMultiScriptTextSynthesizer, v103, v102, v11, v104, v105);
    v112 = objc_msgSend_segmentContents(v72, v107, v108, v109, v110, v111);
    v118 = objc_msgSend_segmentStrokeIndexes(v72, v113, v114, v115, v116, v117);
    v124 = objc_msgSend_numberOfNotSynthesizedCharacters(v72, v119, v120, v121, v122, v123);
    v52 = objc_msgSend_initWithContent_drawing_segmentContents_segmentStrokeIndexes_numberOfNotSynthesizedCharacters_(v90, v125, v96, v106, v112, v118, v124);
  }

  else
  {
    v52 = 0;
  }

LABEL_30:

  return v52;
}

- (id)replaceDrawing:(id)a3 originalTranscription:(id)a4 replacementTranscription:(id)a5 options:(id)a6 shouldCancel:(id)a7 error:(id *)a8
{
  v135 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v18 = qword_1EA84DC98;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134219267;
    v124 = objc_msgSend_strokeCount(v13, v19, v20, v21, v22, v23);
    v125 = 2048;
    v126 = objc_msgSend_pointCount(v13, v24, v25, v26, v27, v28);
    v127 = 2117;
    v128 = v14;
    v129 = 2048;
    v130 = objc_msgSend_length(v14, v29, v30, v31, v32, v33);
    v131 = 2117;
    v132 = v15;
    v133 = 2048;
    v134 = objc_msgSend_length(v15, v34, v35, v36, v37, v38);
    _os_log_impl(&dword_18366B000, v18, OS_LOG_TYPE_DEFAULT, "Synthesizer: Replacing drawing (numStrokes=%lu, numPts=%lu) with originalTranscription=%{sensitive}@ (length=%lu) and replacementTranscription=%{sensitive}@ (length=%lu)", buf, 0x3Eu);
  }

  if (objc_msgSend_length(v15, v39, v40, v41, v42, v43) && objc_msgSend_length(v14, v44, v45, v46, v47, v48) && objc_msgSend_pointCount(v13, v49, v50, v51, v52, v53))
  {
    v120 = objc_msgSend_synthesisOptionsWithDictionary_(CHSynthesisRequestOptions, v54, v16, v55, v56, v57);
    v122 = v13;
    v61 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v58, &v122, 1, v59, v60);
    objc_msgSend_setStyleDrawings_(v120, v62, v61, v63, v64, v65);

    v121 = v14;
    v69 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v66, &v121, 1, v67, v68);
    objc_msgSend_setStyleContents_(v120, v70, v69, v71, v72, v73);

    v78 = objc_msgSend_runPipeline_options_shouldCancel_mode_(self, v74, v15, v120, v17, 0);
    if (v78)
    {
      if (objc_msgSend_shouldAlignAlphaShapesForOriginalString_replacementString_(self, v75, v14, v15, v76, v77))
      {
        objc_msgSend_alignAlphaShapesToDrawing_allowAnisotropicScaling_(v78, v79, v13, 1, v80, v81);
      }

      v82 = [CHSynthesisResult alloc];
      v119 = objc_msgSend_content(v78, v83, v84, v85, v86, v87);
      v118 = objc_msgSend_drawing(v78, v88, v89, v90, v91, v92);
      v96 = objc_msgSend_rescaleAndShiftSynthesizedDrawing_original_(CHMultiScriptTextSynthesizer, v93, v118, v13, v94, v95);
      v102 = objc_msgSend_segmentContents(v78, v97, v98, v99, v100, v101);
      v108 = objc_msgSend_segmentStrokeIndexes(v78, v103, v104, v105, v106, v107);
      v114 = objc_msgSend_numberOfNotSynthesizedCharacters(v78, v109, v110, v111, v112, v113);
      v116 = objc_msgSend_initWithContent_drawing_segmentContents_segmentStrokeIndexes_numberOfNotSynthesizedCharacters_(v82, v115, v119, v96, v102, v108, v114);
    }

    else
    {
      v116 = 0;
    }
  }

  else
  {
    v116 = 0;
  }

  return v116;
}

- (id)stylePredictionResultForTranscriptions:(id)a3 drawings:(id)a4 shouldCancel:(id)a5
{
  v8 = a3;
  v9 = a4;
  v12 = a5;
  if (!self->_cachedStylePrediction.__engaged_)
  {
    goto LABEL_10;
  }

  v13 = v8;
  v14 = v9;
  if ((objc_msgSend_isEqualToArray_(v13, v15, self->_cachedStylePrediction.var0.__val_.transcriptions, v16, v17, v18) & 1) == 0)
  {

LABEL_10:
    v26 = objc_msgSend_runStyleEmbedding_drawings_shouldCancel_(self, v10, v8, v9, v12, v11);
    v27 = v8;
    v28 = v9;
    v25 = v26;
    v34 = objc_msgSend_copy(v27, v29, v30, v31, v32, v33);
    v40 = objc_msgSend_copy(v28, v35, v36, v37, v38, v39);

    if (self->_cachedStylePrediction.__engaged_)
    {
      transcriptions = self->_cachedStylePrediction.var0.__val_.transcriptions;
      self->_cachedStylePrediction.var0.__val_.transcriptions = v34;

      drawings = self->_cachedStylePrediction.var0.__val_.drawings;
      self->_cachedStylePrediction.var0.__val_.drawings = v40;

      stylePrediction = self->_cachedStylePrediction.var0.__val_.stylePrediction;
      self->_cachedStylePrediction.var0.__val_.stylePrediction = v25;
    }

    else
    {
      self->_cachedStylePrediction.var0.__val_.transcriptions = v34;
      self->_cachedStylePrediction.var0.__val_.drawings = v40;
      self->_cachedStylePrediction.var0.__val_.stylePrediction = v25;
      self->_cachedStylePrediction.__engaged_ = 1;
    }

    goto LABEL_13;
  }

  isEqualToArray = objc_msgSend_isEqualToArray_(v14, v19, self->_cachedStylePrediction.var0.__val_.drawings, v20, v21, v22);

  if (!isEqualToArray)
  {
    goto LABEL_10;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v24 = qword_1EA84DC98;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    *v45 = 0;
    _os_log_impl(&dword_18366B000, v24, OS_LOG_TYPE_DEBUG, "Synthesizer: reusing cached style prediction", v45, 2u);
  }

  v25 = self->_cachedStylePrediction.var0.__val_.stylePrediction;
LABEL_13:

  return v25;
}

- (BOOL)shouldAlignAlphaShapesForOriginalString:(id)a3 replacementString:(id)a4
{
  v5 = a3;
  v6 = a4;
  v12 = objc_msgSend_length(v5, v7, v8, v9, v10, v11);
  if (v12 >= objc_msgSend_length(v6, v13, v14, v15, v16, v17))
  {
    v35 = objc_msgSend_length(v5, v18, v19, v20, v21, v22);
    v34 = v35 - objc_msgSend_length(v6, v36, v37, v38, v39, v40);
  }

  else
  {
    v23 = objc_msgSend_length(v5, v18, v19, v20, v21, v22);
    v34 = objc_msgSend_length(v6, v24, v25, v26, v27, v28) - v23;
  }

  v42 = objc_msgSend_length(v6, v29, v30, v31, v32, v33) > 5 && v34 < 2;

  return v42;
}

- (id)supportedCharacterIndexesForString:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_msgSend_context(self, v8, v9, v10, v11, v12);
  if (v35)
  {
    v19 = *v35;
    v18 = v35[1];
    v33 = *v35;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v20 = objc_msgSend_objectForKeyedSubscript_(v7, v13, CHTextSynthesisOptionSupportedCharactersStrict[0], v15, v16, v17, v33);
    *(v19 + 32) = objc_msgSend_BOOLValue(v20, v21, v22, v23, v24, v25);

    if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v18->__on_zero_shared)(v18);
      std::__shared_weak_count::__release_weak(v18);
    }

    objc_msgSend_preprocessor(self, v26, v27, v28, v29, v30);
    v31 = (*(*v34 + 8))(v34, v6);
    if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v18->__on_zero_shared)(v18);
      std::__shared_weak_count::__release_weak(v18);
    }
  }

  else
  {
    v31 = objc_msgSend_indexSet(MEMORY[0x1E696AC90], v13, v14, v15, v16, v17);
  }

  if (v36 && !atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v36->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v36);
  }

  return v31;
}

- (BOOL)isLoaded
{
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v2 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v2, OS_LOG_TYPE_ERROR, "Missing specialization for isLoaded", buf, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v3 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
LABEL_7:
    *v5 = 0;
    _os_log_impl(&dword_18366B000, v3, OS_LOG_TYPE_FAULT, "Missing specialization for isLoaded", v5, 2u);
  }

LABEL_8:

  return 0;
}

- (id)runPipeline:(id)a3 options:(id)a4 shouldCancel:(id)a5 mode:(int)a6
{
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v6 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v6, OS_LOG_TYPE_ERROR, "Missing specialization for runPipeline", buf, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v7 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v7 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
LABEL_7:
    *v9 = 0;
    _os_log_impl(&dword_18366B000, v7, OS_LOG_TYPE_FAULT, "Missing specialization for runPipeline", v9, 2u);
  }

LABEL_8:

  return 0;
}

- (id)runStyleEmbedding:(id)a3 drawings:(id)a4 shouldCancel:(id)a5
{
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v5 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v5, OS_LOG_TYPE_ERROR, "Missing specialization for runStyleEmbedding", buf, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v6 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v6 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
LABEL_7:
    *v8 = 0;
    _os_log_impl(&dword_18366B000, v6, OS_LOG_TYPE_FAULT, "Missing specialization for runStyleEmbedding", v8, 2u);
  }

LABEL_8:

  return 0;
}

- (shared_ptr<CoreHandwriting::synthesis::CHDiffusionPipelineContext>)context
{
  v3 = v2;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v4 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v4, OS_LOG_TYPE_ERROR, "Missing specialization for context", buf, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v5 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v5 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
LABEL_7:
    *v8 = 0;
    _os_log_impl(&dword_18366B000, v5, OS_LOG_TYPE_FAULT, "Missing specialization for context", v8, 2u);
  }

LABEL_8:

  *v3 = 0;
  v3[1] = 0;
  result.var1 = v7;
  result.var0 = v6;
  return result;
}

- (shared_ptr<CoreHandwriting::synthesis::CHDiffusionPipelinePreprocessing>)preprocessor
{
  v3 = v2;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v4 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v4, OS_LOG_TYPE_ERROR, "Missing specialization for preprocessor", buf, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v5 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v5 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
LABEL_7:
    *v8 = 0;
    _os_log_impl(&dword_18366B000, v5, OS_LOG_TYPE_FAULT, "Missing specialization for preprocessor", v8, 2u);
  }

LABEL_8:

  *v3 = 0;
  v3[1] = 0;
  result.var1 = v7;
  result.var0 = v6;
  return result;
}

- (shared_ptr<CoreHandwriting::synthesis::CHDiffusionPipelinePostprocessing>)postprocessor
{
  v3 = v2;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v4 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v4, OS_LOG_TYPE_ERROR, "Missing specialization for postprocessor", buf, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v5 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v5 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
LABEL_7:
    *v8 = 0;
    _os_log_impl(&dword_18366B000, v5, OS_LOG_TYPE_FAULT, "Missing specialization for postprocessor", v8, 2u);
  }

LABEL_8:

  *v3 = 0;
  v3[1] = 0;
  result.var1 = v7;
  result.var0 = v6;
  return result;
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 32) = 0;
  return self;
}

@end