@interface CKTranscriptAvatarSupplementaryView
- (CKTranscriptAvatarSupplementaryView)initWithFrame:(CGRect)frame;
- (void)configureForChatItem:(id)item context:(id)context;
- (void)dealloc;
@end

@implementation CKTranscriptAvatarSupplementaryView

- (CKTranscriptAvatarSupplementaryView)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = CKTranscriptAvatarSupplementaryView;
  v3 = [(CKTranscriptAvatarSupplementaryView *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [CKAvatarView alloc];
    v5 = +[CKUIBehavior sharedBehaviors];
    [v5 transcriptContactImageDiameter];
    v7 = v6;
    v8 = +[CKUIBehavior sharedBehaviors];
    [v8 transcriptContactImageDiameter];
    v10 = [(CKAvatarView *)v4 initWithFrame:0.0, 0.0, v7, v9];

    [(CNAvatarView *)v10 setShowsContactOnTap:0];
    [(CNAvatarView *)v10 setForcePressView:v10];
    [(CKTranscriptAvatarSupplementaryView *)v3 addSubview:v10];
    [(CKTranscriptAvatarSupplementaryView *)v3 setAvatarView:v10];
  }

  return v3;
}

- (void)dealloc
{
  avatarView = [(CKTranscriptAvatarSupplementaryView *)self avatarView];
  [avatarView setDelegate:0];

  v4.receiver = self;
  v4.super_class = CKTranscriptAvatarSupplementaryView;
  [(CKTranscriptAvatarSupplementaryView *)&v4 dealloc];
}

- (void)configureForChatItem:(id)item context:(id)context
{
  itemCopy = item;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = itemCopy;
  if (isKindOfClass & 1) != 0 || (objc_opt_class(), v7 = objc_opt_isKindOfClass(), v6 = itemCopy, (v7))
  {
    contact = [v6 contact];
    if (objc_opt_respondsToSelector())
    {
      sender = [itemCopy sender];
      v10 = [sender ID];
    }

    else
    {
      v10 = 0;
    }

    avatarView = [(CKTranscriptAvatarSupplementaryView *)self avatarView];
    [avatarView setPreferredHandle:v10];

    avatarView2 = [(CKTranscriptAvatarSupplementaryView *)self avatarView];
    [avatarView2 setContact:contact];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = +[CKUIBehavior sharedBehaviors];
      [v13 transcriptGroupTypingContactImageDiameter];
      v15 = v14;

      avatarView3 = [(CKTranscriptAvatarSupplementaryView *)self avatarView];
      [avatarView3 frame];
      v18 = v17;
      avatarView4 = [(CKTranscriptAvatarSupplementaryView *)self avatarView];
      [avatarView4 frame];
      v21 = v20;
      avatarView5 = [(CKTranscriptAvatarSupplementaryView *)self avatarView];
      [avatarView5 setFrame:{v18, v21, v15, v15}];
    }

    v23 = [itemCopy hasTail] ^ 1;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v23 & ([itemCopy wantsTranscriptGroupMonograms] ^ 1);
    }

    avatarView6 = [(CKTranscriptAvatarSupplementaryView *)self avatarView];
    [avatarView6 setHidden:v23];

    v6 = itemCopy;
  }
}

@end