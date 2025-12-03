@interface EDSearchableIndexRichLinkItemMetadatum
- (EDSearchableIndexRichLinkItemMetadatum)initWithDomainIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier mailboxIdentifiers:(id)identifiers senderAddress:(id)address recipientAddresses:(id)addresses dateReceived:(id)received dateSent:(id)sent url:(id)self0 richLinkID:(id)self1 title:(id)self2;
@end

@implementation EDSearchableIndexRichLinkItemMetadatum

- (EDSearchableIndexRichLinkItemMetadatum)initWithDomainIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier mailboxIdentifiers:(id)identifiers senderAddress:(id)address recipientAddresses:(id)addresses dateReceived:(id)received dateSent:(id)sent url:(id)self0 richLinkID:(id)self1 title:(id)self2
{
  identifierCopy = identifier;
  accountIdentifierCopy = accountIdentifier;
  identifiersCopy = identifiers;
  addressCopy = address;
  addressesCopy = addresses;
  receivedCopy = received;
  sentCopy = sent;
  urlCopy = url;
  dCopy = d;
  titleCopy = title;
  v46.receiver = self;
  v46.super_class = EDSearchableIndexRichLinkItemMetadatum;
  v24 = [(EDSearchableIndexRichLinkItemMetadatum *)&v46 init];
  if (v24)
  {
    v25 = [identifierCopy copy];
    domainIdentifier = v24->_domainIdentifier;
    v24->_domainIdentifier = v25;

    v27 = [accountIdentifierCopy copy];
    accountIdentifier = v24->_accountIdentifier;
    v24->_accountIdentifier = v27;

    v29 = [identifiersCopy copy];
    mailboxIdentifiers = v24->_mailboxIdentifiers;
    v24->_mailboxIdentifiers = v29;

    v31 = [addressCopy copy];
    senderAddress = v24->_senderAddress;
    v24->_senderAddress = v31;

    v33 = [addressesCopy copy];
    recipientAddresses = v24->_recipientAddresses;
    v24->_recipientAddresses = v33;

    objc_storeStrong(&v24->_dateReceived, received);
    objc_storeStrong(&v24->_dateSent, sent);
    v35 = [urlCopy copy];
    url = v24->_url;
    v24->_url = v35;

    v37 = [dCopy copy];
    richLinkID = v24->_richLinkID;
    v24->_richLinkID = v37;

    v39 = [titleCopy copy];
    title = v24->_title;
    v24->_title = v39;
  }

  return v24;
}

@end