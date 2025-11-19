@interface CHTextSynthesizerWithLocaleFallback
- (CHTextSynthesizerWithLocaleFallback)initWithLocales:(id)a3 baseSynthesizer:(id)a4;
- (id)refineDrawing:(id)a3 transcription:(id)a4 options:(id)a5 shouldCancel:(id)a6 error:(id *)a7;
- (id)replaceDrawing:(id)a3 originalTranscription:(id)a4 replacementTranscription:(id)a5 options:(id)a6 shouldCancel:(id)a7 error:(id *)a8;
- (id)supportedCharacterIndexesForString:(id)a3 options:(id)a4;
- (id)synthesizeDrawingForString:(id)a3 options:(id)a4 shouldCancel:(id)a5 error:(id *)a6;
- (id)synthesizeExpressionEvaluationResultWithBlock:(id)a3 options:(id)a4 shouldCancel:(id)a5 error:(id *)a6;
@end

@implementation CHTextSynthesizerWithLocaleFallback

- (CHTextSynthesizerWithLocaleFallback)initWithLocales:(id)a3 baseSynthesizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = CHTextSynthesizerWithLocaleFallback;
  v13 = [(CHTextSynthesizerWithLocaleFallback *)&v17 init];
  if (v13)
  {
    v14 = objc_msgSend_copy(v6, v8, v9, v10, v11, v12);
    locales = v13->_locales;
    v13->_locales = v14;

    objc_storeStrong(&v13->_synthesizer, a4);
  }

  return v13;
}

- (id)supportedCharacterIndexesForString:(id)a3 options:(id)a4
{
  v6 = objc_msgSend_supportedCharacterIndexesForString_options_(self->_synthesizer, a2, a3, a4, v4, v5);

  return v6;
}

- (id)synthesizeDrawingForString:(id)a3 options:(id)a4 shouldCancel:(id)a5 error:(id *)a6
{
  v6 = objc_msgSend_synthesizeDrawingForString_options_shouldCancel_error_(self->_synthesizer, a2, a3, a4, a5, a6);

  return v6;
}

- (id)refineDrawing:(id)a3 transcription:(id)a4 options:(id)a5 shouldCancel:(id)a6 error:(id *)a7
{
  v7 = objc_msgSend_refineDrawing_transcription_options_shouldCancel_error_(self->_synthesizer, a2, a3, a4, a5, a6, a7);

  return v7;
}

- (id)replaceDrawing:(id)a3 originalTranscription:(id)a4 replacementTranscription:(id)a5 options:(id)a6 shouldCancel:(id)a7 error:(id *)a8
{
  v8 = objc_msgSend_replaceDrawing_originalTranscription_replacementTranscription_options_shouldCancel_error_(self->_synthesizer, a2, a3, a4, a5, a6, a7, a8);

  return v8;
}

- (id)synthesizeExpressionEvaluationResultWithBlock:(id)a3 options:(id)a4 shouldCancel:(id)a5 error:(id *)a6
{
  v85 = *MEMORY[0x1E69E9840];
  v73 = a3;
  v72 = a4;
  v10 = a5;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = self->_locales;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v74, v84, 16, v12);
  if (v13)
  {
    v14 = *v75;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v75 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v74 + 1) + 8 * i);
        v17 = v73[2](v73, v16);
        v18 = v10;
        v20 = objc_msgSend_synthesizeDrawingForString_options_shouldCancel_error_(self->_synthesizer, v19, v17, v72, v10, a6);
        v26 = v20;
        if (v20 && !objc_msgSend_numberOfNotSynthesizedCharacters(v20, v21, v22, v23, v24, v25))
        {
          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          v45 = qword_1EA84DC98;
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            v51 = objc_msgSend_localeIdentifier(v16, v46, v47, v48, v49, v50);
            v57 = objc_msgSend_length(v17, v52, v53, v54, v55, v56);
            *buf = 138412803;
            v79 = v51;
            v80 = 2117;
            v81 = v17;
            v82 = 2048;
            v83 = v57;
            _os_log_impl(&dword_18366B000, v45, OS_LOG_TYPE_DEFAULT, "SynthesizerWithLocalFallback: Synthesizing expression evaluation result with %@ transcription=%{sensitive}@ (length=%lu)", buf, 0x20u);
          }

          goto LABEL_28;
        }

        v10 = v18;
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v27, &v74, v84, 16, v28);
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v18 = v10;

  v33 = objc_msgSend_localeWithLocaleIdentifier_(MEMORY[0x1E695DF58], v29, @"en_US", v30, v31, v32);
  v34 = v73[2](v73, v33);

  v26 = objc_msgSend_synthesizeDrawingForString_options_shouldCancel_error_(self->_synthesizer, v35, v34, v72, v18, a6);
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v36 = qword_1EA84DC98;
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    v42 = objc_msgSend_length(v34, v37, v38, v39, v40, v41);
    *buf = 138740227;
    v79 = v34;
    v80 = 2048;
    v81 = v42;
    _os_log_impl(&dword_18366B000, v36, OS_LOG_TYPE_DEFAULT, "SynthesizerWithLocalFallback: Synthesizing expression evaluation result in en_US locale with transcription=%{sensitive}@ (length=%lu)", buf, 0x16u);
  }

  if (v26)
  {
LABEL_28:
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v43 = qword_1EA84DC98;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v63 = objc_msgSend_drawing(v26, v58, v59, v60, v61, v62);
      v69 = objc_msgSend_strokeCount(v63, v64, v65, v66, v67, v68);
      *buf = 134217984;
      v79 = v69;
      _os_log_impl(&dword_18366B000, v43, OS_LOG_TYPE_DEFAULT, "SynthesizerWithLocalFallback: Synthesis successful. Created drawing contains %lu strokes.", buf, 0xCu);
    }
  }

  else
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v43 = qword_1EA84DC98;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v44 = @"NO";
      if (v18 && (v18[2](v18) & 1) != 0)
      {
        v44 = @"YES";
      }

      *buf = 138412290;
      v79 = v44;
      _os_log_impl(&dword_18366B000, v43, OS_LOG_TYPE_ERROR, "SynthesizerWithLocalFallback: Synthesis failed. Should cancel=%@", buf, 0xCu);
    }

    v26 = 0;
  }

  return v26;
}

@end