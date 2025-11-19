@interface ConversationDetailsView
- (CGRect)frame;
- (UILabel)chevronLabel;
- (UILabel)conversationSubtitleLabel;
- (UILabel)conversationTitleLabel;
- (UIStackView)conversationDetailsVStack;
- (void)setChevronLabel:(id)a3;
- (void)setConversationDetailsVStack:(id)a3;
- (void)setConversationSubtitleLabel:(id)a3;
- (void)setConversationTitleLabel:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation ConversationDetailsView

- (UIStackView)conversationDetailsVStack
{
  v2 = self;
  v3 = ConversationDetailsView.conversationDetailsVStack.getter();

  return v3;
}

- (void)setConversationDetailsVStack:(id)a3
{
  v4 = a3;
  v5 = self;
  ConversationDetailsView.conversationDetailsVStack.setter(v4);
}

- (UILabel)conversationTitleLabel
{
  v2 = self;
  v3 = ConversationDetailsView.conversationTitleLabel.getter();

  return v3;
}

- (void)setConversationTitleLabel:(id)a3
{
  v4 = a3;
  v5 = self;
  ConversationDetailsView.conversationTitleLabel.setter(v4);
}

- (UILabel)conversationSubtitleLabel
{
  v2 = self;
  v3 = ConversationDetailsView.conversationSubtitleLabel.getter();

  return v3;
}

- (void)setConversationSubtitleLabel:(id)a3
{
  v4 = a3;
  v5 = self;
  ConversationDetailsView.conversationSubtitleLabel.setter(v4);
}

- (UILabel)chevronLabel
{
  v2 = self;
  v3 = ConversationDetailsView.chevronLabel.getter();

  return v3;
}

- (void)setChevronLabel:(id)a3
{
  v4 = a3;
  v5 = self;
  ConversationDetailsView.chevronLabel.setter(v4);
}

- (CGRect)frame
{
  v2 = self;
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

- (void)setFrame:(CGRect)a3
{
  v3 = self;
  ConversationDetailsView.frame.setter();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  ConversationDetailsView.traitCollectionDidChange(_:)(v9);
}

@end