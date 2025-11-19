@interface CHTextScriptUtilities
+ (BOOL)isCharacterCJKSymbolsPunctuations:(id)a3;
+ (BOOL)isCharacterEmoji:(id)a3;
+ (BOOL)isCharacterFullWidth:(id)a3;
+ (BOOL)isRightToLeftScriptForCharacter:(id)a3;
+ (BOOL)shouldCorrectionGesturesSnapToTokensForScriptCode:(int)a3;
+ (BOOL)shouldRelaxCharacterBoundsPercentageOverlapForScript:(int)a3;
+ (id)majorityScriptIdForString:(id)a3 invalidCodes:(id)a4;
+ (id)scriptHistogramForString:(id)a3;
+ (int)singleScriptCodeForString:(id)a3;
@end

@implementation CHTextScriptUtilities

+ (BOOL)shouldCorrectionGesturesSnapToTokensForScriptCode:(int)a3
{
  v3 = a3 + 1;
  if ((a3 + 1) > 0x27)
  {
    return 0;
  }

  if (((1 << v3) & 0x80000C0003) != 0)
  {
    return 0;
  }

  return ((1 << v3) & 0x4000208) != 0;
}

+ (int)singleScriptCodeForString:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = -1;
  v10 = objc_msgSend_length(v4, v5, v6, v7, v8, v9);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1837135D4;
  v14[3] = &unk_1E6DDCD38;
  v14[4] = &v15;
  v14[5] = a1;
  objc_msgSend_enumerateCodepointsInRange_usingBlock_(v4, v11, 0, v10, v14, v12);
  LODWORD(a1) = *(v16 + 6);
  _Block_object_dispose(&v15, 8);

  return a1;
}

+ (BOOL)isCharacterFullWidth:(id)a3
{
  v18 = 0;
  v19 = 0;
  v3 = a3;
  v7 = objc_msgSend_codepointAtIndex_outRange_(v3, v4, 0, &v18, v5, v6);
  v8 = v19;
  v14 = objc_msgSend_length(v3, v9, v10, v11, v12, v13, v18);

  if (v8 != v14)
  {
    return 0;
  }

  IntPropertyValue = u_getIntPropertyValue(v7, UCHAR_EAST_ASIAN_WIDTH);
  return IntPropertyValue == 3 || IntPropertyValue == 5;
}

+ (BOOL)isCharacterCJKSymbolsPunctuations:(id)a3
{
  v4 = a3;
  objc_msgSend_rangeOfComposedCharacterSequenceAtIndex_(v4, v5, 0, v6, v7, v8);
  if (v17 != objc_msgSend_length(v4, v17, v9, v10, v11, v12))
  {
    if (qword_1EA84DC48 == -1)
    {
      v18 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
LABEL_5:

        goto LABEL_6;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v18 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_5;
      }
    }

    LOWORD(v36[0]) = 0;
    _os_log_impl(&dword_18366B000, v18, OS_LOG_TYPE_ERROR, "Method can only be called on a single (composed) character string", v36, 2u);
    goto LABEL_5;
  }

LABEL_6:
  objc_msgSend_rangeOfComposedCharacterSequenceAtIndex_(v4, v13, 0, v14, v15, v16);
  if (v26 == objc_msgSend_length(v4, v26, v19, v20, v21, v22))
  {
    goto LABEL_11;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v27 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v27 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
  {
LABEL_9:
    LOWORD(v36[0]) = 0;
    _os_log_impl(&dword_18366B000, v27, OS_LOG_TYPE_FAULT, "Method can only be called on a single (composed) character string", v36, 2u);
  }

LABEL_10:

LABEL_11:
  v36[0] = 0;
  v36[1] = 0;
  v28 = objc_msgSend_codepointAtIndex_outRange_(v4, v23, 0, v36, v24, v25);
  Code = ublock_getCode(v28);
  if (Code == UBLOCK_CJK_SYMBOLS_AND_PUNCTUATION)
  {
    isCharacterFullWidth = 1;
  }

  else if (Code == UBLOCK_HALFWIDTH_AND_FULLWIDTH_FORMS)
  {
    isCharacterFullWidth = objc_msgSend_isCharacterFullWidth_(a1, v30, v4, v31, v32, v33);
  }

  else
  {
    isCharacterFullWidth = 0;
  }

  return isCharacterFullWidth;
}

+ (BOOL)isRightToLeftScriptForCharacter:(id)a3
{
  v3 = a3;
  objc_msgSend_rangeOfComposedCharacterSequenceAtIndex_(v3, v4, 0, v5, v6, v7);
  if (v16 != objc_msgSend_length(v3, v16, v8, v9, v10, v11))
  {
    if (qword_1EA84DC48 == -1)
    {
      v17 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
LABEL_5:

        goto LABEL_6;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v17 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_5;
      }
    }

    *buf = 0;
    _os_log_impl(&dword_18366B000, v17, OS_LOG_TYPE_ERROR, "Method can only be called on a single (composed) character string", buf, 2u);
    goto LABEL_5;
  }

