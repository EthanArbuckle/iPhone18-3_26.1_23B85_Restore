@interface ICCollaboratorAvatarsView
- (CGSize)shadowOffset;
- (CKShare)share;
- (ICCollaboratorAvatarsView)initWithCoder:(id)coder;
- (ICCollaboratorAvatarsView)initWithFrame:(CGRect)frame;
- (id)accessibilityValue;
- (id)avatarViews;
- (id)createAvatarContainerView;
- (id)defaultAvatarImageViewWithSize:(CGSize)size;
- (unint64_t)displayedAvatarCount;
- (void)commonInit;
- (void)registerForTraitChanges;
- (void)setBorderWidth:(double)width;
- (void)setDimension:(double)dimension;
- (void)setParticipants:(id)participants;
- (void)setShadowOffset:(CGSize)offset;
- (void)setShadowOpacity:(double)opacity;
- (void)setShadowRadius:(double)radius;
- (void)setShare:(id)share;
- (void)setSpacing:(double)spacing;
- (void)setUpAvatarContainerViews;
- (void)updateShadows;
- (void)updateUI;
@end

@implementation ICCollaboratorAvatarsView

- (ICCollaboratorAvatarsView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = ICCollaboratorAvatarsView;
  v3 = [(ICCollaboratorAvatarsView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(ICCollaboratorAvatarsView *)v3 commonInit];
  }

  return v4;
}

- (ICCollaboratorAvatarsView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = ICCollaboratorAvatarsView;
  v3 = [(ICCollaboratorAvatarsView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(ICCollaboratorAvatarsView *)v3 commonInit];
  }

  return v4;
}

- (void)commonInit
{
  layer = [(ICCollaboratorAvatarsView *)self layer];
  [layer setMasksToBounds:0];

  self->_borderWidth = 1.5;
  self->_dimension = 26.0;
  self->_shadowOffset.width = 0.0;
  self->_shadowOffset.height = 0.0;
  self->_shadowOpacity = 0.1;
  self->_shadowRadius = 2.0;
  self->_spacing = -12.0;
  [(ICCollaboratorAvatarsView *)self setUpAvatarContainerViews];
  [(ICCollaboratorAvatarsView *)self updateShadows];
  [(NSArray *)self->_avatarContainerViews enumerateObjectsUsingBlock:&__block_literal_global_40];

  [(ICCollaboratorAvatarsView *)self registerForTraitChanges];
}

- (void)setBorderWidth:(double)width
{
  if (self->_borderWidth != width)
  {
    self->_borderWidth = width;
    [(ICCollaboratorAvatarsView *)self updateUI];
  }
}

- (void)setDimension:(double)dimension
{
  if (self->_dimension != dimension)
  {
    self->_dimension = dimension;
    [(ICCollaboratorAvatarsView *)self setUpAvatarContainerViews];
  }
}

- (void)setParticipants:(id)participants
{
  objc_storeStrong(&self->_participants, participants);

  [(ICCollaboratorAvatarsView *)self updateUI];
}

- (void)setShare:(id)share
{
  objc_storeWeak(&self->_share, share);

  [(ICCollaboratorAvatarsView *)self updateUI];
}

- (void)setShadowRadius:(double)radius
{
  if (self->_shadowRadius != radius)
  {
    self->_shadowRadius = radius;
    [(ICCollaboratorAvatarsView *)self updateShadows];
  }
}

- (void)setShadowOpacity:(double)opacity
{
  if (self->_shadowOpacity != opacity)
  {
    self->_shadowOpacity = opacity;
    [(ICCollaboratorAvatarsView *)self updateShadows];
  }
}

- (void)setShadowOffset:(CGSize)offset
{
  if (self->_shadowOffset.width != offset.width || self->_shadowOffset.height != offset.height)
  {
    self->_shadowOffset = offset;
    [(ICCollaboratorAvatarsView *)self updateShadows];
  }
}

