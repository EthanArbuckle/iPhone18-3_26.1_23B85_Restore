@interface CKActionMenuView
+ (void)collapseAnimation:(id)a3 completion:(id)a4;
- (CGPoint)presentationTargetPosition;
- (CGRect)presentationTargetBounds;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CKActionMenuController)actionMenuController;
- (CKActionMenuView)initWithActionMenuItems:(id)a3 defaultActionIndex:(unint64_t)a4 blurEffectStyle:(int64_t)a5;
- (id)actionMenuItemAtPoint:(CGPoint)a3 velocity:(CGPoint)a4;
- (id)description;
- (void)actionMenuGestureRecognized:(id)a3;
- (void)configureForPresentationAtPoint:(CGPoint)a3 inRect:(CGRect)a4;
- (void)dismissActionMenuViewAnimated:(BOOL)a3 completion:(id)a4;
- (void)layoutSubviews;
- (void)presentActionMenuViewFromPoint:(CGPoint)a3 inRect:(CGRect)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)setActionMenuItems:(id)a3 defaultActionIndex:(unint64_t)a4 animated:(BOOL)a5;
- (void)setCollapsed:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5;
@end

@implementation CKActionMenuView

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = CKActionMenuView;
  v4 = [(CKActionMenuView *)&v8 description];
  v5 = [(CKActionMenuView *)self actionMenuItems];
  v6 = [v3 stringWithFormat:@"%@ actionMenuItems: %@ defaultActionIndex: %d", v4, v5, -[CKActionMenuView defaultActionIndex](self, "defaultActionIndex")];

  return v6;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = [(CKActionMenuView *)self actionMenuItems:a3.width];
  v4 = ([v3 count] - 1) * 90.0 + 60.0;

  v5 = 60.0;
  v6 = v4;
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)layoutSubviews
{
  v47 = *MEMORY[0x1E69E9840];
  v44.receiver = self;
  v44.super_class = CKActionMenuView;
  [(CKActionMenuView *)&v44 layoutSubviews];
  [(CKActionMenuView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(CKActionMenuView *)self blurView];
  [v11 setFrame:{v4, v6, v8, v10}];

  v12 = [(CKActionMenuView *)self presentationActionMenuItems];
  if ([(CKActionMenuView *)self isCollapsed])
  {
    v48.origin.x = v4;
    v48.origin.y = v6;
    v48.size.width = v8;
    v48.size.height = v10;
    MidX = CGRectGetMidX(v48);
    v49.origin.x = v4;
    v49.origin.y = v6;
    v49.size.width = v8;
    v49.size.height = v10;
    MidY = CGRectGetMidY(v49);
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v15 = v12;
    v16 = [v15 countByEnumeratingWithState:&v40 objects:v46 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v41;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v41 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v40 + 1) + 8 * i);
          v21 = [v20 view];
          v22 = [v21 layer];
          [v22 setPosition:{MidX, MidY}];

          v23 = [v20 label];
          v24 = [v23 layer];
          [v24 setPosition:{70.0, MidY}];
        }

        v17 = [v15 countByEnumeratingWithState:&v40 objects:v46 count:16];
      }

      while (v17);
    }
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v25 = v12;
    v26 = [v25 countByEnumeratingWithState:&v36 objects:v45 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v37;
      v29 = 30.0;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v37 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v31 = *(*(&v36 + 1) + 8 * j);
          v32 = [v31 view];
          v33 = [v32 layer];
          [v33 setPosition:{30.0, v29}];

          v34 = [v31 label];
          v35 = [v34 layer];
          [v35 setPosition:{70.0, v29}];

          v29 = v29 + 90.0;
        }

        v27 = [v25 countByEnumeratingWithState:&v36 objects:v45 count:16];
      }

      while (v27);
    }
  }
}

