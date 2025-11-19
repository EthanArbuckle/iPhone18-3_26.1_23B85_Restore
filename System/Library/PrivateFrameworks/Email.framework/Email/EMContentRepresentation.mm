@interface EMContentRepresentation
+ (NSObject)_temporaryURLForClientIdentifier:(void *)a3 preferredFilename:(void *)a4 pathExtension:(void *)a5 cleanupInvocable:(void *)a6 error:;
+ (NSXPCInterface)contentRequestDelegateInterface;
+ (NSXPCInterface)distantContentRepresentationInterface;
+ (id)temporaryURLWithData:(id)a3 clientIdentifier:(id)a4 preferredFilename:(id)a5 pathExtension:(id)a6 cleanupInvocable:(id *)a7 error:(id *)a8;
+ (id)temporaryURLWithOriginalFileURL:(id)a3 clientIdentifier:(id)a4 preferredFilename:(id)a5 pathExtension:(id)a6 cleanupInvocable:(id *)a7 error:(id *)a8;
- (BOOL)showRemoteImages;
- (BOOL)skipMessageReformatting;
- (EMContentItem)contentItem;
- (EMContentRepresentation)initWithCloneOfOriginalFileURL:(id)a3 clientIdentifier:(id)a4 preferredFilename:(id)a5 extension:(id)a6;
- (EMContentRepresentation)initWithCoder:(id)a3;
- (EMContentRepresentation)initWithContentMessage:(id)a3 data:(id)a4 clientIdentifier:(id)a5 preferredFilename:(id)a6 extension:(id)a7;
- (EMContentRepresentation)initWithContentURL:(id)a3 relatedItems:(id)a4 securityInformation:(id)a5;
- (EMContentRepresentation)initWithData:(id)a3 clientIdentifier:(id)a4 preferredFilename:(id)a5 extension:(id)a6 relatedItems:(id)a7 securityInformation:(id)a8;
- (NSString)debugDescription;
- (NSString)ef_publicDescription;
- (id)_distantLoaderBlockForContentItem:(void *)a1;
- (id)_initWithRelatedItems:(void *)a3 securityInformation:;
- (id)_initWithSandboxedURLWrapper:(void *)a3 relatedItems:(void *)a4 securityInformation:;
- (id)performUnsubscribeAction:(unint64_t)a3 completion:(id)a4;
- (id)requestAdditionalContentWithCompletion:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)mergeUpdatedRepresentation:(id)a3;
- (void)requestOriginalContentMessagesInReplyToContentItemWithCompletion:(id)a3;
- (void)setDistantContentRepresentation:(id)a3;
@end

@implementation EMContentRepresentation

+ (NSXPCInterface)contentRequestDelegateInterface
{
  if (contentRequestDelegateInterface_onceToken != -1)
  {
    +[EMContentRepresentation contentRequestDelegateInterface];
  }

  v3 = contentRequestDelegateInterface_contentRequestDelegateInterface;

  return v3;
}

void __58__EMContentRepresentation_contentRequestDelegateInterface__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4641A28];
  v1 = contentRequestDelegateInterface_contentRequestDelegateInterface;
  contentRequestDelegateInterface_contentRequestDelegateInterface = v0;

  v2 = contentRequestDelegateInterface_contentRequestDelegateInterface;
  v10 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:? forSelector:? argumentIndex:? ofReply:?];

  v3 = contentRequestDelegateInterface_contentRequestDelegateInterface;
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v11 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  [v3 setClasses:? forSelector:? argumentIndex:? ofReply:?];

  v6 = contentRequestDelegateInterface_contentRequestDelegateInterface;
  v12 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v6 setClasses:? forSelector:? argumentIndex:? ofReply:?];

  v7 = contentRequestDelegateInterface_contentRequestDelegateInterface;
  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v13 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  [v7 setClasses:? forSelector:? argumentIndex:? ofReply:?];
}

+ (NSXPCInterface)distantContentRepresentationInterface
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__EMContentRepresentation_distantContentRepresentationInterface__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (distantContentRepresentationInterface_onceToken != -1)
  {
    dispatch_once(&distantContentRepresentationInterface_onceToken, block);
  }

  v2 = distantContentRepresentationInterface_interface;

  return v2;
}

