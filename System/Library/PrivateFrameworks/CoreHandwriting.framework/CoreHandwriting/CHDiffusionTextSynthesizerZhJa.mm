@interface CHDiffusionTextSynthesizerZhJa
+ (id)diffusionModelHashes;
- (CHDiffusionTextSynthesizerZhJa)init;
- (id)runPipeline:(id)a3 options:(id)a4 shouldCancel:(id)a5 mode:(int)a6;
- (id)runStyleEmbedding:(id)a3 drawings:(id)a4 shouldCancel:(id)a5;
- (int64_t)canPredictStyleForTranscription:(id)a3;
- (shared_ptr<CoreHandwriting::synthesis::CHDiffusionPipelineContext>)context;
@end

@implementation CHDiffusionTextSynthesizerZhJa

- (CHDiffusionTextSynthesizerZhJa)init
{
  v3.receiver = self;
  v3.super_class = CHDiffusionTextSynthesizerZhJa;
  if ([(CHDiffusionTextSynthesizerZhJa *)&v3 init])
  {
    operator new();
  }

  return 0;
}

+ (id)diffusionModelHashes
{
  v6 = objc_msgSend_modelHash(CHStyleEncoderModelZHJAE5ML, a2, v2, v3, v4, v5);
  v9 = objc_msgSend_modelHashesWithLatinHash_zhJaHash_koHash_(CHSynthesisModelHashes, v7, 0, v6, 0, v8);

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
    _os_log_impl(&dword_18366B000, v13, OS_LOG_TYPE_DEFAULT, "CHDiffusionTextSynthesizerZhJa::runPipeline contents: %{sensitive}@, styleContent: %{sensitive}@, numStyleDrawings: %lu", &v38, 0x20u);
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

    return 2;
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

@end