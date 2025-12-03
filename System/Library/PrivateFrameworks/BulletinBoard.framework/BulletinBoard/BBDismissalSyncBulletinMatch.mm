@interface BBDismissalSyncBulletinMatch
- (BBDismissalSyncBulletinMatch)initWithDismissalDictionaryItem:(id)item;
- (BBDismissalSyncBulletinMatch)initWithDismissalID:(id)d andItem:(id)item;
@end

@implementation BBDismissalSyncBulletinMatch

- (BBDismissalSyncBulletinMatch)initWithDismissalID:(id)d andItem:(id)item
{
  dCopy = d;
  itemCopy = item;
  v12.receiver = self;
  v12.super_class = BBDismissalSyncBulletinMatch;
  v8 = [(BBDismissalSyncBulletinMatch *)&v12 init];
  if (v8)
  {
    v9 = [dCopy copy];
    dismissalID = v8->_dismissalID;
    v8->_dismissalID = v9;

    objc_storeStrong(&v8->_dismissalItem, item);
  }

  return v8;
}

- (BBDismissalSyncBulletinMatch)initWithDismissalDictionaryItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = BBDismissalSyncBulletinMatch;
  v6 = [(BBDismissalSyncBulletinMatch *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dismissalItem, item);
  }

  return v7;
}

@end