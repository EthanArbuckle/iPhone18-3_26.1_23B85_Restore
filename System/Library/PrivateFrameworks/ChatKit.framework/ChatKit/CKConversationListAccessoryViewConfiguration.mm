@interface CKConversationListAccessoryViewConfiguration
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CKConversationListAccessoryViewConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[CKConversationListAccessoryViewConfiguration allocWithZone:?]];
  [(CKConversationListAccessoryViewConfiguration *)v4 setVibrancyStyle:[(CKConversationListAccessoryViewConfiguration *)self vibrancyStyle]];
  blurEffect = [(CKConversationListAccessoryViewConfiguration *)self blurEffect];
  [(CKConversationListAccessoryViewConfiguration *)v4 setBlurEffect:blurEffect];

  image = [(CKConversationListAccessoryViewConfiguration *)self image];
  [(CKConversationListAccessoryViewConfiguration *)v4 setImage:image];

  backgroundColor = [(CKConversationListAccessoryViewConfiguration *)self backgroundColor];
  [(CKConversationListAccessoryViewConfiguration *)v4 setBackgroundColor:backgroundColor];

  tintColor = [(CKConversationListAccessoryViewConfiguration *)self tintColor];
  [(CKConversationListAccessoryViewConfiguration *)v4 setTintColor:tintColor];

  return v4;
}

@end