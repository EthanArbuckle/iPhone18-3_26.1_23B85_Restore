@interface FCBundleSubscriptionChangeSet
- (FCBundleSubscriptionChangeSet)initWithTagIDsAdded:(id)added tagIDsRemoved:(id)removed;
@end

@implementation FCBundleSubscriptionChangeSet

- (FCBundleSubscriptionChangeSet)initWithTagIDsAdded:(id)added tagIDsRemoved:(id)removed
{
  addedCopy = added;
  removedCopy = removed;
  v14.receiver = self;
  v14.super_class = FCBundleSubscriptionChangeSet;
  v8 = [(FCBundleSubscriptionChangeSet *)&v14 init];
  if (v8)
  {
    v9 = [addedCopy copy];
    tagIDsAdded = v8->_tagIDsAdded;
    v8->_tagIDsAdded = v9;

    v11 = [removedCopy copy];
    tagIDsRemoved = v8->_tagIDsRemoved;
    v8->_tagIDsRemoved = v11;
  }

  return v8;
}

@end