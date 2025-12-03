@interface MFMailDataMessageStore
- (MFMailboxUid)mailbox;
- (id)storageLocationForAttachment:(id)attachment withMessage:(id)message;
@end

@implementation MFMailDataMessageStore

- (MFMailboxUid)mailbox
{
  v4.receiver = self;
  v4.super_class = MFMailDataMessageStore;
  mailboxUid = [(MFDataMessageStore *)&v4 mailboxUid];

  return mailboxUid;
}

- (id)storageLocationForAttachment:(id)attachment withMessage:(id)message
{
  attachmentCopy = attachment;
  parentPart = [message parentPart];
  mimeBody = [parentPart mimeBody];
  message = [mimeBody message];

  v9 = [message storageLocationForAttachment:attachmentCopy];

  return v9;
}

@end