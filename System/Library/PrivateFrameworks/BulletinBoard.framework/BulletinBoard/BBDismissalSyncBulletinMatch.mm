@interface BBDismissalSyncBulletinMatch
- (BBDismissalSyncBulletinMatch)initWithDismissalDictionaryItem:(id)a3;
- (BBDismissalSyncBulletinMatch)initWithDismissalID:(id)a3 andItem:(id)a4;
@end

@implementation BBDismissalSyncBulletinMatch

- (BBDismissalSyncBulletinMatch)initWithDismissalID:(id)a3 andItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = BBDismissalSyncBulletinMatch;
  v8 = [(BBDismissalSyncBulletinMatch *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    dismissalID = v8->_dismissalID;
    v8->_dismissalID = v9;

    objc_storeStrong(&v8->_dismissalItem, a4);
  }

  return v8;
}

- (BBDismissalSyncBulletinMatch)initWithDismissalDictionaryItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BBDismissalSyncBulletinMatch;
  v6 = [(BBDismissalSyncBulletinMatch *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dismissalItem, a3);
  }

  return v7;
}

@end