@interface EDDataDetectionUtilities
+ (BOOL)isRealWord:(id)a3;
+ (id)detectOneTimeCodeWithDataDetectors:(id)a3;
+ (id)extractOneTimeCode:(id)a3 withSubject:(id)a4;
+ (id)log;
@end

@implementation EDDataDetectionUtilities

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__EDDataDetectionUtilities_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_28 != -1)
  {
    dispatch_once(&log_onceToken_28, block);
  }

  v2 = log_log_27;

  return v2;
}

void __31__EDDataDetectionUtilities_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_27;
  log_log_27 = v1;
}

+ (BOOL)isRealWord:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF58] currentLocale];
  v5 = [v4 localeIdentifier];

  v6 = [v5 hasPrefix:@"en"];
  v7 = +[EDLexicon english];
  v8 = [v7 isRealWord:v3];

  if (v8)
  {
    v9 = +[EDDataDetectionUtilities log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [MEMORY[0x1E699B858] fullyOrPartiallyRedactedStringForString:v3];
      v17 = 138543362;
      v18 = v10;
      _os_log_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_DEFAULT, "This current paragraph does not contain a valid code since %{public}@ is a real English word", &v17, 0xCu);
    }
  }

  else
  {
    if ((v6 & 1) != 0 || (+[EDLexicon current](EDLexicon, "current"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 isRealWord:v3], v12, !v13))
    {
      v11 = 0;
      goto LABEL_10;
    }

    v9 = +[EDDataDetectionUtilities log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [MEMORY[0x1E699B858] fullyOrPartiallyRedactedStringForString:v3];
      v17 = 138543618;
      v18 = v14;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_DEFAULT, "This current paragraph does not contain a valid code since %{public}@ is a real word in this language: %@", &v17, 0x16u);
    }
  }

  v11 = 1;
LABEL_10:

  v15 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (id)detectOneTimeCodeWithDataDetectors:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v37 = v5;
  v6 = [v5 length];
  if (v6 >= 0x1F4)
  {
    v7 = 500;
  }

  else
  {
    v7 = v6;
  }

  if (v6)
  {
    v38 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v36 = [objc_alloc(MEMORY[0x1E6999A90]) initWithScannerType:0 passiveIntent:1];
    [MEMORY[0x1E6999A88] scanString:v5 range:0 configuration:v7];
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v8 = v40 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v9)
    {
      v10 = *v40;
      v11 = *MEMORY[0x1E6999990];
      v3 = "Skipping one-time code with length %ld";
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v40 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v39 + 1) + 8 * i);
          v4 = [v13 type];
          v14 = [v4 isEqualToString:v11];

          if (v14)
          {
            v15 = [v13 value];
            v16 = [v15 length] < 0xA;

            if (v16)
            {
              v4 = [v13 value];
              [v38 addObject:v4];
            }

            else
            {
              v4 = +[EDDataDetectionUtilities log];
              if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
              {
                v17 = [v13 value];
                v18 = [v17 length];
                *buf = 134217984;
                v44 = v18;
                _os_log_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_DEFAULT, "Skipping one-time code with length %ld", buf, 0xCu);
              }
            }
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v39 objects:v47 count:16];
      }

      while (v9);
    }

    if (![v38 count])
    {
      v33 = +[EDDataDetectionUtilities log];
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C61EF000, v33, OS_LOG_TYPE_DEFAULT, "No one-time codes detected using data detectors", buf, 2u);
      }

      v29 = 0;
      goto LABEL_38;
    }

    v19 = [v38 ef_filter:&__block_literal_global_36];
    if ([v19 count])
    {
      v20 = [v19 count];
      if (v20 < [v38 count])
      {
        v21 = +[EDDataDetectionUtilities log];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = [v38 count];
          v23 = [v19 count];
          *buf = 134218240;
          v44 = v22;
          v45 = 2048;
          v46 = v23;
          _os_log_impl(&dword_1C61EF000, v21, OS_LOG_TYPE_DEFAULT, "Found %lu potential codes, filtered down to %lu codes.", buf, 0x16u);
        }

        v24 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:v19];
        v38 = v24;
      }
    }

    v25 = [v38 count];
    if (v25 < 2 || (-[NSObject firstObject](v38, "firstObject"), v3 = objc_claimAutoreleasedReturnValue(), v26 = [v3 length], -[NSObject objectAtIndexedSubscript:](v38, "objectAtIndexedSubscript:", 1), v4 = objc_claimAutoreleasedReturnValue(), v26 >= -[NSObject length](v4, "length")))
    {
      v27 = [v38 firstObject];
      if (v25 < 2)
      {
LABEL_32:
        v30 = +[EDDataDetectionUtilities log];
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = [v38 count];
          v32 = [MEMORY[0x1E699B858] partiallyRedactedStringForString:v27];
          *buf = 134218242;
          v44 = v31;
          v45 = 2112;
          v46 = v32;
          _os_log_impl(&dword_1C61EF000, v30, OS_LOG_TYPE_DEFAULT, "We found %lu potential One-Time Code(s) in this email, the One-Time Code to use is : %@", buf, 0x16u);
        }

        v33 = v27;
        v29 = v33;
LABEL_38:

        v28 = v38;
        goto LABEL_39;
      }
    }

    else
    {
      v27 = [v38 objectAtIndexedSubscript:1];
    }

    goto LABEL_32;
  }

  v28 = +[EDDataDetectionUtilities log];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C61EF000, v28, OS_LOG_TYPE_DEFAULT, "No valid string sent to data detectors", buf, 2u);
  }

  v29 = 0;
