@interface CHFastPathTextSynthesizer
- (BOOL)shouldUsePersonalization;
- (CHFastPathTextSynthesizer)initWithStyleInventory:(id)a3;
- (CHFastPathTextSynthesizer)initWithoutPersonalizedStyleInventory;
- (id)generateDrawingForText:(id)a3 options:(id)a4;
- (id)refineDrawing:(id)a3 transcription:(id)a4 options:(id)a5 shouldCancel:(id)a6 error:(id *)a7;
- (id)replaceDrawing:(id)a3 originalTranscription:(id)a4 replacementTranscription:(id)a5 options:(id)a6 shouldCancel:(id)a7 error:(id *)a8;
- (id)supportedCharacterIndexesForString:(id)a3 options:(id)a4;
- (id)supportedCharactersUsingDefaultStyleOnly:(BOOL)a3;
- (id)synthesizeDrawingForString:(id)a3 options:(id)a4 shouldCancel:(id)a5 error:(id *)a6;
@end

@implementation CHFastPathTextSynthesizer

- (CHFastPathTextSynthesizer)initWithoutPersonalizedStyleInventory
{
  if (objc_msgSend_init(self, a2, v2, v3, v4, v5))
  {
    operator new();
  }

  return 0;
}

- (CHFastPathTextSynthesizer)initWithStyleInventory:(id)a3
{
  v4 = a3;
  if (objc_msgSend_initWithoutPersonalizedStyleInventory(self, v5, v6, v7, v8, v9))
  {
    operator new();
  }

  return 0;
}

- (BOOL)shouldUsePersonalization
{
  v6 = objc_msgSend_standardUserDefaults(MEMORY[0x1E695E000], a2, v2, v3, v4, v5);
  v11 = objc_msgSend_dictionaryForKey_(v6, v7, @"com.apple.corehandwriting", v8, v9, v10);

  v16 = objc_msgSend_objectForKey_(v11, v12, @"CHDisablePersonalizedUseFastPathSynthesis", v13, v14, v15);
  v22 = objc_msgSend_BOOLValue(v16, v17, v18, v19, v20, v21);

  return v22 ^ 1;
}

- (id)generateDrawingForText:(id)a3 options:(id)a4
{
  v104 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v55 = a4;
  if (objc_msgSend_shouldUsePersonalization(self, v7, v8, v9, v10, v11))
  {
    v17 = objc_msgSend_fastPathUseDefaultStyle(v55, v12, v13, v14, v15, v16) ^ 1;
  }

  else
  {
    v17 = 0;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v18 = qword_1EA84DC98;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = @"false";
    if (v17)
    {
      v19 = @"true";
    }

    *buf = 138412290;
    *&buf[4] = v19;
    _os_log_impl(&dword_18366B000, v18, OS_LOG_TYPE_DEFAULT, "CHFastPathTextSynthesizer: usePersonalization is %@", buf, 0xCu);
  }

  v83 = 0;
  v84 = &v83;
  v85 = 0x4812000000;
  v86 = sub_18387F96C;
  v87 = sub_18387F9A8;
  v88 = &unk_183A5AC72;
  v90[0] = 0;
  v90[1] = 0;
  v89 = v90;
  v79 = 0;
  v80 = &v79;
  v81 = 0x2020000000;
  v82 = 0;
  v75 = 0;
  v76 = &v75;
  v77 = 0x2020000000;
  v78 = 0;
  v71 = 0;
  v72 = &v71;
  v73 = 0x2020000000;
  v74 = 0;
  v67 = 0;
  v68 = &v67;
  v69 = 0x2020000000;
  v70 = 0;
  v25 = objc_msgSend_length(v6, v20, v21, v22, v23, v24);
  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = sub_18387F9B4;
  v59[3] = &unk_1E6DDF2A0;
  v66 = v17;
  v61 = &v83;
  v62 = &v79;
  v59[4] = self;
  v63 = &v75;
  v26 = v55;
  v60 = v26;
  v64 = &v71;
  v65 = &v67;
  objc_msgSend_enumerateCodepointsInRange_usingBlock_(v6, v27, 0, v25, v59, v28);
  if (!v68[3])
  {
    v33 = @"NO";
    goto LABEL_31;
  }

  sub_183790530(&self->_inventory, 9633, 1, buf);
  v29 = *buf;
  if (*&buf[8] == *buf)
  {
    v33 = @"NO";
    if (!*buf)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v30 = v84[7];
    if (!v30)
    {
LABEL_22:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v31 = v30;
        v32 = *(v30 + 8);
        if (v32 < 0x25A2)
        {
          break;
        }

        v30 = *v31;
        if (!*v31)
        {
          goto LABEL_22;
        }
      }

      if (v32 == 9633)
      {
        break;
      }

      v30 = v31[1];
      if (!v30)
      {
        goto LABEL_22;
      }
    }

    if (v31 + 5 == buf)
    {
      v33 = @"YES";
      if (!*buf)
      {
        goto LABEL_31;
      }
    }

    else
    {
      sub_18378F020(v31 + 5, *buf, *&buf[8], 0xAAAAAAAAAAAAAAABLL * ((*&buf[8] - *buf) >> 3));
      v33 = @"YES";
      v29 = *buf;
      if (!*buf)
      {
        goto LABEL_31;
      }
    }
  }

  v34 = *&buf[8];
  v35 = v29;
  if (*&buf[8] != v29)
  {
    do
    {
      v36 = *(v34 - 3);
      v34 -= 24;
    }

    while (v34 != v29);
    v35 = *buf;
  }

  *&buf[8] = v29;
  operator delete(v35);
