@interface CKVisionKTBadgeView
- (CKVisionKTBadgeView)initWithConversation:(id)a3;
- (id)_ktImageForStatus:(unint64_t)a3;
- (void)_updateBadge;
- (void)layoutSubviews;
@end

@implementation CKVisionKTBadgeView

- (CKVisionKTBadgeView)initWithConversation:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = CKVisionKTBadgeView;
  v6 = [(CKVisionKTBadgeView *)&v13 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_conversation, a3);
    v8 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    badgeImageView = v7->_badgeImageView;
    v7->_badgeImageView = v8;

    v10 = [MEMORY[0x1E69DC888] whiteColor];
    [(UIImageView *)v7->_badgeImageView setTintColor:v10];

    [(CKVisionKTBadgeView *)v7 addSubview:v7->_badgeImageView];
    v11 = [MEMORY[0x1E696AD88] defaultCenter];
    [v11 addObserver:v7 selector:sel__updateBadge name:*MEMORY[0x1E69A5810] object:0];

    [(CKVisionKTBadgeView *)v7 _updateBadge];
  }

  return v7;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CKVisionKTBadgeView;
  [(CKVisionKTBadgeView *)&v3 layoutSubviews];
  [(CKVisionKTBadgeView *)self bounds];
  [(UIImageView *)self->_badgeImageView setFrame:?];
}

- (void)_updateBadge
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__CKVisionKTBadgeView__updateBadge__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __35__CKVisionKTBadgeView__updateBadge__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) conversation];
  v3 = [v2 chat];
  v4 = [v3 keyTransparencyStatusForAffectedHandles:0];

  v6 = [*(a1 + 32) _ktImageForStatus:v4];
  v5 = [*(a1 + 32) badgeImageView];
  [v5 setImage:v6];
}

- (id)_ktImageForStatus:(unint64_t)a3
{
  v5 = a3 - 4;
  if (a3 - 4 <= 0xE && ((0x40BFu >> v5) & 1) != 0)
  {
    v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:{off_1E72F5210[v5], v3}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end