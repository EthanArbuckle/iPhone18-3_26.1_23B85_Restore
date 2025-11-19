@interface CKQuickActionButton
- (CKQuickActionButton)initWithInitialState:(unint64_t)a3;
- (CKQuickActionButtonAnimationDelegate)animationDelegate;
- (CKQuickActionButtonDelegate)delegate;
- (UIEdgeInsets)contentEdgeInsets;
- (UIEdgeInsets)contentEdgeInsetsForState:(unint64_t)a3;
- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 highlightPreviewForItemWithIdentifier:(id)a5;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (id)createContextMenu;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_buttonTouchUpInside;
- (void)_registerForTraitChanges;
- (void)configureForState:(unint64_t)a3 animated:(BOOL)a4 identifier:(id)a5 wasDeferred:(BOOL)a6;
- (void)layoutSubviews;
- (void)setAnimating:(BOOL)a3;
- (void)setState:(unint64_t)a3 animated:(BOOL)a4;
- (void)updateImageViewFrameForContentEdgeInsets;
@end

@implementation CKQuickActionButton

- (CKQuickActionButton)initWithInitialState:(unint64_t)a3
{
  v21.receiver = self;
  v21.super_class = CKQuickActionButton;
  v4 = [(CKQuickActionButton *)&v21 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v4)
  {
    v5 = +[_TtC7ChatKit21CKMaterialPlatterView materialPlatterViewWithGrayMaterial];
    backgroundView = v4->_backgroundView;
    v4->_backgroundView = v5;

    [(CKQuickActionButton *)v4 addSubview:v4->_backgroundView];
    v7 = [MEMORY[0x1E69DC738] buttonWithType:0];
    button = v4->_button;
    v4->_button = v7;

    v9 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v10 = [v9 isSharedPhotoCollectionsEnabled];

    if (v10)
    {
      v11 = v4->_button;
      v12 = [(CKQuickActionButton *)v4 createContextMenu];
      [(UIButton *)v11 setMenu:v12];
    }

    [(UIButton *)v4->_button addTarget:v4 action:sel__buttonTouchUpInside forControlEvents:64];
    [(UIButton *)v4->_button addTarget:v4 action:sel__buttonTouchDown forControlEvents:1];
    [(UIButton *)v4->_button addTarget:v4 action:sel__buttonTouchCanceled forControlEvents:256];
    [(UIButton *)v4->_button addTarget:v4 action:sel__buttonTouchCanceled forControlEvents:128];
    [(CKQuickActionButton *)v4 addSubview:v4->_button];
    v13 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    imageView = v4->_imageView;
    v4->_imageView = v13;

    [(UIImageView *)v4->_imageView setContentMode:4];
    [(CKQuickActionButton *)v4 addSubview:v4->_imageView];
    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    deferredAnimationIdentifiers = v4->_deferredAnimationIdentifiers;
    v4->_deferredAnimationIdentifiers = v15;

    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    deferredConfigurationStates = v4->_deferredConfigurationStates;
    v4->_deferredConfigurationStates = v17;

    v4->_state = a3;
    v19 = [MEMORY[0x1E696AEC0] stringGUID];
    [(CKQuickActionButton *)v4 configureForState:a3 animated:0 identifier:v19 wasDeferred:0];

    [(CKQuickActionButton *)v4 _registerForTraitChanges];
  }

  return v4;
}

- (void)_registerForTraitChanges
{
  v3 = [MEMORY[0x1E69DD1B8] systemTraitsAffectingColorAppearance];
  v6 = [v3 mutableCopy];

  [v6 addObject:objc_opt_class()];
  v4 = [v6 copy];
  v5 = [(CKQuickActionButton *)self registerForTraitChanges:v4 withHandler:&__block_literal_global_191];
}

