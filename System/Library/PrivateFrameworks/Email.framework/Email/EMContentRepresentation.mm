@interface EMContentRepresentation
+ (NSObject)_temporaryURLForClientIdentifier:(void *)identifier preferredFilename:(void *)filename pathExtension:(void *)extension cleanupInvocable:(void *)invocable error:;
+ (NSXPCInterface)contentRequestDelegateInterface;
+ (NSXPCInterface)distantContentRepresentationInterface;
+ (id)temporaryURLWithData:(id)data clientIdentifier:(id)identifier preferredFilename:(id)filename pathExtension:(id)extension cleanupInvocable:(id *)invocable error:(id *)error;
+ (id)temporaryURLWithOriginalFileURL:(id)l clientIdentifier:(id)identifier preferredFilename:(id)filename pathExtension:(id)extension cleanupInvocable:(id *)invocable error:(id *)error;
- (BOOL)showRemoteImages;
- (BOOL)skipMessageReformatting;
- (EMContentItem)contentItem;
- (EMContentRepresentation)initWithCloneOfOriginalFileURL:(id)l clientIdentifier:(id)identifier preferredFilename:(id)filename extension:(id)extension;
- (EMContentRepresentation)initWithCoder:(id)coder;
- (EMContentRepresentation)initWithContentMessage:(id)message data:(id)data clientIdentifier:(id)identifier preferredFilename:(id)filename extension:(id)extension;
- (EMContentRepresentation)initWithContentURL:(id)l relatedItems:(id)items securityInformation:(id)information;
- (EMContentRepresentation)initWithData:(id)data clientIdentifier:(id)identifier preferredFilename:(id)filename extension:(id)extension relatedItems:(id)items securityInformation:(id)information;
- (NSString)debugDescription;
- (NSString)ef_publicDescription;
- (id)_distantLoaderBlockForContentItem:(void *)item;
- (id)_initWithRelatedItems:(void *)items securityInformation:;
- (id)_initWithSandboxedURLWrapper:(void *)wrapper relatedItems:(void *)items securityInformation:;
- (id)performUnsubscribeAction:(unint64_t)action completion:(id)completion;
- (id)requestAdditionalContentWithCompletion:(id)completion;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)mergeUpdatedRepresentation:(id)representation;
- (void)requestOriginalContentMessagesInReplyToContentItemWithCompletion:(id)completion;
- (void)setDistantContentRepresentation:(id)representation;
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
  block[4] = self;
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

