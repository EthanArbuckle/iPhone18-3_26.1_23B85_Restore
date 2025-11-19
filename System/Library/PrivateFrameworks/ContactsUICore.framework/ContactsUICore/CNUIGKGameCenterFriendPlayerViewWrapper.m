@interface CNUIGKGameCenterFriendPlayerViewWrapper
- (CNUIGKGameCenterFriendPlayerViewWrapper)initWithRelationshipResult:(id)a3;
@end

@implementation CNUIGKGameCenterFriendPlayerViewWrapper

- (CNUIGKGameCenterFriendPlayerViewWrapper)initWithRelationshipResult:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CNUIGKGameCenterFriendPlayerViewWrapper;
  v5 = [(CNUIGKGameCenterFriendPlayerViewWrapper *)&v12 init];
  if (v5)
  {
    v6 = [v4 copy];
    relationshipResult = v5->_relationshipResult;
    v5->_relationshipResult = v6;

    v8 = [(objc_class *)getGKGameCenterFriendPlayerViewClass() newWithRelationshipResult:v4];
    wrappedView = v5->_wrappedView;
    v5->_wrappedView = v8;

    v10 = v5;
  }

  return v5;
}

@end