void __64__EMContentRepresentation_distantContentRepresentationInterface__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4641B40];
  v3 = distantContentRepresentationInterface_interface;
  distantContentRepresentationInterface_interface = v2;

  [distantContentRepresentationInterface_interface setInterface:distantContentRepresentationInterface_interface forSelector:sel_requestRepresentationForItemWithObjectID_options_delegate_completionHandler_ argumentIndex:0 ofReply:1];
  v4 = distantContentRepresentationInterface_interface;
  v8 = [*(a1 + 32) contentRequestDelegateInterface];
  [v4 setInterface:? forSelector:? argumentIndex:? ofReply:?];

  v5 = distantContentRepresentationInterface_interface;
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v9 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  [v5 setClasses:? forSelector:? argumentIndex:? ofReply:?];
}

+ (NSObject)_temporaryURLForClientIdentifier:(void *)a3 preferredFilename:(void *)a4 pathExtension:(void *)a5 cleanupInvocable:(void *)a6 error:
{
  v43[4] = *MEMORY[0x1E69E9840];
  v33 = a2;
  v34 = a3;
  v32 = a4;
  objc_opt_self();
  v10 = NSTemporaryDirectory();
  v43[0] = v10;
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v43[1] = v12;
  v43[2] = v33;
  v13 = [MEMORY[0x1E696AEC0] ef_UUID];
  v43[3] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:4];

  v15 = [MEMORY[0x1E696AEC0] pathWithComponents:v14];
  v16 = [MEMORY[0x1E696AC08] defaultManager];
  v39 = 0;
  LOBYTE(a4) = [v16 createDirectoryAtPath:v15 withIntermediateDirectories:1 attributes:0 error:&v39];
  v17 = v39;
  v18 = v17;
  if (a4)
  {
    if ([v34 length])
    {
      v19 = v34;
    }

    else
    {
      v24 = [MEMORY[0x1E696AEC0] ef_UUID];

      v19 = v24;
    }

    v25 = MEMORY[0x1E695DFF8];
    v40[0] = v15;
    v34 = v19;
    v26 = [v19 stringByAppendingPathExtension:v32];
    v27 = [v26 stringByReplacingOccurrencesOfString:@"/" withString:@"_"];
    v40[1] = v27;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
    v23 = [v25 fileURLWithPathComponents:v28];

    if (!a5)
    {
      goto LABEL_13;
    }

    v29 = MEMORY[0x1E699B7D8];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __115__EMContentRepresentation__temporaryURLForClientIdentifier_preferredFilename_pathExtension_cleanupInvocable_error___block_invoke;
    v35[3] = &unk_1E826C230;
    v23 = v23;
    v36 = v23;
    v37 = v16;
    v38 = v15;
    *a5 = [v29 tokenWithInvocationBlock:v35];

    v22 = v36;
  }

  else
  {
    if (a6)
    {
      v20 = MEMORY[0x1E696ABC0];
      v41 = *MEMORY[0x1E696AA08];
      v42 = v17;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      *a6 = [v20 errorWithDomain:@"EMErrorDomain" code:2048 userInfo:v21];
    }

    v22 = EMLogCategoryMessageLoading();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [v18 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      +[EMContentRepresentation _temporaryURLForClientIdentifier:preferredFilename:pathExtension:cleanupInvocable:error:];
    }

    v23 = 0;
  }

LABEL_13:
  v30 = *MEMORY[0x1E69E9840];

  return v23;
}

