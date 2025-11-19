@interface CKEffectPreviewCollectionViewController
- (CKEffectPreviewCollectionViewController)init;
- (CKEffectPreviewCollectionViewControllerDelegate)delegate;
- (CKFullScreenEffect)currentEffect;
- (void)addAnimationTimerForCell:(id)a3;
- (void)dealloc;
- (void)displayEffectWithIdentifier:(id)a3;
- (void)loadView;
- (void)resumeEffect;
- (void)setCurrentEffect:(id)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation CKEffectPreviewCollectionViewController

- (CKEffectPreviewCollectionViewController)init
{
  v5.receiver = self;
  v5.super_class = CKEffectPreviewCollectionViewController;
  v2 = [(CKEffectPreviewCollectionViewController *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(CKFullScreenEffectManager);
    [(CKEffectPreviewCollectionViewController *)v2 setFsem:v3];
  }

  return v2;
}

- (void)loadView
{
  v3 = [CKEffectPreviewCollectionView alloc];
  v5 = objc_alloc_init(MEMORY[0x1E69DC840]);
  v4 = [(CKEffectPreviewCollectionView *)v3 initWithFrame:v5 collectionViewLayout:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(CKEffectPreviewCollectionViewController *)self setView:v4];
}

- (void)dealloc
{
  v3 = [(CKEffectPreviewCollectionViewController *)self animationTimer];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = CKEffectPreviewCollectionViewController;
  [(CKEffectPreviewCollectionViewController *)&v4 dealloc];
}

- (void)displayEffectWithIdentifier:(id)a3
{
  v77 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CKEffectPreviewCollectionViewController *)self fsem];
  v6 = [v5 effectForIdentifier:v4];

  v7 = [(CKEffectPreviewCollectionViewController *)self currentEffect];

  if (v7 != v6)
  {
    v8 = [(CKEffectPreviewCollectionViewController *)self currentCell];
    [v8 removeFromSuperview];

    [(CKEffectPreviewCollectionViewController *)self setCurrentCell:0];
    [(CKEffectPreviewCollectionViewController *)self setCurrentEffect:v6];
    if (v6)
    {
      v56 = v4;
      v9 = [(CKEffectPreviewCollectionViewController *)self animationTimer];
      [v9 invalidate];

      v10 = [CKMomentCollectionViewCell alloc];
      v11 = [(CKEffectPreviewCollectionViewController *)self view];
      [v11 frame];
      v12 = [(CKMomentCollectionViewCell *)v10 initWithFrame:?];

      [(CKEffectPreviewCollectionViewController *)self setCurrentCell:v12];
      v55 = v6;
      [(CKMomentCollectionViewCell *)v12 setEffect:v6];
      [(CKMomentCollectionViewCell *)v12 setupEffectIfNeeded];
      v13 = [(CKEffectPreviewCollectionViewController *)self delegate];
      v59 = [v13 balloonView];

      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v60 = v12;
      obj = [(CKMomentCollectionViewCell *)v12 effectViews];
      v61 = [obj countByEnumeratingWithState:&v71 objects:v76 count:16];
      if (v61)
      {
        v58 = *v72;
        do
        {
          v14 = 0;
          do
          {
            if (*v72 != v58)
            {
              objc_enumerationMutation(obj);
            }

            v64 = v14;
            v15 = *(*(&v71 + 1) + 8 * v14);
            v16 = [v59 superview];
            [v59 center];
            v18 = v17;
            v20 = v19;
            v21 = [(CKEffectPreviewCollectionViewController *)self view];
            [v16 convertPoint:v21 toView:{v18, v20}];
            [v15 setFocusPoint:?];

            v22 = [v59 superview];
            [v59 frame];
            v24 = v23;
            v26 = v25;
            v28 = v27;
            v30 = v29;
            v31 = [(CKEffectPreviewCollectionViewController *)self view];
            [v22 convertRect:v31 toView:{v24, v26, v28, v30}];
            [v15 setMessageRect:?];

            [v15 setMessageOrientation:{objc_msgSend(v59, "orientation")}];
            v32 = [(CKEffectPreviewCollectionViewController *)self delegate];
            v33 = [v32 balloonView];

            [v33 center];
            v35 = v34;
            v37 = v36;
            v38 = [MEMORY[0x1E69DCA80] preferredFormat];
            v39 = [MEMORY[0x1E69DCEB0] mainScreen];
            [v39 scale];
            [v38 setScale:?];

            v40 = objc_alloc(MEMORY[0x1E69DCA78]);
            [v33 bounds];
            v63 = v38;
            v43 = [v40 initWithSize:v38 format:{v41, v42}];
            v69[0] = MEMORY[0x1E69E9820];
            v69[1] = 3221225472;
            v69[2] = __71__CKEffectPreviewCollectionViewController_displayEffectWithIdentifier___block_invoke;
            v69[3] = &unk_1E72EBBE8;
            v44 = v33;
            v70 = v44;
            v62 = v43;
            v45 = [v43 imageWithActions:v69];
            v65 = 0u;
            v66 = 0u;
            v67 = 0u;
            v68 = 0u;
            v46 = [(CKMomentCollectionViewCell *)v60 effectViews];
            v47 = [v46 countByEnumeratingWithState:&v65 objects:v75 count:16];
            if (v47)
            {
              v48 = v47;
              v49 = *v66;
              do
              {
                v50 = 0;
                do
                {
                  if (*v66 != v49)
                  {
                    objc_enumerationMutation(v46);
                  }

                  v51 = *(*(&v65 + 1) + 8 * v50);
                  v52 = [v44 superview];
                  v53 = [(CKEffectPreviewCollectionViewController *)self view];
                  [v52 convertPoint:v53 toView:{v35, v37}];
                  [v51 setFocusPoint:?];

                  [v51 setMessageImage:v45];
                  ++v50;
                }

                while (v48 != v50);
                v48 = [v46 countByEnumeratingWithState:&v65 objects:v75 count:16];
              }

              while (v48);
            }

            v14 = v64 + 1;
          }

          while (v64 + 1 != v61);
          v61 = [obj countByEnumeratingWithState:&v71 objects:v76 count:16];
        }

        while (v61);
      }

      v54 = [(CKEffectPreviewCollectionViewController *)self view];
      [v54 addSubview:v60];

      [(CKEffectPreviewCollectionViewController *)self addAnimationTimerForCell:v60];
      [(CKMomentCollectionViewCell *)v60 animate];

      v6 = v55;
      v4 = v56;
    }
  }
}