void __47__CKQuickActionButton__registerForTraitChanges__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 state];
  v4 = [MEMORY[0x1E696AEC0] stringGUID];
  [v2 configureForState:v3 animated:0 identifier:v4 wasDeferred:0];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CKQuickActionButton;
  [(CKQuickActionButton *)&v3 layoutSubviews];
  [(CKQuickActionButton *)self updateImageViewFrameForContentEdgeInsets];
  [(CKQuickActionButton *)self bounds];
  [(UIButton *)self->_button setFrame:?];
  [(CKQuickActionButton *)self bounds];
  [(CKMaterialPlatterView *)self->_backgroundView setFrame:?];
}

- (void)updateImageViewFrameForContentEdgeInsets
{
  [(CKQuickActionButton *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CKQuickActionButton *)self contentEdgeInsets];
  v12 = v4 + v11;
  [(CKQuickActionButton *)self contentEdgeInsets];
  v14 = v13;
  [(CKQuickActionButton *)self contentEdgeInsets];
  v16 = v8 - (v14 + v15);
  [(CKQuickActionButton *)self contentEdgeInsets];
  v18 = v6 + v17;
  [(CKQuickActionButton *)self contentEdgeInsets];
  v20 = v19;
  [(CKQuickActionButton *)self contentEdgeInsets];
  imageView = self->_imageView;

  [(UIImageView *)imageView setFrame:v12, v18, v16, v10 - (v20 + v21)];
}

- (UIEdgeInsets)contentEdgeInsetsForState:(unint64_t)a3
{
  v3 = *MEMORY[0x1E69DDCE0];
  v4 = *(MEMORY[0x1E69DDCE0] + 8);
  v5 = *(MEMORY[0x1E69DDCE0] + 16);
  v6 = *(MEMORY[0x1E69DDCE0] + 24);
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (void)configureForState:(unint64_t)a3 animated:(BOOL)a4 identifier:(id)a5 wasDeferred:(BOOL)a6
{
  v6 = a6;
  v7 = a4;
  v47 = *MEMORY[0x1E69E9840];
  v10 = a5;
  if (v6 && IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf.a) = 134218242;
      *(&buf.a + 4) = a3;
      WORD2(buf.b) = 2112;
      *(&buf.b + 6) = v10;
      _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Performing deferred state config for state %lu. identifier: %@", &buf, 0x16u);
    }
  }

  v12 = [(CKQuickActionButton *)self currentAnimationIdentifier];
  if (!v12 || (-[CKQuickActionButton currentAnimationIdentifier](self, "currentAnimationIdentifier"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 isEqualToString:v10], v13, v12, (v14 & 1) != 0))
  {
    [(CKQuickActionButton *)self setCurrentAnimationIdentifier:v10];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __73__CKQuickActionButton_configureForState_animated_identifier_wasDeferred___block_invoke;
    aBlock[3] = &unk_1E72ED810;
    aBlock[4] = self;
    aBlock[5] = a3;
    v15 = _Block_copy(aBlock);
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __73__CKQuickActionButton_configureForState_animated_identifier_wasDeferred___block_invoke_2;
    v44[3] = &unk_1E72EBA18;
    v44[4] = self;
    v16 = _Block_copy(v44);
    if (v7)
    {
      [(CKQuickActionButton *)self setAnimating:1];
      if (a3 < 2)
      {
        v30 = 0;
      }

      else
      {
        if (a3 != 3)
        {
          if (a3 == 2)
          {
            v17 = [(CKQuickActionButton *)self imageView];
            [v17 setAlpha:1.0];

            v18 = +[CKUIBehavior sharedBehaviors];
            v19 = [v18 theme];
            v20 = [v19 quickActionButtonBurstColor];

            v21 = [_TtC7ChatKit21CKMaterialPlatterView materialPlatterViewWithColor:v20];
            [(CKMaterialPlatterView *)self->_backgroundView frame];
            [v21 setFrame:?];
            CGAffineTransformMakeScale(&buf, 0.0, 0.0);
            [v21 setTransform:&buf];
            [(CKQuickActionButton *)self insertSubview:v21 belowSubview:self->_imageView];
            [(CKQuickActionButton *)self animationDurationForState:2];
            v23 = v22;
            v24 = MEMORY[0x1E69DD250];
            v42[0] = MEMORY[0x1E69E9820];
            v42[1] = 3221225472;
            v42[2] = __73__CKQuickActionButton_configureForState_animated_identifier_wasDeferred___block_invoke_3;
            v42[3] = &unk_1E72EB8D0;
            v42[4] = self;
            v43 = v21;
            v38[0] = MEMORY[0x1E69E9820];
            v38[1] = 3221225472;
            v38[2] = __73__CKQuickActionButton_configureForState_animated_identifier_wasDeferred___block_invoke_4;
            v38[3] = &unk_1E72F51C8;
            v38[4] = self;
            v39 = v43;
            v40 = v15;
            v41 = v16;
            v25 = v43;
            [v24 animateWithDuration:0 delay:v42 usingSpringWithDamping:v38 initialSpringVelocity:v23 options:0.0 animations:0.7 completion:0.0];
          }

          goto LABEL_22;
        }

        [(CKQuickActionButton *)self delayForImageSwapAnimation];
        v30 = (v31 * 1000000000.0);
      }

      v32 = dispatch_time(0, v30);
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __73__CKQuickActionButton_configureForState_animated_identifier_wasDeferred___block_invoke_5;
      v33[3] = &unk_1E72F51F0;
      v33[4] = self;
      v36 = a3;
      v37 = 0x3FD3333333333333;
      v34 = v15;
      v35 = v16;
      dispatch_after(v32, MEMORY[0x1E69E96A0], v33);
    }

    else
    {
      v15[2](v15);
      v16[2](v16);
    }

LABEL_22:

    goto LABEL_23;
  }

  if (IMOSLoggingEnabled())
  {
    v26 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf.a) = 134218242;
      *(&buf.a + 4) = a3;
      WORD2(buf.b) = 2112;
      *(&buf.b + 6) = v10;
      _os_log_impl(&dword_19020E000, v26, OS_LOG_TYPE_INFO, "Deferring state config for state %lu. identifier: %@", &buf, 0x16u);
    }
  }

  v27 = [(CKQuickActionButton *)self deferredAnimationIdentifiers];
  [v27 addObject:v10];

  v28 = [(CKQuickActionButton *)self deferredConfigurationStates];
  v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v28 setObject:v29 forKey:v10];

