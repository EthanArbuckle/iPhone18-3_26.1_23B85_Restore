@interface AppleAccountMonitor
- (void)accountCredentialChanged:(id)a3;
- (void)accountWasAdded:(id)a3;
- (void)accountWasModified:(id)a3;
- (void)accountWasRemoved:(id)a3;
@end

@implementation AppleAccountMonitor

- (void)accountWasAdded:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100106298(v4, &unk_1001FDD50, sub_100106A54, &unk_1001FDD68);
}

- (void)accountWasRemoved:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100106298(v4, &unk_1001FDD00, sub_100106BC4, &unk_1001FDD18);
}

- (void)accountWasModified:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100106298(v4, &unk_1001FDCB0, sub_100106BC4, &unk_1001FDCC8);
}

- (void)accountCredentialChanged:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100106298(v4, &unk_1001FDB98, sub_100106BC4, &unk_1001FDBB0);
}

@end