LABEL_6:
  objc_msgSend_rangeOfComposedCharacterSequenceAtIndex_(v3, v12, 0, v13, v14, v15);
  if (v22 != objc_msgSend_length(v3, v22, v18, v19, v20, v21))
  {
    if (qword_1EA84DC48 == -1)
    {
      v23 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
LABEL_10:

        goto LABEL_11;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v23 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_10;
      }
    }

    *v31 = 0;
    _os_log_impl(&dword_18366B000, v23, OS_LOG_TYPE_FAULT, "Method can only be called on a single (composed) character string", v31, 2u);
    goto LABEL_10;
  }

LABEL_11:
  v24 = objc_opt_class();
  objc_msgSend_singleScriptCodeForString_(v24, v25, v3, v26, v27, v28);
  v29 = uscript_isRightToLeft() != 0;

  return v29;
}

+ (BOOL)shouldRelaxCharacterBoundsPercentageOverlapForScript:(int)a3
{
  result = 1;
  if ((a3 + 1) > 0x13 || ((1 << (a3 + 1)) & 0xC0001) == 0)
  {
    return a3 == 105;
  }

  return result;
}

+ (BOOL)isCharacterEmoji:(id)a3
{
  v65 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v9 = v3;
  if (!v3 || !objc_msgSend_length(v3, v4, v5, v6, v7, v8) || (objc_msgSend_rangeOfComposedCharacterSequenceAtIndex_(v9, v10, 0, v11, v12, v13), v22 != objc_msgSend_length(v9, v22, v14, v15, v16, v17)))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v29 = qword_1EA84DC58;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v63 = 134217984;
      v64 = objc_msgSend_length(v9, v50, v51, v52, v53, v54);
      _os_log_impl(&dword_18366B000, v29, OS_LOG_TYPE_ERROR, "isCharacterEmoji: character string doesn't match expectation of being single character with length (%lu)\n", &v63, 0xCu);
    }

    goto LABEL_21;
  }

  v23 = objc_msgSend_dataUsingEncoding_(v9, v18, 2617245952, v19, v20, v21);
  v29 = v23;
  if (!v23 || !objc_msgSend_length(v23, v24, v25, v26, v27, v28))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v43 = qword_1EA84DC58;
    if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    v63 = 134217984;
    v64 = objc_msgSend_length(v9, v55, v56, v57, v58, v59);
    v49 = "isCharacterEmoji: encoded data is invalid, null or empty, from character of length (%lu)\n";
    goto LABEL_19;
  }

  v30 = v29;
  v36 = objc_msgSend_bytes(v30, v31, v32, v33, v34, v35);
  v42 = objc_msgSend_length(v29, v37, v38, v39, v40, v41);
  if (v42 < 4)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v43 = qword_1EA84DC58;
    if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    v63 = 134217984;
    v64 = objc_msgSend_length(v9, v44, v45, v46, v47, v48);
    v49 = "isCharacterEmoji: codeCounts is 0 when data is encoded from character of length (%lu)\n";
LABEL_19:
    _os_log_impl(&dword_18366B000, v43, OS_LOG_TYPE_ERROR, v49, &v63, 0xCu);
LABEL_20:

    goto LABEL_21;
  }

  v62 = v42;
  if (u_hasBinaryProperty(*v36, UCHAR_EMOJI) && *v36 > 0x238C)
  {
    v60 = 1;
    goto LABEL_22;
  }

  if (v62 >= 8)
  {
    v60 = u_hasBinaryProperty(*v36, UCHAR_EMOJI) != 0;
    goto LABEL_22;
  }

LABEL_21:
  v60 = 0;
LABEL_22:

  return v60;
}

+ (id)scriptHistogramForString:(id)a3
{
  v3 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_183713F18;
  v24 = sub_183713F28;
  v25 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v4, v5, v6, v7, v8);
  v14 = objc_msgSend_length(v3, v9, v10, v11, v12, v13);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_183713F30;
  v19[3] = &unk_1E6DDCD60;
  v19[4] = &v20;
  objc_msgSend_enumerateCodepointsInRange_usingBlock_(v3, v15, 0, v14, v19, v16);
  v17 = v21[5];
  _Block_object_dispose(&v20, 8);

  return v17;
}

+ (id)majorityScriptIdForString:(id)a3 invalidCodes:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11 = objc_msgSend_scriptHistogramForString_(CHTextScriptUtilities, v7, v5, v8, v9, v10);
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2020000000;
  v29[3] = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_183713F18;
  v27 = sub_183713F28;
  v28 = @"Zund";
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_1837141C4;
  v19[3] = &unk_1E6DDCD88;
  v21 = v29;
  v12 = v6;
  v20 = v12;
  v22 = &v23;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v11, v13, v19, v14, v15, v16);
  v17 = v24[5];

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(v29, 8);

  return v17;
}

@end