@interface CKPinnedConversationContactItemAvatarView
- (CKPinnedConversationContactItemAvatarView)init;
- (void)_updateContactItemViewShadows;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation CKPinnedConversationContactItemAvatarView

- (CKPinnedConversationContactItemAvatarView)init
{
  v8.receiver = self;
  v8.super_class = CKPinnedConversationContactItemAvatarView;
  v2 = [(CKAvatarView *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(CNAvatarView *)v2 setAsynchronousRendering:1];
    [(CKPinnedConversationContactItemAvatarView *)v3 setUserInteractionEnabled:0];
    [(CNAvatarView *)v3 setShowsContactOnTap:0];
    [(CNAvatarView *)v3 setBypassActionValidation:1];
    v4 = [MEMORY[0x1E69DC888] blackColor];
    v5 = [v4 CGColor];
    v6 = [(CKPinnedConversationContactItemAvatarView *)v3 layer];
    [v6 setShadowColor:v5];

    [(CKPinnedConversationContactItemAvatarView *)v3 _updateContactItemViewShadows];
  }

  return v3;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = CKPinnedConversationContactItemAvatarView;
  [(CNAvatarView *)&v4 traitCollectionDidChange:a3];
  [(CKPinnedConversationContactItemAvatarView *)self _updateContactItemViewShadows];
}

- (void)_updateContactItemViewShadows
{
  v3 = [(CKPinnedConversationContactItemAvatarView *)self traitCollection];
  v4 = [v3 userInterfaceStyle];

  if (v4 > 2)
  {
    v7 = *MEMORY[0x1E695F060];
    v8 = *(MEMORY[0x1E695F060] + 8);
    v5 = 0;
    v6 = 0.0;
  }

  else
  {
    v5 = dword_190DD1060[v4];
    v6 = 4.0;
    v7 = 0.0;
    v8 = 3.0;
  }

  v9 = [(CKPinnedConversationContactItemAvatarView *)self layer];
  LODWORD(v10) = v5;
  [v9 setShadowOpacity:v10];

  v11 = [(CKPinnedConversationContactItemAvatarView *)self layer];
  [v11 setShadowRadius:v6];

  v12 = [(CKPinnedConversationContactItemAvatarView *)self layer];
  [v12 setShadowOffset:{v7, v8}];
}

@end