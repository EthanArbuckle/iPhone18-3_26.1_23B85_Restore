@interface CKEmbeddedRichLinkConfiguration
+ (id)richLinkConfigurationWithURL:(id)l;
- (CKEmbeddedRichLinkConfiguration)initWithCoder:(id)coder;
- (NSData)pluginPayloadData;
- (NSString)urlText;
- (id)_makeSendablePluginPayload;
- (void)encodeWithCoder:(id)coder;
- (void)setPluginPayload:(id)payload;
@end

@implementation CKEmbeddedRichLinkConfiguration

+ (id)richLinkConfigurationWithURL:(id)l
{
  lCopy = l;
  v4 = objc_alloc_init(CKEmbeddedRichLinkConfiguration);
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  [(CKEmbeddedRichLinkConfiguration *)v4 setEntryItemUUID:uUIDString];

  [(CKEmbeddedRichLinkConfiguration *)v4 setUrl:lCopy];
  [(CKEmbeddedRichLinkConfiguration *)v4 setPluginPayload:0];

  return v4;
}

- (void)setPluginPayload:(id)payload
{
  v17 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  datasource = [(IMPluginPayload *)payloadCopy datasource];
  v6 = datasource;
  if (datasource)
  {
    pendingAttachmentData = [datasource pendingAttachmentData];
    v8 = [pendingAttachmentData count];

    if (v8)
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          pendingAttachmentData2 = [v6 pendingAttachmentData];
          v13 = 134218240;
          selfCopy = self;
          v15 = 2048;
          v16 = [pendingAttachmentData2 count];
          _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "<CKEmbeddedRichLinkConfiguration %p> is hoisting {%ld} pendingAttachments into the attachments field.", &v13, 0x16u);
        }
      }

      pendingAttachmentData3 = [v6 pendingAttachmentData];
      [(IMPluginPayload *)payloadCopy setAttachments:pendingAttachmentData3];
    }
  }

  pluginPayload = self->_pluginPayload;
  self->_pluginPayload = payloadCopy;
}

- (NSData)pluginPayloadData
{
  pluginPayload = [(CKEmbeddedRichLinkConfiguration *)self pluginPayload];
  data = [pluginPayload data];

  return data;
}

- (NSString)urlText
{
  v2 = [(CKEmbeddedRichLinkConfiguration *)self url];
  absoluteString = [v2 absoluteString];

  return absoluteString;
}

- (id)_makeSendablePluginPayload
{
  pluginPayload = [(CKEmbeddedRichLinkConfiguration *)self pluginPayload];
  v4 = pluginPayload;
  if (pluginPayload)
  {
    v5 = pluginPayload;
    data = [v5 data];
    v7 = IMSharedHelperPayloadFromCombinedPluginPayloadData();
    v8 = 0;
    [v5 setData:v7];

    if (v8 && [v8 count])
    {
      [v5 setAttachments:v8];
    }
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x1E69A5C48]);
    [v5 setPluginBundleID:*MEMORY[0x1E69A6A18]];
    v8 = [(CKEmbeddedRichLinkConfiguration *)self url];
    [v5 setUrl:v8];
  }

  mEMORY[0x1E69A5AD0] = [MEMORY[0x1E69A5AD0] sharedInstance];
  v10 = [mEMORY[0x1E69A5AD0] dataSourceForPluginPayload:v5];

  [v10 payloadWillEnterShelf];
  [v10 payloadWillSendFromShelf];
  messagePayloadDataForSending = [v10 messagePayloadDataForSending];
  [v5 setData:messagePayloadDataForSending];

  [v10 setPayloadInShelf:0];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  entryItemUUID = [(CKEmbeddedRichLinkConfiguration *)self entryItemUUID];
  [coderCopy encodeObject:entryItemUUID forKey:@"ITEM_KEY_UUID"];

  v6 = [(CKEmbeddedRichLinkConfiguration *)self url];
  [coderCopy encodeObject:v6 forKey:@"ITEM_KEY_URL"];

  pluginPayload = [(CKEmbeddedRichLinkConfiguration *)self pluginPayload];
  [coderCopy encodeObject:pluginPayload forKey:@"ITEM_KEY_PLUGIN_PAYLOAD"];
}

- (CKEmbeddedRichLinkConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_alloc_init(CKEmbeddedRichLinkConfiguration);
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ITEM_KEY_UUID"];
  [(CKEmbeddedRichLinkConfiguration *)v5 setEntryItemUUID:v6];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ITEM_KEY_URL"];
  [(CKEmbeddedRichLinkConfiguration *)v5 setUrl:v7];

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ITEM_KEY_PLUGIN_PAYLOAD"];

  [(CKEmbeddedRichLinkConfiguration *)v5 setPluginPayload:v8];
  return v5;
}

@end