LABEL_31:
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v37 = qword_1EA84DC98;
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    v38 = v80[3];
    v39 = v76[3];
    v40 = v72[3];
    v41 = v68[3];
    *buf = 134219010;
    *&buf[4] = v38;
    *&buf[12] = 2048;
    *&buf[14] = v39;
    *&buf[22] = 2048;
    *v92 = v40;
    *&v92[8] = 2048;
    *&v92[10] = v41;
    *&v92[18] = 2112;
    *&v92[20] = v33;
    _os_log_impl(&dword_18366B000, v37, OS_LOG_TYPE_DEFAULT, "CHFastPathTextSynthesizer: statistics of collected codepoints. USER_STYLE %ld, DEFAULT_STYLE %ld, SEED_STYLE %ld, MISSED %ld, NOTDEF_LOADED %@", buf, 0x34u);
  }

  objc_msgSend_seed(v26, v42, v43, v44, v45, v46);
  v58 = v57 = &unk_1EF1BCCB8;
  sub_18378D1D0(&v57, v6, (v84 + 6), buf);
  v47 = [CHSynthesisResult alloc];
  v49 = objc_msgSend_initWithContent_drawing_segmentContents_segmentStrokeIndexes_numberOfNotSynthesizedCharacters_(v47, v48, v6, *buf, v98, v99, v101 + v100);
  v56[4] = v94;
  v56[5] = v95;
  v56[6] = v96;
  v56[7] = v97;
  v56[0] = *&buf[8];
  v56[1] = *v92;
  v56[2] = *&v92[16];
  v56[3] = v93;
  objc_msgSend_setPrincipalLines_(v49, v50, v56, v51, v52, v53);
  if (__p)
  {
    v103 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&v67, 8);
  _Block_object_dispose(&v71, 8);
  _Block_object_dispose(&v75, 8);
  _Block_object_dispose(&v79, 8);
  _Block_object_dispose(&v83, 8);
  sub_18368EBD4(&v89, v90[0]);

  return v49;
}

- (id)synthesizeDrawingForString:(id)a3 options:(id)a4 shouldCancel:(id)a5 error:(id *)a6
{
  v8 = a3;
  v9 = a4;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v10 = qword_1EA84DC98;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v10, OS_LOG_TYPE_DEFAULT, "CHFastPathTextSynthesizer: start synthesizeDrawingForString", buf, 2u);
  }

  if (!objc_msgSend_length(v8, v11, v12, v13, v14, v15))
  {
    v31 = 0;
    goto LABEL_14;
  }

  v20 = objc_msgSend_synthesisOptionsWithDictionary_(CHSynthesisRequestOptions, v16, v9, v17, v18, v19);
  v24 = objc_msgSend_generateDrawingForText_options_(self, v21, v8, v20, v22, v23);
  v30 = objc_msgSend_drawing(v24, v25, v26, v27, v28, v29);

  if (!v30)
  {
    if (qword_1EA84DC48 == -1)
    {
      v32 = qword_1EA84DC98;
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
LABEL_12:

        v31 = 0;
        goto LABEL_13;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v32 = qword_1EA84DC98;
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }
    }

    *v34 = 0;
    _os_log_impl(&dword_18366B000, v32, OS_LOG_TYPE_ERROR, "CHFastPathTextSynthesizer: result drawing is nil", v34, 2u);
    goto LABEL_12;
  }

  v31 = v24;
