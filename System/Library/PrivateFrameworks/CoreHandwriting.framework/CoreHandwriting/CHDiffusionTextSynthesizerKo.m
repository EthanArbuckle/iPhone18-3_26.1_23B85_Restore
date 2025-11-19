@interface CHDiffusionTextSynthesizerKo
+ (id)diffusionModelHashes;
- (CHDiffusionTextSynthesizerKo)init;
- (id)runPipeline:(id)a3 options:(id)a4 shouldCancel:(id)a5 mode:(int)a6;
- (id)runStyleEmbedding:(id)a3 drawings:(id)a4 shouldCancel:(id)a5;
- (id)synthesizeDrawingForString:(id)a3 options:(id)a4 shouldCancel:(id)a5 error:(id *)a6;
- (int64_t)canPredictStyleForTranscription:(id)a3;
- (shared_ptr<CoreHandwriting::synthesis::CHDiffusionPipelineContext>)context;
@end

@implementation CHDiffusionTextSynthesizerKo

- (CHDiffusionTextSynthesizerKo)init
{
  v3.receiver = self;
  v3.super_class = CHDiffusionTextSynthesizerKo;
  if ([(CHDiffusionTextSynthesizerKo *)&v3 init])
  {
    operator new();
  }

  return 0;
}

+ (id)diffusionModelHashes
{
  v6 = objc_msgSend_modelHash(CHStyleEncoderModelKOE5ML, a2, v2, v3, v4, v5);
  v9 = objc_msgSend_modelHashesWithLatinHash_zhJaHash_koHash_(CHSynthesisModelHashes, v7, 0, 0, v6, v8);

  return v9;
}

- (id)runPipeline:(id)a3 options:(id)a4 shouldCancel:(id)a5 mode:(int)a6
{
  v6 = *&a6;
  v44 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v13 = qword_1EA84DC98;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v19 = objc_msgSend_styleContents(v11, v14, v15, v16, v17, v18);
    v24 = objc_msgSend_componentsJoinedByString_(v19, v20, &stru_1EF1C0318, v21, v22, v23);
    v30 = objc_msgSend_styleDrawings(v11, v25, v26, v27, v28, v29);
    v38 = 138740483;
    v39 = v10;
    v40 = 2117;
    v41 = v24;
    v42 = 2048;
    v43 = objc_msgSend_count(v30, v31, v32, v33, v34, v35);
    _os_log_impl(&dword_18366B000, v13, OS_LOG_TYPE_DEFAULT, "CHDiffusionTextSynthesizerKo::runPipeline contents: %{sensitive}@, styleContent: %{sensitive}@, numStyleDrawings: %lu", &v38, 0x20u);
  }

  v36 = sub_183791730(self->_pipeline.__ptr_, v10, v11, v12, v6);

  return v36;
}

- (id)runStyleEmbedding:(id)a3 drawings:(id)a4 shouldCancel:(id)a5
{
  v5 = sub_183791BAC(self->_pipeline.__ptr_, a3, a4, a5);

  return v5;
}

- (int64_t)canPredictStyleForTranscription:(id)a3
{
  v4 = a3;
  if (objc_msgSend_length(v4, v5, v6, v7, v8, v9) && (ptr = self->_pipeline.__ptr_) != 0 && ((*(*ptr + 32))(ptr, v4) & 1) != 0)
  {

    return 3;
  }

  else
  {

    return 0;
  }
}

- (shared_ptr<CoreHandwriting::synthesis::CHDiffusionPipelineContext>)context
{
  ptr = self->_pipeline.__ptr_;
  if (ptr)
  {
    self = sub_1838A290C(v2, *(ptr + 1));
  }

  else
  {
    *v2 = 0;
    v2[1] = 0;
  }

  result.var1 = a2;
  result.var0 = self;
  return result;
}

- (id)synthesizeDrawingForString:(id)a3 options:(id)a4 shouldCancel:(id)a5 error:(id *)a6
{
  v111 = *MEMORY[0x1E69E9840];
  v109.receiver = self;
  v109.super_class = CHDiffusionTextSynthesizerKo;
  v6 = [(CHDiffusionTextSynthesizerBase *)&v109 synthesizeDrawingForString:a3 options:a4 shouldCancel:a5 error:a6];
  v12 = objc_msgSend_segmentContents(v6, v7, v8, v9, v10, v11);
  v13 = v12 == 0;

  if (v13)
  {
    v31 = 0;
  }

  else
  {
    v19 = MEMORY[0x1E695DF70];
    v20 = objc_msgSend_segmentContents(v6, v14, v15, v16, v17, v18);
    v26 = objc_msgSend_count(v20, v21, v22, v23, v24, v25);
    v31 = objc_msgSend_arrayWithCapacity_(v19, v27, v26, v28, v29, v30);

    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v37 = objc_msgSend_segmentContents(v6, v32, v33, v34, v35, v36);
    v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v38, &v105, v110, 16, v39);
    if (v45)
    {
      v46 = *v106;
      do
      {
        for (i = 0; i != v45; ++i)
        {
          if (*v106 != v46)
          {
            objc_enumerationMutation(v37);
          }

          v48 = objc_msgSend_precomposedStringWithCanonicalMapping(*(*(&v105 + 1) + 8 * i), v40, v41, v42, v43, v44);
          objc_msgSend_addObject_(v31, v49, v48, v50, v51, v52);
        }

        v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v40, &v105, v110, 16, v44);
      }

      while (v45);
    }
  }

  v53 = [CHSynthesisResult alloc];
  v59 = objc_msgSend_content(v6, v54, v55, v56, v57, v58);
  v65 = objc_msgSend_precomposedStringWithCanonicalMapping(v59, v60, v61, v62, v63, v64);
  v71 = objc_msgSend_drawing(v6, v66, v67, v68, v69, v70);
  v77 = objc_msgSend_segmentStrokeIndexes(v6, v72, v73, v74, v75, v76);
  v83 = objc_msgSend_inventoryDebuggingStyleDrawing(v6, v78, v79, v80, v81, v82);
  v89 = objc_msgSend_inventoryDebuggingStyleContent(v6, v84, v85, v86, v87, v88);
  v95 = objc_msgSend_precomposedStringWithCanonicalMapping(v89, v90, v91, v92, v93, v94);
  v101 = objc_msgSend_numberOfNotSynthesizedCharacters(v6, v96, v97, v98, v99, v100);
  v103 = objc_msgSend_initWithContent_drawing_segmentContents_segmentStrokeIndexes_inventoryDebuggingStyleDrawing_inventoryDebuggingStyleContent_numberOfNotSynthesizedCharacters_(v53, v102, v65, v71, v31, v77, v83, v95, v101);

  return v103;
}

@end