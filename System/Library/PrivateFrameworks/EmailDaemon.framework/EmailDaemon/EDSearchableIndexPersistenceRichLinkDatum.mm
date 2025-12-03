@interface EDSearchableIndexPersistenceRichLinkDatum
- (EDSearchableIndexPersistenceRichLinkDatum)initWithMessageID:(id)d richLinkID:(id)iD mailboxID:(int64_t)mailboxID title:(id)title url:(id)url;
@end

@implementation EDSearchableIndexPersistenceRichLinkDatum

- (EDSearchableIndexPersistenceRichLinkDatum)initWithMessageID:(id)d richLinkID:(id)iD mailboxID:(int64_t)mailboxID title:(id)title url:(id)url
{
  dCopy = d;
  iDCopy = iD;
  titleCopy = title;
  urlCopy = url;
  v26.receiver = self;
  v26.super_class = EDSearchableIndexPersistenceRichLinkDatum;
  v16 = [(EDSearchableIndexPersistenceRichLinkDatum *)&v26 init];
  if (v16)
  {
    v17 = [dCopy copy];
    messageID = v16->_messageID;
    v16->_messageID = v17;

    v19 = [iDCopy copy];
    richLinkID = v16->_richLinkID;
    v16->_richLinkID = v19;

    v16->_mailboxID = mailboxID;
    v21 = [titleCopy copy];
    title = v16->_title;
    v16->_title = v21;

    v23 = [urlCopy copy];
    url = v16->_url;
    v16->_url = v23;
  }

  return v16;
}

@end