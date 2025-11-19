@interface CKEmbeddedRichLinkConfiguration
+ (id)richLinkConfigurationWithURL:(id)a3;
- (CKEmbeddedRichLinkConfiguration)initWithCoder:(id)a3;
- (NSData)pluginPayloadData;
- (NSString)urlText;
- (id)_makeSendablePluginPayload;
- (void)encodeWithCoder:(id)a3;
- (void)setPluginPayload:(id)a3;
@end

@implementation CKEmbeddedRichLinkConfiguration

+ (id)richLinkConfigurationWithURL:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(CKEmbeddedRichLinkConfiguration);
  v5 = [MEMORY[0x1E696AFB0] UUID];
  v6 = [v5 UUIDString];
  [(CKEmbeddedRichLinkConfiguration *)v4 setEntryItemUUID:v6];

  [(CKEmbeddedRichLinkConfiguration *)v4 setUrl:v3];
  [(CKEmbeddedRichLinkConfiguration *)v4 setPluginPayload:0];

  return v4;
}

- (void)setPluginPayload:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(IMPluginPayload *)v4 datasource];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 pendingAttachmentData];
    v8 = [v7 count];

    if (v8)
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = [v6 pendingAttachmentData];
          v13 = 134218240;
          v14 = self;
          v15 = 2048;
          v16 = [v10 count];
          _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "<CKEmbeddedRichLinkConfiguration %p> is hoisting {%ld} pendingAttachments into the attachments field.", &v13, 0x16u);
        }
      }

      v11 = [v6 pendingAttachmentData];
      [(IMPluginPayload *)v4 setAttachments:v11];
    }
  }

  pluginPayload = self->_pluginPayload;
  self->_pluginPayload = v4;
}

- (NSData)pluginPayloadData
{
  v2 = [(CKEmbeddedRichLinkConfiguration *)self pluginPayload];
  v3 = [v2 data];

  return v3;
}

- (NSString)urlText
{
  v2 = [(CKEmbeddedRichLinkConfiguration *)self url];
  v3 = [v2 absoluteString];

  return v3;
}

- (id)_makeSendablePluginPayload
{
  v3 = [(CKEmbeddedRichLinkConfiguration *)self pluginPayload];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    v6 = [v5 data];
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

  v9 = [MEMORY[0x1E69A5AD0] sharedInstance];
  v10 = [v9 dataSourceForPluginPayload:v5];

  [v10 payloadWillEnterShelf];
  [v10 payloadWillSendFromShelf];
  v11 = [v10 messagePayloadDataForSending];
  [v5 setData:v11];

  [v10 setPayloadInShelf:0];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CKEmbeddedRichLinkConfiguration *)self entryItemUUID];
  [v4 encodeObject:v5 forKey:@"ITEM_KEY_UUID"];

  v6 = [(CKEmbeddedRichLinkConfiguration *)self url];
  [v4 encodeObject:v6 forKey:@"ITEM_KEY_URL"];

  v7 = [(CKEmbeddedRichLinkConfiguration *)self pluginPayload];
  [v4 encodeObject:v7 forKey:@"ITEM_KEY_PLUGIN_PAYLOAD"];
}

- (CKEmbeddedRichLinkConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(CKEmbeddedRichLinkConfiguration);
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ITEM_KEY_UUID"];
  [(CKEmbeddedRichLinkConfiguration *)v5 setEntryItemUUID:v6];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ITEM_KEY_URL"];
  [(CKEmbeddedRichLinkConfiguration *)v5 setUrl:v7];

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ITEM_KEY_PLUGIN_PAYLOAD"];

  [(CKEmbeddedRichLinkConfiguration *)v5 setPluginPayload:v8];
  return v5;
}

@end