LABEL_23:
}

void __73__CKQuickActionButton_configureForState_animated_identifier_wasDeferred___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) imageView];
  v3 = [*(a1 + 32) buttonImageForState:*(a1 + 40)];
  [v2 setImage:v3];

  v4 = *(a1 + 32);
  [v4 contentEdgeInsetsForState:*(a1 + 40)];
  [v4 setContentEdgeInsets:?];
  [*(a1 + 32) updateImageViewFrameForContentEdgeInsets];
  v5 = [*(a1 + 32) traitCollection];
  v6 = *(a1 + 40);
  if (v6 < 2)
  {
    v24 = v5;
    v7 = [*(a1 + 32) imageView];
    [v7 setAlpha:1.0];

    v8 = [*(a1 + 32) backgroundView];
    [v8 setAlpha:1.0];

    v9 = +[CKUIBehavior sharedBehaviors];
    v10 = [v9 theme];
    v11 = [v10 quickActionButtonGlyphColor];

    v12 = [v11 resolvedColorWithTraitCollection:v24];
    v13 = [*(a1 + 32) imageView];
    [v13 setTintColor:v12];

    [*(*(a1 + 32) + 456) configureWithGrayMaterial];
  }

  else if (v6 == 2)
  {
    v24 = v5;
    v14 = [*(a1 + 32) imageView];
    [v14 setAlpha:1.0];

    v15 = [*(a1 + 32) backgroundView];
    [v15 setAlpha:1.0];

    v16 = +[CKUIBehavior sharedBehaviors];
    v17 = [v16 theme];
    v18 = [v17 quickActionButtonBurstGlyphColor];

    v19 = [v18 resolvedColorWithTraitCollection:v24];
    v20 = [*(a1 + 32) imageView];
    [v20 setTintColor:v19];

    v21 = +[CKUIBehavior sharedBehaviors];
    v22 = [v21 theme];
    v23 = [v22 quickActionButtonBurstColor];

    [*(*(a1 + 32) + 456) configureMaterialForColor:v23];
  }

  else
  {
    if (v6 != 3)
    {
      goto LABEL_8;
    }

    v24 = v5;
    [*(a1 + 32) setAlpha:0.0];
  }

  v5 = v24;