- (void)setSpacing:(double)spacing
{
  if (self->_spacing != spacing)
  {
    self->_spacing = spacing;
    avatarStackView = [(ICCollaboratorAvatarsView *)self avatarStackView];
    [avatarStackView setSpacing:spacing];
  }
}

- (unint64_t)displayedAvatarCount
{
  avatarStackView = [(ICCollaboratorAvatarsView *)self avatarStackView];
  arrangedSubviews = [avatarStackView arrangedSubviews];
  v4 = [arrangedSubviews count];

  return v4;
}

- (void)registerForTraitChanges
{
  ic_traitsAffectingSizeAndColor = [MEMORY[0x1E69DD1B8] ic_traitsAffectingSizeAndColor];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__ICCollaboratorAvatarsView_registerForTraitChanges__block_invoke;
  v5[3] = &unk_1E846B558;
  v5[4] = self;
  v4 = [(ICCollaboratorAvatarsView *)self registerForTraitChanges:ic_traitsAffectingSizeAndColor withHandler:v5];
}

uint64_t __52__ICCollaboratorAvatarsView_registerForTraitChanges__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setUpAvatarContainerViews];
  v2 = *(a1 + 32);

  return [v2 updateUI];
}

- (id)createAvatarContainerView
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [(ICCollaboratorAvatarsView *)self dimension];
  [v3 ic_applyRoundedCornersWithRadius:v4 * 0.5];
  v5 = MEMORY[0x1E696ACD8];
  widthAnchor = [v3 widthAnchor];
  [(ICCollaboratorAvatarsView *)self dimension];
  v7 = [widthAnchor constraintEqualToConstant:?];
  v12[0] = v7;
  heightAnchor = [v3 heightAnchor];
  [(ICCollaboratorAvatarsView *)self dimension];
  v9 = [heightAnchor constraintEqualToConstant:?];
  v12[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  [v5 activateConstraints:v10];

  return v3;
}

- (void)setUpAvatarContainerViews
{
  v18[3] = *MEMORY[0x1E69E9840];
  avatarStackView = [(ICCollaboratorAvatarsView *)self avatarStackView];
  arrangedSubviews = [avatarStackView arrangedSubviews];
  [arrangedSubviews makeObjectsPerformSelector:sel_removeFromSuperview];

  createAvatarContainerView = [(ICCollaboratorAvatarsView *)self createAvatarContainerView];
  createAvatarContainerView2 = [(ICCollaboratorAvatarsView *)self createAvatarContainerView];
  createAvatarContainerView3 = [(ICCollaboratorAvatarsView *)self createAvatarContainerView];
  v18[0] = createAvatarContainerView;
  v18[1] = createAvatarContainerView2;
  v18[2] = createAvatarContainerView3;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:3];
  [(ICCollaboratorAvatarsView *)self setAvatarContainerViews:v8];

  v9 = objc_alloc(MEMORY[0x1E69DCF90]);
  avatarContainerViews = [(ICCollaboratorAvatarsView *)self avatarContainerViews];
  v11 = [v9 initWithArrangedSubviews:avatarContainerViews];
  [(ICCollaboratorAvatarsView *)self setAvatarStackView:v11];

  avatarStackView2 = [(ICCollaboratorAvatarsView *)self avatarStackView];
  [avatarStackView2 setDistribution:1];

  [(ICCollaboratorAvatarsView *)self spacing];
  v14 = v13;
  avatarStackView3 = [(ICCollaboratorAvatarsView *)self avatarStackView];
  [avatarStackView3 setSpacing:v14];

  avatarStackView4 = [(ICCollaboratorAvatarsView *)self avatarStackView];
  [(ICCollaboratorAvatarsView *)self addSubview:avatarStackView4];

  avatarStackView5 = [(ICCollaboratorAvatarsView *)self avatarStackView];
  [avatarStackView5 ic_addAnchorsToFillSuperview];
}

