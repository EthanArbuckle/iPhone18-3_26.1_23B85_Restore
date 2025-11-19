@interface EDSearchableIndexRichLinkItemMetadatum
- (EDSearchableIndexRichLinkItemMetadatum)initWithDomainIdentifier:(id)a3 accountIdentifier:(id)a4 mailboxIdentifiers:(id)a5 senderAddress:(id)a6 recipientAddresses:(id)a7 dateReceived:(id)a8 dateSent:(id)a9 url:(id)a10 richLinkID:(id)a11 title:(id)a12;
@end

@implementation EDSearchableIndexRichLinkItemMetadatum

- (EDSearchableIndexRichLinkItemMetadatum)initWithDomainIdentifier:(id)a3 accountIdentifier:(id)a4 mailboxIdentifiers:(id)a5 senderAddress:(id)a6 recipientAddresses:(id)a7 dateReceived:(id)a8 dateSent:(id)a9 url:(id)a10 richLinkID:(id)a11 title:(id)a12
{
  v45 = a3;
  v44 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v43 = a8;
  v42 = a9;
  v21 = a10;
  v22 = a11;
  v23 = a12;
  v46.receiver = self;
  v46.super_class = EDSearchableIndexRichLinkItemMetadatum;
  v24 = [(EDSearchableIndexRichLinkItemMetadatum *)&v46 init];
  if (v24)
  {
    v25 = [v45 copy];
    domainIdentifier = v24->_domainIdentifier;
    v24->_domainIdentifier = v25;

    v27 = [v44 copy];
    accountIdentifier = v24->_accountIdentifier;
    v24->_accountIdentifier = v27;

    v29 = [v18 copy];
    mailboxIdentifiers = v24->_mailboxIdentifiers;
    v24->_mailboxIdentifiers = v29;

    v31 = [v19 copy];
    senderAddress = v24->_senderAddress;
    v24->_senderAddress = v31;

    v33 = [v20 copy];
    recipientAddresses = v24->_recipientAddresses;
    v24->_recipientAddresses = v33;

    objc_storeStrong(&v24->_dateReceived, a8);
    objc_storeStrong(&v24->_dateSent, a9);
    v35 = [v21 copy];
    url = v24->_url;
    v24->_url = v35;

    v37 = [v22 copy];
    richLinkID = v24->_richLinkID;
    v24->_richLinkID = v37;

    v39 = [v23 copy];
    title = v24->_title;
    v24->_title = v39;
  }

  return v24;
}

@end