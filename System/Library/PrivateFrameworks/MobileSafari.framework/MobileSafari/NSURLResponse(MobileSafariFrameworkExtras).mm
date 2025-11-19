@interface NSURLResponse(MobileSafariFrameworkExtras)
- (BOOL)_sf_hasAttachmentWithFilename;
- (uint64_t)_sf_allowedToOverrideContentDispositionAttachment;
- (uint64_t)sf_hasXMLAttachment;
- (uint64_t)sf_shouldDownloadDueToContentDisposition:()MobileSafariFrameworkExtras;
@end

@implementation NSURLResponse(MobileSafariFrameworkExtras)

- (uint64_t)sf_hasXMLAttachment
{
  if (![a1 safari_hasAttachment])
  {
    return 0;
  }

  v2 = [a1 MIMEType];
  if ([v2 safari_isCaseInsensitiveEqualToString:@"application/xml"] & 1) != 0 || (objc_msgSend(v2, "safari_isCaseInsensitiveEqualToString:", @"text/xml"))
  {
    v3 = 1;
  }

  else
  {
    v4 = [a1 suggestedFilename];
    v5 = [v4 safari_lastPathComponentWithoutZipExtension];

    v6 = [v5 pathExtension];
    v3 = [v6 safari_isCaseInsensitiveEqualToString:@"xml"];
  }

  return v3;
}

- (uint64_t)sf_shouldDownloadDueToContentDisposition:()MobileSafariFrameworkExtras
{
  v24 = *MEMORY[0x1E69E9840];
  if (([a1 sf_hasXMLAttachment] & 1) == 0)
  {
    if (![a1 safari_hasAttachment])
    {
      return 0;
    }

    v6 = [MEMORY[0x1E695E000] safari_browserDefaults];
    v7 = v6;
    if ((a3 & 1) != 0 || ![v6 BOOLForKey:@"DebugEnableDownloadsInSubframes"])
    {
      v13 = [v7 BOOLForKey:@"DebugContentDispositionHeaderStartsDownloads"];
      v14 = WBS_LOG_CHANNEL_PREFIXDownloads();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
      if (!v13)
      {
        if (v15)
        {
          v16 = v14;
          v17 = [a1 URL];
          v18 = [a1 MIMEType];
          v20 = 138740227;
          v21 = v17;
          v22 = 2117;
          v23 = v18;
          _os_log_impl(&dword_18B7AC000, v16, OS_LOG_TYPE_INFO, "Ignoring Content-Disposition header for %{sensitive}@, MIME Type: %{sensitive}@", &v20, 0x16u);
        }

        v5 = 0;
        goto LABEL_17;
      }

      if (!v15)
      {
        v5 = 1;
        goto LABEL_17;
      }

      v9 = v14;
      v10 = [a1 URL];
      v11 = [a1 MIMEType];
      v20 = 138740227;
      v21 = v10;
      v22 = 2117;
      v23 = v11;
      v12 = "Starting download due to Content-Disposition header for %{sensitive}@, MIME Type: %{sensitive}@";
      v5 = 1;
    }

    else
    {
      v8 = WBS_LOG_CHANNEL_PREFIXDownloads();
      v5 = 1;
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
LABEL_17:

        return v5;
      }

      v9 = v8;
      v10 = [a1 URL];
      v11 = [a1 MIMEType];
      v20 = 138740227;
      v21 = v10;
      v22 = 2117;
      v23 = v11;
      v12 = "Starting download due to Content-Disposition header in subframe for %{sensitive}@, MIME Type: %{sensitive}@";
    }

    _os_log_impl(&dword_18B7AC000, v9, OS_LOG_TYPE_INFO, v12, &v20, 0x16u);

    goto LABEL_17;
  }

  return 1;
}

- (uint64_t)_sf_allowedToOverrideContentDispositionAttachment
{
  v2 = [a1 MIMEType];
  if ([v2 isEqualToString:@"application/x-webarchive"])
  {
    goto LABEL_2;
  }

  v4 = [v2 safari_stringByTrimmingWhitespace];
  v5 = [v4 rangeOfString:@"/"];
  if (!v5 || (v6 = v5, v5 == 0x7FFFFFFFFFFFFFFFLL) || v5 == [v4 length] - 1)
  {
LABEL_6:

    v3 = [a1 sf_hasXMLAttachment] ^ 1;
    goto LABEL_7;
  }

  v8 = [v4 substringToIndex:v6];
  v9 = [v4 substringFromIndex:v6 + 1];

  v10 = [v9 rangeOfString:@";"];
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [v9 substringToIndex:v10];

    v9 = v11;
  }

  v4 = v9;
  if ((![v8 safari_isCaseInsensitiveEqualToString:@"text"] || (objc_msgSend(v4, "safari_isCaseInsensitiveEqualToString:", @"html") & 1) == 0) && (objc_msgSend(v4, "safari_hasCaseInsensitiveSuffix:", @"+xml") & 1) == 0 && (!objc_msgSend(v4, "safari_isCaseInsensitiveEqualToString:", @"xml") || (objc_msgSend(v8, "safari_isCaseInsensitiveEqualToString:", @"application") & 1) == 0 && !objc_msgSend(v8, "safari_isCaseInsensitiveEqualToString:", @"text")))
  {

    goto LABEL_6;
  }

LABEL_2:
  v3 = 0;
LABEL_7:

  return v3;
}

- (BOOL)_sf_hasAttachmentWithFilename
{
  v24 = *MEMORY[0x1E69E9840];
  if (![a1 safari_hasAttachment])
  {
    return 0;
  }

  v2 = [a1 allHeaderFields];
  v3 = [v2 safari_stringForKey:@"Content-Disposition"];

  if (v3)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v4 = [v3 componentsSeparatedByString:@""];;
    v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v20;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v20 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v19 + 1) + 8 * i);
          v10 = [v9 rangeOfString:@"="];
          if (v10 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v11 = v10;
            v12 = [v9 substringToIndex:v10];
            v13 = [v12 safari_stringByTrimmingWhitespace];

            if ([v13 safari_isCaseInsensitiveEqualToString:@"filename"])
            {
              v15 = [v9 substringFromIndex:v11 + 1];
              v16 = [v15 safari_stringByTrimmingWhitespace];

              LODWORD(v15) = [v16 hasPrefix:@""];
              v17 = [v16 length];
              if (v15)
              {
                v14 = v17 > 2;
              }

              else
              {
                v14 = v17 != 0;
              }

              goto LABEL_21;
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }

      v14 = 0;
    }

    else
    {
      v14 = 0;
    }

LABEL_21:
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end