+ (NSObject)_temporaryURLForClientIdentifier:(void *)identifier preferredFilename:(void *)filename pathExtension:(void *)extension cleanupInvocable:(void *)invocable error:
{
  v43[4] = *MEMORY[0x1E69E9840];
  v33 = a2;
  identifierCopy = identifier;
  filenameCopy = filename;
  objc_opt_self();
  v10 = NSTemporaryDirectory();
  v43[0] = v10;
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v43[1] = v12;
  v43[2] = v33;
  ef_UUID = [MEMORY[0x1E696AEC0] ef_UUID];
  v43[3] = ef_UUID;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:4];

  v15 = [MEMORY[0x1E696AEC0] pathWithComponents:v14];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v39 = 0;
  LOBYTE(filename) = [defaultManager createDirectoryAtPath:v15 withIntermediateDirectories:1 attributes:0 error:&v39];
  v17 = v39;
  v18 = v17;
  if (filename)
  {
    if ([identifierCopy length])
    {
      v19 = identifierCopy;
    }

    else
    {
      ef_UUID2 = [MEMORY[0x1E696AEC0] ef_UUID];

      v19 = ef_UUID2;
    }

    v25 = MEMORY[0x1E695DFF8];
    v40[0] = v15;
    identifierCopy = v19;
    v26 = [v19 stringByAppendingPathExtension:filenameCopy];
    v27 = [v26 stringByReplacingOccurrencesOfString:@"/" withString:@"_"];
    v40[1] = v27;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
    v23 = [v25 fileURLWithPathComponents:v28];

    if (!extension)
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
    v37 = defaultManager;
    v38 = v15;
    *extension = [v29 tokenWithInvocationBlock:v35];

    v22 = v36;
  }

  else
  {
    if (invocable)
    {
      v20 = MEMORY[0x1E696ABC0];
      v41 = *MEMORY[0x1E696AA08];
      v42 = v17;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      *invocable = [v20 errorWithDomain:@"EMErrorDomain" code:2048 userInfo:v21];
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

+ (id)temporaryURLWithData:(id)data clientIdentifier:(id)identifier preferredFilename:(id)filename pathExtension:(id)extension cleanupInvocable:(id *)invocable error:(id *)error
{
  v30[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  identifierCopy = identifier;
  filenameCopy = filename;
  extensionCopy = extension;
  v18 = [(EMContentRepresentation *)self _temporaryURLForClientIdentifier:identifierCopy preferredFilename:filenameCopy pathExtension:extensionCopy cleanupInvocable:invocable error:error];
  if (v18)
  {
    v28 = 0;
    v19 = [dataCopy writeToURL:v18 options:1073741825 error:&v28];
    v20 = v28;
    v21 = v20;
    if (v19)
    {
      v22 = v18;
    }

    else
    {
      if (error)
      {
        v23 = MEMORY[0x1E696ABC0];
        v29 = *MEMORY[0x1E696AA08];
        v30[0] = v20;
        v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
        *error = [v23 errorWithDomain:@"EMErrorDomain" code:2048 userInfo:v24];
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

+ (id)temporaryURLWithOriginalFileURL:(id)l clientIdentifier:(id)identifier preferredFilename:(id)filename pathExtension:(id)extension cleanupInvocable:(id *)invocable error:(id *)error
{
  v37[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  identifierCopy = identifier;
  filenameCopy = filename;
  extensionCopy = extension;
  v18 = [(EMContentRepresentation *)self _temporaryURLForClientIdentifier:identifierCopy preferredFilename:filenameCopy pathExtension:extensionCopy cleanupInvocable:invocable error:error];
  if (v18)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v29 = 0;
    v20 = [defaultManager copyItemAtURL:lCopy toURL:v18 error:&v29];
    v21 = v29;

    if (v20)
    {
      v22 = v18;
    }

    else
    {
      if (error)
      {
        v23 = MEMORY[0x1E696ABC0];
        v36 = *MEMORY[0x1E696AA08];
        v37[0] = v21;
        v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:&v36 count:1];
        *error = [v23 errorWithDomain:@"EMErrorDomain" code:2048 userInfo:v24];
      }

      v25 = EMLogCategoryMessageLoading();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        ef_publicDescription = [v21 ef_publicDescription];
        *buf = 138412802;
        v31 = lCopy;
        v32 = 2112;
        v33 = v18;
        v34 = 2114;
        v35 = ef_publicDescription;
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

- (id)_initWithRelatedItems:(void *)items securityInformation:
{
  v5 = a2;
  itemsCopy = items;
  if (self)
  {
    v15.receiver = self;
    v15.super_class = EMContentRepresentation;
    self = objc_msgSendSuper2(&v15, sel_init);
    if (self)
    {
      v7 = objc_alloc_init(MEMORY[0x1E699B7D8]);
      v8 = self[1];
      self[1] = v7;

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

      objc_storeStrong(self + 7, v11);

      objc_storeStrong(self + 8, items);
      v12 = [[EMMessageContentCachedMetadata alloc] initWithDelegate:self];
      v13 = self[16];
      self[16] = v12;
    }
  }

  return self;
}

- (id)_initWithSandboxedURLWrapper:(void *)wrapper relatedItems:(void *)items securityInformation:
{
  v8 = a2;
  wrapperCopy = wrapper;
  itemsCopy = items;
  if (self && v8)
  {
    v11 = [(EMContentRepresentation *)self _initWithRelatedItems:wrapperCopy securityInformation:itemsCopy];
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

    self = v12;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (EMContentRepresentation)initWithContentURL:(id)l relatedItems:(id)items securityInformation:(id)information
{
  lCopy = l;
  itemsCopy = items;
  informationCopy = information;
  v11 = [objc_alloc(MEMORY[0x1E699B970]) initWithFileURL:lCopy readOnly:1];
  v12 = [(EMContentRepresentation *)&self->super.isa _initWithSandboxedURLWrapper:v11 relatedItems:itemsCopy securityInformation:informationCopy];

  return v12;
}

- (EMContentRepresentation)initWithData:(id)data clientIdentifier:(id)identifier preferredFilename:(id)filename extension:(id)extension relatedItems:(id)items securityInformation:(id)information
{
  dataCopy = data;
  identifierCopy = identifier;
  filenameCopy = filename;
  extensionCopy = extension;
  itemsCopy = items;
  informationCopy = information;
  v26 = 0;
  v20 = [objc_opt_class() temporaryURLWithData:dataCopy clientIdentifier:identifierCopy preferredFilename:filenameCopy pathExtension:extensionCopy cleanupInvocable:&v26 error:0];
  v21 = v26;
  if (v20)
  {
    v22 = [(EMContentRepresentation *)self initWithContentURL:v20 relatedItems:itemsCopy securityInformation:informationCopy];
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
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (EMContentRepresentation)initWithCloneOfOriginalFileURL:(id)l clientIdentifier:(id)identifier preferredFilename:(id)filename extension:(id)extension
{
  lCopy = l;
  identifierCopy = identifier;
  filenameCopy = filename;
  extensionCopy = extension;
  v20 = 0;
  v14 = [objc_opt_class() temporaryURLWithOriginalFileURL:lCopy clientIdentifier:identifierCopy preferredFilename:filenameCopy pathExtension:extensionCopy cleanupInvocable:&v20 error:0];
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
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (EMContentRepresentation)initWithContentMessage:(id)message data:(id)data clientIdentifier:(id)identifier preferredFilename:(id)filename extension:(id)extension
{
  messageCopy = message;
  v14 = [(EMContentRepresentation *)self initWithData:data clientIdentifier:identifier preferredFilename:filename extension:extension relatedItems:MEMORY[0x1E695E0F0] securityInformation:0];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_contentMessage, message);
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

- (EMContentRepresentation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_urlWrapper"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"EFPropertyKey_relatedContentItems"];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_securityInformation"];
  v11 = [(EMContentRepresentation *)&self->super.isa _initWithSandboxedURLWrapper:v5 relatedItems:v9 securityInformation:v10];
  if (v11)
  {
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_searchableItem"];
    searchableItem = v11->_searchableItem;
    v11->_searchableItem = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_unsubscribeCommand"];
    unsubscribeCommand = v11->_unsubscribeCommand;
    v11->_unsubscribeCommand = v14;

    v11->_hasMoreContent = [coderCopy decodeBoolForKey:@"EFPropertyKey_hasMoreContent"];
    v11->_remainingByteCount = [coderCopy decodeInt64ForKey:@"EFPropertyKey_remainingByteCount"];
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_publicMessageURL"];
    publicMessageURL = v11->_publicMessageURL;
    v11->_publicMessageURL = v16;

    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = [v18 setWithObjects:{v19, v20, objc_opt_class(), 0}];
    v22 = [coderCopy decodeObjectOfClasses:v21 forKey:@"EFPropertyKey_replyToList"];
    replyToList = v11->_replyToList;
    v11->_replyToList = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_contentMessage"];
    contentMessage = v11->_contentMessage;
    v11->_contentMessage = v24;

    v11->_transportType = [coderCopy decodeIntegerForKey:@"EFPropertyKey_transportType"];
    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_requestedHeaders"];
    requestedHeaders = v11->_requestedHeaders;
    v11->_requestedHeaders = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_cachedMetadataJSON"];
    cachedMetadataJSON = v11->_cachedMetadataJSON;
    v11->_cachedMetadataJSON = v28;
  }

  return v11;
}

- (NSString)ef_publicDescription
{
  currentDevice = [MEMORY[0x1E699B7B0] currentDevice];
  isInternal = [currentDevice isInternal];

  if (isInternal)
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
    absoluteString = [v7 absoluteString];
    relatedContentItems2 = [v6 partiallyRedactedStringForString:absoluteString];

    v33 = MEMORY[0x1E696AEC0];
    v31 = objc_opt_class();
    publicMessageURL = [(EMContentRepresentation *)self publicMessageURL];
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
    relatedContentItems = [(EMContentRepresentation *)self relatedContentItems];
    transportType = [(EMContentRepresentation *)self transportType];
    securityInformation = [(EMContentRepresentation *)self securityInformation];
    searchableItem = [(EMContentRepresentation *)self searchableItem];
    unsubscribeCommand = [(EMContentRepresentation *)self unsubscribeCommand];
    cachedMetadataJSON = [(EMContentRepresentation *)self cachedMetadataJSON];
    if (cachedMetadataJSON)
    {
      v18 = @"YES";
    }

    else
    {
      v18 = @"NO";
    }

    v19 = publicMessageURL;
    v20 = [v33 stringWithFormat:@"<%@: %p> publicMessageURL=%@, URL=%@, extended-sandbox=%@, hasMoreContent=%@ (%lld bytes), related-items=%@, transport=%d, security-information=%@, searchableItem=%@, unsubscribeCommand=%@, cachedMetadataJSON=%@", v31, self, publicMessageURL, relatedContentItems2, v29, v28, remainingByteCount, relatedContentItems, transportType, securityInformation, searchableItem, unsubscribeCommand, v18];
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
    relatedContentItems2 = [(EMContentRepresentation *)self relatedContentItems];
    transportType2 = [(EMContentRepresentation *)self transportType];
    securityInformation2 = [(EMContentRepresentation *)self securityInformation];
    relatedContentItems = [(EMContentRepresentation *)self searchableItem];
    securityInformation = [(EMContentRepresentation *)self unsubscribeCommand];
    searchableItem = [(EMContentRepresentation *)self cachedMetadataJSON];
    if (searchableItem)
    {
      v25 = @"YES";
    }

    else
    {
      v25 = @"NO";
    }

    v19 = securityInformation2;
    v20 = [v34 stringWithFormat:@"<%@: %p> extended-sandbox=%@, hasMoreContent=%@ (%lld bytes), related-items=%@, transport=%d, security-information=%@, searchableItem=%@, unsubscribeCommand=%@, cachedMetadataJSON=%@", v32, self, v30, v22, v23, relatedContentItems2, transportType2, securityInformation2, relatedContentItems, securityInformation, v25];
  }

  return v20;
}

- (id)_distantLoaderBlockForContentItem:(void *)item
{
  v3 = a2;
  if (item)
  {
    distantContentRepresentation = [item distantContentRepresentation];
    objectID = [v3 objectID];
    objc_initWeak(&location, item);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __61__EMContentRepresentation__distantLoaderBlockForContentItem___block_invoke;
    v10[3] = &unk_1E826C8B0;
    objc_copyWeak(&v13, &location);
    v11 = objectID;
    v12 = distantContentRepresentation;
    v6 = distantContentRepresentation;
    v7 = objectID;
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

- (void)setDistantContentRepresentation:(id)representation
{
  v37 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  if (self->_distantContentRepresentation)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EMContentRepresentation.m" lineNumber:364 description:@"distantContentRepresentation should only be set once"];
  }

  if (representationCopy != self)
  {
    objc_storeStrong(&self->_distantContentRepresentation, representation);
    urlWrapper = self->_urlWrapper;
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __59__EMContentRepresentation_setDistantContentRepresentation___block_invoke;
    v34[3] = &unk_1E826C098;
    v8 = representationCopy;
    v35 = v8;
    [(EFSandboxedURLWrapper *)urlWrapper addInvalidationHandler:v34];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    relatedContentItems = [(EMContentRepresentation *)self relatedContentItems];
    v10 = [relatedContentItems countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v10)
    {
      v11 = *v31;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v31 != v11)
          {
            objc_enumerationMutation(relatedContentItems);
          }

          v13 = *(*(&v30 + 1) + 8 * i);
          v14 = [(EMContentRepresentation *)self _distantLoaderBlockForContentItem:v13];
          [v13 setLoaderBlock:v14];
        }

        v10 = [relatedContentItems countByEnumeratingWithState:&v30 objects:v36 count:16];
      }

      while (v10);
    }

    contentMessage = [(EMContentRepresentation *)self contentMessage];
    if (contentMessage)
    {
      v16 = [(EMContentRepresentation *)self _distantLoaderBlockForContentItem:contentMessage];
      [contentMessage setLoaderBlock:v16];
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

- (id)requestAdditionalContentWithCompletion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  objc_initWeak(&location, self);
  v5 = EMLogCategoryMessageLoading();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    ef_publicDescription = [(EMContentRepresentation *)self ef_publicDescription];
    *buf = 138543362;
    v17 = ef_publicDescription;
    _os_log_impl(&dword_1C6655000, v5, OS_LOG_TYPE_DEFAULT, "requesting additional content for content representation %{public}@", buf, 0xCu);
  }

  requestMoreContentBlock = [(EMContentRepresentation *)self requestMoreContentBlock];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__EMContentRepresentation_requestAdditionalContentWithCompletion___block_invoke;
  v12[3] = &unk_1E826C950;
  objc_copyWeak(&v14, &location);
  v8 = completionCopy;
  v13 = v8;
  v9 = (requestMoreContentBlock)[2](requestMoreContentBlock, v12);

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

- (void)mergeUpdatedRepresentation:(id)representation
{
  v21 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v5 = representationCopy;
  if (representationCopy != self)
  {
    relatedContentItems = [(EMContentRepresentation *)representationCopy relatedContentItems];
    [(EMContentRepresentation *)self setRelatedContentItems:relatedContentItems];

    securityInformation = [(EMContentRepresentation *)v5 securityInformation];
    [(EMContentRepresentation *)self setSecurityInformation:securityInformation];

    [(EMContentRepresentation *)self setHasMoreContent:[(EMContentRepresentation *)v5 hasMoreContent]];
    [(EMContentRepresentation *)self setRemainingByteCount:[(EMContentRepresentation *)v5 remainingByteCount]];
    distantContentRepresentation = [(EMContentRepresentation *)self distantContentRepresentation];
    if (distantContentRepresentation)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      relatedContentItems2 = [(EMContentRepresentation *)self relatedContentItems];
      v10 = [relatedContentItems2 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        v11 = *v17;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v17 != v11)
            {
              objc_enumerationMutation(relatedContentItems2);
            }

            v13 = *(*(&v16 + 1) + 8 * i);
            v14 = [(EMContentRepresentation *)self _distantLoaderBlockForContentItem:v13];
            [v13 setLoaderBlock:v14];
          }

          v10 = [relatedContentItems2 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v10);
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)performUnsubscribeAction:(unint64_t)action completion:(id)completion
{
  completionCopy = completion;
  listUnsubscribeBlock = [(EMContentRepresentation *)self listUnsubscribeBlock];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__EMContentRepresentation_performUnsubscribeAction_completion___block_invoke;
  v11[3] = &unk_1E826C738;
  v8 = completionCopy;
  v12 = v8;
  v9 = (listUnsubscribeBlock)[2](listUnsubscribeBlock, action, v11);

  return v9;
}

- (void)requestOriginalContentMessagesInReplyToContentItemWithCompletion:(id)completion
{
  completionCopy = completion;
  requestOriginalContentMessagesInReplyToContentItemBlock = [(EMContentRepresentation *)self requestOriginalContentMessagesInReplyToContentItemBlock];

  if (requestOriginalContentMessagesInReplyToContentItemBlock)
  {
    requestOriginalContentMessagesInReplyToContentItemBlock2 = [(EMContentRepresentation *)self requestOriginalContentMessagesInReplyToContentItemBlock];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __92__EMContentRepresentation_requestOriginalContentMessagesInReplyToContentItemWithCompletion___block_invoke;
    v7[3] = &unk_1E826C978;
    v8 = completionCopy;
    (requestOriginalContentMessagesInReplyToContentItemBlock2)[2](requestOriginalContentMessagesInReplyToContentItemBlock2, v7);
  }

  else
  {
    requestOriginalContentMessagesInReplyToContentItemBlock2 = [MEMORY[0x1E696ABC0] em_internalErrorWithReason:@"Unable to retrieve original contents"];
    (*(completionCopy + 2))(completionCopy, 0, requestOriginalContentMessagesInReplyToContentItemBlock2);
  }
}

- (EMContentItem)contentItem
{
  WeakRetained = objc_loadWeakRetained(&self->_contentItem);

  return WeakRetained;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (self)
  {
    urlWrapper = self->_urlWrapper;
  }

  else
  {
    urlWrapper = 0;
  }

  v78 = coderCopy;
  [coderCopy encodeObject:urlWrapper forKey:@"EFPropertyKey_urlWrapper"];
  contentMessage = [(EMContentRepresentation *)self contentMessage];
  OUTLINED_FUNCTION_1_0(contentMessage, v7, v8, @"EFPropertyKey_contentMessage", v9, v10, v11, v12, v69, v78);

  relatedContentItems = [(EMContentRepresentation *)self relatedContentItems];
  OUTLINED_FUNCTION_1_0(relatedContentItems, v14, v15, @"EFPropertyKey_relatedContentItems", v16, v17, v18, v19, v70, v79);

  securityInformation = [(EMContentRepresentation *)self securityInformation];
  OUTLINED_FUNCTION_1_0(securityInformation, v21, v22, @"EFPropertyKey_securityInformation", v23, v24, v25, v26, v71, v80);

  searchableItem = [(EMContentRepresentation *)self searchableItem];
  OUTLINED_FUNCTION_1_0(searchableItem, v28, v29, @"EFPropertyKey_searchableItem", v30, v31, v32, v33, v72, v81);

  unsubscribeCommand = [(EMContentRepresentation *)self unsubscribeCommand];
  OUTLINED_FUNCTION_1_0(unsubscribeCommand, v35, v36, @"EFPropertyKey_unsubscribeCommand", v37, v38, v39, v40, v73, v82);

  [v83 encodeBool:-[EMContentRepresentation hasMoreContent](self forKey:{"hasMoreContent"), @"EFPropertyKey_hasMoreContent"}];
  [v83 encodeInt64:-[EMContentRepresentation remainingByteCount](self forKey:{"remainingByteCount"), @"EFPropertyKey_remainingByteCount"}];
  publicMessageURL = [(EMContentRepresentation *)self publicMessageURL];
  OUTLINED_FUNCTION_1_0(publicMessageURL, v42, v43, @"EFPropertyKey_publicMessageURL", v44, v45, v46, v47, v74, v83);

  replyToList = [(EMContentRepresentation *)self replyToList];
  OUTLINED_FUNCTION_1_0(replyToList, v49, v50, @"EFPropertyKey_replyToList", v51, v52, v53, v54, v75, v84);

  [v85 encodeInteger:-[EMContentRepresentation transportType](self forKey:{"transportType"), @"EFPropertyKey_transportType"}];
  requestedHeaders = [(EMContentRepresentation *)self requestedHeaders];
  OUTLINED_FUNCTION_1_0(requestedHeaders, v56, v57, @"EFPropertyKey_requestedHeaders", v58, v59, v60, v61, v76, v85);

  cachedMetadataJSON = [(EMContentRepresentation *)self cachedMetadataJSON];
  OUTLINED_FUNCTION_1_0(cachedMetadataJSON, v63, v64, @"EFPropertyKey_cachedMetadataJSON", v65, v66, v67, v68, v77, v86);
}

- (NSString)debugDescription
{
  v16 = MEMORY[0x1E696AEC0];
  v15 = objc_opt_class();
  publicMessageURL = [(EMContentRepresentation *)self publicMessageURL];
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
  relatedContentItems = [(EMContentRepresentation *)self relatedContentItems];
  transportType = [(EMContentRepresentation *)self transportType];
  securityInformation = [(EMContentRepresentation *)self securityInformation];
  searchableItem = [(EMContentRepresentation *)self searchableItem];
  unsubscribeCommand = [(EMContentRepresentation *)self unsubscribeCommand];
  replyToList = [(EMContentRepresentation *)self replyToList];
  v13 = [v16 stringWithFormat:@"<%@: %p> publicMessageURL=%@, wrappedURL=%@, extended-sandbox=%@, hasMoreContent=%@ (%lld bytes), invocable=%@, related-items=%@, transport=%d, security-information=%@, searchableItem=%@, unsubscribeCommand=%@, replyToList=%@", v15, self, publicMessageURL, v18, v4, v5, remainingByteCount, invocable, relatedContentItems, transportType, securityInformation, searchableItem, unsubscribeCommand, replyToList];

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