LABEL_39:

  v34 = *MEMORY[0x1E69E9840];

  return v29;
}

BOOL __63__EDDataDetectionUtilities_detectOneTimeCodeWithDataDetectors___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 length] == 8 || objc_msgSend(v2, "length") == 6;

  return v3;
}

+ (id)extractOneTimeCode:(id)a3 withSubject:(id)a4
{
  v53 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v44 = v5;
  v41 = v6;
  if (v5)
  {
    v7 = v5;
    if (v6)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n%@", v6, v5];
      goto LABEL_8;
    }
  }

  else
  {
    v9 = +[EDDataDetectionUtilities log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [EDDataDetectionUtilities extractOneTimeCode:v9 withSubject:?];
    }

    v7 = v41;
  }

  v8 = v7;
LABEL_8:
  v40 = v8;
  v10 = [EDDataDetectionUtilities detectOneTimeCodeWithDataDetectors:?];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v35 = +[EDOTCKeywords localizedExpressionStrings];
    if ([v35 count])
    {
      v38 = [MEMORY[0x1E696AB08] newlineCharacterSet];
      v33 = [MEMORY[0x1E696AD48] characterSetWithCharactersInString:@"-"];
      v13 = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
      [v33 formUnionWithCharacterSet:v13];

      v42 = [MEMORY[0x1E696AE88] scannerWithString:v5];
      v37 = 0;
      v34 = 0;
      v39 = 0;
      v14 = 0;
      v15 = 0;
      while (([v42 isAtEnd] & 1) == 0)
      {
        v49 = v15;
        [v42 scanUpToCharactersFromSet:v38 intoString:&v49];
        v43 = v49;

        v16 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
        v17 = [v43 stringByTrimmingCharactersInSet:v16];

        if ([v17 length])
        {
          if (v34)
          {
            v47 = 0u;
            v48 = 0u;
            v45 = 0u;
            v46 = 0u;
            v18 = v35;
            v19 = [v18 countByEnumeratingWithState:&v45 objects:v52 count:16];
            if (v19)
            {
              v20 = *v46;
              while (2)
              {
                for (i = 0; i != v19; ++i)
                {
                  if (*v46 != v20)
                  {
                    objc_enumerationMutation(v18);
                  }

                  v22 = *(*(&v45 + 1) + 8 * i);
                  v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@, %@", v14, v17];
                  if ([v23 rangeOfString:v22 options:1025] != 0x7FFFFFFFFFFFFFFFLL)
                  {
                    v28 = +[EDDataDetectionUtilities log];
                    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      v51 = v22;
                      _os_log_impl(&dword_1C61EF000, v28, OS_LOG_TYPE_DEFAULT, "Mail detected a one-time code with keyword: %@", buf, 0xCu);
                    }

                    v5 = v44;
                    v37 = v37;

                    v12 = v37;
                    goto LABEL_45;
                  }

                  v5 = v44;
                }

                v19 = [v18 countByEnumeratingWithState:&v45 objects:v52 count:16];
                if (v19)
                {
                  continue;
                }

                break;
              }
            }
          }

          if (-[NSObject length](v17, "length") - 4) > 5 || ([a1 isRealWord:v17])
          {
            v24 = v14;
            v14 = v17;
          }

          else
          {
            v25 = [v17 stringByTrimmingCharactersInSet:v33];
            v34 = [v25 isEqualToString:&stru_1F45B4608];

            v24 = v37;
            v37 = v17;
          }

          v26 = v17;

          ++v39;
        }

        v27 = v43;
        v15 = v43;
        if (v39 == 10)
        {
          goto LABEL_38;
        }
      }

      v27 = v15;
LABEL_38:
      v43 = v27;
      if (([v42 isAtEnd] & 1) == 0)
      {
        v30 = +[EDDataDetectionUtilities log];
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v51 = 10;
          _os_log_impl(&dword_1C61EF000, v30, OS_LOG_TYPE_DEFAULT, "Mail stopped scanning the message after line %lu", buf, 0xCu);
        }
      }

      v17 = +[EDDataDetectionUtilities log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C61EF000, v17, OS_LOG_TYPE_DEFAULT, "No one-time code detected using our heuristics", buf, 2u);
      }

      v12 = 0;
LABEL_45:
    }

    else
    {
      v29 = +[EDDataDetectionUtilities log];
      v38 = v29;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [EDDataDetectionUtilities extractOneTimeCode:v29 withSubject:?];
      }

      v37 = 0;
      v12 = 0;
    }

    v11 = 0;
  }

  v31 = *MEMORY[0x1E69E9840];

  return v12;
}

@end