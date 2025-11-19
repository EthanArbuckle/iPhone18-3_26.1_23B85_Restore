@interface MSRichLinkGenerator
+ (MSRichLinkGenerator)linkGenerator;
+ (id)log;
- (void)createRichLinkWithURL:(id)a3 completionHandler:(id)a4;
@end

@implementation MSRichLinkGenerator

+ (id)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__MSRichLinkGenerator_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_1 != -1)
  {
    dispatch_once(&log_onceToken_1, block);
  }

  v2 = log_log_1;

  return v2;
}

void __26__MSRichLinkGenerator_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_1;
  log_log_1 = v1;
}

+ (MSRichLinkGenerator)linkGenerator
{
  if (linkGenerator_onceToken != -1)
  {
    +[MSRichLinkGenerator linkGenerator];
  }

  v3 = linkGenerator_linkGenerator;

  return v3;
}

void __36__MSRichLinkGenerator_linkGenerator__block_invoke()
{
  v0 = objc_alloc_init(MSRichLinkGenerator);
  v1 = linkGenerator_linkGenerator;
  linkGenerator_linkGenerator = v0;
}

- (void)createRichLinkWithURL:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (createRichLinkWithURL_completionHandler__onceToken[0] != -1)
  {
    [MSRichLinkGenerator createRichLinkWithURL:completionHandler:];
  }

  v7 = [v5 ef_urlByAddingSchemeIfNeeded];
  v8 = objc_alloc_init(NSClassFromString(&cfstr_Lpmetadataprov.isa));
  [v8 setTimeout:5.0];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__MSRichLinkGenerator_createRichLinkWithURL_completionHandler___block_invoke_2;
  v12[3] = &unk_27985BAF8;
  v9 = v7;
  v13 = v9;
  v10 = v5;
  v14 = v10;
  v11 = v6;
  v15 = v11;
  [v8 startFetchingMetadataForURL:v9 completionHandler:v12];
}

void __63__MSRichLinkGenerator_createRichLinkWithURL_completionHandler___block_invoke_2(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__MSRichLinkGenerator_createRichLinkWithURL_completionHandler___block_invoke_3;
  block[3] = &unk_27985BAD0;
  v10 = a1[4];
  v11 = v5;
  v12 = a1[5];
  v13 = v6;
  v14 = a1[6];
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __63__MSRichLinkGenerator_createRichLinkWithURL_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = [objc_alloc(NSClassFromString(&cfstr_Lplinkhtmltext.isa)) initWithURL:*(a1 + 32)];
  [v2 setMetadata:*(a1 + 40)];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__MSRichLinkGenerator_createRichLinkWithURL_completionHandler___block_invoke_4;
  v8[3] = &unk_27985BAA8;
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  *&v6 = *(a1 + 40);
  *(&v6 + 1) = v5;
  *&v7 = v3;
  *(&v7 + 1) = v4;
  v9 = v7;
  v10 = v6;
  [v2 generateHTMLFragmentString:v8];
}

void __63__MSRichLinkGenerator_createRichLinkWithURL_completionHandler___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v43 = v6;
    v7 = [*(a1 + 48) image];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [*(a1 + 48) icon];
    }

    v11 = v9;

    v45 = v11;
    v12 = [v11 data];
    v13 = [*(a1 + 48) imageMetadata];
    v14 = [v13 URL];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v17 = [*(a1 + 48) iconMetadata];
      v16 = [v17 URL];
    }

    v44 = v16;
    v18 = [v16 path];
    v19 = [v18 lastPathComponent];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = _EFLocalizedString();
    }

    v22 = v21;

    v23 = [v22 pathExtension];
    v24 = [MEMORY[0x277CCA900] punctuationCharacterSet];
    v25 = [v23 componentsSeparatedByCharactersInSet:v24];
    v26 = [v25 firstObject];

    if (v23 && ([v23 isEqualToString:v26] & 1) == 0)
    {
      v27 = [v22 stringByDeletingPathExtension];
      v28 = [v27 stringByAppendingPathExtension:v26];

      v22 = v28;
    }

    if (!v12)
    {
      v30 = 0;
LABEL_30:
      v36 = *(a1 + 56);
      v37 = [v45 MIMEType];
      (*(v36 + 16))(v36, v5, v12, v22, v37, v30);

      v6 = v43;
      goto LABEL_31;
    }

    v29 = [MEMORY[0x277CCAD78] UUID];
    v30 = [v29 UUIDString];

    v31 = [v44 absoluteString];
    v32 = [v31 ef_stringByEscapingForXML];

    if (v32 && [v5 containsString:v32])
    {
      [v5 stringByReplacingOccurrencesOfString:v32 withString:v30];
      v5 = v33 = v5;
    }

    else
    {
      if ([v5 containsString:@"class=lp-rich-link-mediaImage"])
      {
        v34 = @"class=lp-rich-link-mediaImage";
      }

      else if ([v5 containsString:@"class=lp-rich-link-captionBar-rightIcon"])
      {
        v34 = @"class=lp-rich-link-captionBar-rightIcon";
      }

      else
      {
        if (![v5 containsString:@"class=lp-rich-link-captionBar-leftIcon"])
        {
          v33 = v12;
          v12 = 0;
          goto LABEL_29;
        }

        v34 = @"class=lp-rich-link-captionBar-leftIcon";
      }

      v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ id=%@", v34, v30];
      v35 = [v5 stringByReplacingOccurrencesOfString:v34 withString:v33];

      v5 = v35;
    }

LABEL_29:

    goto LABEL_30;
  }

  v10 = +[MSRichLinkGenerator log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v39 = MEMORY[0x277D07198];
    v40 = [*(a1 + 32) absoluteString];
    v41 = [v39 fullyRedactedStringForString:v40];
    v42 = *(a1 + 40);
    *buf = 138543618;
    v47 = v41;
    v48 = 2114;
    v49 = v42;
    _os_log_error_impl(&dword_257F8E000, v10, OS_LOG_TYPE_ERROR, "Failed to generate html fragment for %{public}@, with error: %{public}@", buf, 0x16u);
  }

  (*(*(a1 + 56) + 16))();
LABEL_31:

  v38 = *MEMORY[0x277D85DE8];
}

@end