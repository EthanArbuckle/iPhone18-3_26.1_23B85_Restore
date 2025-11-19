@interface CKFullscreenEffectMessageFilter
- (CKFullscreenEffectMessageFilter)init;
- (CKFullscreenEffectMessageFilter)initWithDictionary:(id)a3;
@end

@implementation CKFullscreenEffectMessageFilter

- (CKFullscreenEffectMessageFilter)init
{
  v8.receiver = self;
  v8.super_class = CKFullscreenEffectMessageFilter;
  result = [(CKFullscreenEffectMessageFilter *)&v8 init];
  if (result)
  {
    __asm { FMOV            V0.2D, #1.0 }

    *&result->_balloonAlpha = _Q0;
    result->_shouldUseMaskImage = 0;
  }

  return result;
}

- (CKFullscreenEffectMessageFilter)initWithDictionary:(id)a3
{
  v64 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v61.receiver = self;
  v61.super_class = CKFullscreenEffectMessageFilter;
  v5 = [(CKFullscreenEffectMessageFilter *)&v61 init];
  if (!v5)
  {
    goto LABEL_59;
  }

  v6 = [v4 _stringForKey:@"type"];
  if ([v6 isEqualToIgnoringCase:@"text"])
  {
    goto LABEL_3;
  }

  if ([v6 isEqualToIgnoringCase:@"status"])
  {
    v7 = 1;
  }

  else if ([v6 isEqualToIgnoringCase:@"replaybutton"])
  {
    v7 = 2;
  }

  else if ([v6 isEqualToIgnoringCase:@"bigemoji"])
  {
    v7 = 3;
  }

  else if ([v6 isEqualToIgnoringCase:@"tapback"])
  {
    v7 = 4;
  }

  else if ([v6 isEqualToIgnoringCase:@"sticker"])
  {
    v7 = 5;
  }

  else if ([v6 isEqualToIgnoringCase:@"trigerringmessage"])
  {
    v7 = 6;
  }

  else
  {
    if (([v6 isEqualToIgnoringCase:@"allother"] & 1) == 0)
    {
      v48 = IMLogHandleForCategory();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        [(CKFullscreenEffectMessageFilter *)v6 initWithDictionary:v48];
      }

LABEL_3:
      v7 = 0;
      goto LABEL_18;
    }

    v7 = 999;
  }

LABEL_18:

  v5->_type = v7;
  v8 = [v4 _stringForKey:@"direction"];
  v51 = v6;
  if (([v8 isEqualToIgnoringCase:@"both"] & 1) == 0)
  {
    if ([v8 isEqualToIgnoringCase:@"incoming"])
    {
      v9 = 2;
      goto LABEL_24;
    }

    if ([v8 isEqualToIgnoringCase:@"outgoing"])
    {
      v9 = 1;
      goto LABEL_24;
    }

    v47 = IMLogHandleForCategory();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      [(CKFullscreenEffectMessageFilter *)v8 initWithDictionary:v47];
    }
  }

  v9 = 0;
LABEL_24:
  v50 = v8;

  v5->_direction = v9;
  v10 = [v4 _arrayForKey:@"balloonFilters"];
  v52 = v10;
  if (v10)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v57 objects:v63 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v58;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v58 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v57 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v18 = [MEMORY[0x1E6979378] ck_filterWithDictionary:v17];
            if (v18)
            {
              [v11 addObject:v18];
            }
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v57 objects:v63 count:16];
      }

      while (v14);
    }

    v19 = [v11 copy];
    balloonFilters = v5->_balloonFilters;
    v5->_balloonFilters = v19;

    v10 = v52;
  }

  v21 = [v4 _arrayForKey:@"balloonBackdropFilters"];
  if (v21)
  {
    v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v49 = v21;
    v23 = v21;
    v24 = [v23 countByEnumeratingWithState:&v53 objects:v62 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v54;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v54 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v53 + 1) + 8 * j);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v29 = [MEMORY[0x1E6979378] ck_filterWithDictionary:v28];
            if (v29)
            {
              [v22 addObject:v29];
            }
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v53 objects:v62 count:16];
      }

      while (v25);
    }

    v30 = [v22 copy];
    balloonBackdropFilters = v5->_balloonBackdropFilters;
    v5->_balloonBackdropFilters = v30;

    v10 = v52;
    v21 = v49;
  }

  v32 = [v4 _dictionaryForKey:{@"balloonCompositingFilter", v49}];
  if (v32)
  {
    v33 = [MEMORY[0x1E6979378] ck_filterWithDictionary:v32];
    balloonCompositingFilter = v5->_balloonCompositingFilter;
    v5->_balloonCompositingFilter = v33;
  }

  v35 = [v4 _numberForKey:@"balloonAlpha"];
  v36 = v35;
  v37 = 1.0;
  v38 = 1.0;
  if (v35)
  {
    [v35 floatValue];
    v38 = v39;
  }

  v5->_balloonAlpha = v38;
  v40 = [v4 _numberForKey:@"contentAlpha"];
  v41 = v40;
  if (v40)
  {
    [v40 floatValue];
    v37 = v42;
  }

  v5->_contentAlpha = v37;
  v43 = [v4 _dictionaryForKey:@"textCompositingFilter"];
  if (v43)
  {
    v44 = [MEMORY[0x1E6979378] ck_filterWithDictionary:v43];
    textCompositingFilter = v5->_textCompositingFilter;
    v5->_textCompositingFilter = v44;
  }

LABEL_59:
  return v5;
}

- (void)initWithDictionary:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_19020E000, a2, OS_LOG_TYPE_ERROR, "Invalid CKMessageFilterType string %@", &v2, 0xCu);
}

- (void)initWithDictionary:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_19020E000, a2, OS_LOG_TYPE_ERROR, "Invalid CKMessageFilterDirection string %@", &v2, 0xCu);
}

@end