- (void)updateShadows
{
  avatarContainerViews = [(ICCollaboratorAvatarsView *)self avatarContainerViews];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__ICCollaboratorAvatarsView_updateShadows__block_invoke;
  v4[3] = &unk_1E846B580;
  v4[4] = self;
  [avatarContainerViews enumerateObjectsUsingBlock:v4];
}

void __42__ICCollaboratorAvatarsView_updateShadows__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v10 = a2;
  [v3 shadowRadius];
  v5 = v4;
  [*(a1 + 32) shadowOpacity];
  v7 = v6;
  [*(a1 + 32) shadowOffset];
  [v10 ic_applyShadowWithRadius:v5 opacity:v7 offset:{v8, v9}];
}

- (void)updateUI
{
  avatarViews = [(ICCollaboratorAvatarsView *)self avatarViews];
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v10[3] = 1000;
  avatarContainerViews = [(ICCollaboratorAvatarsView *)self avatarContainerViews];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__ICCollaboratorAvatarsView_updateUI__block_invoke;
  v6[3] = &unk_1E846B5A8;
  v5 = avatarViews;
  v7 = v5;
  selfCopy = self;
  v9 = v10;
  [avatarContainerViews enumerateObjectsUsingBlock:v6];

  _Block_object_dispose(v10, 8);
}

void __37__ICCollaboratorAvatarsView_updateUI__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v17 = a2;
  v5 = [v17 subviews];
  [v5 makeObjectsPerformSelector:sel_removeFromSuperview];

  if ([*(a1 + 32) count] > a3 && (objc_msgSend(*(a1 + 32), "objectAtIndexedSubscript:", a3), (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    [v17 addSubview:v6];
    [v7 ic_addAnchorsToFillSuperview];
    [*(a1 + 40) dimension];
    [v7 ic_applyRoundedCornersWithRadius:v8 * 0.5];
    if (([MEMORY[0x1E69B7A58] deviceIsVision] & 1) == 0)
    {
      v9 = [MEMORY[0x1E6979398] layer];
      [*(a1 + 40) dimension];
      v11 = v10 + 1.0;
      [*(a1 + 40) dimension];
      [v9 setFrame:{-0.5, -0.5, v11, v12 + 1.0}];
      [v9 frame];
      [v9 setCornerRadius:CGRectGetMidX(v19)];
      v13 = [MEMORY[0x1E69DC888] whiteColor];
      [v9 setBorderColor:{objc_msgSend(v13, "CGColor")}];

      [*(a1 + 40) borderWidth];
      [v9 setBorderWidth:?];
      v14 = [v7 layer];
      [v14 addSublayer:v9];

      [v9 setZPosition:1.0];
    }

    if ([*(a1 + 40) reverseZIndexing])
    {
      v15 = --*(*(*(a1 + 48) + 8) + 24);
      v16 = [v17 layer];
      [v16 setZPosition:v15];
    }

    [v17 setHidden:0];
  }

  else
  {
    [v17 setHidden:1];
  }
}

- (id)avatarViews
{
  v17[1] = *MEMORY[0x1E69E9840];
  [(ICCollaboratorAvatarsView *)self dimension];
  v4 = v3;
  [(ICCollaboratorAvatarsView *)self dimension];
  v6 = v5;
  participants = [(ICCollaboratorAvatarsView *)self participants];
  v8 = participants;
  if (participants)
  {
    ic_nonCurrentUserParticipants = participants;
  }

  else
  {
    share = [(ICCollaboratorAvatarsView *)self share];
    ic_nonCurrentUserParticipants = [share ic_nonCurrentUserParticipants];
  }

  share2 = [(ICCollaboratorAvatarsView *)self share];
  if ([share2 ic_isPublicShare])
  {
    v12 = [ic_nonCurrentUserParticipants count];

    if (!v12)
    {
      v13 = [(ICCollaboratorAvatarsView *)self defaultAvatarImageViewWithSize:v4, v6];
      v17[0] = v13;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];

      goto LABEL_9;
    }
  }

  else
  {
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __40__ICCollaboratorAvatarsView_avatarViews__block_invoke;
  v16[3] = &unk_1E846B5F8;
  v16[4] = self;
  *&v16[5] = v4;
  *&v16[6] = v6;
  v14 = [ic_nonCurrentUserParticipants ic_map:v16];
LABEL_9:

  return v14;
}

id __40__ICCollaboratorAvatarsView_avatarViews__block_invoke(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) defaultAvatarImageViewWithSize:{*(a1 + 40), *(a1 + 48)}];
  objc_initWeak(&location, v4);
  v5 = [ICThumbnailConfiguration alloc];
  v13[0] = v3;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v7 = [(ICThumbnailConfiguration *)v5 initForAvatarWithParticipants:v6 preferredSize:0 hasBorder:*(a1 + 40), *(a1 + 48)];

  v8 = +[ICThumbnailService sharedThumbnailService];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __40__ICCollaboratorAvatarsView_avatarViews__block_invoke_2;
  v10[3] = &unk_1E846B5D0;
  objc_copyWeak(&v11, &location);
  [v8 thumbnailWithConfiguration:v7 completion:v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v4;
}

