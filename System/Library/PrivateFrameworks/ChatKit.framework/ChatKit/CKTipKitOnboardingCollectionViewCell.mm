@interface CKTipKitOnboardingCollectionViewCell
- (CAPackage)package;
- (CAStateController)stateController;
- (CKTipKitOnboardingCollectionViewCell)initWithFrame:(CGRect)frame;
- (NSMutableArray)avatarViews;
- (UIView)micaView;
- (void)dealloc;
- (void)didUpdateContentForAvatarView:(id)view;
- (void)prepareForReuse;
- (void)resetViews;
- (void)setTipUIView:(id)view;
- (void)setTipUIView:(id)view withRecommendedPinningConversations:(id)conversations;
- (void)startAnimations;
- (void)stepThroughOnboardingTipAnimationForLayer:(id)layer;
- (void)stopAnimations;
- (void)updateTipAnimationIfNeeded;
@end

@implementation CKTipKitOnboardingCollectionViewCell

- (CKTipKitOnboardingCollectionViewCell)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = CKTipKitOnboardingCollectionViewCell;
  v3 = [(CKTipKitOnboardingCollectionViewCell *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layerNames = v3->_layerNames;
    v3->_layerNames = &unk_1F04E6C00;
  }

  return v4;
}

- (void)dealloc
{
  [(CKTipKitOnboardingCollectionViewCell *)self stopAnimations];
  [self->_tipUIView removeFromSuperview];
  tipUIView = self->_tipUIView;
  self->_tipUIView = 0;

  v4.receiver = self;
  v4.super_class = CKTipKitOnboardingCollectionViewCell;
  [(CKTipKitOnboardingCollectionViewCell *)&v4 dealloc];
}

- (UIView)micaView
{
  micaView = self->_micaView;
  if (!micaView)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v5 = self->_micaView;
    self->_micaView = v4;

    [(UIView *)self->_micaView setAutoresizingMask:18];
    micaView = self->_micaView;
  }

  return micaView;
}

- (NSMutableArray)avatarViews
{
  avatarViews = self->_avatarViews;
  if (!avatarViews)
  {
    v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](self->_layerNames, "count")}];
    v5 = self->_avatarViews;
    self->_avatarViews = v4;

    avatarViews = self->_avatarViews;
  }

  return avatarViews;
}

- (CAStateController)stateController
{
  stateController = self->_stateController;
  if (!stateController)
  {
    v4 = [objc_alloc(MEMORY[0x1E69794D0]) initWithLayer:self->_packageLayer];
    v5 = self->_stateController;
    self->_stateController = v4;

    LODWORD(v6) = 1.0;
    [(CAStateController *)self->_stateController setInitialStatesOfLayer:self->_packageLayer transitionSpeed:v6];
    stateController = self->_stateController;
  }

  return stateController;
}

- (CAPackage)package
{
  package = self->_package;
  if (!package)
  {
    v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v5 = [v4 URLForResource:@"PinningTipAnimation" withExtension:@"ca"];

    v6 = [MEMORY[0x1E6979400] packageWithContentsOfURL:v5 type:*MEMORY[0x1E6979EF8] options:0 error:0];
    v7 = self->_package;
    self->_package = v6;

    package = self->_package;
  }

  return package;
}

- (void)prepareForReuse
{
  [(CKTipKitOnboardingCollectionViewCell *)self stopAnimations];
  v3.receiver = self;
  v3.super_class = CKTipKitOnboardingCollectionViewCell;
  [(CKTipKitOnboardingCollectionViewCell *)&v3 prepareForReuse];
}

- (void)startAnimations
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self];
  packageLayer = [(CKTipKitOnboardingCollectionViewCell *)self packageLayer];
  [(CKTipKitOnboardingCollectionViewCell *)self stepThroughOnboardingTipAnimationForLayer:packageLayer];
}

- (void)stopAnimations
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self];
  stateController = [(CKTipKitOnboardingCollectionViewCell *)self stateController];
  [stateController cancelTimers];
}

- (void)resetViews
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_micaView)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = self->_avatarViews;
    v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        v7 = 0;
        do
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v12 + 1) + 8 * v7++) removeFromSuperview];
        }

        while (v5 != v7);
        v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    packageLayer = [(CKTipKitOnboardingCollectionViewCell *)self packageLayer];
    [packageLayer removeFromSuperlayer];

    [(UIView *)self->_micaView removeFromSuperview];
    stateController = self->_stateController;
    self->_stateController = 0;

    avatarViews = self->_avatarViews;
    self->_avatarViews = 0;

    micaView = self->_micaView;
    self->_micaView = 0;
  }
}

