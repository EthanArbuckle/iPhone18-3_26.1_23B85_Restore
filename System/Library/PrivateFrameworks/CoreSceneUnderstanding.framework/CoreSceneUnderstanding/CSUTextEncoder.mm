@interface CSUTextEncoder
- (BOOL)loadResources:(id *)a3;
- (BOOL)reLoadResources:(id *)a3;
- (CSUTextEncoder)initWithConfiguration:(id)a3;
- (void)runOnInput:(id)a3 error:(id *)a4;
- (void)runOnInputText:(id)a3 error:(id *)a4;
- (void)setContextLength:(unint64_t)a3 error:(id *)a4;
@end

@implementation CSUTextEncoder

- (CSUTextEncoder)initWithConfiguration:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_configuration, a3);
  v10 = objc_msgSend_revision(v5, v6, v7, v8, v9);
  v11 = 0;
  if (v10 <= 0xC && ((1 << v10) & 0x19C0) != 0)
  {
    v12 = [CSUTextEncoderE5ML alloc];
    v17 = objc_msgSend_textEncoderE5MLConfig(v5, v13, v14, v15, v16);
    v21 = objc_msgSend_initWithConfiguration_(v12, v18, v17, v19, v20);
    textEncoderE5ML = self->_textEncoderE5ML;
    self->_textEncoderE5ML = v21;

    if (self->_textEncoderE5ML)
    {
      v27 = objc_msgSend_textEncoderE5MLConfig(v5, v23, v24, v25, v26);
      v32 = objc_msgSend_contextLength(v27, v28, v29, v30, v31);
      objc_msgSend_setContextLength_(self->_configuration, v33, v32, v34, v35);

      v11 = self;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (BOOL)loadResources:(id *)a3
{
  *a3 = 0;
  v7 = objc_msgSend_revision(self->_configuration, a2, a3, v3, v4);
  if (v7 > 0xC || ((1 << v7) & 0x19C0) == 0)
  {
    *a3 = objc_msgSend_errorForInvalidArgumentWithLocalizedDescription_(CSUError, v8, @"Text encoder revision not supported in loadResources(...)", v9, v10);
    return 0;
  }

  else
  {
    textEncoderE5ML = self->_textEncoderE5ML;

    return objc_msgSend_loadResources_(textEncoderE5ML, v8, a3, v9, v10);
  }
}

- (BOOL)reLoadResources:(id *)a3
{
  *a3 = 0;
  v7 = objc_msgSend_revision(self->_configuration, a2, a3, v3, v4);
  if (v7 > 0xC || ((1 << v7) & 0x19C0) == 0)
  {
    *a3 = objc_msgSend_errorForInvalidArgumentWithLocalizedDescription_(CSUError, v8, @"Text encoder revision not supported in reLoadResources(...)", v9, v10);
    return 0;
  }

  else
  {
    textEncoderE5ML = self->_textEncoderE5ML;

    return objc_msgSend_reLoadResources_(textEncoderE5ML, v8, a3, v9, v10);
  }
}

- (void)runOnInput:(id)a3 error:(id *)a4
{
  v100 = *MEMORY[0x1E69E9840];
  v84 = a3;
  v90 = 0;
  v91 = &v90;
  v92 = 0x3032000000;
  v93 = sub_1AC087BF8;
  v94 = sub_1AC087C08;
  v95 = 0;
  v9 = objc_msgSend_revision(self->_configuration, v5, v6, v7, v8);
  v82 = self;
  if (v9 > 0xC || ((1 << v9) & 0x19C0) == 0)
  {
    v70 = MEMORY[0x1E696AEC0];
    v75 = v71 = objc_msgSend_revision(self->_configuration, v10, v11, v12, v13);
    v79 = objc_msgSend_errorForUnsupportedRevision_(CSUError, v76, v75, v77, v78);
    v80 = v91[5];
    v91[5] = v79;
  }

  else
  {
    context = objc_autoreleasePoolPush();
    v15 = sub_1AC090E50();
    v16 = os_signpost_id_generate(v15);

    v17 = sub_1AC090E50();
    v18 = v17;
    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1AC05D000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v16, "CSUTextEncoderE5MLRunOnInput", "", buf, 2u);
    }

    *buf = &unk_1F20D0B48;
    v98 = v16;
    v99 = buf;
    v19 = objc_opt_new();
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v20 = v84;
    v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v86, v96, 16);
    if (v22)
    {
      v23 = *v87;
      while (2)
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v87 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v86 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v26 = objc_opt_new();
            v31 = objc_msgSend_string(v25, v27, v28, v29, v30);
            objc_msgSend_setString_(v26, v32, v31, v33, v34);

            objc_msgSend_addObject_(v19, v35, v26, v36, v37);
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v26 = objc_opt_new();
              v42 = objc_msgSend_embedding(v25, v38, v39, v40, v41);
              objc_msgSend_setEmbedding_(v26, v43, v42, v44, v45);

              objc_msgSend_addObject_(v19, v46, v26, v47, v48);
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v64 = objc_msgSend_errorForInvalidArgumentWithLocalizedDescription_(CSUError, v49, @"input item in array for text encoding should be one of types CSUString, CSUTokenEmbedding, CSUTokenID", v50, v51);
                v65 = v91[5];
                v91[5] = v64;

                goto LABEL_23;
              }

              v26 = objc_opt_new();
              v56 = objc_msgSend_tokenID(v25, v52, v53, v54, v55);
              objc_msgSend_setTokenID_(v26, v57, v56, v58, v59);

              objc_msgSend_addObject_(v19, v60, v26, v61, v62);
            }
          }
        }

        v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v63, &v86, v96, 16);
        if (v22)
        {
          continue;
        }

        break;
      }
    }

