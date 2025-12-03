@interface NMSIncomingFileTransfer
- (NMSMessageCenter)messageCenter;
- (NSString)description;
- (id)CPObfuscatedDescriptionObject;
@end

@implementation NMSIncomingFileTransfer

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v11.receiver = self;
  v11.super_class = NMSIncomingFileTransfer;
  v4 = [(NMSIncomingFileTransfer *)&v11 description];
  v5 = NMSPriorityString([(NMSIncomingFileTransfer *)self priority]);
  idsIdentifier = [(NMSIncomingFileTransfer *)self idsIdentifier];
  fileURL = [(NMSIncomingFileTransfer *)self fileURL];
  metadata = [(NMSIncomingFileTransfer *)self metadata];
  v9 = [v3 initWithFormat:@"%@ {%@ priority, idsID=%@, URL=%@, metadata=%@", v4, v5, idsIdentifier, fileURL, metadata];

  return v9;
}

- (id)CPObfuscatedDescriptionObject
{
  v3 = objc_alloc_init(NMSObfuscatableDescription);
  v10.receiver = self;
  v10.super_class = NMSIncomingFileTransfer;
  v4 = [(NMSIncomingFileTransfer *)&v10 debugDescription];
  [(NMSObfuscatableDescription *)v3 setPrefixString:v4];

  v5 = NMSPriorityString([(NMSIncomingFileTransfer *)self priority]);
  [(NMSObfuscatableDescription *)v3 addDescription:@"Priority" value:v5];

  idsIdentifier = [(NMSIncomingFileTransfer *)self idsIdentifier];
  [(NMSObfuscatableDescription *)v3 addDescription:@"IDS ID" value:idsIdentifier];

  fileURL = [(NMSIncomingFileTransfer *)self fileURL];
  [(NMSObfuscatableDescription *)v3 addDescription:@"URL" value:fileURL];

  metadata = [(NMSIncomingFileTransfer *)self metadata];
  [(NMSObfuscatableDescription *)v3 addObfuscatedDescription:@"Metadata" value:metadata];

  return v3;
}

- (NMSMessageCenter)messageCenter
{
  WeakRetained = objc_loadWeakRetained(&self->_messageCenter);

  return WeakRetained;
}

@end