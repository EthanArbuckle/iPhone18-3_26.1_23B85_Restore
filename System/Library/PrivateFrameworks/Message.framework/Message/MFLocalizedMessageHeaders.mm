@interface MFLocalizedMessageHeaders
+ (id)localizedHeaders;
- (id)copyFormattedHeaderValueFromAddressList:(id)a3;
- (id)markupString;
- (void)appendHeaderMarkupForKey:(id)a3 value:(id)a4 toString:(id)a5;
@end

@implementation MFLocalizedMessageHeaders

- (id)copyFormattedHeaderValueFromAddressList:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v5 = [v3 componentsJoinedByString:{@", "}];
  [v4 appendString:v5];

  if ([v4 length])
  {
    sanitizeStringForMarkup(v4);
    [v4 appendString:@"<BR>"];
  }

  return v4;
}

- (void)appendHeaderMarkupForKey:(id)a3 value:(id)a4 toString:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v26 = v8;
  v11 = +[MFLocalizedMessageHeaders localizedHeaders];
  v12 = [v11 objectForKey:v26];

  if (!v12)
  {
    v12 = v26;
  }

  v13 = [v12 mutableCopy];
  sanitizeStringForMarkup(v13);
  v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<B>%@:</B> ", v13];

  [v10 appendString:v14];
  if (v26)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v9;
      v16 = [v26 lowercaseString];
      if ([v16 isEqualToString:*MEMORY[0x1E699B178]])
      {
        v17 = [MEMORY[0x1E699B330] subjectStringForDisplayForSubjectString:v15];
        v18 = [v17 mutableCopy];

        sanitizeStringForMarkup(v18);
        v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<B>%@</B><BR>", v18];
      }

      else if ([v16 isEqualToString:*MEMORY[0x1E699B0D8]])
      {
        v20 = [MEMORY[0x1E695DF00] mf_copyDateInCommonFormatsWithString:v15];
        if (v20)
        {
          date = v20;
          cf = CFLocaleCopyCurrent();
          v21 = CFDateFormatterCreate(0, cf, kCFDateFormatterLongStyle, kCFDateFormatterLongStyle);
          StringWithDate = CFDateFormatterCreateStringWithDate(0, v21, date);
          v18 = [(__CFString *)StringWithDate mutableCopy];
          sanitizeStringForMarkup(v18);
          v19 = [v18 stringByAppendingString:@"<BR>"];
          CFRelease(v21);
          CFRelease(cf);

          v20 = date;
        }

        else
        {
          v18 = 0;
          v19 = 0;
        }
      }

      else
      {
        v23 = [v15 mutableCopy];
        sanitizeStringForMarkup(v23);
        v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@<BR>", v23];
        v18 = v23;
      }

      if (!v19)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    if ([objc_opt_class() isStructuredHeaderKey:v26])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = [(MFLocalizedMessageHeaders *)self copyFormattedHeaderValueFromAddressList:v9];
        if (!v19)
        {
LABEL_19:

          goto LABEL_20;
        }

LABEL_18:
        [v10 appendString:v19];
        goto LABEL_19;
      }
    }
  }

LABEL_20:
}

- (id)markupString
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69AD6F8] basicHeaders];
  v19 = [v3 mutableCopy];

  v4 = [(MFMessageHeaders *)self headersForKey:*MEMORY[0x1E699B0E8]];
  v5 = [v4 firstObject];

  v18 = v5;
  if (v5)
  {
    [v19 removeObject:{*MEMORY[0x1E699B180], v5}];
    [v19 removeObject:*MEMORY[0x1E699B0E0]];
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v19;
  v6 = 0;
  v7 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v7)
  {
    v22 = *v29;
    do
    {
      v8 = 0;
      v21 = v7;
      do
      {
        if (*v29 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v28 + 1) + 8 * v8);
        v23 = [(MFMessageHeaders *)self headersForKey:v9, v18];
        if (v23)
        {
          v10 = [(MFMessageHeaders *)self _capitalizedKeyForKey:v9];
          if (!v6)
          {
            v6 = objc_alloc_init(MEMORY[0x1E696AD60]);
          }

          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          v11 = v23;
          v12 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v12)
          {
            v13 = *v25;
            do
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v25 != v13)
                {
                  objc_enumerationMutation(v11);
                }

                v15 = *(*(&v24 + 1) + 8 * i);
                if (([v15 isEqualToString:&stru_1F273A5E0] & 1) == 0)
                {
                  [(MFLocalizedMessageHeaders *)self appendHeaderMarkupForKey:v10 value:v15 toString:v6];
                }
              }

              v12 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
            }

            while (v12);
          }

          v7 = v21;
        }

        ++v8;
      }

      while (v8 != v7);
      v7 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v7);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)localizedHeaders
{
  v2 = localizedHeaders_headers;
  if (!localizedHeaders_headers)
  {
    v3 = objc_alloc(MEMORY[0x1E695DF90]);
    v17 = MFLookupLocalizedString(@"To", @"To", @"Message");
    v16 = MFLookupLocalizedString(@"Reply-To", @"Reply-To", @"Message");
    v15 = MFLookupLocalizedString(@"Subject", @"Subject", @"Message");
    v14 = MFLookupLocalizedString(@"From", @"From", @"Message");
    v13 = MFLookupLocalizedString(@"Cc", @"Cc", @"Message");
    v12 = MFLookupLocalizedString(@"Bcc", @"Bcc", @"Message");
    v4 = MFLookupLocalizedString(@"Date", @"Date", @"Message");
    v11 = MFLookupLocalizedString(@"Attachments", @"Attachments", @"Message");
    v10 = MFLookupLocalizedString(@"Resent-To", @"Resent-To", @"Message");
    v5 = MFLookupLocalizedString(@"Resent-Cc", @"Resent-Cc", @"Message");
    v6 = MFLookupLocalizedString(@"Resent-From", @"Resent-From", @"Message");
    v7 = [v3 initWithObjectsAndKeys:{v17, @"To", v16, @"Reply-To", v15, @"Subject", v14, @"From", v13, @"Cc", v12, @"Bcc", v4, @"Date", v11, @"Attachments", v10, @"Resent-To", v5, @"Resent-Cc", v6, @"Resent-From", 0}];
    v8 = localizedHeaders_headers;
    localizedHeaders_headers = v7;

    v2 = localizedHeaders_headers;
  }

  return v2;
}

@end