- (CKActionMenuView)initWithActionMenuItems:(id)a3 defaultActionIndex:(unint64_t)a4 blurEffectStyle:(int64_t)a5
{
  v8 = a3;
  v20.receiver = self;
  v20.super_class = CKActionMenuView;
  v9 = [(CKActionMenuView *)&v20 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v9)
  {
    v10 = [MEMORY[0x1E69DC730] effectWithStyle:a5];
    [(CKActionMenuView *)v9 setBlurEffect:v10];

    v11 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:0];
    [(CKActionMenuView *)v9 setBlurView:v11];
    [(CKActionMenuView *)v9 addSubview:v11];
    v12 = [v11 contentView];
    v13 = [MEMORY[0x1E69DC888] whiteColor];
    [v12 setBackgroundColor:v13];

    v14 = [v11 contentView];
    v15 = [v14 layer];
    [v15 setCompositingFilter:*MEMORY[0x1E6979CA0]];

    v16 = [v11 layer];
    [v16 setMasksToBounds:1];

    v17 = [v11 layer];
    [v17 setCornerRadius:30.0];

    [(CKActionMenuView *)v9 setPresentationTargetBounds:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
    [(CKActionMenuView *)v9 setPresentationActionMenuItems:v8];
    [(CKActionMenuView *)v9 setPresentationDefaultActionIndex:a4];
    [(CKActionMenuView *)v9 setActionMenuItems:v8 defaultActionIndex:a4 animated:0];
    [(CKActionMenuView *)v9 setCollapsed:1 animated:0 completion:0];
    v18 = +[CKActionMenuGestureRecognizer actionMenuGestureRecognizer];
    [v18 setMinimumPressDuration:0.0];
    [(CKActionMenuView *)v9 addGestureRecognizer:v18];
  }

  return v9;
}

- (void)setActionMenuItems:(id)a3 defaultActionIndex:(unint64_t)a4 animated:(BOOL)a5
{
  v5 = a5;
  v59 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if ([v8 count] <= a4)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"*** %s: defaultActionIndex %d must be a valid index in actionMenuItems %@", "-[CKActionMenuView setActionMenuItems:defaultActionIndex:animated:]", a4, v8];
    v43 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
    objc_exception_throw(v43);
  }

  v9 = [(CKActionMenuView *)self actionMenuItems];
  [(CKActionMenuView *)self setActionMenuItems:v8];
  [(CKActionMenuView *)self setDefaultActionIndex:a4];
  v44 = v5;
  if ([(CKActionMenuView *)self isCollapsed])
  {
    memset(&v57, 0, sizeof(v57));
    CGAffineTransformMakeScale(&v57, 0.5, 0.5);
    v10 = 0.0;
  }

  else
  {
    [(CKActionMenuView *)self presentationTargetBounds];
    if (!CGRectIsNull(v60))
    {
      v11 = [(CKActionMenuView *)self layer];
      [v11 position];
      v13 = v12;
      v15 = v14;

      [(CKActionMenuView *)self presentationTargetPosition];
      v17 = v16;
      v19 = v18;
      [(CKActionMenuView *)self presentationTargetBounds];
      [(CKActionMenuView *)self configureForPresentationAtPoint:v17 inRect:v19, v20, v21, v22, v23];
      v24 = [(CKActionMenuView *)self layer];
      [v24 setPosition:{v13, v15}];
    }

    v25 = *(MEMORY[0x1E695EFD0] + 16);
    *&v57.a = *MEMORY[0x1E695EFD0];
    *&v57.c = v25;
    *&v57.tx = *(MEMORY[0x1E695EFD0] + 32);
    v10 = 1.0;
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v26 = v8;
  v27 = [v26 countByEnumeratingWithState:&v53 objects:v58 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v54;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v54 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v53 + 1) + 8 * i);
        if (([v9 ck_containsObjectIdenticalTo:v31] & 1) == 0)
        {
          v32 = [v31 view];
          [v32 setAlpha:0.0];
          v52 = v57;
          [v32 setTransform:&v52];
          v33 = [(CKActionMenuView *)self blurView];
          [(CKActionMenuView *)self insertSubview:v32 aboveSubview:v33];

          v34 = [v31 label];
          [v34 setAlpha:0.0];
          v52 = v57;
          [v34 setTransform:&v52];
          v35 = [v34 layer];
          [v35 setAnchorPoint:{0.0, 0.5}];

          v36 = [(CKActionMenuView *)self blurView];
          [(CKActionMenuView *)self insertSubview:v34 aboveSubview:v36];
        }
      }

      v28 = [v26 countByEnumeratingWithState:&v53 objects:v58 count:16];
    }

    while (v28);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__CKActionMenuView_setActionMenuItems_defaultActionIndex_animated___block_invoke;
  aBlock[3] = &unk_1E72EBC38;
  v37 = v9;
  v49 = v37;
  v38 = v26;
  v50 = v38;
  v51 = v10;
  v39 = _Block_copy(aBlock);
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __67__CKActionMenuView_setActionMenuItems_defaultActionIndex_animated___block_invoke_2;
  v45[3] = &unk_1E72ECCA8;
  v40 = v37;
  v46 = v40;
  v41 = v38;
  v47 = v41;
  v42 = _Block_copy(v45);
  if (v44)
  {
    [CKActionMenuItem animate:v39 completion:v42];
  }

  else
  {
    v39[2](v39);
    v42[2](v42, 1);
  }
}

