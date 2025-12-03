@interface AppleAccountMonitor
- (void)accountCredentialChanged:(id)changed;
- (void)accountWasAdded:(id)added;
- (void)accountWasModified:(id)modified;
- (void)accountWasRemoved:(id)removed;
@end

@implementation AppleAccountMonitor

- (void)accountWasAdded:(id)added
{
  addedCopy = added;
  selfCopy = self;
  sub_100106298(addedCopy, &unk_1001FDD50, sub_100106A54, &unk_1001FDD68);
}

- (void)accountWasRemoved:(id)removed
{
  removedCopy = removed;
  selfCopy = self;
  sub_100106298(removedCopy, &unk_1001FDD00, sub_100106BC4, &unk_1001FDD18);
}

- (void)accountWasModified:(id)modified
{
  modifiedCopy = modified;
  selfCopy = self;
  sub_100106298(modifiedCopy, &unk_1001FDCB0, sub_100106BC4, &unk_1001FDCC8);
}

- (void)accountCredentialChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  sub_100106298(changedCopy, &unk_1001FDB98, sub_100106BC4, &unk_1001FDBB0);
}

@end