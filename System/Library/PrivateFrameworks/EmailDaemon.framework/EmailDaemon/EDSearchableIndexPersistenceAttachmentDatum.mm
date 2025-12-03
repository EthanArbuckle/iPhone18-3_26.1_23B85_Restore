@interface EDSearchableIndexPersistenceAttachmentDatum
- (EDSearchableIndexPersistenceAttachmentDatum)initWithAttachmentPersistentID:(id)d messagePersistentID:(id)iD attachmentID:(id)attachmentID name:(id)name mailboxID:(int64_t)mailboxID;
@end

@implementation EDSearchableIndexPersistenceAttachmentDatum

- (EDSearchableIndexPersistenceAttachmentDatum)initWithAttachmentPersistentID:(id)d messagePersistentID:(id)iD attachmentID:(id)attachmentID name:(id)name mailboxID:(int64_t)mailboxID
{
  dCopy = d;
  iDCopy = iD;
  attachmentIDCopy = attachmentID;
  nameCopy = name;
  v26.receiver = self;
  v26.super_class = EDSearchableIndexPersistenceAttachmentDatum;
  v16 = [(EDSearchableIndexPersistenceAttachmentDatum *)&v26 init];
  if (v16)
  {
    v17 = [dCopy copy];
    attachmentPersistentID = v16->_attachmentPersistentID;
    v16->_attachmentPersistentID = v17;

    v19 = [iDCopy copy];
    messagePersistentID = v16->_messagePersistentID;
    v16->_messagePersistentID = v19;

    v21 = [attachmentIDCopy copy];
    attachmentID = v16->_attachmentID;
    v16->_attachmentID = v21;

    v23 = [nameCopy copy];
    name = v16->_name;
    v16->_name = v23;

    v16->_mailboxID = mailboxID;
  }

  return v16;
}

@end