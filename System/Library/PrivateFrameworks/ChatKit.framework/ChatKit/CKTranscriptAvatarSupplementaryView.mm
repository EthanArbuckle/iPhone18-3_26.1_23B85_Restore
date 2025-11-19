@interface CKTranscriptAvatarSupplementaryView
- (CKTranscriptAvatarSupplementaryView)initWithFrame:(CGRect)a3;
- (void)configureForChatItem:(id)a3 context:(id)a4;
- (void)dealloc;
@end

@implementation CKTranscriptAvatarSupplementaryView

- (CKTranscriptAvatarSupplementaryView)initWithFrame:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = CKTranscriptAvatarSupplementaryView;
  v3 = [(CKTranscriptAvatarSupplementaryView *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v3 = [(CKTranscriptAvatarSupplementaryView *)self avatarView];
  [v3 setDelegate:0];

  v4.receiver = self;
  v4.super_class = CKTranscriptAvatarSupplementaryView;
  [(CKTranscriptAvatarSupplementaryView *)&v4 dealloc];
}

- (void)configureForChatItem:(id)a3 context:(id)a4
{
  v25 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = v25;
  if (isKindOfClass & 1) != 0 || (objc_opt_class(), v7 = objc_opt_isKindOfClass(), v6 = v25, (v7))
  {
    v8 = [v6 contact];
    if (objc_opt_respondsToSelector())
    {
      v9 = [v25 sender];
      v10 = [v9 ID];
    }

    else
    {
      v10 = 0;
    }

    v11 = [(CKTranscriptAvatarSupplementaryView *)self avatarView];
    [v11 setPreferredHandle:v10];

    v12 = [(CKTranscriptAvatarSupplementaryView *)self avatarView];
    [v12 setContact:v8];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = +[CKUIBehavior sharedBehaviors];
      [v13 transcriptGroupTypingContactImageDiameter];
      v15 = v14;

      v16 = [(CKTranscriptAvatarSupplementaryView *)self avatarView];
      [v16 frame];
      v18 = v17;
      v19 = [(CKTranscriptAvatarSupplementaryView *)self avatarView];
      [v19 frame];
      v21 = v20;
      v22 = [(CKTranscriptAvatarSupplementaryView *)self avatarView];
      [v22 setFrame:{v18, v21, v15, v15}];
    }

    v23 = [v25 hasTail] ^ 1;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v23 & ([v25 wantsTranscriptGroupMonograms] ^ 1);
    }

    v24 = [(CKTranscriptAvatarSupplementaryView *)self avatarView];
    [v24 setHidden:v23];

    v6 = v25;
  }
}

@end