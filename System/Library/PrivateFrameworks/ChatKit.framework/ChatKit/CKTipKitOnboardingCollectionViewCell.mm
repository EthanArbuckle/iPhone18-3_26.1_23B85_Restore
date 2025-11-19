@interface CKTipKitOnboardingCollectionViewCell
- (CAPackage)package;
- (CAStateController)stateController;
- (CKTipKitOnboardingCollectionViewCell)initWithFrame:(CGRect)a3;
- (NSMutableArray)avatarViews;
- (UIView)micaView;
- (void)dealloc;
- (void)didUpdateContentForAvatarView:(id)a3;
- (void)prepareForReuse;
- (void)resetViews;
- (void)setTipUIView:(id)a3;
- (void)setTipUIView:(id)a3 withRecommendedPinningConversations:(id)a4;
- (void)startAnimations;
- (void)stepThroughOnboardingTipAnimationForLayer:(id)a3;
- (void)stopAnimations;
- (void)updateTipAnimationIfNeeded;
@end

@implementation CKTipKitOnboardingCollectionViewCell

- (CKTipKitOnboardingCollectionViewCell)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = CKTipKitOnboardingCollectionViewCell;
  v3 = [(CKTipKitOnboardingCollectionViewCell *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v3 = [(CKTipKitOnboardingCollectionViewCell *)self packageLayer];
  [(CKTipKitOnboardingCollectionViewCell *)self stepThroughOnboardingTipAnimationForLayer:v3];
}

- (void)stopAnimations
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self];
  v3 = [(CKTipKitOnboardingCollectionViewCell *)self stateController];
  [v3 cancelTimers];
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

    v8 = [(CKTipKitOnboardingCollectionViewCell *)self packageLayer];
    [v8 removeFromSuperlayer];

    [(UIView *)self->_micaView removeFromSuperview];
    stateController = self->_stateController;
    self->_stateController = 0;

    avatarViews = self->_avatarViews;
    self->_avatarViews = 0;

    micaView = self->_micaView;
    self->_micaView = 0;
  }
}

- (void)setTipUIView:(id)a3 withRecommendedPinningConversations:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(CKTipKitOnboardingCollectionViewCell *)self tipUIView];

  if (v7 != v8)
  {
    [(CKTipKitOnboardingCollectionViewCell *)self resetViews];
    [(CKTipKitOnboardingCollectionViewCell *)self setTipUIView:v8];
    [(CKTipKitOnboardingCollectionViewCell *)self setRecommendedPinningConversations:v6];
    [(CKTipKitOnboardingCollectionViewCell *)self stopAnimations];
    [(CKTipKitOnboardingCollectionViewCell *)self updateTipAnimationIfNeeded];
  }
}

