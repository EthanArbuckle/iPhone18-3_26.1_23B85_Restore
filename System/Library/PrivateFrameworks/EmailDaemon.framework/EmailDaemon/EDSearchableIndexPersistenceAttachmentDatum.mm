@interface EDSearchableIndexPersistenceAttachmentDatum
- (EDSearchableIndexPersistenceAttachmentDatum)initWithAttachmentPersistentID:(id)a3 messagePersistentID:(id)a4 attachmentID:(id)a5 name:(id)a6 mailboxID:(int64_t)a7;
@end

@implementation EDSearchableIndexPersistenceAttachmentDatum

- (EDSearchableIndexPersistenceAttachmentDatum)initWithAttachmentPersistentID:(id)a3 messagePersistentID:(id)a4 attachmentID:(id)a5 name:(id)a6 mailboxID:(int64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v26.receiver = self;
  v26.super_class = EDSearchableIndexPersistenceAttachmentDatum;
  v16 = [(EDSearchableIndexPersistenceAttachmentDatum *)&v26 init];
  if (v16)
  {
    v17 = [v12 copy];
    attachmentPersistentID = v16->_attachmentPersistentID;
    v16->_attachmentPersistentID = v17;

    v19 = [v13 copy];
    messagePersistentID = v16->_messagePersistentID;
    v16->_messagePersistentID = v19;

    v21 = [v14 copy];
    attachmentID = v16->_attachmentID;
    v16->_attachmentID = v21;

    v23 = [v15 copy];
    name = v16->_name;
    v16->_name = v23;

    v16->_mailboxID = a7;
  }

  return v16;
}

@end