void __67__CKActionMenuView_setActionMenuItems_defaultActionIndex_animated___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v23;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v23 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v22 + 1) + 8 * i);
        if (([*(a1 + 40) ck_containsObjectIdenticalTo:v7] & 1) == 0)
        {
          v8 = [v7 view];
          [v8 setAlpha:0.0];

          v9 = [v7 label];
          [v9 setAlpha:0.0];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v4);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = *(a1 + 40);
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v18 + 1) + 8 * j);
        if (([*(a1 + 32) ck_containsObjectIdenticalTo:{v15, v18}] & 1) == 0)
        {
          v16 = [v15 view];
          [v16 setAlpha:*(a1 + 48)];

          v17 = [v15 label];
          [v17 setAlpha:*(a1 + 48)];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v12);
  }
}

void __67__CKActionMenuView_setActionMenuItems_defaultActionIndex_animated___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if (([*(a1 + 40) ck_containsObjectIdenticalTo:{v7, v10}] & 1) == 0)
        {
          v8 = [v7 view];
          [v8 removeFromSuperview];

          v9 = [v7 label];
          [v9 removeFromSuperview];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

- (void)presentActionMenuViewFromPoint:(CGPoint)a3 inRect:(CGRect)a4 animated:(BOOL)a5 completion:(id)a6
{
  v6 = a5;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a3.y;
  v12 = a3.x;
  v14 = a6;
  [(CKActionMenuView *)self setPresentationTargetPosition:v12, v11];
  [(CKActionMenuView *)self setPresentationTargetBounds:x, y, width, height];
  [(CKActionMenuView *)self configureForPresentationAtPoint:v12 inRect:v11, x, y, width, height];
  v15 = [(CKActionMenuView *)self actionMenuItems];
  v16 = [v15 objectAtIndex:{-[CKActionMenuView defaultActionIndex](self, "defaultActionIndex")}];

  [v16 updateForState:1 touchInside:1];
  [(CKActionMenuView *)self setTouchInside:1];
  [(CKActionMenuView *)self setCollapsed:0 animated:v6 completion:v14];
}

- (void)dismissActionMenuViewAnimated:(BOOL)a3 completion:(id)a4
{
  [(CKActionMenuView *)self setCollapsed:1 animated:a3 completion:a4];
  [(CKActionMenuView *)self setPresentationTargetPosition:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
  v5 = *MEMORY[0x1E695F050];
  v6 = *(MEMORY[0x1E695F050] + 8);
  v7 = *(MEMORY[0x1E695F050] + 16);
  v8 = *(MEMORY[0x1E695F050] + 24);

  [(CKActionMenuView *)self setPresentationTargetBounds:v5, v6, v7, v8];
}

- (void)actionMenuGestureRecognized:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 state];
  [v4 locationInView:self];
  v7 = v6;
  v9 = v8;
  [v4 velocityInView:self];
  v12 = [(CKActionMenuView *)self actionMenuItemAtPoint:v7 velocity:v9, v10, v11];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = [(CKActionMenuView *)self actionMenuItems];
  v14 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v19;
    do
    {
      v17 = 0;
      do
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v18 + 1) + 8 * v17) updateForState:v5 touchInside:*(*(&v18 + 1) + 8 * v17) == v12];
        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v15);
  }

  [(CKActionMenuView *)self setTouchInside:v12 != 0];
}

