@interface CKAvatarButton
- (CKAvatarButton)initWithFrame:(CGRect)frame;
- (void)_handleConversationChange:(id)change;
- (void)_handleHandleChange:(id)change;
- (void)_updateButtonConfiguration;
- (void)layoutSubviews;
- (void)performNicknameTransitionWith:(id)with startHandler:(id)handler completion:(id)completion;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
- (void)updateWithConversation:(id)conversation;
@end

@implementation CKAvatarButton

- (CKAvatarButton)initWithFrame:(CGRect)frame
{
  v18[1] = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = CKAvatarButton;
  v3 = [(CKAvatarButton *)&v17 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    borderlessButtonConfiguration = [MEMORY[0x1E69DC740] borderlessButtonConfiguration];
    [(CKAvatarButton *)v3 setConfiguration:borderlessButtonConfiguration];

    v5 = objc_alloc(MEMORY[0x1E695D0C0]);
    defaultSettings = [MEMORY[0x1E695D0E0] defaultSettings];
    v7 = [v5 initWithSettings:defaultSettings];
    avatarView = v3->_avatarView;
    v3->_avatarView = v7;

    [(CNAvatarView *)v3->_avatarView setUserInteractionEnabled:0];
    [(CKAvatarButton *)v3 addSubview:v3->_avatarView];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__handleConversationChange_ name:*MEMORY[0x1E69A5718] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v3 selector:sel__handleConversationChange_ name:*MEMORY[0x1E69A5700] object:0];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:v3 selector:sel__handleConversationChange_ name:*MEMORY[0x1E69A5848] object:0];

    defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter4 addObserver:v3 selector:sel__handleHandleChange_ name:*MEMORY[0x1E69A6838] object:0];

    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    LODWORD(defaultSettings) = [mEMORY[0x1E69A8070] isTranscriptBackgroundsEnabled];

    if (defaultSettings)
    {
      v18[0] = objc_opt_class();
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
      v15 = [(CKAvatarButton *)v3 registerForTraitChanges:v14 withTarget:v3 action:sel__updatePlatter];
    }
  }

  return v3;
}

- (void)setFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = CKAvatarButton;
  [(CKAvatarButton *)&v4 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(CKAvatarButton *)self _updateButtonConfiguration];
}

- (void)setBounds:(CGRect)bounds
{
  v4.receiver = self;
  v4.super_class = CKAvatarButton;
  [(CKAvatarButton *)&v4 setBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
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
  avatarView = [(CKAvatarButton *)self avatarView];
  [avatarView setFrame:{v4, v6, v8, v10}];
}

- (void)updateWithConversation:(id)conversation
{
  conversationCopy = conversation;
  objc_storeStrong(&self->_conversation, conversation);
  maxContactAvatars = [MEMORY[0x1E695D0C0] maxContactAvatars];
  v6 = [conversationCopy conversationVisualIdentityWithKeys:MEMORY[0x1E695E0F0] requestedNumberOfContactsToFetch:maxContactAvatars];
  avatarView = [(CKAvatarButton *)self avatarView];
  v8 = [avatarView updateViewWithGroupIdentity:v6];

  isBusinessConversation = [conversationCopy isBusinessConversation];
  avatarView2 = [(CKAvatarButton *)self avatarView];
  [avatarView2 setStyle:isBusinessConversation];

  conversation = [(CKAvatarButton *)self conversation];
  hasDisplayName = [conversation hasDisplayName];
  conversation2 = [(CKAvatarButton *)self conversation];
  v14 = conversation2;
  if (hasDisplayName)
  {
    [conversation2 displayName];
  }

  else
  {
    [conversation2 name];
  }
  v15 = ;
  [(CKAvatarButton *)self setToolTip:v15];
}

- (void)_updateButtonConfiguration
{
  conversation = [(CKAvatarButton *)self conversation];
  isBusinessConversation = [conversation isBusinessConversation];

  [(CKAvatarButton *)self bounds];
  v7 = floor(v6 * 0.2);
  if (isBusinessConversation)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5 * 0.5;
  }

  borderlessButtonConfiguration = [MEMORY[0x1E69DC740] borderlessButtonConfiguration];
  [borderlessButtonConfiguration setCornerStyle:-1];
  background = [borderlessButtonConfiguration background];
  [background setCornerRadius:v8];

  [(CKAvatarButton *)self setConfiguration:borderlessButtonConfiguration];
}

- (void)_handleConversationChange:(id)change
{
  object = [change object];
  chatIdentifier = [object chatIdentifier];
  conversation = [(CKAvatarButton *)self conversation];
  chat = [conversation chat];
  chatIdentifier2 = [chat chatIdentifier];
  v8 = [chatIdentifier isEqual:chatIdentifier2];

  if (v8)
  {
    conversation2 = [(CKAvatarButton *)self conversation];
    [(CKAvatarButton *)self updateWithConversation:conversation2];
  }
}

- (void)_handleHandleChange:(id)change
{
  object = [change object];
  conversation = [(CKAvatarButton *)self conversation];
  handles = [conversation handles];
  v6 = [handles containsObject:object];

  if (v6)
  {
    conversation2 = [(CKAvatarButton *)self conversation];
    [(CKAvatarButton *)self updateWithConversation:conversation2];
  }
}

- (void)performNicknameTransitionWith:(id)with startHandler:(id)handler completion:(id)completion
{
  completionCopy = completion;
  handlerCopy = handler;
  withCopy = with;
  avatarView = [(CKAvatarButton *)self avatarView];
  [avatarView setSharedProfileStateOracle:withCopy];

  avatarView2 = [(CKAvatarButton *)self avatarView];
  [avatarView2 performTransitionAnimationWithStartHandler:handlerCopy completion:completionCopy];
}

@end