void __115__EMContentRepresentation__temporaryURLForClientIdentifier_preferredFilename_pathExtension_cleanupInvocable_error___block_invoke(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = EMLogCategoryMessageLoading();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = a1[4];
    *buf = 138412290;
    v13 = v3;
    _os_log_impl(&dword_1C6655000, v2, OS_LOG_TYPE_INFO, "Cleaning up representation URL %@", buf, 0xCu);
  }

  v4 = a1[5];
  v5 = a1[6];
  v11 = 0;
  v6 = [v4 removeItemAtPath:v5 error:&v11];
  v7 = v11;
  if ((v6 & 1) == 0)
  {
    v8 = EMLogCategoryMessageLoading();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = a1[4];
      [v7 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      __115__EMContentRepresentation__temporaryURLForClientIdentifier_preferredFilename_pathExtension_cleanupInvocable_error___block_invoke_cold_1();
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

+ (id)temporaryURLWithData:(id)a3 clientIdentifier:(id)a4 preferredFilename:(id)a5 pathExtension:(id)a6 cleanupInvocable:(id *)a7 error:(id *)a8
{
  v30[1] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = [(EMContentRepresentation *)a1 _temporaryURLForClientIdentifier:v15 preferredFilename:v16 pathExtension:v17 cleanupInvocable:a7 error:a8];
  if (v18)
  {
    v28 = 0;
    v19 = [v14 writeToURL:v18 options:1073741825 error:&v28];
    v20 = v28;
    v21 = v20;
    if (v19)
    {
      v22 = v18;
    }

    else
    {
      if (a8)
      {
        v23 = MEMORY[0x1E696ABC0];
        v29 = *MEMORY[0x1E696AA08];
        v30[0] = v20;
        v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
        *a8 = [v23 errorWithDomain:@"EMErrorDomain" code:2048 userInfo:v24];
      }

      v25 = EMLogCategoryMessageLoading();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [v21 ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        +[EMContentRepresentation temporaryURLWithData:clientIdentifier:preferredFilename:pathExtension:cleanupInvocable:error:];
      }

      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  v26 = *MEMORY[0x1E69E9840];

  return v22;
}

+ (id)temporaryURLWithOriginalFileURL:(id)a3 clientIdentifier:(id)a4 preferredFilename:(id)a5 pathExtension:(id)a6 cleanupInvocable:(id *)a7 error:(id *)a8
{
  v37[1] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = [(EMContentRepresentation *)a1 _temporaryURLForClientIdentifier:v15 preferredFilename:v16 pathExtension:v17 cleanupInvocable:a7 error:a8];
  if (v18)
  {
    v19 = [MEMORY[0x1E696AC08] defaultManager];
    v29 = 0;
    v20 = [v19 copyItemAtURL:v14 toURL:v18 error:&v29];
    v21 = v29;

    if (v20)
    {
      v22 = v18;
    }

    else
    {
      if (a8)
      {
        v23 = MEMORY[0x1E696ABC0];
        v36 = *MEMORY[0x1E696AA08];
        v37[0] = v21;
        v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:&v36 count:1];
        *a8 = [v23 errorWithDomain:@"EMErrorDomain" code:2048 userInfo:v24];
      }

      v25 = EMLogCategoryMessageLoading();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v28 = [v21 ef_publicDescription];
        *buf = 138412802;
        v31 = v14;
        v32 = 2112;
        v33 = v18;
        v34 = 2114;
        v35 = v28;
        _os_log_error_impl(&dword_1C6655000, v25, OS_LOG_TYPE_ERROR, "failed to copy data from %@ to URL %@: %{public}@", buf, 0x20u);
      }

      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  v26 = *MEMORY[0x1E69E9840];

  return v22;
}

- (id)_initWithRelatedItems:(void *)a3 securityInformation:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v15.receiver = a1;
    v15.super_class = EMContentRepresentation;
    a1 = objc_msgSendSuper2(&v15, sel_init);
    if (a1)
    {
      v7 = objc_alloc_init(MEMORY[0x1E699B7D8]);
      v8 = a1[1];
      a1[1] = v7;

      v9 = [v5 copy];
      v10 = v9;
      if (v9)
      {
        v11 = v9;
      }

      else
      {
        v11 = MEMORY[0x1E695E0F0];
      }

      objc_storeStrong(a1 + 7, v11);

      objc_storeStrong(a1 + 8, a3);
      v12 = [[EMMessageContentCachedMetadata alloc] initWithDelegate:a1];
      v13 = a1[16];
      a1[16] = v12;
    }
  }

  return a1;
}

- (id)_initWithSandboxedURLWrapper:(void *)a3 relatedItems:(void *)a4 securityInformation:
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (a1 && v8)
  {
    v11 = [(EMContentRepresentation *)a1 _initWithRelatedItems:v9 securityInformation:v10];
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(v11 + 15, a2);
      v13 = [v12[15] url];
      *(v12 + 16) = [v13 startAccessingSecurityScopedResource];

      v14 = [[EMMessageContentCachedMetadata alloc] initWithDelegate:v12];
      v15 = v12[16];
      v12[16] = v14;
    }

    a1 = v12;
    v16 = a1;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (EMContentRepresentation)initWithContentURL:(id)a3 relatedItems:(id)a4 securityInformation:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [objc_alloc(MEMORY[0x1E699B970]) initWithFileURL:v8 readOnly:1];
  v12 = [(EMContentRepresentation *)&self->super.isa _initWithSandboxedURLWrapper:v11 relatedItems:v9 securityInformation:v10];

  return v12;
}

- (EMContentRepresentation)initWithData:(id)a3 clientIdentifier:(id)a4 preferredFilename:(id)a5 extension:(id)a6 relatedItems:(id)a7 securityInformation:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v26 = 0;
  v20 = [objc_opt_class() temporaryURLWithData:v14 clientIdentifier:v15 preferredFilename:v16 pathExtension:v17 cleanupInvocable:&v26 error:0];
  v21 = v26;
  if (v20)
  {
    v22 = [(EMContentRepresentation *)self initWithContentURL:v20 relatedItems:v18 securityInformation:v19];
    v23 = v22;
    if (v22)
    {
      [(EFInvocationToken *)v22->_invocable addInvocable:v21];
    }

    else
    {
      [v21 invoke];
    }

    self = v23;
    v24 = self;
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (EMContentRepresentation)initWithCloneOfOriginalFileURL:(id)a3 clientIdentifier:(id)a4 preferredFilename:(id)a5 extension:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v20 = 0;
  v14 = [objc_opt_class() temporaryURLWithOriginalFileURL:v10 clientIdentifier:v11 preferredFilename:v12 pathExtension:v13 cleanupInvocable:&v20 error:0];
  v15 = v20;
  if (v14)
  {
    v16 = [(EMContentRepresentation *)self initWithContentURL:v14 relatedItems:MEMORY[0x1E695E0F0] securityInformation:0];
    v17 = v16;
    if (v16)
    {
      [(EFInvocationToken *)v16->_invocable addInvocable:v15];
    }

    else
    {
      [v15 invoke];
    }

    self = v17;
    v18 = self;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (EMContentRepresentation)initWithContentMessage:(id)a3 data:(id)a4 clientIdentifier:(id)a5 preferredFilename:(id)a6 extension:(id)a7
{
  v13 = a3;
  v14 = [(EMContentRepresentation *)self initWithData:a4 clientIdentifier:a5 preferredFilename:a6 extension:a7 relatedItems:MEMORY[0x1E695E0F0] securityInformation:0];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_contentMessage, a3);
  }

  return v15;
}

- (void)dealloc
{
  if (self->_claimedScopedResource)
  {
    v3 = [(EFSandboxedURLWrapper *)self->_urlWrapper url];
    [v3 stopAccessingSecurityScopedResource];
  }

  [(EMContentRepresentation *)self invalidate];
  v4.receiver = self;
  v4.super_class = EMContentRepresentation;
  [(EMContentRepresentation *)&v4 dealloc];
}

- (EMContentRepresentation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_urlWrapper"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"EFPropertyKey_relatedContentItems"];

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_securityInformation"];
  v11 = [(EMContentRepresentation *)&self->super.isa _initWithSandboxedURLWrapper:v5 relatedItems:v9 securityInformation:v10];
  if (v11)
  {
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_searchableItem"];
    searchableItem = v11->_searchableItem;
    v11->_searchableItem = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_unsubscribeCommand"];
    unsubscribeCommand = v11->_unsubscribeCommand;
    v11->_unsubscribeCommand = v14;

    v11->_hasMoreContent = [v4 decodeBoolForKey:@"EFPropertyKey_hasMoreContent"];
    v11->_remainingByteCount = [v4 decodeInt64ForKey:@"EFPropertyKey_remainingByteCount"];
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_publicMessageURL"];
    publicMessageURL = v11->_publicMessageURL;
    v11->_publicMessageURL = v16;

    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = [v18 setWithObjects:{v19, v20, objc_opt_class(), 0}];
    v22 = [v4 decodeObjectOfClasses:v21 forKey:@"EFPropertyKey_replyToList"];
    replyToList = v11->_replyToList;
    v11->_replyToList = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_contentMessage"];
    contentMessage = v11->_contentMessage;
    v11->_contentMessage = v24;

    v11->_transportType = [v4 decodeIntegerForKey:@"EFPropertyKey_transportType"];
    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_requestedHeaders"];
    requestedHeaders = v11->_requestedHeaders;
    v11->_requestedHeaders = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_cachedMetadataJSON"];
    cachedMetadataJSON = v11->_cachedMetadataJSON;
    v11->_cachedMetadataJSON = v28;
  }

  return v11;
}

- (NSString)ef_publicDescription
{
  v3 = [MEMORY[0x1E699B7B0] currentDevice];
  v4 = [v3 isInternal];

  if (v4)
  {
    if (self)
    {
      urlWrapper = self->_urlWrapper;
    }

    else
    {
      urlWrapper = 0;
    }

    v6 = MEMORY[0x1E699B858];
    v7 = [(EFSandboxedURLWrapper *)urlWrapper url];
    v8 = [v7 absoluteString];
    v9 = [v6 partiallyRedactedStringForString:v8];

    v33 = MEMORY[0x1E696AEC0];
    v31 = objc_opt_class();
    v35 = [(EMContentRepresentation *)self publicMessageURL];
    if (self->_claimedScopedResource)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    if (self->_hasMoreContent)
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    v28 = v11;
    v29 = v10;
    remainingByteCount = self->_remainingByteCount;
    v12 = [(EMContentRepresentation *)self relatedContentItems];
    v13 = [(EMContentRepresentation *)self transportType];
    v14 = [(EMContentRepresentation *)self securityInformation];
    v15 = [(EMContentRepresentation *)self searchableItem];
    v16 = [(EMContentRepresentation *)self unsubscribeCommand];
    v17 = [(EMContentRepresentation *)self cachedMetadataJSON];
    if (v17)
    {
      v18 = @"YES";
    }

    else
    {
      v18 = @"NO";
    }

    v19 = v35;
    v20 = [v33 stringWithFormat:@"<%@: %p> publicMessageURL=%@, URL=%@, extended-sandbox=%@, hasMoreContent=%@ (%lld bytes), related-items=%@, transport=%d, security-information=%@, searchableItem=%@, unsubscribeCommand=%@, cachedMetadataJSON=%@", v31, self, v35, v9, v29, v28, remainingByteCount, v12, v13, v14, v15, v16, v18];
  }

  else
  {
    v34 = MEMORY[0x1E696AEC0];
    v32 = objc_opt_class();
    if (self->_claimedScopedResource)
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    v30 = v21;
    if (self->_hasMoreContent)
    {
      v22 = @"YES";
    }

    else
    {
      v22 = @"NO";
    }

    v23 = self->_remainingByteCount;
    v9 = [(EMContentRepresentation *)self relatedContentItems];
    v24 = [(EMContentRepresentation *)self transportType];
    v36 = [(EMContentRepresentation *)self securityInformation];
    v12 = [(EMContentRepresentation *)self searchableItem];
    v14 = [(EMContentRepresentation *)self unsubscribeCommand];
    v15 = [(EMContentRepresentation *)self cachedMetadataJSON];
    if (v15)
    {
      v25 = @"YES";
    }

    else
    {
      v25 = @"NO";
    }

    v19 = v36;
    v20 = [v34 stringWithFormat:@"<%@: %p> extended-sandbox=%@, hasMoreContent=%@ (%lld bytes), related-items=%@, transport=%d, security-information=%@, searchableItem=%@, unsubscribeCommand=%@, cachedMetadataJSON=%@", v32, self, v30, v22, v23, v9, v24, v36, v12, v14, v25];
  }

  return v20;
}

- (id)_distantLoaderBlockForContentItem:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1 distantContentRepresentation];
    v5 = [v3 objectID];
    objc_initWeak(&location, a1);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __61__EMContentRepresentation__distantLoaderBlockForContentItem___block_invoke;
    v10[3] = &unk_1E826C8B0;
    objc_copyWeak(&v13, &location);
    v11 = v5;
    v12 = v4;
    v6 = v4;
    v7 = v5;
    v8 = _Block_copy(v10);

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id __61__EMContentRepresentation__distantLoaderBlockForContentItem___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v11 = EMLogCategoryMessageLoading();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v7 requestedRepresentation];
    v13 = *(a1 + 32);
    *buf = 138543618;
    v24 = v12;
    v25 = 2114;
    v26 = v13;
    _os_log_impl(&dword_1C6655000, v11, OS_LOG_TYPE_DEFAULT, "requesting representation %{public}@ for objectID %{public}@", buf, 0x16u);
  }

  v15 = *(a1 + 32);
  v14 = *(a1 + 40);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __61__EMContentRepresentation__distantLoaderBlockForContentItem___block_invoke_154;
  v20[3] = &unk_1E826C888;
  objc_copyWeak(&v22, (a1 + 48));
  v16 = v9;
  v21 = v16;
  v17 = [v14 requestRepresentationForItemWithObjectID:v15 options:v7 delegate:v8 completionHandler:v20];

  objc_destroyWeak(&v22);
  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