LABEL_13:

LABEL_14:

  return v31;
}

- (id)refineDrawing:(id)a3 transcription:(id)a4 options:(id)a5 shouldCancel:(id)a6 error:(id *)a7
{
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v7 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v7, OS_LOG_TYPE_ERROR, "CHFastPathTextSynthesizer doesn't support refineDrawing!", buf, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v8 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v8 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
LABEL_7:
    *v10 = 0;
    _os_log_impl(&dword_18366B000, v8, OS_LOG_TYPE_FAULT, "CHFastPathTextSynthesizer doesn't support refineDrawing!", v10, 2u);
  }

LABEL_8:

  return 0;
}

- (id)replaceDrawing:(id)a3 originalTranscription:(id)a4 replacementTranscription:(id)a5 options:(id)a6 shouldCancel:(id)a7 error:(id *)a8
{
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v8 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v8, OS_LOG_TYPE_ERROR, "CHFastPathTextSynthesizer doesn't support replacementDrawing!", buf, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v9 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v9 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
LABEL_7:
    *v11 = 0;
    _os_log_impl(&dword_18366B000, v9, OS_LOG_TYPE_FAULT, "CHFastPathTextSynthesizer doesn't support replacementDrawing!", v11, 2u);
  }

LABEL_8:

  return 0;
}

- (id)supportedCharactersUsingDefaultStyleOnly:(BOOL)a3
{
  v6 = a3;
  v32 = *MEMORY[0x1E69E9840];
  v8 = objc_msgSend_set(MEMORY[0x1E695DFA8], a2, a3, v3, v4, v5);
  v9 = sub_183790E88;
  if (v6)
  {
    v9 = sub_183790E9C;
  }

  v30[0] = &unk_1EF1BCE68;
  v30[1] = v9;
  v31 = v30;
  sub_183790AE4(&self->_inventory, v30, &__p);
  if (v31 == v30)
  {
    (*(*v31 + 32))(v31);
    v15 = v29;
    if (v29)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (v31)
    {
      (*(*v31 + 40))();
    }

    v15 = v29;
    if (v29)
    {
      do
      {
LABEL_7:
        v16 = sub_1837A4260(*(v15 + 4), v10, v11, v12, v13, v14);
        objc_msgSend_addObject_(v8, v17, v16, v18, v19, v20);

        v15 = *v15;
      }

      while (v15);
      v21 = v29;
      v22 = v8;
      if (v21)
      {
        v23 = v21;
        do
        {
          v24 = *v23;
          operator delete(v23);
          v23 = v24;
        }

        while (v24);
      }

      v25 = __p;
      __p = 0;
      if (v25)
      {
        goto LABEL_12;
      }

      goto LABEL_13;
    }
  }

  v27 = v8;
  v25 = __p;
  __p = 0;
  if (v25)
  {
LABEL_12:
    operator delete(v25);
  }

LABEL_13:

  return v8;
}

- (id)supportedCharacterIndexesForString:(id)a3 options:(id)a4
{
  v6 = a3;
  v11 = objc_msgSend_objectForKeyedSubscript_(a4, v7, CHTextSynthesisOptionFastPathUseDefaultStyle[0], v8, v9, v10);
  v17 = objc_msgSend_BOOLValue(v11, v12, v13, v14, v15, v16);

  v22 = objc_msgSend_supportedCharactersUsingDefaultStyleOnly_(self, v18, v17, v19, v20, v21);
  v28 = objc_msgSend_allObjects(v22, v23, v24, v25, v26, v27);
  v33 = objc_msgSend_componentsJoinedByString_(v28, v29, &stru_1EF1C0318, v30, v31, v32);

  v38 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v34, v33, v35, v36, v37);
  v43 = objc_msgSend_indexesOfCharacters_(v6, v39, v38, v40, v41, v42);

  return v43;
}

@end