+ (void)collapseAnimation:(id)a3 completion:(id)a4
{
  v5 = a4;
  [MEMORY[0x1E69DD250] _animateUsingSpringWithDuration:6 delay:a3 options:0 mass:1.545 stiffness:0.0 damping:1.0 initialVelocity:400.0 animations:25.0 completion:0.0];
  v6 = dispatch_time(0, 300000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__CKActionMenuView_collapseAnimation_completion___block_invoke;
  block[3] = &unk_1E72EBDB8;
  v9 = v5;
  v7 = v5;
  dispatch_after(v6, MEMORY[0x1E69E96A0], block);
}

- (void)setCollapsed:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v6 = a3;
  v52 = *MEMORY[0x1E69E9840];
  v8 = a5;
  if (self->_collapsed != v6)
  {
    self->_collapsed = v6;
    v9 = [(CKActionMenuView *)self actionMenuController];
    v10 = [v9 delegate];
    v11 = v10;
    if (v6)
    {
      v28 = v10;
      v29 = v5;
      memset(&v50, 0, sizeof(v50));
      CGAffineTransformMakeScale(&v50, 0.5, 0.5);
      v49 = 0u;
      v48 = 0u;
      v47 = 0u;
      v46 = 0u;
      v12 = [(CKActionMenuView *)self actionMenuItems];
      v13 = [v12 countByEnumeratingWithState:&v46 objects:v51 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v47;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v47 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = [*(*(&v46 + 1) + 8 * i) label];
            [v17 setAlpha:0.0];
          }

          v14 = [v12 countByEnumeratingWithState:&v46 objects:v51 count:16];
        }

        while (v14);
      }

      v18 = 0.0;
      v19 = 0x404E000000000000;
      v20 = 0x404E000000000000;
      v5 = v29;
      v11 = v28;
    }

    else
    {
      [(CKActionMenuView *)self sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
      v21 = *(MEMORY[0x1E695EFD0] + 16);
      *&v50.a = *MEMORY[0x1E695EFD0];
      *&v50.c = v21;
      *&v50.tx = *(MEMORY[0x1E695EFD0] + 32);
      v18 = 1.0;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __53__CKActionMenuView_setCollapsed_animated_completion___block_invoke;
    aBlock[3] = &unk_1E72F4A00;
    aBlock[4] = self;
    v40 = v20;
    v41 = v19;
    v44 = v6;
    v42 = v50;
    v43 = v18;
    v22 = v11;
    v38 = v22;
    v23 = v9;
    v39 = v23;
    v45 = v5;
    v24 = _Block_copy(aBlock);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __53__CKActionMenuView_setCollapsed_animated_completion___block_invoke_2;
    v30[3] = &unk_1E72F4A28;
    v34 = v8;
    v36 = v6;
    v25 = v22;
    v31 = v25;
    v26 = v23;
    v32 = v26;
    v33 = self;
    v35 = v18;
    v27 = _Block_copy(v30);
    if (v5)
    {
      [CKActionMenuView collapseAnimation:v24 completion:v27];
    }

    else
    {
      v24[2](v24);
      v27[2](v27, 1);
    }
  }
}