void __61__EMContentRepresentation__distantLoaderBlockForContentItem___block_invoke_154(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7 && v8)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __61__EMContentRepresentation__distantLoaderBlockForContentItem___block_invoke_2;
    v12[3] = &unk_1E826C098;
    v11 = v8;
    v13 = v11;
    [WeakRetained addInvalidationHandler:v12];
    [v11 setDistantContentRepresentation:v7];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)setDistantContentRepresentation:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (self->_distantContentRepresentation)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"EMContentRepresentation.m" lineNumber:364 description:@"distantContentRepresentation should only be set once"];
  }

  if (v6 != self)
  {
    objc_storeStrong(&self->_distantContentRepresentation, a3);
    urlWrapper = self->_urlWrapper;
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __59__EMContentRepresentation_setDistantContentRepresentation___block_invoke;
    v34[3] = &unk_1E826C098;
    v8 = v6;
    v35 = v8;
    [(EFSandboxedURLWrapper *)urlWrapper addInvalidationHandler:v34];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v9 = [(EMContentRepresentation *)self relatedContentItems];
    v10 = [v9 countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v10)
    {
      v11 = *v31;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v31 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v30 + 1) + 8 * i);
          v14 = [(EMContentRepresentation *)self _distantLoaderBlockForContentItem:v13];
          [v13 setLoaderBlock:v14];
        }

        v10 = [v9 countByEnumeratingWithState:&v30 objects:v36 count:16];
      }

      while (v10);
    }

    v15 = [(EMContentRepresentation *)self contentMessage];
    if (v15)
    {
      v16 = [(EMContentRepresentation *)self _distantLoaderBlockForContentItem:v15];
      [v15 setLoaderBlock:v16];
    }

    objc_initWeak(&location, self);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __59__EMContentRepresentation_setDistantContentRepresentation___block_invoke_2;
    v26[3] = &unk_1E826C8D8;
    objc_copyWeak(&v28, &location);
    v17 = v8;
    v27 = v17;
    [(EMContentRepresentation *)self setRequestMoreContentBlock:v26];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __59__EMContentRepresentation_setDistantContentRepresentation___block_invoke_3;
    v23[3] = &unk_1E826C900;
    objc_copyWeak(&v25, &location);
    v18 = v17;
    v24 = v18;
    [(EMContentRepresentation *)self setListUnsubscribeBlock:v23];
    if (_os_feature_enabled_impl() && (EMIsGreymatterSupported() & 1) != 0 || _os_feature_enabled_impl() && EMIsGreymatterSupported())
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __59__EMContentRepresentation_setDistantContentRepresentation___block_invoke_4;
      v21[3] = &unk_1E826C928;
      v22 = v18;
      [(EMContentRepresentation *)self setRequestOriginalContentMessagesInReplyToContentItemBlock:v21];
    }

    objc_destroyWeak(&v25);
    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }

  v19 = *MEMORY[0x1E69E9840];
}

