@interface CKConversationListAccessoryViewConfiguration
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CKConversationListAccessoryViewConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[CKConversationListAccessoryViewConfiguration allocWithZone:?]];
  [(CKConversationListAccessoryViewConfiguration *)v4 setVibrancyStyle:[(CKConversationListAccessoryViewConfiguration *)self vibrancyStyle]];
  v5 = [(CKConversationListAccessoryViewConfiguration *)self blurEffect];
  [(CKConversationListAccessoryViewConfiguration *)v4 setBlurEffect:v5];

  v6 = [(CKConversationListAccessoryViewConfiguration *)self image];
  [(CKConversationListAccessoryViewConfiguration *)v4 setImage:v6];

  v7 = [(CKConversationListAccessoryViewConfiguration *)self backgroundColor];
  [(CKConversationListAccessoryViewConfiguration *)v4 setBackgroundColor:v7];

  v8 = [(CKConversationListAccessoryViewConfiguration *)self tintColor];
  [(CKConversationListAccessoryViewConfiguration *)v4 setTintColor:v8];

  return v4;
}

@end