- (void)setTipUIView:(id)view withRecommendedPinningConversations:(id)conversations
{
  viewCopy = view;
  conversationsCopy = conversations;
  tipUIView = [(CKTipKitOnboardingCollectionViewCell *)self tipUIView];

  if (tipUIView != viewCopy)
  {
    [(CKTipKitOnboardingCollectionViewCell *)self resetViews];
    [(CKTipKitOnboardingCollectionViewCell *)self setTipUIView:viewCopy];
    [(CKTipKitOnboardingCollectionViewCell *)self setRecommendedPinningConversations:conversationsCopy];
    [(CKTipKitOnboardingCollectionViewCell *)self stopAnimations];
    [(CKTipKitOnboardingCollectionViewCell *)self updateTipAnimationIfNeeded];
  }
}

- (void)updateTipAnimationIfNeeded
{
  v86[4] = *MEMORY[0x1E69E9840];
  recommendedPinningConversations = [(CKTipKitOnboardingCollectionViewCell *)self recommendedPinningConversations];
  v4 = [recommendedPinningConversations count];

  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v6 = +[CKUIBehavior sharedBehaviors];
    [v6 tipCellCornerRadius];
    v8 = v7;
    layer = [v5 layer];
    [layer setCornerRadius:v8];

    secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    [v5 setBackgroundColor:secondarySystemBackgroundColor];

    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(CKTipKitOnboardingCollectionViewCell *)self contentView];
    [contentView addSubview:v5];
    v62 = MEMORY[0x1E696ACD8];
    topAnchor = [v5 topAnchor];
    topAnchor2 = [contentView topAnchor];
    v74 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v86[0] = v74;
    bottomAnchor = [v5 bottomAnchor];
    bottomAnchor2 = [contentView bottomAnchor];
    v65 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v86[1] = v65;
    leadingAnchor = [v5 leadingAnchor];
    leadingAnchor2 = [contentView leadingAnchor];
    v14 = +[CKUIBehavior sharedBehaviors];
    [v14 tipCellLeadingInset];
    v15 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];
    v86[2] = v15;
    v81 = v5;
    trailingAnchor = [v5 trailingAnchor];
    v80 = contentView;
    trailingAnchor2 = [contentView trailingAnchor];
    v18 = +[CKUIBehavior sharedBehaviors];
    [v18 tipCellTrailingInset];
    v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:?];
    v86[3] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v86 count:4];
    [v62 activateConstraints:v20];

    v21 = +[CKUIBehavior sharedBehaviors];
    [v21 tipCellMicaAnimationSize];
    v23 = v22;

    v24 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v24 setBounds:{0.0, 0.0, v23, v23}];
    [v24 setClipsToBounds:0];
    micaView = [(CKTipKitOnboardingCollectionViewCell *)self micaView];
    [v24 bounds];
    [micaView setFrame:?];

    micaView2 = [(CKTipKitOnboardingCollectionViewCell *)self micaView];
    [v24 addSubview:micaView2];

    recommendedPinningConversations2 = [(CKTipKitOnboardingCollectionViewCell *)self recommendedPinningConversations];
    v28 = [recommendedPinningConversations2 count];
    selfCopy = self;
    layerNames = [(CKTipKitOnboardingCollectionViewCell *)self layerNames];
    v31 = [layerNames count];

    if (v28 >= v31)
    {
      package = [(CKTipKitOnboardingCollectionViewCell *)self package];
      rootLayer = [package rootLayer];
      [(CKTipKitOnboardingCollectionViewCell *)self setPackageLayer:rootLayer];

      packageLayer = [(CKTipKitOnboardingCollectionViewCell *)self packageLayer];
      [packageLayer setGeometryFlipped:1];

      packageLayer2 = [(CKTipKitOnboardingCollectionViewCell *)self packageLayer];
      [packageLayer2 setPosition:{v23 * 0.5, v23 * 0.5}];

      micaView3 = [(CKTipKitOnboardingCollectionViewCell *)self micaView];
      layer2 = [micaView3 layer];
      packageLayer3 = [(CKTipKitOnboardingCollectionViewCell *)self packageLayer];
      [layer2 addSublayer:packageLayer3];

      recommendedPinningConversations3 = [(CKTipKitOnboardingCollectionViewCell *)self recommendedPinningConversations];
      layerNames2 = [(CKTipKitOnboardingCollectionViewCell *)self layerNames];
      v41 = [recommendedPinningConversations3 subarrayWithRange:{0, objc_msgSend(layerNames2, "count")}];

      layerNames3 = [(CKTipKitOnboardingCollectionViewCell *)self layerNames];
      v82[0] = MEMORY[0x1E69E9820];
      v82[1] = 3221225472;
      v82[2] = __66__CKTipKitOnboardingCollectionViewCell_updateTipAnimationIfNeeded__block_invoke;
      v82[3] = &unk_1E72F3B28;
      v82[4] = self;
      v83 = v41;
      v79 = v41;
      [layerNames3 enumerateObjectsUsingBlock:v82];

      [v81 addSubview:self->_tipUIView];
      [v81 addSubview:v24];
      v43 = +[CKUIBehavior sharedBehaviors];
      [v43 tipCellMicaAnimationPadding];
      v45 = v44;

      v63 = MEMORY[0x1E696ACD8];
      leadingAnchor3 = [v24 leadingAnchor];
      leadingAnchor4 = [v81 leadingAnchor];
      v69 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:v45];
      v85[0] = v69;
      topAnchor3 = [v24 topAnchor];
      topAnchor4 = [v81 topAnchor];
      v47 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:v45];
      v85[1] = v47;
      widthAnchor = [v24 widthAnchor];
      v49 = [widthAnchor constraintEqualToConstant:v23];
      v85[2] = v49;
      heightAnchor = [v24 heightAnchor];
      v51 = [heightAnchor constraintEqualToConstant:v23];
      v85[3] = v51;
      v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:4];
      [v63 activateConstraints:v52];

      v64 = MEMORY[0x1E696ACD8];
      topAnchor5 = [selfCopy->_tipUIView topAnchor];
      topAnchor6 = [v81 topAnchor];
      v70 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
      v84[0] = v70;
      bottomAnchor3 = [selfCopy->_tipUIView bottomAnchor];
      bottomAnchor4 = [v81 bottomAnchor];
      v54 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
      v84[1] = v54;
      leadingAnchor5 = [selfCopy->_tipUIView leadingAnchor];
      trailingAnchor3 = [v24 trailingAnchor];
      v57 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor3];
      v84[2] = v57;
      trailingAnchor4 = [selfCopy->_tipUIView trailingAnchor];
      trailingAnchor5 = [v81 trailingAnchor];
      v60 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
      v84[3] = v60;
      v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:v84 count:4];
      [v64 activateConstraints:v61];
    }
  }
}