id __59__EMContentRepresentation_setDistantContentRepresentation___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([WeakRetained hasMoreContent])
  {
    v5 = [*(a1 + 32) requestUpdatedRepresentationWithCompletion:v3];
  }

  else
  {
    v3[2](v3, WeakRetained, 0);
    v5 = 0;
  }

  return v5;
}

id __59__EMContentRepresentation_setDistantContentRepresentation___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [WeakRetained unsubscribeCommand];

  if (v7)
  {
    v8 = [*(a1 + 32) performUnsubscribeAction:a2 completion:v5];
  }

  else
  {
    v5[2](v5, 0);
    v8 = 0;
  }

  return v8;
}

- (id)requestAdditionalContentWithCompletion:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = EMLogCategoryMessageLoading();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(EMContentRepresentation *)self ef_publicDescription];
    *buf = 138543362;
    v17 = v6;
    _os_log_impl(&dword_1C6655000, v5, OS_LOG_TYPE_DEFAULT, "requesting additional content for content representation %{public}@", buf, 0xCu);
  }

  v7 = [(EMContentRepresentation *)self requestMoreContentBlock];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__EMContentRepresentation_requestAdditionalContentWithCompletion___block_invoke;
  v12[3] = &unk_1E826C950;
  objc_copyWeak(&v14, &location);
  v8 = v4;
  v13 = v8;
  v9 = (v7)[2](v7, v12);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

