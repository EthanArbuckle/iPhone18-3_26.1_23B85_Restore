@interface SFClipLink
+ (id)localizedCaptionForClipNamed:(id)named action:(int64_t)action;
+ (id)localizedUppercaseStringForAction:(int64_t)action;
- (SFClipLink)initWithURL:(id)l bundleIdentifier:(id)identifier actionTitle:(id)title;
- (void)getClipAttributesWithCompletionHandler:(id)handler;
@end

@implementation SFClipLink

+ (id)localizedUppercaseStringForAction:(int64_t)action
{
  if (action > 2)
  {
    v4 = &stru_1EFF36230;
  }

  else
  {
    v4 = _WBSLocalizedString();
  }

  return v4;
}

+ (id)localizedCaptionForClipNamed:(id)named action:(int64_t)action
{
  namedCopy = named;
  switch(action)
  {
    case 2:
      v6 = MEMORY[0x1E696AEC0];
      goto LABEL_7;
    case 1:
      v6 = MEMORY[0x1E696AEC0];
      goto LABEL_7;
    case 0:
      v6 = MEMORY[0x1E696AEC0];
LABEL_7:
      v7 = _WBSLocalizedString();
      namedCopy = [v6 stringWithFormat:v7, namedCopy];

      goto LABEL_9;
  }

  namedCopy = &stru_1EFF36230;
LABEL_9:

  return namedCopy;
}

- (SFClipLink)initWithURL:(id)l bundleIdentifier:(id)identifier actionTitle:(id)title
{
  lCopy = l;
  identifierCopy = identifier;
  titleCopy = title;
  v18.receiver = self;
  v18.super_class = SFClipLink;
  v12 = [(SFClipLink *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_url, l);
    objc_storeStrong(&v13->_bundleIdentifier, identifier);
    localizedUppercaseString = [titleCopy localizedUppercaseString];
    actionTitle = v13->_actionTitle;
    v13->_actionTitle = localizedUppercaseString;

    v16 = v13;
  }

  return v13;
}

- (void)getClipAttributesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2050000000;
    v5 = getCPSClipMetadataRequestClass_softClass;
    v19 = getCPSClipMetadataRequestClass_softClass;
    if (!getCPSClipMetadataRequestClass_softClass)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __getCPSClipMetadataRequestClass_block_invoke;
      v15[3] = &unk_1E721C5D0;
      v15[4] = &v16;
      __getCPSClipMetadataRequestClass_block_invoke(v15);
      v5 = v17[3];
    }

    v6 = v5;
    _Block_object_dispose(&v16, 8);
    if ([v5 instancesRespondToSelector:sel_initWithURL_fallbackClipBundleID_] && (objc_msgSend(v5, "instancesRespondToSelector:", sel_requestMetadataWithCompletion_) & 1) != 0)
    {
      v7 = [[v5 alloc] initWithURL:self->_url fallbackClipBundleID:self->_bundleIdentifier];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __53__SFClipLink_getClipAttributesWithCompletionHandler___block_invoke_2;
      v9[3] = &unk_1E721D3D8;
      selfCopy = self;
      v12 = handlerCopy;
      v10 = v7;
      v8 = v7;
      [v8 requestMetadataWithCompletion:v9];
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __53__SFClipLink_getClipAttributesWithCompletionHandler___block_invoke;
      block[3] = &unk_1E721D338;
      v14 = handlerCopy;
      dispatch_async(MEMORY[0x1E69E96A0], block);
      v8 = v14;
    }
  }
}