LABEL_8:
}

void __73__CKQuickActionButton_configureForState_animated_identifier_wasDeferred___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setCurrentAnimationIdentifier:0];
  v2 = [*(a1 + 32) deferredAnimationIdentifiers];
  v3 = [v2 count];

  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4 deferredAnimationIdentifiers];
    v11 = [v5 firstObject];

    v6 = [*(a1 + 32) deferredAnimationIdentifiers];
    [v6 removeFirstObject];

    v7 = [*(a1 + 32) deferredConfigurationStates];
    v8 = [v7 objectForKey:v11];
    v9 = [v8 unsignedIntegerValue];

    v10 = [*(a1 + 32) deferredConfigurationStates];
    [v10 removeObjectForKey:v11];

    [*(a1 + 32) configureForState:v9 animated:1 identifier:v11 wasDeferred:1];
  }

  else
  {

    [v4 setAnimating:0];
  }
}

void __73__CKQuickActionButton_configureForState_animated_identifier_wasDeferred___block_invoke_3(uint64_t a1)
{
  [*(*(a1 + 32) + 456) setAlpha:0.0];
  v2 = *(a1 + 40);
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v10[0] = *MEMORY[0x1E695EFD0];
  v10[1] = v3;
  v10[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v2 setTransform:v10];
  v4 = [*(a1 + 32) traitCollection];
  v5 = +[CKUIBehavior sharedBehaviors];
  v6 = [v5 theme];
  v7 = [v6 quickActionButtonBurstGlyphColor];

  v8 = [v7 resolvedColorWithTraitCollection:v4];
  v9 = [*(a1 + 32) imageView];
  [v9 setTintColor:v8];
}

uint64_t __73__CKQuickActionButton_configureForState_animated_identifier_wasDeferred___block_invoke_4(uint64_t a1)
{
  [*(*(a1 + 32) + 456) removeFromSuperview];
  objc_storeStrong((*(a1 + 32) + 456), *(a1 + 40));
  (*(*(a1 + 48) + 16))();
  v2 = *(*(a1 + 56) + 16);

  return v2();
}

void __73__CKQuickActionButton_configureForState_animated_identifier_wasDeferred___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) imageView];
  v3 = [*(a1 + 32) buttonImageForState:*(a1 + 56)];
  [v2 setImage:v3];

  v4 = *(a1 + 32);
  [v4 contentEdgeInsetsForState:*(a1 + 56)];
  [v4 setContentEdgeInsets:?];
  [*(a1 + 32) updateImageViewFrameForContentEdgeInsets];
  v5 = 0.0;
  if (*(a1 + 56) == 3)
  {
    [*(a1 + 32) delayForFinalizingAnimation];
    v5 = v6;
  }

  v7 = MEMORY[0x1E69DD250];
  v8 = *(a1 + 64);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __73__CKQuickActionButton_configureForState_animated_identifier_wasDeferred___block_invoke_6;
  v11[3] = &unk_1E72EBDB8;
  v12 = *(a1 + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__CKQuickActionButton_configureForState_animated_identifier_wasDeferred___block_invoke_7;
  v9[3] = &unk_1E72ED1F0;
  v10 = *(a1 + 48);
  [v7 animateWithDuration:0 delay:v11 options:v9 animations:v8 completion:v5];
}

