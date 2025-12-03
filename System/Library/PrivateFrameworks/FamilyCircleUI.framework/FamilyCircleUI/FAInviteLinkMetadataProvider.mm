@interface FAInviteLinkMetadataProvider
- (FAInviteLinkMetadataProvider)initWithContext:(id)context;
- (id)_colorForString:(id)string;
- (id)_imageNamed:(id)named;
- (id)linkMetadataWithImage:(id)image icon:(id)icon;
- (void)fetchImageFromURL:(id)l completion:(id)completion;
- (void)loadImageWithURL:(id)l enableTextOverlay:(BOOL)overlay completion:(id)completion;
- (void)loadMetatadataWithCompletion:(id)completion;
@end

@implementation FAInviteLinkMetadataProvider

- (FAInviteLinkMetadataProvider)initWithContext:(id)context
{
  contextCopy = context;
  v8.receiver = self;
  v8.super_class = FAInviteLinkMetadataProvider;
  v5 = [(FAInviteLinkMetadataProvider *)&v8 init];
  context = v5->_context;
  v5->_context = contextCopy;

  return v5;
}

- (void)loadMetatadataWithCompletion:(id)completion
{
  completionCopy = completion;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = __Block_byref_object_copy__3;
  v31[4] = __Block_byref_object_dispose__3;
  v32 = 0;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = __Block_byref_object_copy__3;
  v29[4] = __Block_byref_object_dispose__3;
  v30 = 0;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = __Block_byref_object_copy__3;
  v27[4] = __Block_byref_object_dispose__3;
  v28 = 0;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = __Block_byref_object_copy__3;
  v25[4] = __Block_byref_object_dispose__3;
  v26 = 0;
  v5 = dispatch_group_create();
  dispatch_group_enter(v5);
  dispatch_group_enter(v5);
  imageURL = [(FAInviteContext *)self->_context imageURL];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __61__FAInviteLinkMetadataProvider_loadMetatadataWithCompletion___block_invoke;
  v21[3] = &unk_2782F3ED0;
  v23 = v31;
  v24 = v27;
  v7 = v5;
  v22 = v7;
  [(FAInviteLinkMetadataProvider *)self loadImageWithURL:imageURL enableTextOverlay:1 completion:v21];

  iconURL = [(FAInviteContext *)self->_context iconURL];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __61__FAInviteLinkMetadataProvider_loadMetatadataWithCompletion___block_invoke_2;
  v17[3] = &unk_2782F3ED0;
  v19 = v29;
  v20 = v25;
  v9 = v7;
  v18 = v9;
  [(FAInviteLinkMetadataProvider *)self loadImageWithURL:iconURL enableTextOverlay:0 completion:v17];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__FAInviteLinkMetadataProvider_loadMetatadataWithCompletion___block_invoke_3;
  v11[3] = &unk_2782F3EF8;
  v13 = v27;
  v14 = v25;
  v11[4] = self;
  v12 = completionCopy;
  v15 = v31;
  v16 = v29;
  v10 = completionCopy;
  dispatch_group_notify(v9, MEMORY[0x277D85CD0], v11);

  _Block_object_dispose(v25, 8);
  _Block_object_dispose(v27, 8);

  _Block_object_dispose(v29, 8);
  _Block_object_dispose(v31, 8);
}

void __61__FAInviteLinkMetadataProvider_loadMetatadataWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 32));
}

void __61__FAInviteLinkMetadataProvider_loadMetatadataWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 32));
}

void __61__FAInviteLinkMetadataProvider_loadMetatadataWithCompletion___block_invoke_3(uint64_t a1)
{
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v1 = *(*(a1 + 40) + 16);

    v1();
  }

  else
  {
    v2 = *(a1 + 40);
    if (*(*(*(a1 + 56) + 8) + 40))
    {
      v3 = *(v2 + 16);
      v4 = *(a1 + 40);

      v3(v4, 0);
    }

    else
    {
      v5 = [*(a1 + 32) linkMetadataWithImage:*(*(*(a1 + 64) + 8) + 40) icon:*(*(*(a1 + 72) + 8) + 40)];
      (*(v2 + 16))(v2, v5, 0);
    }
  }
}

