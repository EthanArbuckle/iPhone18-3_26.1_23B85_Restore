@interface NMSOutgoingFileTransfer
- (NMSMessageCenter)messageCenter;
- (NSString)description;
- (id)CPObfuscatedDescriptionObject;
@end

@implementation NMSOutgoingFileTransfer

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v11.receiver = self;
  v11.super_class = NMSOutgoingFileTransfer;
  v4 = [(NMSOutgoingFileTransfer *)&v11 description];
  v5 = NMSPriorityString([(NMSOutgoingFileTransfer *)self priority]);
  idsIdentifier = [(NMSOutgoingFileTransfer *)self idsIdentifier];
  fileURL = [(NMSOutgoingFileTransfer *)self fileURL];
  metadata = [(NMSOutgoingFileTransfer *)self metadata];
  v9 = [v3 initWithFormat:@"%@ {%@ priority, idsID=%@, URL=%@, metadata=%@", v4, v5, idsIdentifier, fileURL, metadata];

  return v9;
}

- (id)CPObfuscatedDescriptionObject
{
  v3 = objc_alloc_init(NMSObfuscatableDescription);
  v11.receiver = self;
  v11.super_class = NMSOutgoingFileTransfer;
  v4 = [(NMSOutgoingFileTransfer *)&v11 debugDescription];
  [(NMSObfuscatableDescription *)v3 setPrefixString:v4];

  v5 = NMSPriorityString([(NMSOutgoingFileTransfer *)self priority]);
  [(NMSObfuscatableDescription *)v3 addDescription:@"Priority" value:v5];

  idsIdentifier = [(NMSOutgoingFileTransfer *)self idsIdentifier];
  [(NMSObfuscatableDescription *)v3 addDescription:@"IDS ID" value:idsIdentifier];

  fileURL = [(NMSOutgoingFileTransfer *)self fileURL];
  [(NMSObfuscatableDescription *)v3 addDescription:@"URL" value:fileURL];

  metadata = [(NMSOutgoingFileTransfer *)self metadata];
  [(NMSObfuscatableDescription *)v3 addObfuscatedDescription:@"Metadata" value:metadata];

  persistentUserInfo = [(NMSOutgoingFileTransfer *)self persistentUserInfo];
  [(NMSObfuscatableDescription *)v3 addObfuscatedDescription:@"User Info" value:persistentUserInfo];

  return v3;
}

- (NMSMessageCenter)messageCenter
{
  WeakRetained = objc_loadWeakRetained(&self->_messageCenter);

  return WeakRetained;
}

@end