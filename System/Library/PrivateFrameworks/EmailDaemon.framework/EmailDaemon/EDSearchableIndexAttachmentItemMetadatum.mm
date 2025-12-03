@interface EDSearchableIndexAttachmentItemMetadatum
- (BOOL)canReadAttachmentFile;
- (EDSearchableIndexAttachmentItemMetadatum)initWithAttachmentFileURL:(id)l name:(id)name domainIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier mailboxIdentifiers:(id)identifiers messageIDHeader:(id)header senderAddress:(id)address recipientAddresses:(id)self0 dateReceived:(id)self1 dateSent:(id)self2;
- (UTType)contentType;
@end

@implementation EDSearchableIndexAttachmentItemMetadatum

- (EDSearchableIndexAttachmentItemMetadatum)initWithAttachmentFileURL:(id)l name:(id)name domainIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier mailboxIdentifiers:(id)identifiers messageIDHeader:(id)header senderAddress:(id)address recipientAddresses:(id)self0 dateReceived:(id)self1 dateSent:(id)self2
{
  lCopy = l;
  nameCopy = name;
  identifierCopy = identifier;
  accountIdentifierCopy = accountIdentifier;
  identifiersCopy = identifiers;
  headerCopy = header;
  v21 = identifierCopy;
  addressCopy = address;
  addressesCopy = addresses;
  receivedCopy = received;
  sentCopy = sent;
  v47.receiver = self;
  v47.super_class = EDSearchableIndexAttachmentItemMetadatum;
  v26 = [(EDSearchableIndexAttachmentItemMetadatum *)&v47 init];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_attachmentFileURL, l);
    v28 = [nameCopy copy];
    name = v27->_name;
    v27->_name = v28;

    v30 = [v21 copy];
    domainIdentifier = v27->_domainIdentifier;
    v27->_domainIdentifier = v30;

    v32 = [accountIdentifierCopy copy];
    accountIdentifier = v27->_accountIdentifier;
    v27->_accountIdentifier = v32;

    v34 = [identifiersCopy copy];
    mailboxIdentifiers = v27->_mailboxIdentifiers;
    v27->_mailboxIdentifiers = v34;

    v36 = [headerCopy copy];
    messageIDHeader = v27->_messageIDHeader;
    v27->_messageIDHeader = v36;

    v38 = [addressCopy copy];
    senderAddress = v27->_senderAddress;
    v27->_senderAddress = v38;

    v40 = [addressesCopy copy];
    recipientAddresses = v27->_recipientAddresses;
    v27->_recipientAddresses = v40;

    objc_storeStrong(&v27->_dateReceived, received);
    objc_storeStrong(&v27->_dateSent, sent);
  }

  return v27;
}

- (BOOL)canReadAttachmentFile
{
  attachmentFileURL = [(EDSearchableIndexAttachmentItemMetadatum *)self attachmentFileURL];
  if ([attachmentFileURL isFileURL])
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    path = [attachmentFileURL path];
    v5 = [defaultManager isReadableFileAtPath:path];
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
    name = [(EDSearchableIndexAttachmentItemMetadatum *)self name];
    attachmentFileURL = [(EDSearchableIndexAttachmentItemMetadatum *)self attachmentFileURL];
    v7 = [v4 em_contentTypeForFilename:name fileURL:attachmentFileURL];
    v8 = self->_contentType;
    self->_contentType = v7;

    contentType = self->_contentType;
  }

  return contentType;
}

@end