void __40__ICCollaboratorAvatarsView_avatarViews__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v5, (a1 + 32));
  v4 = v3;
  performBlockOnMainThread();

  objc_destroyWeak(&v5);
}

void __40__ICCollaboratorAvatarsView_avatarViews__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) image];
  if (v2)
  {
    [WeakRetained setImage:v2];
  }

  else
  {
    v3 = [WeakRetained image];
    [WeakRetained setImage:v3];
  }
}

- (id)defaultAvatarImageViewWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v5 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  objc_initWeak(&location, v5);
  v6 = [ICThumbnailConfiguration alloc];
  height = [(ICThumbnailConfiguration *)v6 initForAvatarWithParticipants:MEMORY[0x1E695E0F0] preferredSize:0 hasBorder:width, height];
  v8 = +[ICThumbnailService sharedThumbnailService];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__ICCollaboratorAvatarsView_defaultAvatarImageViewWithSize___block_invoke;
  v10[3] = &unk_1E846B5D0;
  objc_copyWeak(&v11, &location);
  [v8 thumbnailWithConfiguration:height completion:v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v5;
}

void __60__ICCollaboratorAvatarsView_defaultAvatarImageViewWithSize___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v5, (a1 + 32));
  v4 = v3;
  performBlockOnMainThread();

  objc_destroyWeak(&v5);
}

void __60__ICCollaboratorAvatarsView_defaultAvatarImageViewWithSize___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained image];
  if (v2)
  {
    [WeakRetained setImage:v2];
  }

  else
  {
    v3 = [*(a1 + 32) image];
    [WeakRetained setImage:v3];
  }
}

- (id)accessibilityValue
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__32;
  v11 = __Block_byref_object_dispose__32;
  array = [MEMORY[0x1E695DF70] array];
  participants = [(ICCollaboratorAvatarsView *)self participants];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__ICCollaboratorAvatarsView_accessibilityValue__block_invoke;
  v6[3] = &unk_1E846B620;
  v6[4] = &v7;
  [participants enumerateObjectsUsingBlock:v6];

  v4 = [v8[5] copy];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __47__ICCollaboratorAvatarsView_accessibilityValue__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [a2 ic_shortParticipantName];
  [v2 ic_addNonNilObject:v3];
}

- (CKShare)share
{
  WeakRetained = objc_loadWeakRetained(&self->_share);

  return WeakRetained;
}

- (CGSize)shadowOffset
{
  width = self->_shadowOffset.width;
  height = self->_shadowOffset.height;
  result.height = height;
  result.width = width;
  return result;
}

@end