void __66__CKTipKitOnboardingCollectionViewCell_updateTipAnimationIfNeeded__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 package];
  v15 = [v7 publishedObjectWithName:v6];

  v8 = [*(a1 + 40) objectAtIndexedSubscript:a3];
  v9 = [MEMORY[0x1E695D0C0] maxContactAvatars];
  v10 = [v8 conversationVisualIdentityWithKeys:MEMORY[0x1E695E0F0] requestedNumberOfContactsToFetch:v9];
  v11 = objc_alloc_init(CKAvatarView);
  v12 = [(CNAvatarView *)v11 updateViewWithGroupIdentity:v10];
  [(CNAvatarView *)v11 setAsynchronousRendering:1];
  [(CKAvatarView *)v11 setUserInteractionEnabled:0];
  [(CNAvatarView *)v11 setShowsContactOnTap:0];
  [(CNAvatarView *)v11 setDelegate:*(a1 + 32)];
  [(CKAvatarView *)v11 sizeToFit];
  [v15 bounds];
  [(CKAvatarView *)v11 setFrame:?];
  v13 = [*(a1 + 32) avatarViews];
  [v13 addObject:v11];

  v14 = [*(a1 + 32) micaView];
  [v14 addSubview:v11];
}

- (void)setTipUIView:(id)view
{
  viewCopy = view;
  tipUIView = self->_tipUIView;
  if (tipUIView != viewCopy)
  {
    v7 = viewCopy;
    [tipUIView removeFromSuperview];
    objc_storeStrong(&self->_tipUIView, view);
    viewCopy = v7;
  }
}

- (void)stepThroughOnboardingTipAnimationForLayer:(id)layer
{
  layerCopy = layer;
  if ([(CKTipKitOnboardingCollectionViewCell *)self state]== 4)
  {
    v5 = 0.0;
    v6 = 0.0;
    v7 = 1;
  }

  else
  {
    v7 = [(CKTipKitOnboardingCollectionViewCell *)self state]+ 1;
    v5 = 2.5;
    v6 = 1.0;
  }

  [(CKTipKitOnboardingCollectionViewCell *)self setState:v7];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"State %ld", -[CKTipKitOnboardingCollectionViewCell state](self, "state")];
  v11 = [layerCopy stateWithName:v8];

  stateController = [(CKTipKitOnboardingCollectionViewCell *)self stateController];
  *&v10 = v6;
  [stateController setState:v11 ofLayer:layerCopy transitionSpeed:v10];

  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self];
  [(CKTipKitOnboardingCollectionViewCell *)self performSelector:sel_stepThroughOnboardingTipAnimationForLayer_ withObject:layerCopy afterDelay:v5];
}

- (void)didUpdateContentForAvatarView:(id)view
{
  viewCopy = view;
  avatarViews = [(CKTipKitOnboardingCollectionViewCell *)self avatarViews];
  v5 = [avatarViews indexOfObject:viewCopy];

  layerNames = [(CKTipKitOnboardingCollectionViewCell *)self layerNames];
  v7 = [layerNames count];

  if (v7 > v5)
  {
    package = [(CKTipKitOnboardingCollectionViewCell *)self package];
    layerNames2 = [(CKTipKitOnboardingCollectionViewCell *)self layerNames];
    v10 = [layerNames2 objectAtIndexedSubscript:v5];
    v11 = [package publishedObjectWithName:v10];

    layer = [viewCopy layer];
    [v11 addSublayer:layer];
  }
}

@end