LABEL_23:

    textEncoderE5ML = v82->_textEncoderE5ML;
    v85[0] = MEMORY[0x1E69E9820];
    v85[1] = 3221225472;
    v85[2] = sub_1AC087C10;
    v85[3] = &unk_1E7967F90;
    v85[4] = v82;
    v85[5] = &v90;
    objc_msgSend_runOnInput_completion_(textEncoderE5ML, v67, v19, v85, v68);

    if (!v99)
    {
      sub_1AC066F88();
    }

    (*(*v99 + 48))(v99);
    if (v99 == buf)
    {
      (*(*v99 + 32))(v99);
    }

    else if (v99)
    {
      (*(*v99 + 40))(v99);
    }

    objc_autoreleasePoolPop(context);
  }

  if (a4)
  {
    *a4 = v91[5];
  }

  _Block_object_dispose(&v90, 8);

  v69 = *MEMORY[0x1E69E9840];
}

- (void)runOnInputText:(id)a3 error:(id *)a4
{
  v6 = a3;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_1AC087BF8;
  v37 = sub_1AC087C08;
  v38 = 0;
  v11 = objc_msgSend_revision(self->_configuration, v7, v8, v9, v10);
  if (v11 > 0xC || ((1 << v11) & 0x19C0) == 0)
  {
    v21 = MEMORY[0x1E696AEC0];
    v26 = v22 = objc_msgSend_revision(self->_configuration, v12, v13, v14, v15);
    v30 = objc_msgSend_errorForUnsupportedRevision_(CSUError, v27, v26, v28, v29);
    v31 = v34[5];
    v34[5] = v30;

    if (!a4)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v17 = objc_autoreleasePoolPush();
  textEncoderE5ML = self->_textEncoderE5ML;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = sub_1AC088058;
  v32[3] = &unk_1E7967F90;
  v32[4] = self;
  v32[5] = &v33;
  objc_msgSend_runOnInputText_completion_(textEncoderE5ML, v19, v6, v32, v20);
  objc_autoreleasePoolPop(v17);
  if (a4)
  {
LABEL_6:
    *a4 = v34[5];
  }

LABEL_7:
  _Block_object_dispose(&v33, 8);
}

- (void)setContextLength:(unint64_t)a3 error:(id *)a4
{
  if (objc_msgSend_contextLength(self->_configuration, a2, a3, a4, v4) != a3)
  {
    NSLog(&cfstr_SettingNewCont.isa, a3);
    objc_msgSend_setContextLength_(self->_configuration, v8, a3, v9, v10);

    objc_msgSend_reLoadResources_(self, v11, a4, v12, v13);
  }
}

@end