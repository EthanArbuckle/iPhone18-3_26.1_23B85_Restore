@interface _EMAttachmentContentItem
- (NSString)debugDescription;
- (NSString)ef_publicDescription;
- (UTType)type;
- (_EMAttachmentContentItem)initWithCoder:(id)a3;
- (id)requestRepresentationWithOptions:(id)a3 completionHandler:(id)a4;
- (id)requestRepresentationWithOptions:(id)a3 delegate:(id)a4 completionHandler:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _EMAttachmentContentItem

- (_EMAttachmentContentItem)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = _EMAttachmentContentItem;
  v5 = [(EMObject *)&v20 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"EFPropertyKey_availableRepresentations"];
    availableRepresentations = v5->_availableRepresentations;
    v5->_availableRepresentations = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_contentID"];
    contentID = v5->_contentID;
    v5->_contentID = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_uniformTypeIdentifier"];
    uniformTypeIdentifier = v5->_uniformTypeIdentifier;
    v5->_uniformTypeIdentifier = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_mailDropMetadata"];
    mailDropMetadata = v5->_mailDropMetadata;
    v5->_mailDropMetadata = v17;

    v5->_isAvailableLocally = [v4 decodeBoolForKey:@"EFPropertyKey_isAvailableLocally"];
    v5->_dataTransferByteCount = [v4 decodeInt64ForKey:@"EFPropertyKey_dataTransferByteCount"];
    v5->_storageByteCount = [v4 decodeInt64ForKey:@"EFPropertyKey_storageByteCount"];
    v5->_exchangeEventUID = [v4 decodeIntegerForKey:@"EFPropertyKey_exchangeEventUID"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _EMAttachmentContentItem;
  [(EMObject *)&v10 encodeWithCoder:v4];
  v5 = [(_EMAttachmentContentItem *)self availableRepresentations];
  [v4 encodeObject:v5 forKey:@"EFPropertyKey_availableRepresentations"];

  v6 = [(_EMAttachmentContentItem *)self contentID];
  [v4 encodeObject:v6 forKey:@"EFPropertyKey_contentID"];

  v7 = [(_EMAttachmentContentItem *)self displayName];
  [v4 encodeObject:v7 forKey:@"EFPropertyKey_displayName"];

  v8 = [(_EMAttachmentContentItem *)self uniformTypeIdentifier];
  [v4 encodeObject:v8 forKey:@"EFPropertyKey_uniformTypeIdentifier"];

  v9 = [(_EMAttachmentContentItem *)self mailDropMetadata];
  [v4 encodeObject:v9 forKey:@"EFPropertyKey_mailDropMetadata"];

  [v4 encodeBool:-[_EMAttachmentContentItem isAvailableLocally](self forKey:{"isAvailableLocally"), @"EFPropertyKey_isAvailableLocally"}];
  [v4 encodeInt64:-[_EMAttachmentContentItem dataTransferByteCount](self forKey:{"dataTransferByteCount"), @"EFPropertyKey_dataTransferByteCount"}];
  [v4 encodeInt64:-[_EMAttachmentContentItem storageByteCount](self forKey:{"storageByteCount"), @"EFPropertyKey_storageByteCount"}];
  [v4 encodeInteger:-[_EMAttachmentContentItem exchangeEventUID](self forKey:{"exchangeEventUID"), @"EFPropertyKey_exchangeEventUID"}];
}

- (NSString)debugDescription
{
  v18 = [MEMORY[0x1E696AAF0] stringFromByteCount:-[_EMAttachmentContentItem storageByteCount](self countStyle:{"storageByteCount"), 1}];
  v3 = [MEMORY[0x1E696AAF0] stringFromByteCount:-[_EMAttachmentContentItem dataTransferByteCount](self countStyle:{"dataTransferByteCount"), 1}];
  v4 = MEMORY[0x1E696AEC0];
  v16 = objc_opt_class();
  v17 = [(EMObject *)self objectID];
  if ([(_EMAttachmentContentItem *)self isAvailableLocally])
  {
    v5 = @"local";
  }

  else
  {
    v5 = @"remote";
  }

  v6 = [(_EMAttachmentContentItem *)self contentID];
  v7 = [(_EMAttachmentContentItem *)self displayName];
  v8 = [(_EMAttachmentContentItem *)self uniformTypeIdentifier];
  v9 = [(_EMAttachmentContentItem *)self exchangeEventUID];
  v15 = [(_EMAttachmentContentItem *)self availableRepresentations];
  v10 = [v15 componentsJoinedByString:{@", "}];
  v11 = [(_EMAttachmentContentItem *)self mailDropMetadata];
  v12 = @"YES";
  if (!v11)
  {
    v12 = @"NO";
  }

  v13 = [v4 stringWithFormat:@"<%@: %p> %@, %@, size=%@/%@, contentID=%@, displayName=%@, uniformTypeIdentifier=%@, exchangeEventID=%d, representations=(%@) isMailDrop=%@", v16, self, v17, v5, v18, v3, v6, v7, v8, v9, v10, v12];

  return v13;
}