- (void)updateTipAnimationIfNeeded
{
  v86[4] = *MEMORY[0x1E69E9840];
  v3 = [(CKTipKitOnboardingCollectionViewCell *)self recommendedPinningConversations];
  v4 = [v3 count];

  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v6 = +[CKUIBehavior sharedBehaviors];
    [v6 tipCellCornerRadius];
    v8 = v7;
    v9 = [v5 layer];
    [v9 setCornerRadius:v8];

    v10 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    [v5 setBackgroundColor:v10];

    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = [(CKTipKitOnboardingCollectionViewCell *)self contentView];
    [v11 addSubview:v5];
    v62 = MEMORY[0x1E696ACD8];
    v78 = [v5 topAnchor];
    v77 = [v11 topAnchor];
    v74 = [v78 constraintEqualToAnchor:v77];
    v86[0] = v74;
    v71 = [v5 bottomAnchor];
    v68 = [v11 bottomAnchor];
    v65 = [v71 constraintEqualToAnchor:v68];
    v86[1] = v65;
    v12 = [v5 leadingAnchor];
    v13 = [v11 leadingAnchor];
    v14 = +[CKUIBehavior sharedBehaviors];
    [v14 tipCellLeadingInset];
    v15 = [v12 constraintEqualToAnchor:v13 constant:?];
    v86[2] = v15;
    v81 = v5;
    v16 = [v5 trailingAnchor];
    v80 = v11;
    v17 = [v11 trailingAnchor];
    v18 = +[CKUIBehavior sharedBehaviors];
    [v18 tipCellTrailingInset];
    v19 = [v16 constraintEqualToAnchor:v17 constant:?];
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
    v25 = [(CKTipKitOnboardingCollectionViewCell *)self micaView];
    [v24 bounds];
    [v25 setFrame:?];

    v26 = [(CKTipKitOnboardingCollectionViewCell *)self micaView];
    [v24 addSubview:v26];

    v27 = [(CKTipKitOnboardingCollectionViewCell *)self recommendedPinningConversations];
    v28 = [v27 count];
    v29 = self;
    v30 = [(CKTipKitOnboardingCollectionViewCell *)self layerNames];
    v31 = [v30 count];

    if (v28 >= v31)
    {
      v32 = [(CKTipKitOnboardingCollectionViewCell *)self package];
      v33 = [v32 rootLayer];
      [(CKTipKitOnboardingCollectionViewCell *)self setPackageLayer:v33];

      v34 = [(CKTipKitOnboardingCollectionViewCell *)self packageLayer];
      [v34 setGeometryFlipped:1];

      v35 = [(CKTipKitOnboardingCollectionViewCell *)self packageLayer];
      [v35 setPosition:{v23 * 0.5, v23 * 0.5}];

      v36 = [(CKTipKitOnboardingCollectionViewCell *)self micaView];
      v37 = [v36 layer];
      v38 = [(CKTipKitOnboardingCollectionViewCell *)self packageLayer];
      [v37 addSublayer:v38];

      v39 = [(CKTipKitOnboardingCollectionViewCell *)self recommendedPinningConversations];
      v40 = [(CKTipKitOnboardingCollectionViewCell *)self layerNames];
      v41 = [v39 subarrayWithRange:{0, objc_msgSend(v40, "count")}];

      v42 = [(CKTipKitOnboardingCollectionViewCell *)self layerNames];
      v82[0] = MEMORY[0x1E69E9820];
      v82[1] = 3221225472;
      v82[2] = __66__CKTipKitOnboardingCollectionViewCell_updateTipAnimationIfNeeded__block_invoke;
      v82[3] = &unk_1E72F3B28;
      v82[4] = self;
      v83 = v41;
      v79 = v41;
      [v42 enumerateObjectsUsingBlock:v82];

      [v81 addSubview:self->_tipUIView];
      [v81 addSubview:v24];
      v43 = +[CKUIBehavior sharedBehaviors];
      [v43 tipCellMicaAnimationPadding];
      v45 = v44;

      v63 = MEMORY[0x1E696ACD8];
      v75 = [v24 leadingAnchor];
      v72 = [v81 leadingAnchor];
      v69 = [v75 constraintEqualToAnchor:v72 constant:v45];
      v85[0] = v69;
      v66 = [v24 topAnchor];
      v46 = [v81 topAnchor];
      v47 = [v66 constraintEqualToAnchor:v46 constant:v45];
      v85[1] = v47;
      v48 = [v24 widthAnchor];
      v49 = [v48 constraintEqualToConstant:v23];
      v85[2] = v49;
      v50 = [v24 heightAnchor];
      v51 = [v50 constraintEqualToConstant:v23];
      v85[3] = v51;
      v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:4];
      [v63 activateConstraints:v52];

      v64 = MEMORY[0x1E696ACD8];
      v76 = [v29->_tipUIView topAnchor];
      v73 = [v81 topAnchor];
      v70 = [v76 constraintEqualToAnchor:v73];
      v84[0] = v70;
      v67 = [v29->_tipUIView bottomAnchor];
      v53 = [v81 bottomAnchor];
      v54 = [v67 constraintEqualToAnchor:v53];
      v84[1] = v54;
      v55 = [v29->_tipUIView leadingAnchor];
      v56 = [v24 trailingAnchor];
      v57 = [v55 constraintEqualToAnchor:v56];
      v84[2] = v57;
      v58 = [v29->_tipUIView trailingAnchor];
      v59 = [v81 trailingAnchor];
      v60 = [v58 constraintEqualToAnchor:v59];
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

- (void)setTipUIView:(id)a3
{
  v5 = a3;
  tipUIView = self->_tipUIView;
  if (tipUIView != v5)
  {
    v7 = v5;
    [tipUIView removeFromSuperview];
    objc_storeStrong(&self->_tipUIView, a3);
    v5 = v7;
  }
}

- (void)stepThroughOnboardingTipAnimationForLayer:(id)a3
{
  v4 = a3;
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
  v11 = [v4 stateWithName:v8];

  v9 = [(CKTipKitOnboardingCollectionViewCell *)self stateController];
  *&v10 = v6;
  [v9 setState:v11 ofLayer:v4 transitionSpeed:v10];

  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self];
  [(CKTipKitOnboardingCollectionViewCell *)self performSelector:sel_stepThroughOnboardingTipAnimationForLayer_ withObject:v4 afterDelay:v5];
}

- (void)didUpdateContentForAvatarView:(id)a3
{
  v13 = a3;
  v4 = [(CKTipKitOnboardingCollectionViewCell *)self avatarViews];
  v5 = [v4 indexOfObject:v13];

  v6 = [(CKTipKitOnboardingCollectionViewCell *)self layerNames];
  v7 = [v6 count];

  if (v7 > v5)
  {
    v8 = [(CKTipKitOnboardingCollectionViewCell *)self package];
    v9 = [(CKTipKitOnboardingCollectionViewCell *)self layerNames];
    v10 = [v9 objectAtIndexedSubscript:v5];
    v11 = [v8 publishedObjectWithName:v10];

    v12 = [v13 layer];
    [v11 addSublayer:v12];
  }
}

@end