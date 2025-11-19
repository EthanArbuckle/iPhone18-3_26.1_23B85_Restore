@interface NSString(MimeCharsetSupport)
- (id)_mf_bestMimeCharset:()MimeCharsetSupport;
- (id)mf_bestMimeCharsetForMessageDeliveryUsingSubtype:()MimeCharsetSupport;
- (id)mf_bestMimeCharsetUsingHint:()MimeCharsetSupport;
@end

@implementation NSString(MimeCharsetSupport)

- (id)_mf_bestMimeCharset:()MimeCharsetSupport
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    CanBeConvertedLosslessly = 0;
    v7 = 0;
    v8 = *v16;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v16 != v8)
      {
        objc_enumerationMutation(v4);
      }

      v10 = *(*(&v15 + 1) + 8 * v9);
      if (![v10 coversLargeUnicodeSubset])
      {
        goto LABEL_12;
      }

      if ((v7 & 1) == 0)
      {
        CanBeConvertedLosslessly = MFStringCanBeConvertedLosslessly(a1, 0);
      }

      v7 = 1;
      if (!CanBeConvertedLosslessly)
      {
        break;
      }

      CanBeConvertedLosslessly = 1;
LABEL_15:
      if (v5 == ++v9)
      {
        v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_17;
      }
    }

    CanBeConvertedLosslessly = 0;
LABEL_12:
    if ([v10 cfStringEncoding] != 1586 && MFStringCanBeConvertedLosslessly(a1, objc_msgSend(v10, "cfStringEncoding")))
    {
      v11 = v10;
      if (v11)
      {
        v12 = v11;
        goto LABEL_19;
      }
    }

    goto LABEL_15;
  }

LABEL_17:
  v12 = 0;
LABEL_19:

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)mf_bestMimeCharsetUsingHint:()MimeCharsetSupport
{
  v35 = *MEMORY[0x1E69E9840];
  v29 = +[MFMimeCharset allMimeCharsets];
  v5 = [a1 _mf_bestMimeCharset:v29];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 encoding] != 134217984 || a3 == -1;
    if (!v7 && a3 != 134217984)
    {
      v11 = _indexOfEncodingInCharsets(0x8000100u, v29);
      v12 = _indexOfEncodingInCharsets(a3, v29);
      if (v12 > v11 && v11 != 0x7FFFFFFFFFFFFFFFLL && v12 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v28 = [MFMimeCharset charsetForEncoding:a3];
        v13 = [v28 primaryLanguage];
        v27 = v13;
        if (v13)
        {
          v26 = v29;
          v14 = v13;
          if ([v14 length])
          {
            v32 = 0u;
            v33 = 0u;
            v30 = 0u;
            v31 = 0u;
            v15 = v26;
            v16 = 0;
            v17 = [v15 countByEnumeratingWithState:&v30 objects:v34 count:16];
            if (v17)
            {
              v18 = *v31;
              do
              {
                for (i = 0; i != v17; ++i)
                {
                  if (*v31 != v18)
                  {
                    objc_enumerationMutation(v15);
                  }

                  v20 = *(*(&v30 + 1) + 8 * i);
                  v21 = [v20 primaryLanguage];
                  v22 = v21;
                  if (v21 && [v21 isEqualToString:v14])
                  {
                    if (!v16)
                    {
                      v16 = [MEMORY[0x1E695DF70] array];
                    }

                    [v16 addObject:v20];
                  }

                  else
                  {
                    [0 addObject:v20];
                  }
                }

                v17 = [v15 countByEnumeratingWithState:&v30 objects:v34 count:16];
              }

              while (v17);
            }
          }

          else
          {
            v16 = v26;
          }

          v23 = [a1 _mf_bestMimeCharset:v16];
          v24 = v23;
          if (v23)
          {
            v25 = v23;

            v6 = v25;
          }
        }
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)mf_bestMimeCharsetForMessageDeliveryUsingSubtype:()MimeCharsetSupport
{
  v4 = a3;
  if ([v4 isEqualToString:@"html"])
  {
    [MFMimeCharset charsetForEncoding:134217984];
  }

  else
  {
    [a1 mf_bestMimeCharset];
  }
  v5 = ;

  return v5;
}

@end