@interface CNUIGKGameCenterFriendPlayerViewWrapper
- (CNUIGKGameCenterFriendPlayerViewWrapper)initWithRelationshipResult:(id)result;
@end

@implementation CNUIGKGameCenterFriendPlayerViewWrapper

- (CNUIGKGameCenterFriendPlayerViewWrapper)initWithRelationshipResult:(id)result
{
  resultCopy = result;
  v12.receiver = self;
  v12.super_class = CNUIGKGameCenterFriendPlayerViewWrapper;
  v5 = [(CNUIGKGameCenterFriendPlayerViewWrapper *)&v12 init];
  if (v5)
  {
    v6 = [resultCopy copy];
    relationshipResult = v5->_relationshipResult;
    v5->_relationshipResult = v6;

    v8 = [(objc_class *)getGKGameCenterFriendPlayerViewClass() newWithRelationshipResult:resultCopy];
    wrappedView = v5->_wrappedView;
    v5->_wrappedView = v8;

    v10 = v5;
  }

  return v5;
}

@end