@interface _EMAttachmentContentItem
- (NSString)debugDescription;
- (NSString)ef_publicDescription;
- (UTType)type;
- (_EMAttachmentContentItem)initWithCoder:(id)coder;
- (id)requestRepresentationWithOptions:(id)options completionHandler:(id)handler;
- (id)requestRepresentationWithOptions:(id)options delegate:(id)delegate completionHandler:(id)handler;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _EMAttachmentContentItem

- (_EMAttachmentContentItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = _EMAttachmentContentItem;
  v5 = [(EMObject *)&v20 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"EFPropertyKey_availableRepresentations"];
    availableRepresentations = v5->_availableRepresentations;
    v5->_availableRepresentations = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_contentID"];
    contentID = v5->_contentID;
    v5->_contentID = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_uniformTypeIdentifier"];
    uniformTypeIdentifier = v5->_uniformTypeIdentifier;
    v5->_uniformTypeIdentifier = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_mailDropMetadata"];
    mailDropMetadata = v5->_mailDropMetadata;
    v5->_mailDropMetadata = v17;

    v5->_isAvailableLocally = [coderCopy decodeBoolForKey:@"EFPropertyKey_isAvailableLocally"];
    v5->_dataTransferByteCount = [coderCopy decodeInt64ForKey:@"EFPropertyKey_dataTransferByteCount"];
    v5->_storageByteCount = [coderCopy decodeInt64ForKey:@"EFPropertyKey_storageByteCount"];
    v5->_exchangeEventUID = [coderCopy decodeIntegerForKey:@"EFPropertyKey_exchangeEventUID"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = _EMAttachmentContentItem;
  [(EMObject *)&v10 encodeWithCoder:coderCopy];
  availableRepresentations = [(_EMAttachmentContentItem *)self availableRepresentations];
  [coderCopy encodeObject:availableRepresentations forKey:@"EFPropertyKey_availableRepresentations"];

  contentID = [(_EMAttachmentContentItem *)self contentID];
  [coderCopy encodeObject:contentID forKey:@"EFPropertyKey_contentID"];

  displayName = [(_EMAttachmentContentItem *)self displayName];
  [coderCopy encodeObject:displayName forKey:@"EFPropertyKey_displayName"];

  uniformTypeIdentifier = [(_EMAttachmentContentItem *)self uniformTypeIdentifier];
  [coderCopy encodeObject:uniformTypeIdentifier forKey:@"EFPropertyKey_uniformTypeIdentifier"];

  mailDropMetadata = [(_EMAttachmentContentItem *)self mailDropMetadata];
  [coderCopy encodeObject:mailDropMetadata forKey:@"EFPropertyKey_mailDropMetadata"];

  [coderCopy encodeBool:-[_EMAttachmentContentItem isAvailableLocally](self forKey:{"isAvailableLocally"), @"EFPropertyKey_isAvailableLocally"}];
  [coderCopy encodeInt64:-[_EMAttachmentContentItem dataTransferByteCount](self forKey:{"dataTransferByteCount"), @"EFPropertyKey_dataTransferByteCount"}];
  [coderCopy encodeInt64:-[_EMAttachmentContentItem storageByteCount](self forKey:{"storageByteCount"), @"EFPropertyKey_storageByteCount"}];
  [coderCopy encodeInteger:-[_EMAttachmentContentItem exchangeEventUID](self forKey:{"exchangeEventUID"), @"EFPropertyKey_exchangeEventUID"}];
}

- (NSString)debugDescription
{
  v18 = [MEMORY[0x1E696AAF0] stringFromByteCount:-[_EMAttachmentContentItem storageByteCount](self countStyle:{"storageByteCount"), 1}];
  v3 = [MEMORY[0x1E696AAF0] stringFromByteCount:-[_EMAttachmentContentItem dataTransferByteCount](self countStyle:{"dataTransferByteCount"), 1}];
  v4 = MEMORY[0x1E696AEC0];
  v16 = objc_opt_class();
  objectID = [(EMObject *)self objectID];
  if ([(_EMAttachmentContentItem *)self isAvailableLocally])
  {
    v5 = @"local";
  }

  else
  {
    v5 = @"remote";
  }

  contentID = [(_EMAttachmentContentItem *)self contentID];
  displayName = [(_EMAttachmentContentItem *)self displayName];
  uniformTypeIdentifier = [(_EMAttachmentContentItem *)self uniformTypeIdentifier];
  exchangeEventUID = [(_EMAttachmentContentItem *)self exchangeEventUID];
  availableRepresentations = [(_EMAttachmentContentItem *)self availableRepresentations];
  v10 = [availableRepresentations componentsJoinedByString:{@", "}];
  mailDropMetadata = [(_EMAttachmentContentItem *)self mailDropMetadata];
  v12 = @"YES";
  if (!mailDropMetadata)
  {
    v12 = @"NO";
  }

  v13 = [v4 stringWithFormat:@"<%@: %p> %@, %@, size=%@/%@, contentID=%@, displayName=%@, uniformTypeIdentifier=%@, exchangeEventID=%d, representations=(%@) isMailDrop=%@", v16, self, objectID, v5, v18, v3, contentID, displayName, uniformTypeIdentifier, exchangeEventUID, v10, v12];

  return v13;
}

- (NSString)ef_publicDescription
{
  v21 = [MEMORY[0x1E696AAF0] stringFromByteCount:-[_EMAttachmentContentItem storageByteCount](self countStyle:{"storageByteCount"), 1}];
  v3 = [MEMORY[0x1E696AAF0] stringFromByteCount:-[_EMAttachmentContentItem dataTransferByteCount](self countStyle:{"dataTransferByteCount"), 1}];
  currentDevice = [MEMORY[0x1E699B7B0] currentDevice];
  if ([currentDevice isInternal])
  {
    v20 = [objc_opt_class() description];
  }

  else
  {
    v20 = @"id<EMContentItem>";
  }

  v5 = MEMORY[0x1E699B858];
  displayName = [(_EMAttachmentContentItem *)self displayName];
  v7 = [v5 fullyOrPartiallyRedactedStringForString:displayName];

  if ([(_EMAttachmentContentItem *)self exchangeEventUID]<= 0)
  {
    exchangeEventUID = [(_EMAttachmentContentItem *)self exchangeEventUID];
    v8 = @"NO";
    if (exchangeEventUID < 0)
    {
      v8 = @"INVALID";
    }
  }

  else
  {
    v8 = @"YES";
  }

  v10 = v8;
  v11 = MEMORY[0x1E696AEC0];
  objectID = [(EMObject *)self objectID];
  if ([(_EMAttachmentContentItem *)self isAvailableLocally])
  {
    v12 = @"local";
  }

  else
  {
    v12 = @"remote";
  }

  contentID = [(_EMAttachmentContentItem *)self contentID];
  uniformTypeIdentifier = [(_EMAttachmentContentItem *)self uniformTypeIdentifier];
  availableRepresentations = [(_EMAttachmentContentItem *)self availableRepresentations];
  v16 = [availableRepresentations componentsJoinedByString:{@", "}];
  v17 = [v11 stringWithFormat:@"<%@: %p> %@, %@, size=%@/%@, contentID=%@, displayName=%@, uniformTypeIdentifier=%@, exchangeEvent=%@, representations=(%@)", v20, self, objectID, v12, v21, v3, contentID, v7, uniformTypeIdentifier, v10, v16];

  return v17;
}

- (UTType)type
{
  uniformTypeIdentifier = [(_EMAttachmentContentItem *)self uniformTypeIdentifier];
  if (uniformTypeIdentifier)
  {
    v4 = MEMORY[0x1E6982C40];
    uniformTypeIdentifier2 = [(_EMAttachmentContentItem *)self uniformTypeIdentifier];
    v6 = [v4 typeWithIdentifier:uniformTypeIdentifier2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)requestRepresentationWithOptions:(id)options completionHandler:(id)handler
{
  v4 = [(_EMAttachmentContentItem *)self requestRepresentationWithOptions:options delegate:0 completionHandler:handler];

  return v4;
}

- (id)requestRepresentationWithOptions:(id)options delegate:(id)delegate completionHandler:(id)handler
{
  optionsCopy = options;
  delegateCopy = delegate;
  handlerCopy = handler;
  v11 = _os_activity_create(&dword_1C6655000, "attachment content representation request", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v11, &state);
  availableRepresentations = [(_EMAttachmentContentItem *)self availableRepresentations];
  requestedRepresentation = [optionsCopy requestedRepresentation];
  v14 = [availableRepresentations containsObject:requestedRepresentation];

  if (v14)
  {
    loaderBlock = [(_EMAttachmentContentItem *)self loaderBlock];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __88___EMAttachmentContentItem_requestRepresentationWithOptions_delegate_completionHandler___block_invoke;
    v18[3] = &unk_1E826BFE8;
    v18[4] = self;
    v19 = handlerCopy;
    v16 = (loaderBlock)[2](loaderBlock, optionsCopy, delegateCopy, v18);
  }

  else
  {
    loaderBlock = [MEMORY[0x1E696ABC0] errorWithDomain:@"EMErrorDomain" code:2048 userInfo:0];
    v16 = 0;
    (*(handlerCopy + 2))(handlerCopy, 0, loaderBlock);
  }

  os_activity_scope_leave(&state);

  return v16;
}

@end