void __66__EMContentRepresentation_requestAdditionalContentWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v7)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained mergeUpdatedRepresentation:v7];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)mergeUpdatedRepresentation:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4 != self)
  {
    v6 = [(EMContentRepresentation *)v4 relatedContentItems];
    [(EMContentRepresentation *)self setRelatedContentItems:v6];

    v7 = [(EMContentRepresentation *)v5 securityInformation];
    [(EMContentRepresentation *)self setSecurityInformation:v7];

    [(EMContentRepresentation *)self setHasMoreContent:[(EMContentRepresentation *)v5 hasMoreContent]];
    [(EMContentRepresentation *)self setRemainingByteCount:[(EMContentRepresentation *)v5 remainingByteCount]];
    v8 = [(EMContentRepresentation *)self distantContentRepresentation];
    if (v8)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v9 = [(EMContentRepresentation *)self relatedContentItems];
      v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        v11 = *v17;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v17 != v11)
            {
              objc_enumerationMutation(v9);
            }

            v13 = *(*(&v16 + 1) + 8 * i);
            v14 = [(EMContentRepresentation *)self _distantLoaderBlockForContentItem:v13];
            [v13 setLoaderBlock:v14];
          }

          v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v10);
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)performUnsubscribeAction:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(EMContentRepresentation *)self listUnsubscribeBlock];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__EMContentRepresentation_performUnsubscribeAction_completion___block_invoke;
  v11[3] = &unk_1E826C738;
  v8 = v6;
  v12 = v8;
  v9 = (v7)[2](v7, a3, v11);

  return v9;
}

