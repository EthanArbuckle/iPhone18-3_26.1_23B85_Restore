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
  v6 = [(NMSIncomingFileTransfer *)self idsIdentifier];
  v7 = [(NMSIncomingFileTransfer *)self fileURL];
  v8 = [(NMSIncomingFileTransfer *)self metadata];
  v9 = [v3 initWithFormat:@"%@ {%@ priority, idsID=%@, URL=%@, metadata=%@", v4, v5, v6, v7, v8];

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

  v6 = [(NMSIncomingFileTransfer *)self idsIdentifier];
  [(NMSObfuscatableDescription *)v3 addDescription:@"IDS ID" value:v6];

  v7 = [(NMSIncomingFileTransfer *)self fileURL];
  [(NMSObfuscatableDescription *)v3 addDescription:@"URL" value:v7];

  v8 = [(NMSIncomingFileTransfer *)self metadata];
  [(NMSObfuscatableDescription *)v3 addObfuscatedDescription:@"Metadata" value:v8];

  return v3;
}

- (NMSMessageCenter)messageCenter
{
  WeakRetained = objc_loadWeakRetained(&self->_messageCenter);

  return WeakRetained;
}

@end