uint64_t __53__CKActionMenuView_setCollapsed_animated_completion___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) bounds];
  [*(a1 + 32) setBounds:?];
  v2 = [*(a1 + 32) blurView];
  v3 = [v2 contentView];
  if (*(a1 + 128))
  {
    v4 = [MEMORY[0x1E69DC888] whiteColor];
    [v3 setBackgroundColor:v4];
  }

  else
  {
    v4 = +[CKUIBehavior sharedBehaviors];
    v5 = [v4 theme];
    v6 = [v5 entryFieldAudioRecordingBalloonColor];
    [v3 setBackgroundColor:v6];
  }

  v7 = [*(a1 + 32) blurView];
  v8 = v7;
  if (*(a1 + 128) == 1)
  {
    [v7 setEffect:0];
  }

  else
  {
    v9 = [*(a1 + 32) blurEffect];
    [v8 setEffect:v9];
  }

  v10 = *(a1 + 32);
  v11 = *(a1 + 88);
  v27 = *(a1 + 72);
  v28 = v11;
  v29 = *(a1 + 104);
  [v10 setTransform:&v27];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = [*(a1 + 32) actionMenuItems];
  v13 = [v12 countByEnumeratingWithState:&v23 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v24;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v23 + 1) + 8 * i);
        v18 = [v17 view];
        [v18 setAlpha:*(a1 + 120)];
        v19 = *(a1 + 88);
        v27 = *(a1 + 72);
        v28 = v19;
        v29 = *(a1 + 104);
        [v18 setTransform:&v27];
        v20 = [v17 label];
        v21 = *(a1 + 88);
        v27 = *(a1 + 72);
        v28 = v21;
        v29 = *(a1 + 104);
        [v20 setTransform:&v27];
      }

      v14 = [v12 countByEnumeratingWithState:&v23 objects:v30 count:16];
    }

    while (v14);
  }

  [*(a1 + 32) layoutIfNeeded];
  if (*(a1 + 128) == 1)
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      return [*(a1 + 40) actionMenuControllerWillDismissActionMenu:*(a1 + 48) animated:*(a1 + 129)];
    }
  }

  else
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      return [*(a1 + 40) actionMenuControllerWillPresentActionMenu:*(a1 + 48) animated:*(a1 + 129)];
    }
  }

  return result;
}

uint64_t __53__CKActionMenuView_setCollapsed_animated_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    (*(v2 + 16))();
  }

  if (*(a1 + 72) == 1)
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);

      return [v4 actionMenuControllerDidDismissActionMenu:v5];
    }
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __53__CKActionMenuView_setCollapsed_animated_completion___block_invoke_3;
    v6[3] = &unk_1E72ED810;
    v6[4] = *(a1 + 48);
    v6[5] = *(a1 + 64);
    [MEMORY[0x1E69DD250] animateWithDuration:v6 animations:0.3];
    result = objc_opt_respondsToSelector();
    if (result)
    {
      return [*(a1 + 32) actionMenuControllerDidPresentActionMenu:*(a1 + 40)];
    }
  }

  return result;
}

