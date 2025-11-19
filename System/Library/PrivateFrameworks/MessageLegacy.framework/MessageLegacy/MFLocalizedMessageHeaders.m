@interface MFLocalizedMessageHeaders
+ (id)englishHeadersFromLocalizedHeaders:(id)a3;
+ (id)localizedHeaders;
+ (id)localizedHeadersFromEnglishHeaders:(id)a3;
- (id)copyFormattedHeaderValueFromAddressList:(id)a3;
- (id)markupString;
- (void)appendHeaderMarkupForKey:(id)a3 value:(id)a4 toString:(id)a5;
@end

@implementation MFLocalizedMessageHeaders

- (id)copyFormattedHeaderValueFromAddressList:(id)a3
{
  v4 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v4 appendString:{objc_msgSend(a3, "componentsJoinedByString:", @", ")}];
  if ([v4 length])
  {
    sanitizeStringForMarkup(v4);
    [v4 appendString:@"<BR>"];
  }

  return v4;
}

- (void)appendHeaderMarkupForKey:(id)a3 value:(id)a4 toString:(id)a5
{
  v9 = [+[MFLocalizedMessageHeaders localizedHeaders](MFLocalizedMessageHeaders "localizedHeaders")];
  if (!v9)
  {
    v9 = a3;
  }

  v10 = [v9 mutableCopy];
  sanitizeStringForMarkup(v10);
  v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<B>%@:</B> ", v10];
  [a5 appendString:v11];

  if (a3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (![objc_opt_class() isStructuredHeaderKey:a3])
      {
        return;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        return;
      }

      v15 = [(MFLocalizedMessageHeaders *)self copyFormattedHeaderValueFromAddressList:a4];
      if (!v15)
      {
        return;
      }

      goto LABEL_17;
    }

    v12 = [a3 lowercaseString];
    if ([v12 isEqualToString:*MEMORY[0x277D07030]])
    {
      v13 = [objc_msgSend(a4 "mf_stringByLocalizingReOrFwdPrefix")];
      sanitizeStringForMarkup(v13);
      v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<B>%@</B><BR>", v13];
    }

    else
    {
      if ([v12 isEqualToString:*MEMORY[0x277D06F98]])
      {
        v16 = [MEMORY[0x277CBEAA8] mf_copyDateInCommonFormatsWithString:a4];
        if (!v16)
        {
          return;
        }

        v17 = v16;
        v18 = CFLocaleCopyCurrent();
        v19 = CFDateFormatterCreate(0, v18, kCFDateFormatterLongStyle, kCFDateFormatterLongStyle);
        StringWithDate = CFDateFormatterCreateStringWithDate(0, v19, v17);
        v21 = [(__CFString *)StringWithDate mutableCopy];
        sanitizeStringForMarkup(v21);
        v23 = [v21 stringByAppendingString:@"<BR>"];

        v15 = v23;
        if (!v23)
        {
          return;
        }

        goto LABEL_17;
      }

      v22 = [a4 mutableCopy];
      sanitizeStringForMarkup(v22);
      v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@<BR>", v22];
    }

    v15 = v14;
    if (!v14)
    {
      return;
    }

LABEL_17:
    v24 = v15;
    [a5 appendString:v15];
  }
}

- (id)markupString
{
  v32 = *MEMORY[0x277D85DE8];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [MEMORY[0x277D24F40] basicHeaders];
  v3 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v27;
    v19 = *v27;
    do
    {
      v7 = 0;
      v20 = v4;
      do
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v26 + 1) + 8 * v7);
        v9 = [(MFMessageHeaders *)self headersForKey:v8];
        if (v9)
        {
          v10 = v9;
          v11 = [(MFMessageHeaders *)self _capitalizedKeyForKey:v8];
          if (!v5)
          {
            v5 = objc_alloc_init(MEMORY[0x277CCAB68]);
          }

          v24 = 0u;
          v25 = 0u;
          v22 = 0u;
          v23 = 0u;
          v12 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v23;
            do
            {
              for (i = 0; i != v13; ++i)
              {
                if (*v23 != v14)
                {
                  objc_enumerationMutation(v10);
                }

                v16 = *(*(&v22 + 1) + 8 * i);
                if (([v16 isEqualToString:&stru_2869ED3E0] & 1) == 0)
                {
                  [(MFLocalizedMessageHeaders *)self appendHeaderMarkupForKey:v11 value:v16 toString:v5];
                }
              }

              v13 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
            }

            while (v13);
            v6 = v19;
            v4 = v20;
          }
        }

        ++v7;
      }

      while (v7 != v4);
      v4 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  result = v5;
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)localizedHeaders
{
  result = localizedHeaders_headers;
  if (!localizedHeaders_headers)
  {
    v13 = objc_alloc(MEMORY[0x277CBEB38]);
    v12 = MFLookupLocalizedString(@"To", @"To", 0);
    v11 = MFLookupLocalizedString(@"Reply-To", @"Reply-To", 0);
    v10 = MFLookupLocalizedString(@"Subject", @"Subject", 0);
    v9 = MFLookupLocalizedString(@"From", @"From", 0);
    v8 = MFLookupLocalizedString(@"Cc", @"Cc", 0);
    v3 = MFLookupLocalizedString(@"Bcc", @"Bcc", 0);
    v4 = MFLookupLocalizedString(@"Date", @"Date", 0);
    v5 = MFLookupLocalizedString(@"Attachments", @"Attachments", 0);
    v6 = MFLookupLocalizedString(@"Resent-To", @"Resent-To", 0);
    v7 = MFLookupLocalizedString(@"Resent-Cc", @"Resent-Cc", 0);
    result = [v13 initWithObjectsAndKeys:{v12, @"To", v11, @"Reply-To", v10, @"Subject", v9, @"From", v8, @"Cc", v3, @"Bcc", v4, @"Date", v5, @"Attachments", v6, @"Resent-To", v7, @"Resent-Cc", MFLookupLocalizedString(@"Resent-From", @"Resent-From", 0), @"Resent-From", 0}];
    localizedHeaders_headers = result;
  }

  return result;
}

+ (id)localizedHeadersFromEnglishHeaders:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a3, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(a3);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        v10 = [+[MFLocalizedMessageHeaders localizedHeaders](MFLocalizedMessageHeaders "localizedHeaders")];
        if (v10 && (v11 = v10, ([v10 isEqualToString:&stru_2869ED3E0] & 1) == 0))
        {
          v12 = v4;
          v13 = v11;
        }

        else
        {
          v12 = v4;
          v13 = v9;
        }

        [v12 addObject:v13];
        ++v8;
      }

      while (v6 != v8);
      v6 = [a3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v4;
}

+ (id)englishHeadersFromLocalizedHeaders:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a3, "count")}];
  v5 = +[MFLocalizedMessageHeaders localizedHeaders];
  v6 = [v5 allValues];
  v7 = [v5 allKeys];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [a3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(a3);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [v6 indexOfObject:v12];
        if (v13 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v12 = [v7 objectAtIndex:v13];
        }

        [v4 addObject:v12];
      }

      v9 = [a3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v4;
}

@end