- (void)requestOriginalContentMessagesInReplyToContentItemWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(EMContentRepresentation *)self requestOriginalContentMessagesInReplyToContentItemBlock];

  if (v5)
  {
    v6 = [(EMContentRepresentation *)self requestOriginalContentMessagesInReplyToContentItemBlock];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __92__EMContentRepresentation_requestOriginalContentMessagesInReplyToContentItemWithCompletion___block_invoke;
    v7[3] = &unk_1E826C978;
    v8 = v4;
    (v6)[2](v6, v7);
  }

  else
  {
    v6 = [MEMORY[0x1E696ABC0] em_internalErrorWithReason:@"Unable to retrieve original contents"];
    (*(v4 + 2))(v4, 0, v6);
  }
}

- (EMContentItem)contentItem
{
  WeakRetained = objc_loadWeakRetained(&self->_contentItem);

  return WeakRetained;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  if (self)
  {
    urlWrapper = self->_urlWrapper;
  }

  else
  {
    urlWrapper = 0;
  }

  v78 = v4;
  [v4 encodeObject:urlWrapper forKey:@"EFPropertyKey_urlWrapper"];
  v6 = [(EMContentRepresentation *)self contentMessage];
  OUTLINED_FUNCTION_1_0(v6, v7, v8, @"EFPropertyKey_contentMessage", v9, v10, v11, v12, v69, v78);

  v13 = [(EMContentRepresentation *)self relatedContentItems];
  OUTLINED_FUNCTION_1_0(v13, v14, v15, @"EFPropertyKey_relatedContentItems", v16, v17, v18, v19, v70, v79);

  v20 = [(EMContentRepresentation *)self securityInformation];
  OUTLINED_FUNCTION_1_0(v20, v21, v22, @"EFPropertyKey_securityInformation", v23, v24, v25, v26, v71, v80);

  v27 = [(EMContentRepresentation *)self searchableItem];
  OUTLINED_FUNCTION_1_0(v27, v28, v29, @"EFPropertyKey_searchableItem", v30, v31, v32, v33, v72, v81);

  v34 = [(EMContentRepresentation *)self unsubscribeCommand];
  OUTLINED_FUNCTION_1_0(v34, v35, v36, @"EFPropertyKey_unsubscribeCommand", v37, v38, v39, v40, v73, v82);

  [v83 encodeBool:-[EMContentRepresentation hasMoreContent](self forKey:{"hasMoreContent"), @"EFPropertyKey_hasMoreContent"}];
  [v83 encodeInt64:-[EMContentRepresentation remainingByteCount](self forKey:{"remainingByteCount"), @"EFPropertyKey_remainingByteCount"}];
  v41 = [(EMContentRepresentation *)self publicMessageURL];
  OUTLINED_FUNCTION_1_0(v41, v42, v43, @"EFPropertyKey_publicMessageURL", v44, v45, v46, v47, v74, v83);

  v48 = [(EMContentRepresentation *)self replyToList];
  OUTLINED_FUNCTION_1_0(v48, v49, v50, @"EFPropertyKey_replyToList", v51, v52, v53, v54, v75, v84);

  [v85 encodeInteger:-[EMContentRepresentation transportType](self forKey:{"transportType"), @"EFPropertyKey_transportType"}];
  v55 = [(EMContentRepresentation *)self requestedHeaders];
  OUTLINED_FUNCTION_1_0(v55, v56, v57, @"EFPropertyKey_requestedHeaders", v58, v59, v60, v61, v76, v85);

  v62 = [(EMContentRepresentation *)self cachedMetadataJSON];
  OUTLINED_FUNCTION_1_0(v62, v63, v64, @"EFPropertyKey_cachedMetadataJSON", v65, v66, v67, v68, v77, v86);
}