void __53__CKActionMenuView_setCollapsed_animated_completion___block_invoke_3(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) actionMenuItems];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v8 + 1) + 8 * v6) label];
        [v7 setAlpha:*(a1 + 40)];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (id)actionMenuItemAtPoint:(CGPoint)a3 velocity:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = a3.y;
  v7 = a3.x;
  v31 = *MEMORY[0x1E69E9840];
  v9 = *MEMORY[0x1E695EFF8];
  v10 = *(MEMORY[0x1E695EFF8] + 8);
  if ([(UIView *)self pointMostlyInside:a3.x threshold:a3.y velocity:10.0, *MEMORY[0x1E695EFF8], v10]|| (x == v9 ? (v24 = y == v10) : (v24 = 0), !v24 && [(CKActionMenuView *)self isTouchInside]&& [(UIView *)self pointMostlyInside:v7 threshold:v6 velocity:10.0, x, y]))
  {
    v11 = [(CKActionMenuView *)self presentationActionMenuItems];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (!v12)
    {
      goto LABEL_13;
    }

    v13 = v12;
    v14 = 0;
    v15 = *v27;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v26 + 1) + 8 * i);
        v18 = [v17 view];
        if ([v17 isEnabled])
        {
          [v18 convertPoint:self fromView:{v7, v6}];
          if ([v18 pointMostlyInside:? threshold:? velocity:?])
          {
            v19 = v17;

            v14 = v19;
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v13);
    if (!v14)
    {
LABEL_13:
      v20 = v7 + -30.0;
      v21 = atan2(v6 + -30.0, v20);
      if (v21 < -2.35619449 || v21 > -0.785398163 || ([v11 firstObject], (v14 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        [(CKActionMenuView *)self bounds];
        MaxY = CGRectGetMaxY(v33);
        v23 = atan2(v6 - (MaxY + -30.0), v20);
        v14 = 0;
        if (v23 >= 0.785398163 && v23 <= 2.35619449)
        {
          v14 = [v11 lastObject];
        }
      }
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)configureForPresentationAtPoint:(CGPoint)a3 inRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.y;
  v9 = a3.x;
  v11 = [(CKActionMenuView *)self actionMenuItems];
  v12 = [(CKActionMenuView *)self defaultActionIndex];
  v13 = [v11 objectAtIndex:v12];
  [(CKActionMenuView *)self sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  v15 = v14;
  v17 = v16;
  v61 = v9;
  v18 = v9 + v14 * -0.5;
  v57 = v12;
  v62 = v8;
  v19 = v8 + -(v12 * 90.0 + 30.0) / v16 * v16;
  v67.origin.x = x;
  rect = y;
  v67.origin.y = y;
  v67.size.width = width;
  v67.size.height = height;
  MinX = CGRectGetMinX(v67);
  v68.origin.x = v18;
  v68.origin.y = v19;
  v68.size.width = v15;
  v68.size.height = v17;
  if (MinX <= CGRectGetMinX(v68))
  {
    v71.origin.x = x;
    v71.origin.y = rect;
    v71.size.width = width;
    v71.size.height = height;
    MaxX = CGRectGetMaxX(v71);
    v72.origin.x = v18;
    v72.origin.y = v19;
    v72.size.width = v15;
    v72.size.height = v17;
    v24 = CGRectGetMaxX(v72);
    v25 = 0.0;
    if (MaxX >= v24)
    {
      goto LABEL_6;
    }

    v73.origin.x = x;
    v73.origin.y = rect;
    v73.size.width = width;
    v73.size.height = height;
    v21 = CGRectGetMaxX(v73);
    v74.origin.x = v18;
    v74.origin.y = v19;
    v74.size.width = v15;
    v74.size.height = v17;
    v22 = CGRectGetMaxX(v74);
  }

  else
  {
    v69.origin.x = x;
    v69.origin.y = rect;
    v69.size.width = width;
    v69.size.height = height;
    v21 = CGRectGetMinX(v69);
    v70.origin.x = v18;
    v70.origin.y = v19;
    v70.size.width = v15;
    v70.size.height = v17;
    v22 = CGRectGetMinX(v70);
  }

  v25 = v21 - v22;
LABEL_6:
  v59 = v25;
  v75.origin.x = x;
  v75.origin.y = rect;
  v75.size.width = width;
  v75.size.height = height;
  MinY = CGRectGetMinY(v75);
  v76.origin.x = v18;
  v76.origin.y = v19;
  v76.size.width = v15;
  v76.size.height = v17;
  v27 = MinY <= CGRectGetMinY(v76);
  v64 = height;
  v28 = x;
  if (v27)
  {
    v34 = rect;
    v35 = width;
    v36 = height;
    MaxY = CGRectGetMaxY(*&v28);
    v78.origin.x = v18;
    v78.origin.y = v19;
    v78.size.width = v15;
    v78.size.height = v17;
    v38 = 0.0;
    if (MaxY >= CGRectGetMaxY(v78))
    {
      goto LABEL_11;
    }

    v79.origin.x = x;
    v79.size.height = v64;
    v79.origin.y = rect;
    v79.size.width = width;
    v32 = CGRectGetMaxY(v79);
    v80.origin.x = v18;
    v80.origin.y = v19;
    v80.size.width = v15;
    v80.size.height = v17;
    v33 = CGRectGetMaxY(v80);
  }

  else
  {
    v29 = rect;
    v30 = width;
    v31 = height;
    v32 = CGRectGetMinY(*&v28);
    v77.origin.x = v18;
    v77.origin.y = v19;
    v77.size.width = v15;
    v77.size.height = v17;
    v33 = CGRectGetMinY(v77);
  }

  v38 = v32 - v33;
LABEL_11:
  v39 = v11;
  v40 = fabs(v38);
  v60 = v18;
  v63 = v39;
  if (v40 <= 30.0)
  {
    v42 = v15;
    v44 = v57 * 90.0 + 30.0;
    v45 = v39;
    v46 = v64;
  }

  else
  {
    v41 = (ceil((v40 + -30.0) / 90.0) * ((v38 < 0.0) - (v38 > 0.0)));
    v42 = v15;
    if (v41 < 1)
    {
      if (v41)
      {
        v43 = 0;
      }

      else
      {
        v43 = v12;
      }
    }

    else
    {
      v43 = [v39 count] - 1;
      v39 = v63;
    }

    v46 = v64;
    v45 = [v39 mutableCopy];
    [v45 removeObjectAtIndex:v12];
    [v45 insertObject:v13 atIndex:v43];

    v44 = v43 * 90.0 + 30.0;
    v12 = v43;
  }

  v58 = v44 / v17;
  v47 = v62 - v44 / v17 * v17;
  v81.origin.x = x;
  v81.origin.y = rect;
  v81.size.width = width;
  v81.size.height = v46;
  v48 = CGRectGetMinY(v81);
  v82.origin.x = v60;
  v82.origin.y = v47;
  v82.size.width = v42;
  v82.size.height = v17;
  if (v48 <= CGRectGetMinY(v82))
  {
    v85.origin.x = x;
    v85.origin.y = rect;
    v85.size.width = width;
    v85.size.height = v64;
    v51 = CGRectGetMaxY(v85);
    v86.origin.x = v60;
    v86.origin.y = v47;
    v86.size.width = v42;
    v86.size.height = v17;
    v52 = CGRectGetMaxY(v86);
    v53 = 0.0;
    if (v51 >= v52)
    {
      goto LABEL_24;
    }

    v87.origin.x = x;
    v87.origin.y = rect;
    v87.size.width = width;
    v87.size.height = v64;
    v49 = CGRectGetMaxY(v87);
    v88.origin.x = v60;
    v88.origin.y = v47;
    v88.size.width = v42;
    v88.size.height = v17;
    v50 = CGRectGetMaxY(v88);
  }

  else
  {
    v83.origin.x = x;
    v83.origin.y = rect;
    v83.size.width = width;
    v83.size.height = v64;
    v49 = CGRectGetMinY(v83);
    v84.origin.x = v60;
    v84.origin.y = v47;
    v84.size.width = v42;
    v84.size.height = v17;
    v50 = CGRectGetMinY(v84);
  }

  v53 = v49 - v50;
LABEL_24:
  v54 = v62 + v53;
  v55 = [(CKActionMenuView *)self layer];
  [v55 setPosition:{v61 + v59, v54}];

  v56 = [(CKActionMenuView *)self layer];
  [v56 setAnchorPoint:{0.5, v58}];

  [(CKActionMenuView *)self setPresentationActionMenuItems:v45];
  [(CKActionMenuView *)self setPresentationDefaultActionIndex:v12];
}

- (CKActionMenuController)actionMenuController
{
  WeakRetained = objc_loadWeakRetained(&self->_actionMenuController);

  return WeakRetained;
}

- (CGRect)presentationTargetBounds
{
  x = self->_presentationTargetBounds.origin.x;
  y = self->_presentationTargetBounds.origin.y;
  width = self->_presentationTargetBounds.size.width;
  height = self->_presentationTargetBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)presentationTargetPosition
{
  x = self->_presentationTargetPosition.x;
  y = self->_presentationTargetPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

@end