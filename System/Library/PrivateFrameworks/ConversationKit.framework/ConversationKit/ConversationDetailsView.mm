@interface ConversationDetailsView
- (CGRect)frame;
- (UILabel)chevronLabel;
- (UILabel)conversationSubtitleLabel;
- (UILabel)conversationTitleLabel;
- (UIStackView)conversationDetailsVStack;
- (void)setChevronLabel:(id)label;
- (void)setConversationDetailsVStack:(id)stack;
- (void)setConversationSubtitleLabel:(id)label;
- (void)setConversationTitleLabel:(id)label;
- (void)setFrame:(CGRect)frame;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation ConversationDetailsView

- (UIStackView)conversationDetailsVStack
{
  selfCopy = self;
  v3 = ConversationDetailsView.conversationDetailsVStack.getter();

  return v3;
}

- (void)setConversationDetailsVStack:(id)stack
{
  stackCopy = stack;
  selfCopy = self;
  ConversationDetailsView.conversationDetailsVStack.setter(stackCopy);
}

- (UILabel)conversationTitleLabel
{
  selfCopy = self;
  v3 = ConversationDetailsView.conversationTitleLabel.getter();

  return v3;
}

- (void)setConversationTitleLabel:(id)label
{
  labelCopy = label;
  selfCopy = self;
  ConversationDetailsView.conversationTitleLabel.setter(labelCopy);
}

- (UILabel)conversationSubtitleLabel
{
  selfCopy = self;
  v3 = ConversationDetailsView.conversationSubtitleLabel.getter();

  return v3;
}

- (void)setConversationSubtitleLabel:(id)label
{
  labelCopy = label;
  selfCopy = self;
  ConversationDetailsView.conversationSubtitleLabel.setter(labelCopy);
}

- (UILabel)chevronLabel
{
  selfCopy = self;
  v3 = ConversationDetailsView.chevronLabel.getter();

  return v3;
}

- (void)setChevronLabel:(id)label
{
  labelCopy = label;
  selfCopy = self;
  ConversationDetailsView.chevronLabel.setter(labelCopy);
}

- (CGRect)frame
{
  selfCopy = self;
  ConversationDetailsView.frame.getter();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)setFrame:(CGRect)frame
{
  selfCopy = self;
  ConversationDetailsView.frame.setter();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = change;
  ConversationDetailsView.traitCollectionDidChange(_:)(v9);
}

@end