- (NSString)debugDescription
{
  v16 = MEMORY[0x1E696AEC0];
  v15 = objc_opt_class();
  v19 = [(EMContentRepresentation *)self publicMessageURL];
  if (self)
  {
    urlWrapper = self->_urlWrapper;
  }

  else
  {
    urlWrapper = 0;
  }

  v18 = urlWrapper;
  if (self->_claimedScopedResource)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  if (self->_hasMoreContent)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  remainingByteCount = self->_remainingByteCount;
  invocable = self->_invocable;
  v17 = [(EMContentRepresentation *)self relatedContentItems];
  v8 = [(EMContentRepresentation *)self transportType];
  v9 = [(EMContentRepresentation *)self securityInformation];
  v10 = [(EMContentRepresentation *)self searchableItem];
  v11 = [(EMContentRepresentation *)self unsubscribeCommand];
  v12 = [(EMContentRepresentation *)self replyToList];
  v13 = [v16 stringWithFormat:@"<%@: %p> publicMessageURL=%@, wrappedURL=%@, extended-sandbox=%@, hasMoreContent=%@ (%lld bytes), invocable=%@, related-items=%@, transport=%d, security-information=%@, searchableItem=%@, unsubscribeCommand=%@, replyToList=%@", v15, self, v19, v18, v4, v5, remainingByteCount, invocable, v17, v8, v9, v10, v11, v12];

  return v13;
}

- (BOOL)showRemoteImages
{
  if (self)
  {
    self = self->_cachedMetadata;
  }

  return [(EMContentRepresentation *)self showRemoteImages];
}

- (BOOL)skipMessageReformatting
{
  if (self)
  {
    self = self->_cachedMetadata;
  }

  return [(EMContentRepresentation *)self skipMessageReformatting];
}

+ (void)_temporaryURLForClientIdentifier:preferredFilename:pathExtension:cleanupInvocable:error:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_3(&dword_1C6655000, "failed to create directory %@: %{public}@", v4, v5);
}

void __115__EMContentRepresentation__temporaryURLForClientIdentifier_preferredFilename_pathExtension_cleanupInvocable_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_3(&dword_1C6655000, "failed to remove URL %@: %{public}@", v4, v5);
}

+ (void)temporaryURLWithData:clientIdentifier:preferredFilename:pathExtension:cleanupInvocable:error:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_3(&dword_1C6655000, "failed to write data to URL %@: %{public}@", v4, v5);
}

@end