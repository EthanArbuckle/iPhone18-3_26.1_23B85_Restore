@interface IASTextInputActionsErrorChecking
+ (id)validateLanguage:(id)a3;
+ (id)validateLanguageHelper:(id)a3;
+ (id)validateRegion:(id)a3;
+ (id)validateRegionHelper:(id)a3;
@end

@implementation IASTextInputActionsErrorChecking

+ (id)validateLanguageHelper:(id)a3
{
  v3 = a3;
  v5 = objc_msgSend_setWithObjects_(MEMORY[0x1E695DFD8], v4, @"emoji", @"dictation", 0);
  if (objc_msgSend_containsObject_(v5, v6, v3))
  {
    goto LABEL_9;
  }

  if (objc_msgSend_length(v3, v7, v8) != 2 && objc_msgSend_length(v3, v9, v10) != 3 && objc_msgSend_length(v3, v9, v10) != 7 && objc_msgSend_length(v3, v9, v10) != 8)
  {
    goto LABEL_10;
  }

  if (qword_1ED82C598 != -1)
  {
    sub_1D462C35C();
  }

  v11 = qword_1ED82C590;
  v12 = objc_msgSend_length(v3, v9, v10);
  if (objc_msgSend_numberOfMatchesInString_options_range_(v11, v13, v3, 0, 0, v12) == 1)
  {
LABEL_9:
    v14 = 0;
  }

  else
  {
LABEL_10:
    v14 = @"L";
  }

  return v14;
}

+ (id)validateLanguage:(id)a3
{
  v3 = a3;
  v6 = v3;
  if (v3 && objc_msgSend_length(v3, v4, v5))
  {
    if (qword_1ED82C5A8 != -1)
    {
      sub_1D462C370();
    }

    v10 = objc_msgSend_objectForKey_(qword_1ED82C5A0, v7, v6);
    if (v10)
    {
      v11 = objc_msgSend_null(MEMORY[0x1E695DFB0], v8, v9);
      isEqual = objc_msgSend_isEqual_(v10, v12, v11);

      if (isEqual)
      {
        v14 = 0;
      }

      else
      {
        v14 = v10;
      }
    }

    else
    {
      v14 = objc_msgSend_validateLanguageHelper_(IASTextInputActionsErrorChecking, v8, v6);
      v17 = qword_1ED82C5A0;
      if (v14)
      {
        objc_msgSend_setObject_forKey_(qword_1ED82C5A0, v15, v14, v6);
      }

      else
      {
        v18 = objc_msgSend_null(MEMORY[0x1E695DFB0], v15, v16);
        objc_msgSend_setObject_forKey_(v17, v19, v18, v6);
      }
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)validateRegionHelper:(id)a3
{
  v3 = a3;
  if (objc_msgSend_length(v3, v4, v5) < 2 || objc_msgSend_length(v3, v6, v7) > 4)
  {
    goto LABEL_6;
  }

  if (qword_1ED82C5B8 != -1)
  {
    sub_1D462C384();
  }

  v10 = qword_1ED82C5B0;
  v11 = objc_msgSend_length(v3, v8, v9);
  v13 = objc_msgSend_numberOfMatchesInString_options_range_(v10, v12, v3, 0, 0, v11);
  v14 = 0;
  if (v13 != 1)
  {
LABEL_6:
    v14 = @"R";
  }

  return v14;
}

+ (id)validateRegion:(id)a3
{
  v3 = a3;
  v6 = v3;
  if (v3 && objc_msgSend_length(v3, v4, v5))
  {
    if (qword_1ED82C5C8 != -1)
    {
      sub_1D462C398();
    }

    v10 = objc_msgSend_objectForKey_(qword_1ED82C5C0, v7, v6);
    if (v10)
    {
      v11 = objc_msgSend_null(MEMORY[0x1E695DFB0], v8, v9);
      isEqual = objc_msgSend_isEqual_(v10, v12, v11);

      if (isEqual)
      {
        v14 = 0;
      }

      else
      {
        v14 = v10;
      }
    }

    else
    {
      v14 = objc_msgSend_validateRegionHelper_(IASTextInputActionsErrorChecking, v8, v6);
      v17 = qword_1ED82C5C0;
      if (v14)
      {
        objc_msgSend_setObject_forKey_(qword_1ED82C5C0, v15, v14, v6);
      }

      else
      {
        v18 = objc_msgSend_null(MEMORY[0x1E695DFB0], v15, v16);
        objc_msgSend_setObject_forKey_(v17, v19, v18, v6);
      }
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end