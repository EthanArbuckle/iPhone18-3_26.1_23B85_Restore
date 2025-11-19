@interface CKAvatarButton
- (CKAvatarButton)initWithFrame:(CGRect)a3;
- (void)_handleConversationChange:(id)a3;
- (void)_handleHandleChange:(id)a3;
- (void)_updateButtonConfiguration;
- (void)layoutSubviews;
- (void)performNicknameTransitionWith:(id)a3 startHandler:(id)a4 completion:(id)a5;
- (void)setBounds:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
- (void)updateWithConversation:(id)a3;
@end

@implementation CKAvatarButton

- (CKAvatarButton)initWithFrame:(CGRect)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = CKAvatarButton;
  v3 = [(CKAvatarButton *)&v17 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC740] borderlessButtonConfiguration];
    [(CKAvatarButton *)v3 setConfiguration:v4];

    v5 = objc_alloc(MEMORY[0x1E695D0C0]);
    v6 = [MEMORY[0x1E695D0E0] defaultSettings];
    v7 = [v5 initWithSettings:v6];
    avatarView = v3->_avatarView;
    v3->_avatarView = v7;

    [(CNAvatarView *)v3->_avatarView setUserInteractionEnabled:0];
    [(CKAvatarButton *)v3 addSubview:v3->_avatarView];
    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 addObserver:v3 selector:sel__handleConversationChange_ name:*MEMORY[0x1E69A5718] object:0];

    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    [v10 addObserver:v3 selector:sel__handleConversationChange_ name:*MEMORY[0x1E69A5700] object:0];

    v11 = [MEMORY[0x1E696AD88] defaultCenter];
    [v11 addObserver:v3 selector:sel__handleConversationChange_ name:*MEMORY[0x1E69A5848] object:0];

    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    [v12 addObserver:v3 selector:sel__handleHandleChange_ name:*MEMORY[0x1E69A6838] object:0];

    v13 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    LODWORD(v6) = [v13 isTranscriptBackgroundsEnabled];

    if (v6)
    {
      v18[0] = objc_opt_class();
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
      v15 = [(CKAvatarButton *)v3 registerForTraitChanges:v14 withTarget:v3 action:sel__updatePlatter];
    }
  }

  return v3;
}

- (void)setFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = CKAvatarButton;
  [(CKAvatarButton *)&v4 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(CKAvatarButton *)self _updateButtonConfiguration];
}

- (void)setBounds:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = CKAvatarButton;
  [(CKAvatarButton *)&v4 setBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(CKAvatarButton *)self _updateButtonConfiguration];
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = CKAvatarButton;
  [(CKAvatarButton *)&v12 layoutSubviews];
  [(CKAvatarButton *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(CKAvatarButton *)self avatarView];
  [v11 setFrame:{v4, v6, v8, v10}];
}

- (void)updateWithConversation:(id)a3
{
  v16 = a3;
  objc_storeStrong(&self->_conversation, a3);
  v5 = [MEMORY[0x1E695D0C0] maxContactAvatars];
  v6 = [v16 conversationVisualIdentityWithKeys:MEMORY[0x1E695E0F0] requestedNumberOfContactsToFetch:v5];
  v7 = [(CKAvatarButton *)self avatarView];
  v8 = [v7 updateViewWithGroupIdentity:v6];

  v9 = [v16 isBusinessConversation];
  v10 = [(CKAvatarButton *)self avatarView];
  [v10 setStyle:v9];

  v11 = [(CKAvatarButton *)self conversation];
  v12 = [v11 hasDisplayName];
  v13 = [(CKAvatarButton *)self conversation];
  v14 = v13;
  if (v12)
  {
    [v13 displayName];
  }

  else
  {
    [v13 name];
  }
  v15 = ;
  [(CKAvatarButton *)self setToolTip:v15];
}

- (void)_updateButtonConfiguration
{
  v3 = [(CKAvatarButton *)self conversation];
  v4 = [v3 isBusinessConversation];

  [(CKAvatarButton *)self bounds];
  v7 = floor(v6 * 0.2);
  if (v4)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5 * 0.5;
  }

  v10 = [MEMORY[0x1E69DC740] borderlessButtonConfiguration];
  [v10 setCornerStyle:-1];
  v9 = [v10 background];
  [v9 setCornerRadius:v8];

  [(CKAvatarButton *)self setConfiguration:v10];
}

- (void)_handleConversationChange:(id)a3
{
  v10 = [a3 object];
  v4 = [v10 chatIdentifier];
  v5 = [(CKAvatarButton *)self conversation];
  v6 = [v5 chat];
  v7 = [v6 chatIdentifier];
  v8 = [v4 isEqual:v7];

  if (v8)
  {
    v9 = [(CKAvatarButton *)self conversation];
    [(CKAvatarButton *)self updateWithConversation:v9];
  }
}

- (void)_handleHandleChange:(id)a3
{
  v8 = [a3 object];
  v4 = [(CKAvatarButton *)self conversation];
  v5 = [v4 handles];
  v6 = [v5 containsObject:v8];

  if (v6)
  {
    v7 = [(CKAvatarButton *)self conversation];
    [(CKAvatarButton *)self updateWithConversation:v7];
  }
}

- (void)performNicknameTransitionWith:(id)a3 startHandler:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(CKAvatarButton *)self avatarView];
  [v11 setSharedProfileStateOracle:v10];

  v12 = [(CKAvatarButton *)self avatarView];
  [v12 performTransitionAnimationWithStartHandler:v9 completion:v8];
}

@end