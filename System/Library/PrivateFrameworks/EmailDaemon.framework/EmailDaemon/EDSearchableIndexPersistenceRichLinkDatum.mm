@interface EDSearchableIndexPersistenceRichLinkDatum
- (EDSearchableIndexPersistenceRichLinkDatum)initWithMessageID:(id)a3 richLinkID:(id)a4 mailboxID:(int64_t)a5 title:(id)a6 url:(id)a7;
@end

@implementation EDSearchableIndexPersistenceRichLinkDatum

- (EDSearchableIndexPersistenceRichLinkDatum)initWithMessageID:(id)a3 richLinkID:(id)a4 mailboxID:(int64_t)a5 title:(id)a6 url:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v26.receiver = self;
  v26.super_class = EDSearchableIndexPersistenceRichLinkDatum;
  v16 = [(EDSearchableIndexPersistenceRichLinkDatum *)&v26 init];
  if (v16)
  {
    v17 = [v12 copy];
    messageID = v16->_messageID;
    v16->_messageID = v17;

    v19 = [v13 copy];
    richLinkID = v16->_richLinkID;
    v16->_richLinkID = v19;

    v16->_mailboxID = a5;
    v21 = [v14 copy];
    title = v16->_title;
    v16->_title = v21;

    v23 = [v15 copy];
    url = v16->_url;
    v16->_url = v23;
  }

  return v16;
}

@end