- (NSString)ef_publicDescription
{
  v21 = [MEMORY[0x1E696AAF0] stringFromByteCount:-[_EMAttachmentContentItem storageByteCount](self countStyle:{"storageByteCount"), 1}];
  v3 = [MEMORY[0x1E696AAF0] stringFromByteCount:-[_EMAttachmentContentItem dataTransferByteCount](self countStyle:{"dataTransferByteCount"), 1}];
  v4 = [MEMORY[0x1E699B7B0] currentDevice];
  if ([v4 isInternal])
  {
    v20 = [objc_opt_class() description];
  }

  else
  {
    v20 = @"id<EMContentItem>";
  }

  v5 = MEMORY[0x1E699B858];
  v6 = [(_EMAttachmentContentItem *)self displayName];
  v7 = [v5 fullyOrPartiallyRedactedStringForString:v6];

  if ([(_EMAttachmentContentItem *)self exchangeEventUID]<= 0)
  {
    v9 = [(_EMAttachmentContentItem *)self exchangeEventUID];
    v8 = @"NO";
    if (v9 < 0)
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
  v19 = [(EMObject *)self objectID];
  if ([(_EMAttachmentContentItem *)self isAvailableLocally])
  {
    v12 = @"local";
  }

  else
  {
    v12 = @"remote";
  }

  v13 = [(_EMAttachmentContentItem *)self contentID];
  v14 = [(_EMAttachmentContentItem *)self uniformTypeIdentifier];
  v15 = [(_EMAttachmentContentItem *)self availableRepresentations];
  v16 = [v15 componentsJoinedByString:{@", "}];
  v17 = [v11 stringWithFormat:@"<%@: %p> %@, %@, size=%@/%@, contentID=%@, displayName=%@, uniformTypeIdentifier=%@, exchangeEvent=%@, representations=(%@)", v20, self, v19, v12, v21, v3, v13, v7, v14, v10, v16];

  return v17;
}

- (UTType)type
{
  v3 = [(_EMAttachmentContentItem *)self uniformTypeIdentifier];
  if (v3)
  {
    v4 = MEMORY[0x1E6982C40];
    v5 = [(_EMAttachmentContentItem *)self uniformTypeIdentifier];
    v6 = [v4 typeWithIdentifier:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)requestRepresentationWithOptions:(id)a3 completionHandler:(id)a4
{
  v4 = [(_EMAttachmentContentItem *)self requestRepresentationWithOptions:a3 delegate:0 completionHandler:a4];

  return v4;
}

- (id)requestRepresentationWithOptions:(id)a3 delegate:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _os_activity_create(&dword_1C6655000, "attachment content representation request", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v11, &state);
  v12 = [(_EMAttachmentContentItem *)self availableRepresentations];
  v13 = [v8 requestedRepresentation];
  v14 = [v12 containsObject:v13];

  if (v14)
  {
    v15 = [(_EMAttachmentContentItem *)self loaderBlock];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __88___EMAttachmentContentItem_requestRepresentationWithOptions_delegate_completionHandler___block_invoke;
    v18[3] = &unk_1E826BFE8;
    v18[4] = self;
    v19 = v10;
    v16 = (v15)[2](v15, v8, v9, v18);
  }

  else
  {
    v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"EMErrorDomain" code:2048 userInfo:0];
    v16 = 0;
    (*(v10 + 2))(v10, 0, v15);
  }

  os_activity_scope_leave(&state);

  return v16;
}

@end