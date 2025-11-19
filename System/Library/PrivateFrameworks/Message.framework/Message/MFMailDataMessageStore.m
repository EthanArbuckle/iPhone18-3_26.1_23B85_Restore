@interface MFMailDataMessageStore
- (MFMailboxUid)mailbox;
- (id)storageLocationForAttachment:(id)a3 withMessage:(id)a4;
@end

@implementation MFMailDataMessageStore

- (MFMailboxUid)mailbox
{
  v4.receiver = self;
  v4.super_class = MFMailDataMessageStore;
  v2 = [(MFDataMessageStore *)&v4 mailboxUid];

  return v2;
}

- (id)storageLocationForAttachment:(id)a3 withMessage:(id)a4
{
  v5 = a3;
  v6 = [a4 parentPart];
  v7 = [v6 mimeBody];
  v8 = [v7 message];

  v9 = [v8 storageLocationForAttachment:v5];

  return v9;
}

@end