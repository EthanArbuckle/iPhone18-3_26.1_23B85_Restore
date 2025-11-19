@interface CHContextualCharacterTransliteration
- (BOOL)isValidForLocale:(id)a3;
- (BOOL)meetsContextRequirementWithLeftContext:(id)a3 rightContext:(id)a4;
- (CHContextualCharacterTransliteration)initWithConfusion:(id)a3 correction:(id)a4 locales:(id)a5 leftContext:(id)a6 rightContext:(id)a7 requiresLexiconMatch:(BOOL)a8 shouldPreserveOriginal:(BOOL)a9;
@end

@implementation CHContextualCharacterTransliteration

- (CHContextualCharacterTransliteration)initWithConfusion:(id)a3 correction:(id)a4 locales:(id)a5 leftContext:(id)a6 rightContext:(id)a7 requiresLexiconMatch:(BOOL)a8 shouldPreserveOriginal:(BOOL)a9
{
  v16 = a3;
  v17 = a4;
  v23 = a5;
  v22 = a6;
  v18 = a7;
  v24.receiver = self;
  v24.super_class = CHContextualCharacterTransliteration;
  v19 = [(CHContextualCharacterTransliteration *)&v24 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_confusion, a3);
    objc_storeStrong(&v20->_correction, a4);
    objc_storeStrong(&v20->_locales, a5);
    objc_storeStrong(&v20->_requiredLeftContext, a6);
    objc_storeStrong(&v20->_requiredRightContext, a7);
    v20->_requiresLexiconMatch = a8;
    v20->_shouldPreserveOriginal = a9;
  }

  return v20;
}

- (BOOL)meetsContextRequirementWithLeftContext:(id)a3 rightContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13 = objc_msgSend_ch_emptyCharacterSet(MEMORY[0x1E696AB08], v8, v9, v10, v11, v12);
  v18 = v13;
  requiredLeftContext = self->_requiredLeftContext;
  if (!requiredLeftContext)
  {
    goto LABEL_6;
  }

  if (objc_msgSend_isSupersetOfSet_(v13, v14, requiredLeftContext, v15, v16, v17))
  {
    if (v6)
    {
      v21 = objc_msgSend_length(v6, v14, v20, v15, v16, v17) == 0;
      requiredRightContext = self->_requiredRightContext;
      if (!requiredRightContext)
      {
        goto LABEL_19;
      }

LABEL_10:
      if (v21)
      {
        if (objc_msgSend_isSupersetOfSet_(v18, v14, requiredRightContext, v15, v16, v17))
        {
          if (!v7)
          {
            LOBYTE(v21) = 1;
            goto LABEL_19;
          }

          v34 = objc_msgSend_length(v7, v29, v30, v31, v32, v33);
          goto LABEL_16;
        }

        if (v7)
        {
          v34 = objc_msgSend_rangeOfCharacterFromSet_(v7, v29, self->_requiredRightContext, v31, v32, v33);
LABEL_16:
          LOBYTE(v21) = v34 == 0;
          goto LABEL_19;
        }

LABEL_17:
        LOBYTE(v21) = 0;
        goto LABEL_19;
      }

      goto LABEL_19;
    }

LABEL_6:
    v21 = 1;
    requiredRightContext = self->_requiredRightContext;
    if (!requiredRightContext)
    {
      goto LABEL_19;
    }

    goto LABEL_10;
  }

  if (!v6)
  {
    goto LABEL_17;
  }

  v23 = objc_msgSend_rangeOfCharacterFromSet_options_(v6, v14, self->_requiredLeftContext, 4, v16, v17);
  v21 = v23 == objc_msgSend_length(v6, v24, v25, v26, v27, v28) - 1;
  requiredRightContext = self->_requiredRightContext;
  if (requiredRightContext)
  {
    goto LABEL_10;
  }

LABEL_19:

  return v21;
}

- (BOOL)isValidForLocale:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  locales = self->_locales;
  v6 = locales == 0;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v7 = locales;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v33, v37, 16, v9);
  if (v10)
  {
    v16 = v10;
    v17 = *v34;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v34 != v17)
        {
          objc_enumerationMutation(v7);
        }

        v19 = *(*(&v33 + 1) + 8 * i);
        v20 = objc_msgSend_languageCode(v4, v11, v12, v13, v14, v15, v33);
        v26 = objc_msgSend_languageCode(v19, v21, v22, v23, v24, v25);
        isEqualToString = objc_msgSend_isEqualToString_(v20, v27, v26, v28, v29, v30);

        if (isEqualToString)
        {
          v6 = 1;
          goto LABEL_11;
        }
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v11, &v33, v37, 16, v15);
      if (v16)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

@end