void __71__CKEffectPreviewCollectionViewController_displayEffectWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 format];
  [v3 bounds];
  [v2 drawViewHierarchyInRect:0 afterScreenUpdates:?];
}

- (void)setCurrentEffect:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_currentEffect, v4);
  v6 = [v4 backgroundColor];

  v5 = [(CKEffectPreviewCollectionViewController *)self view];
  [v5 setBackgroundColor:v6];
}

- (void)addAnimationTimerForCell:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, v4);
  v5 = MEMORY[0x1E695DFF0];
  v6 = [v4 effect];
  [v6 duration];
  v8 = v7;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __68__CKEffectPreviewCollectionViewController_addAnimationTimerForCell___block_invoke;
  v14 = &unk_1E72F4BA8;
  objc_copyWeak(&v15, &location);
  v9 = [v5 timerWithTimeInterval:1 repeats:&v11 block:v8];

  v10 = [MEMORY[0x1E695DFD0] currentRunLoop];
  [v10 addTimer:v9 forMode:*MEMORY[0x1E695DA28]];

  [(CKEffectPreviewCollectionViewController *)self setAnimationTimer:v9];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __68__CKEffectPreviewCollectionViewController_addAnimationTimerForCell___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained animate];
}

- (void)resumeEffect
{
  v3 = [(CKEffectPreviewCollectionViewController *)self resizingSavedIdentifier];
  [(CKEffectPreviewCollectionViewController *)self displayEffectWithIdentifier:v3];

  [(CKEffectPreviewCollectionViewController *)self setResizingSavedIdentifier:0];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v12.receiver = self;
  v12.super_class = CKEffectPreviewCollectionViewController;
  v7 = a4;
  [(CKEffectPreviewCollectionViewController *)&v12 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [(CKEffectPreviewCollectionViewController *)self resizingSavedIdentifier];
  if (v8)
  {
    [(CKEffectPreviewCollectionViewController *)self setResizingSavedIdentifier:v8];
  }

  else
  {
    v9 = [(CKEffectPreviewCollectionViewController *)self currentEffect];
    v10 = [v9 identifier];
    [(CKEffectPreviewCollectionViewController *)self setResizingSavedIdentifier:v10];
  }

  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_resumeEffect object:0];
  [(CKEffectPreviewCollectionViewController *)self displayEffectWithIdentifier:0];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __94__CKEffectPreviewCollectionViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v11[3] = &unk_1E72EC3E8;
  v11[4] = self;
  [v7 animateAlongsideTransition:&__block_literal_global_172 completion:v11];
}

- (CKEffectPreviewCollectionViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CKFullScreenEffect)currentEffect
{
  WeakRetained = objc_loadWeakRetained(&self->_currentEffect);

  return WeakRetained;
}

@end