- (void)setAnimating:(BOOL)a3
{
  v3 = a3;
  if ([(CKQuickActionButton *)self isAnimating]!= a3)
  {
    self->_animating = v3;
    v5 = [(CKQuickActionButton *)self animationDelegate];
    v6 = v5;
    if (v3)
    {
      [v5 quickActionButtonAnimationDidBegin:self];
    }

    else
    {
      [v5 quickActionButtonAnimationDidEnd:self];
    }
  }
}

- (void)setState:(unint64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  if ([(CKQuickActionButton *)self state]!= a3)
  {
    self->_state = a3;
    v7 = [MEMORY[0x1E696AEC0] stringGUID];
    [(CKQuickActionButton *)self configureForState:a3 animated:v4 identifier:v7 wasDeferred:0];
  }
}

- (void)_buttonTouchUpInside
{
  v3 = [(CKQuickActionButton *)self delegate];
  [v3 quickActionButtonWasTapped:self];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(CKQuickActionButton *)self button];
  [v8 frame];
  v15.x = x;
  v15.y = y;
  v9 = CGRectContainsPoint(v16, v15);

  if (v9)
  {
    v10 = [(CKQuickActionButton *)self button];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = CKQuickActionButton;
    v10 = [(CKQuickActionButton *)&v13 hitTest:v7 withEvent:x, y];
  }

  v11 = v10;

  return v11;
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __77__CKQuickActionButton_contextMenuInteraction_configurationForMenuAtLocation___block_invoke;
  v6[3] = &unk_1E72EC178;
  v6[4] = self;
  v4 = [MEMORY[0x1E69DC8D8] configurationWithIdentifier:0 previewProvider:0 actionProvider:v6];

  return v4;
}

- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 highlightPreviewForItemWithIdentifier:(id)a5
{
  v5 = MEMORY[0x1E69DCE28];
  v6 = a3;
  v7 = objc_alloc_init(v5);
  v8 = MEMORY[0x1E69DC728];
  v9 = [v6 view];
  [v9 center];
  v11 = v10;
  v13 = v12;
  v14 = [v6 view];
  [v14 frame];
  v15 = [v8 bezierPathWithArcCenter:1 radius:v11 startAngle:v13 endAngle:CGRectGetWidth(v22) * 0.5 clockwise:{0.0, 6.28318531}];
  [v7 setVisiblePath:v15];

  v16 = objc_alloc(MEMORY[0x1E69DD070]);
  v17 = [v6 view];

  v18 = [v17 superview];
  v19 = [v16 initWithView:v18 parameters:v7];

  return v19;
}

- (id)createContextMenu
{
  v16[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69DC628];
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"rectangle.stack.badge.person.crop"];
  v5 = [v3 actionWithTitle:@"Add to Scotland Reunion album" image:v4 identifier:0 handler:&__block_literal_global_239_1];

  v6 = MEMORY[0x1E69DC628];
  v7 = CKFrameworkBundle();
  v8 = [v7 localizedStringForKey:@"SAVE_TO_PHOTOS" value:&stru_1F04268F8 table:@"ChatKit"];
  v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"photo.on.rectangle"];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __40__CKQuickActionButton_createContextMenu__block_invoke_2;
  v15[3] = &unk_1E72EC060;
  v15[4] = self;
  v10 = [v6 actionWithTitle:v8 image:v9 identifier:0 handler:v15];

  v11 = MEMORY[0x1E69DCC60];
  v16[0] = v5;
  v16[1] = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v13 = [v11 menuWithChildren:v12];

  return v13;
}

void __40__CKQuickActionButton_createContextMenu__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 quickActionButtonWasTapped:*(a1 + 32)];
}

- (CKQuickActionButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CKQuickActionButtonAnimationDelegate)animationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_animationDelegate);

  return WeakRetained;
}

- (UIEdgeInsets)contentEdgeInsets
{
  top = self->_contentEdgeInsets.top;
  left = self->_contentEdgeInsets.left;
  bottom = self->_contentEdgeInsets.bottom;
  right = self->_contentEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end