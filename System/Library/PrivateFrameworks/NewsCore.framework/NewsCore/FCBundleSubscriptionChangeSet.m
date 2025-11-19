@interface FCBundleSubscriptionChangeSet
- (FCBundleSubscriptionChangeSet)initWithTagIDsAdded:(id)a3 tagIDsRemoved:(id)a4;
@end

@implementation FCBundleSubscriptionChangeSet

- (FCBundleSubscriptionChangeSet)initWithTagIDsAdded:(id)a3 tagIDsRemoved:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = FCBundleSubscriptionChangeSet;
  v8 = [(FCBundleSubscriptionChangeSet *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    tagIDsAdded = v8->_tagIDsAdded;
    v8->_tagIDsAdded = v9;

    v11 = [v7 copy];
    tagIDsRemoved = v8->_tagIDsRemoved;
    v8->_tagIDsRemoved = v11;
  }

  return v8;
}

@end