- (void)loadImageWithURL:(id)l enableTextOverlay:(BOOL)overlay completion:(id)completion
{
  completionCopy = completion;
  v9 = completionCopy;
  if (l)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __78__FAInviteLinkMetadataProvider_loadImageWithURL_enableTextOverlay_completion___block_invoke;
    v10[3] = &unk_2782F3F20;
    overlayCopy = overlay;
    v10[4] = self;
    v11 = completionCopy;
    [(FAInviteLinkMetadataProvider *)self fetchImageFromURL:l completion:v10];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

void __78__FAInviteLinkMetadataProvider_loadImageWithURL_enableTextOverlay_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    if (*(a1 + 48) == 1)
    {
      v8 = [*(*(a1 + 32) + 8) overlaidTextColorString];
      if (v8)
      {
        v9 = v8;
        v10 = _FALogSystem();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v22) = 0;
          _os_log_impl(&dword_21BB35000, v10, OS_LOG_TYPE_DEFAULT, "Server specifying overlaid text color", &v22, 2u);
        }

        v11 = [*(a1 + 32) _colorForString:v9];
        if (v11)
        {
          v12 = v11;
          v13 = _FALogSystem();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v22) = 0;
            _os_log_impl(&dword_21BB35000, v13, OS_LOG_TYPE_DEFAULT, "We have an overlaid text color, adding properties to LPImage", &v22, 2u);
          }

          v14 = objc_alloc_init(MEMORY[0x277CD46B8]);
          [v14 setOverlaidTextColor:v12];

          if (v14)
          {
            v15 = [objc_alloc(MEMORY[0x277CD46B0]) initWithPlatformImage:v5 properties:v14];

LABEL_18:
            (*(*(a1 + 40) + 16))();

            goto LABEL_19;
          }
        }

        else
        {
        }
      }
    }

    v15 = [objc_alloc(MEMORY[0x277CD46B0]) initWithPlatformImage:v5];
    goto LABEL_18;
  }

  if (v6)
  {
    v16 = _FALogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 32);
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v20 = [v7 description];
      v22 = 138412546;
      v23 = v19;
      v24 = 2112;
      v25 = v20;
      _os_log_impl(&dword_21BB35000, v16, OS_LOG_TYPE_DEFAULT, "%@ - unable to load image: %@", &v22, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
LABEL_19:

  v21 = *MEMORY[0x277D85DE8];
}

- (void)fetchImageFromURL:(id)l completion:(id)completion
{
  v5 = MEMORY[0x277CECA60];
  completionCopy = completion;
  lCopy = l;
  sharedImageFetcher = [v5 sharedImageFetcher];
  [sharedImageFetcher fetchImageAtURL:lCopy completionHandler:completionCopy];
}

- (id)_colorForString:(id)string
{
  v23[2] = *MEMORY[0x277D85DE8];
  stringCopy = string;
  if ([stringCopy length])
  {
    v4 = [MEMORY[0x277CCAC80] scannerWithString:stringCopy];
    v20 = 0;
    v21 = 0;
    whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    [v4 setCharactersToBeSkipped:whitespaceCharacterSet];

    LODWORD(whitespaceCharacterSet) = objc_msgSend(v4, "scanUpToString:intoString:", @"("), 0;
    objc_msgSend(v4, "scanString:intoString:", @"("), 0;
    v6 = [v4 scanInt:&v21 + 4];
    v7 = [v4 scanString:@" intoString:{", 0}];
    v8 = [v4 scanInt:&v21];
    v9 = [v4 scanString:@" intoString:{", 0}];
    v10 = [v4 scanInt:&v20 + 4];
    v11 = [v4 scanString:@" intoString:{", 0}];
    v12 = [v4 scanFloat:&v20];
    if (whitespaceCharacterSet && v6 && v7 && v8 && v9 && v10)
    {
      v13 = *&v20;
      if ((v11 & v12) == 0)
      {
        v13 = 1.0;
      }

      v14 = [MEMORY[0x277D75348] colorWithRed:SHIDWORD(v21) / 255.0 green:v21 / 255.0 blue:SHIDWORD(v20) / 255.0 alpha:v13];
    }

    else
    {
      v22[0] = @"black";
      blackColor = [MEMORY[0x277D75348] blackColor];
      v22[1] = @"white";
      v23[0] = blackColor;
      whiteColor = [MEMORY[0x277D75348] whiteColor];
      v23[1] = whiteColor;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];

      v14 = [v17 objectForKeyedSubscript:stringCopy];
    }
  }

  else
  {
    v14 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)linkMetadataWithImage:(id)image icon:(id)icon
{
  imageCopy = image;
  iconCopy = icon;
  v8 = objc_alloc_init(FAInviteLinkMetadata);
  [(FAInviteLinkMetadata *)v8 setContext:self->_context];
  if (imageCopy)
  {
    [(FAInviteLinkMetadata *)v8 setImage:imageCopy];
    if (iconCopy)
    {
LABEL_3:
      [(FAInviteLinkMetadata *)v8 setIcon:iconCopy];
      goto LABEL_6;
    }
  }

  else
  {
    _defaultImage = [(FAInviteLinkMetadataProvider *)self _defaultImage];
    [(FAInviteLinkMetadata *)v8 setImage:_defaultImage];

    if (iconCopy)
    {
      goto LABEL_3;
    }
  }

  _defaultIcon = [(FAInviteLinkMetadataProvider *)self _defaultIcon];
  [(FAInviteLinkMetadata *)v8 setIcon:_defaultIcon];

LABEL_6:

  return v8;
}

- (id)_imageNamed:(id)named
{
  v3 = MEMORY[0x277D755B8];
  v4 = MEMORY[0x277CCA8D8];
  namedCopy = named;
  v6 = [v4 bundleForClass:objc_opt_class()];
  v7 = [v3 imageNamed:namedCopy inBundle:v6];

  v8 = [objc_alloc(MEMORY[0x277CD46B0]) initWithPlatformImage:v7];

  return v8;
}

@end