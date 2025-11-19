@interface EDSearchableIndexAttachmentItemMetadatum
- (BOOL)canReadAttachmentFile;
- (EDSearchableIndexAttachmentItemMetadatum)initWithAttachmentFileURL:(id)a3 name:(id)a4 domainIdentifier:(id)a5 accountIdentifier:(id)a6 mailboxIdentifiers:(id)a7 messageIDHeader:(id)a8 senderAddress:(id)a9 recipientAddresses:(id)a10 dateReceived:(id)a11 dateSent:(id)a12;
- (UTType)contentType;
@end

@implementation EDSearchableIndexAttachmentItemMetadatum

- (EDSearchableIndexAttachmentItemMetadatum)initWithAttachmentFileURL:(id)a3 name:(id)a4 domainIdentifier:(id)a5 accountIdentifier:(id)a6 mailboxIdentifiers:(id)a7 messageIDHeader:(id)a8 senderAddress:(id)a9 recipientAddresses:(id)a10 dateReceived:(id)a11 dateSent:(id)a12
{
  v44 = a3;
  v46 = a4;
  v18 = a5;
  v45 = a6;
  v19 = a7;
  v20 = a8;
  v21 = v18;
  v22 = a9;
  v23 = a10;
  v24 = a11;
  v25 = a12;
  v47.receiver = self;
  v47.super_class = EDSearchableIndexAttachmentItemMetadatum;
  v26 = [(EDSearchableIndexAttachmentItemMetadatum *)&v47 init];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_attachmentFileURL, a3);
    v28 = [v46 copy];
    name = v27->_name;
    v27->_name = v28;

    v30 = [v21 copy];
    domainIdentifier = v27->_domainIdentifier;
    v27->_domainIdentifier = v30;

    v32 = [v45 copy];
    accountIdentifier = v27->_accountIdentifier;
    v27->_accountIdentifier = v32;

    v34 = [v19 copy];
    mailboxIdentifiers = v27->_mailboxIdentifiers;
    v27->_mailboxIdentifiers = v34;

    v36 = [v20 copy];
    messageIDHeader = v27->_messageIDHeader;
    v27->_messageIDHeader = v36;

    v38 = [v22 copy];
    senderAddress = v27->_senderAddress;
    v27->_senderAddress = v38;

    v40 = [v23 copy];
    recipientAddresses = v27->_recipientAddresses;
    v27->_recipientAddresses = v40;

    objc_storeStrong(&v27->_dateReceived, a11);
    objc_storeStrong(&v27->_dateSent, a12);
  }

  return v27;
}

- (BOOL)canReadAttachmentFile
{
  v2 = [(EDSearchableIndexAttachmentItemMetadatum *)self attachmentFileURL];
  if ([v2 isFileURL])
  {
    v3 = [MEMORY[0x1E696AC08] defaultManager];
    v4 = [v2 path];
    v5 = [v3 isReadableFileAtPath:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (UTType)contentType
{
  contentType = self->_contentType;
  if (!contentType)
  {
    v4 = MEMORY[0x1E6982C40];
    v5 = [(EDSearchableIndexAttachmentItemMetadatum *)self name];
    v6 = [(EDSearchableIndexAttachmentItemMetadatum *)self attachmentFileURL];
    v7 = [v4 em_contentTypeForFilename:v5 fileURL:v6];
    v8 = self->_contentType;
    self->_contentType = v7;

    contentType = self->_contentType;
  }

  return contentType;
}

@end