void __53__SFClipLink_getClipAttributesWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__SFClipLink_getClipAttributesWithCompletionHandler___block_invoke_3;
  v7[3] = &unk_1E721D3B0;
  v8 = v3;
  v11 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9 = v4;
  v10 = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __53__SFClipLink_getClipAttributesWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && ![v2 clipIncompatibleWithCurrentDevice])
  {
    v4 = [*(a1 + 32) invocationPolicy];
    if ([v4 isEligible] & 1) != 0 || (objc_msgSend(v4, "isRecoverable"))
    {
      v5 = [*(a1 + 32) clipBundleID];
      v6 = [v5 safari_isCaseInsensitiveEqualToString:*(*(a1 + 48) + 24)];

      if (v6)
      {
        v7 = [*(a1 + 32) fullAppName];
        v8 = *(a1 + 48);
        v9 = *(v8 + 40);
        *(v8 + 40) = v7;

        v10 = [*(a1 + 32) clipName];
        v11 = *(a1 + 48);
        v12 = v10;
        if (!v10)
        {
          v12 = *(v11 + 40);
        }

        objc_storeStrong((v11 + 32), v12);

        if (objc_opt_respondsToSelector())
        {
          v13 = [*(a1 + 32) clipAction];
        }

        else
        {
          v13 = 0;
        }

        v19 = [objc_opt_class() localizedUppercaseStringForAction:v13];
        v20 = *(a1 + 48);
        v21 = *(v20 + 48);
        *(v20 + 48) = v19;

        v22 = [objc_opt_class() localizedCaptionForClipNamed:*(*(a1 + 48) + 40) action:v13];
        v23 = *(a1 + 48);
        v24 = *(v23 + 56);
        *(v23 + 56) = v22;

        +[SFClipLink iconHeight];
        v26 = v25;
        v28 = *(a1 + 32);
        v27 = *(a1 + 40);
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __53__SFClipLink_getClipAttributesWithCompletionHandler___block_invoke_27;
        v30[3] = &unk_1E721D388;
        v29 = *(a1 + 56);
        v32 = v26;
        v30[4] = *(a1 + 48);
        v31 = v29;
        [v27 requestDownloadedIconWithMetadata:v28 completion:v30];

        goto LABEL_21;
      }

      v14 = WBS_LOG_CHANNEL_PREFIXBanners();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v15 = "Not showing App Clip Banner because the URL corresponds to a different app clip bundle identifier";
        v16 = v14;
        v17 = OS_LOG_TYPE_INFO;
LABEL_17:
        _os_log_impl(&dword_18B7AC000, v16, v17, v15, buf, 2u);
      }
    }

    else
    {
      v18 = WBS_LOG_CHANNEL_PREFIXBanners();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v15 = "Not showing App Clip Banner because the app clip cannot be launched";
        v16 = v18;
        v17 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_17;
      }
    }

    (*(*(a1 + 56) + 16))();
LABEL_21:

    return;
  }

  v3 = *(*(a1 + 56) + 16);

  v3();
}

void __53__SFClipLink_getClipAttributesWithCompletionHandler___block_invoke_27(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__SFClipLink_getClipAttributesWithCompletionHandler___block_invoke_2_28;
  v6[3] = &unk_1E721D360;
  v7 = v3;
  v4 = *(a1 + 40);
  v10 = *(a1 + 48);
  v8 = *(a1 + 32);
  v9 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __53__SFClipLink_getClipAttributesWithCompletionHandler___block_invoke_2_28(uint64_t a1)
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = _SFScreenScale();
    v3 = objc_alloc(MEMORY[0x1E69DCAB8]);
    v4 = [*(a1 + 32) path];
    v5 = [v3 initWithContentsOfFile:v4];

    v6 = [objc_alloc(MEMORY[0x1E69A8988]) initWithCGImage:objc_msgSend(v5 scale:{"CGImage"), v2}];
    v7 = objc_alloc(MEMORY[0x1E69A8A00]);
    v17[0] = v6;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    v9 = [v7 initWithImages:v8];

    v10 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:*(a1 + 56) scale:{*(a1 + 56), v2}];
    [v10 setShape:5];
    v11 = [v9 imageForDescriptor:v10];
    v12 = v11;
    if (v11)
    {
      v13 = MEMORY[0x1E69DCAB8];
      v14 = [v11 CGImage];
      [v12 scale];
      v15 = [v13 imageWithCGImage:v14 scale:0 orientation:?];
      [*(a1 + 40) setIcon:v15];
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v16 = *(*(a1 + 48) + 16);

    v16();
  }
}

@end