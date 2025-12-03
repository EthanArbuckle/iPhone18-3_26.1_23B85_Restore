@interface CKVisionTranscriptTitleView
+ (id)titleViewWithConversation:(id)conversation tapHandler:(id)handler;
- (CKVisionTranscriptTitleView)initWithConversation:(id)conversation tapHandler:(id)handler;
- (void)layoutSubviews;
@end

@implementation CKVisionTranscriptTitleView

+ (id)titleViewWithConversation:(id)conversation tapHandler:(id)handler
{
  handlerCopy = handler;
  conversationCopy = conversation;
  v7 = [objc_alloc(objc_opt_class()) initWithConversation:conversationCopy tapHandler:handlerCopy];

  return v7;
}

- (CKVisionTranscriptTitleView)initWithConversation:(id)conversation tapHandler:(id)handler
{
  conversationCopy = conversation;
  handlerCopy = handler;
  v17.receiver = self;
  v17.super_class = CKVisionTranscriptTitleView;
  v8 = [(CKVisionTranscriptTitleView *)&v17 init];
  if (v8)
  {
    +[_TtC7ChatKit12StyleSupport transcriptTitleViewHeight];
    [(_UINavigationBarTitleView *)v8 setHeight:?];
    v9 = MEMORY[0x1E69DC628];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __63__CKVisionTranscriptTitleView_initWithConversation_tapHandler___block_invoke;
    v15[3] = &unk_1E72EF7B0;
    v16 = handlerCopy;
    v10 = [v9 actionWithHandler:v15];
    v11 = objc_alloc_init(CKAvatarButton);
    [(CKAvatarButton *)v11 addAction:v10 forControlEvents:64];
    [(CKAvatarButton *)v11 updateWithConversation:conversationCopy];
    [(CKVisionTranscriptTitleView *)v8 addSubview:v11];
    [(CKVisionTranscriptTitleView *)v8 setAvatarButton:v11];
    v12 = [[CKVisionKTBadgeView alloc] initWithConversation:conversationCopy];
    ktBadgeImageView = v8->_ktBadgeImageView;
    v8->_ktBadgeImageView = v12;

    [(CKVisionTranscriptTitleView *)v8 addSubview:v8->_ktBadgeImageView];
  }

  return v8;
}

uint64_t __63__CKVisionTranscriptTitleView_initWithConversation_tapHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)layoutSubviews
{
  v22.receiver = self;
  v22.super_class = CKVisionTranscriptTitleView;
  [(CKVisionTranscriptTitleView *)&v22 layoutSubviews];
  +[_TtC7ChatKit12StyleSupport transcriptTitleViewAvatarButtonDiameter];
  v4 = v3;
  +[_TtC7ChatKit12StyleSupport transcriptTitleViewAvatarButtonDiameter];
  v6 = v5;
  avatarButton = [(CKVisionTranscriptTitleView *)self avatarButton];
  [avatarButton setBounds:{0.0, 0.0, v4, v6}];

  [(CKVisionTranscriptTitleView *)self center];
  v9 = v8;
  v11 = v10;
  avatarButton2 = [(CKVisionTranscriptTitleView *)self avatarButton];
  [avatarButton2 setCenter:{v9, v11}];

  [(CKAvatarButton *)self->_avatarButton frame];
  MaxX = CGRectGetMaxX(v23);
  +[_TtC7ChatKit12StyleSupport transcriptTitleViewKTBadgePadding];
  v15 = MaxX + v14;
  [(CKVisionTranscriptTitleView *)self bounds];
  Height = CGRectGetHeight(v24);
  +[_TtC7ChatKit12StyleSupport transcriptTitleViewKTBadgeDiameter];
  v18 = (Height - v17) * 0.5;
  +[_TtC7ChatKit12StyleSupport transcriptTitleViewKTBadgeDiameter];
  v20 = v19;
  +[_TtC7ChatKit12StyleSupport transcriptTitleViewKTBadgeDiameter];
  [(CKVisionKTBadgeView *)self->_ktBadgeImageView setFrame:v15, v18, v20, v21];
}

@end