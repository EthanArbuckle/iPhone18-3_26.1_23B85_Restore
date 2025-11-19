@interface CKBrowserDragManager
- (BOOL)usesSeparateDragWindow;
- (CGPoint)locationInView;
- (CKBrowserDragControllerDelegate)delegate;
- (CKBrowserDragControllerTranscriptDelegate)transcriptDelegate;
- (CKBrowserDragManager)initWithTargetView:(id)a3;
- (id)browserDragViewControllerTargetView:(id)a3;
- (id)draggedSticker;
- (id)superviewOfView:(id)a3 matchingClass:(Class)a4;
- (void)beginDraggingItem:(id)a3 withAnimatedDragImage:(id)a4 fromRect:(CGRect)a5;
- (void)beginDraggingItem:(id)a3 withDragImage:(id)a4 fromRect:(CGRect)a5;
- (void)browserDragViewController:(id)a3 dragEndedWithTarget:(id)a4;
- (void)browserDragViewController:(id)a3 draggedWithTarget:(id)a4;
- (void)dealloc;
- (void)setPlusButtonHidden:(BOOL)a3;
- (void)tapRecognized:(id)a3;
@end

@implementation CKBrowserDragManager

- (CKBrowserDragManager)initWithTargetView:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CKBrowserDragManager;
  v5 = [(CKBrowserDragManager *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(CKBrowserDragManager *)v5 setTargetView:v4];
    v7 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:v6 action:sel_tapRecognized_];
    [v7 setMinimumPressDuration:2.22507386e-308];
    [v7 setDelegate:v6];
    [v7 setCancelsTouchesInView:0];
    [v4 addGestureRecognizer:v7];
    [(CKBrowserDragManager *)v6 setGestureRecognizer:v7];
  }

  return v6;
}

- (void)dealloc
{
  v3 = [(CKBrowserDragManager *)self gestureRecognizer];
  [v3 setEnabled:0];

  v4 = [(CKBrowserDragManager *)self targetView];
  v5 = [(CKBrowserDragManager *)self gestureRecognizer];
  [v4 removeGestureRecognizer:v5];

  v6.receiver = self;
  v6.super_class = CKBrowserDragManager;
  [(CKBrowserDragManager *)&v6 dealloc];
}

- (BOOL)usesSeparateDragWindow
{
  if (IMIsRunningIniMessageAppsViewService() || IMIsRunningIniMessageAppExtension() || CKIsRunningInInCallService())
  {
    return 0;
  }

  else
  {
    return [MEMORY[0x1E69DCBB8] usesInputSystemUI] ^ 1;
  }
}

- (void)beginDraggingItem:(id)a3 withDragImage:(id)a4 fromRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v19[1] = *MEMORY[0x1E69E9840];
  v11 = a3;
  if (a4)
  {
    v12 = a4;
    v13 = [CKAnimatedImage alloc];
    v19[0] = v12;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];

    v15 = [(CKAnimatedImage *)v13 initWithImages:v14 durations:&unk_1F04E6900];
    [(CKBrowserDragManager *)self beginDraggingItem:v11 withAnimatedDragImage:v15 fromRect:x, y, width, height];
  }

  else
  {
    v16 = MEMORY[0x1E695DF30];
    v17 = 0;
    v18 = [v16 exceptionWithName:@"CKBrowserDragManagerDragException" reason:@"beginDraggingItem userInfo:{should not be called with a nil image parameter", 0}];

    IMLogSimulateCrashForException();
  }
}

- (id)superviewOfView:(id)a3 matchingClass:(Class)a4
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    do
    {
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v7 = [v6 superview];

      v6 = v7;
    }

    while (v7);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)beginDraggingItem:(id)a3 withAnimatedDragImage:(id)a4 fromRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a3;
  v12 = a4;
  v13 = [(CKBrowserDragManager *)self gestureRecognizer];
  v14 = [v13 state];

  if (CKIsRunningInMacCatalyst())
  {
    v15 = [(CKBrowserDragManager *)self currentItem];

    if (!v15)
    {
      goto LABEL_12;
    }

LABEL_30:
    if (IMOSLoggingEnabled())
    {
      v90 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v90, OS_LOG_TYPE_INFO, "Drag and drop cancelled, current gesture recognizer state is not recognized, changed, or began", buf, 2u);
      }
    }

    v91 = [(CKBrowserDragManager *)self delegate];
    v92 = objc_opt_respondsToSelector();

    if (v92)
    {
      v93 = [(CKBrowserDragManager *)self delegate];
      [v93 dragManager:self didEndDraggingItem:v11 toDragTarget:0 dropArea:0];
    }

    goto LABEL_36;
  }

  v16 = [MEMORY[0x1E69DC938] currentDevice];
  if ([v16 userInterfaceIdiom] == 1)
  {
    v17 = CKIsRunningInCameraAppsClient();

    if (!v17)
    {
      v18 = MEMORY[0x1E69DD0A8];
      v19 = [MEMORY[0x1E69DD2E8] keyWindow];
      v20 = [v19 windowScene];
      v21 = [v18 sharedTextEffectsWindowForWindowScene:v20];

      LODWORD(v19) = [v21 _isFullscreen];
      if (!v19)
      {
        goto LABEL_30;
      }
    }
  }

  else
  {
  }

  v22 = [(CKBrowserDragManager *)self currentItem];
  if (v22)
  {

    goto LABEL_30;
  }

  if ((v14 - 1) > 2)
  {
    goto LABEL_30;
  }

LABEL_12:
  v23 = [MEMORY[0x1E696AD88] defaultCenter];
  [v23 postNotificationName:@"CKBrowserDragManagerWillStartDraggingNotification" object:0];

  [(CKBrowserDragManager *)self setCurrentItem:v11];
  v24 = [(CKBrowserDragManager *)self usesSeparateDragWindow];
  v25 = [(CKBrowserDragManager *)self targetView];
  v26 = [v25 window];

  if (v24)
  {
    v27 = [CKBrowserDragWindow alloc];
    v28 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v28 bounds];
    v29 = [(CKPresentationControllerWindow *)v27 initWithFrame:0 allowsRotation:0 allowsStatusBarChanges:0 restrictedToPortraitOrientation:?];

    v26 = v29;
  }

  [(CKBrowserDragManager *)self setDragWindow:v26];
  v30 = [(CKBrowserDragManager *)self targetView];
  [v30 convertRect:0 toView:{x, y, width, height}];
  v100 = v32;
  v101 = v31;
  v98 = v34;
  v99 = v33;

  v35 = [(CKBrowserDragManager *)self gestureRecognizer];
  v36 = [(CKBrowserDragManager *)self targetView];
  [v35 locationInView:v36];
  v38 = v37;
  v40 = v39;

  v41 = [(CKBrowserDragManager *)self targetView];
  [v41 convertPoint:0 toView:{v38, v40}];
  v43 = v42;
  v45 = v44;

  v46 = [(CKBrowserDragManager *)self targetView];
  v47 = [(CKBrowserDragManager *)self superviewOfView:v46 matchingClass:objc_opt_class()];

  v48 = [(CKBrowserDragManager *)self targetView];
  [v48 convertRect:v47 toView:{x, y, width, height}];
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;

  v57 = [(CKBrowserDragManager *)self gestureRecognizer];
  [v57 locationInView:v47];
  v59 = v58;
  v61 = v60;

  v62 = [(CKBrowserDragManager *)self targetView];
  [v62 convertPoint:v47 toView:{v59, v61}];
  v64 = v63;
  v66 = v65;

  v67 = [CKBrowserDragViewController alloc];
  v68 = [(CKBrowserDragManager *)self gestureRecognizer];
  v69 = [(CKBrowserDragViewController *)v67 initWithDragImage:v12 inSourceRect:v68 withSourcePoint:v101 keyboardSourceRect:v100 keyboardSourcePoint:v99 withGestureRecognizer:v98, v43, v45, v50, v52, v54, v56, v64, v66];

  v70 = [MEMORY[0x1E69DD2E8] keyWindow];
  v71 = [v70 windowScene];
  v72 = [v71 _enhancedWindowingEnabled];

  if (v72)
  {
    [(CKBrowserDragViewController *)v69 setKeyboardWindowSourceView:v47];
  }

  [(CKBrowserDragViewController *)v69 setDelegate:self];
  [(CKBrowserDragManager *)self setDragViewController:v69];
  if (v24)
  {
    v73 = 0;
  }

  else
  {
    v73 = 5;
  }

  [(CKBrowserDragViewController *)v69 setModalPresentationStyle:v73];
  v74 = [(CKBrowserDragManager *)self delegate];
  v75 = objc_opt_respondsToSelector();

  if (v75)
  {
    v76 = [(CKBrowserDragManager *)self delegate];
    -[CKBrowserDragViewController setCanScale:](v69, "setCanScale:", [v76 dragManager:self canScaleItem:v11]);
  }

  v77 = [(CKBrowserDragManager *)self delegate];
  v78 = objc_opt_respondsToSelector();

  if (v78)
  {
    v79 = [(CKBrowserDragManager *)self delegate];
    -[CKBrowserDragViewController setCanRotate:](v69, "setCanRotate:", [v79 dragManager:self canRotateItem:v11]);
  }

  v80 = [(CKBrowserDragManager *)self delegate];
  v81 = objc_opt_respondsToSelector();

  if (v81)
  {
    v82 = [(CKBrowserDragManager *)self delegate];
    -[CKBrowserDragViewController setCanPeel:](v69, "setCanPeel:", [v82 dragManager:self canPeelItem:v11]);
  }

  [v26 setHidden:0];
  v83 = [v26 rootViewController];
  if (!v24)
  {
    v94 = 10;
    while (1)
    {
      v95 = [v83 presentedViewController];
      if (!v95)
      {
        break;
      }

      v96 = v95;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        break;
      }

      v84 = [v83 presentedViewController];

      v83 = v84;
      if (!--v94)
      {
        goto LABEL_27;
      }
    }
  }

  v84 = v83;
LABEL_27:
  [v84 presentViewController:v69 animated:0 completion:0];
  [(CKBrowserDragManager *)self setPresentingViewController:v84];
  v85 = [(CKBrowserDragManager *)self transcriptDelegate];
  [v85 dragManagerDidBeginDragging:self];

  v86 = [MEMORY[0x1E696AD88] defaultCenter];
  [v86 postNotificationName:@"CKBrowserDragManagerDidStartDraggingNotification" object:0];

  v87 = [(CKBrowserDragManager *)self delegate];
  v88 = objc_opt_respondsToSelector();

  if (v88)
  {
    v89 = [(CKBrowserDragManager *)self delegate];
    [v89 dragManager:self didBeginDraggingItem:v11];
  }

LABEL_36:
}

- (void)setPlusButtonHidden:(BOOL)a3
{
  v3 = a3;
  v4 = [(CKBrowserDragManager *)self dragViewController];
  [v4 setPlusImageViewHidden:v3];
}

- (void)tapRecognized:(id)a3
{
  v4 = a3;
  v5 = [(CKBrowserDragManager *)self targetView];
  [v4 locationInView:v5];
  v7 = v6;
  v9 = v8;

  [(CKBrowserDragManager *)self setLocationInView:v7, v9];
}

- (void)browserDragViewController:(id)a3 draggedWithTarget:(id)a4
{
  v10 = a4;
  v5 = [(CKBrowserDragManager *)self transcriptDelegate];
  [v5 dragManager:self draggedItemWithTarget:v10];

  v6 = [(CKBrowserDragManager *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(CKBrowserDragManager *)self delegate];
    v9 = [(CKBrowserDragManager *)self currentItem];
    [v8 dragManager:self didDragItem:v9 toDragTarget:v10];
  }
}

- (id)browserDragViewControllerTargetView:(id)a3
{
  v4 = [(CKBrowserDragManager *)self transcriptDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CKBrowserDragManager *)self transcriptDelegate];
    v7 = [v6 dragManagerTargetView:self];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)browserDragViewController:(id)a3 dragEndedWithTarget:(id)a4
{
  v5 = a4;
  v6 = [(CKBrowserDragManager *)self currentItem];
  if (v5)
  {
    v7 = [(CKBrowserDragManager *)self transcriptDelegate];
    v8 = [v7 dragManager:self dropAreaForDragTarget:v5];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(CKBrowserDragManager *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(CKBrowserDragManager *)self delegate];
    v12 = [v11 dragManager:self shouldCancelDraggingForItem:v6 toDragTarget:v5 dropArea:v8];
  }

  else
  {
    v12 = 0;
  }

  v13 = (v8 == 0) | v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __70__CKBrowserDragManager_browserDragViewController_dragEndedWithTarget___block_invoke;
  aBlock[3] = &unk_1E72F0D40;
  aBlock[4] = self;
  v14 = v6;
  v30 = v14;
  v15 = v5;
  v31 = v15;
  v32 = v8;
  v33 = v13 & 1;
  v16 = _Block_copy(aBlock);
  if (v13)
  {
    v17 = [(CKBrowserDragManager *)self dragViewController];
    [v17 animateBackToSourceCompletionBlock:v16];
  }

  else
  {
    v18 = [(CKBrowserDragManager *)self delegate];
    v19 = [(CKBrowserDragManager *)self currentItem];
    v20 = [v18 dragManager:self canPeelItem:v19];

    if (v20)
    {
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __70__CKBrowserDragManager_browserDragViewController_dragEndedWithTarget___block_invoke_2;
      v27[3] = &unk_1E72F0D68;
      v27[4] = self;
      v28 = v16;
      v21 = _Block_copy(v27);
      v22 = [(CKBrowserDragManager *)self transcriptDelegate];
      v23 = objc_opt_respondsToSelector();

      if (v23)
      {
        v24 = [(CKBrowserDragManager *)self transcriptDelegate];
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __70__CKBrowserDragManager_browserDragViewController_dragEndedWithTarget___block_invoke_4;
        v25[3] = &unk_1E72F0DB8;
        v26 = v21;
        [v24 dragManager:self overrideDropPointForTarget:v15 completion:v25];
      }

      else
      {
        [v15 screenCoordinate];
        (*(v21 + 2))(v21, 0);
      }
    }

    else
    {
      v16[2](v16);
    }
  }
}

void __70__CKBrowserDragManager_browserDragViewController_dragEndedWithTarget___block_invoke(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 dragManager:*(a1 + 32) didEndDraggingItem:*(a1 + 40) toDragTarget:*(a1 + 48) dropArea:*(a1 + 56)];
  }

  if (*(a1 + 60) == 1)
  {
    v11 = @"CKBrowserDragManagerDidEndDragSuccessKey";
    v12[0] = MEMORY[0x1E695E110];
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 postNotificationName:@"CKBrowserDragManagerDidEndDraggingNotification" object:0 userInfo:v5];

  v7 = [*(a1 + 32) presentingViewController];
  [v7 dismissViewControllerAnimated:0 completion:0];

  [*(a1 + 32) setPresentingViewController:0];
  if ([*(a1 + 32) usesSeparateDragWindow])
  {
    v8 = [*(a1 + 32) dragWindow];
    [v8 setHidden:1];
  }

  v9 = [*(a1 + 32) dragViewController];
  [v9 setDelegate:0];

  [*(a1 + 32) setDragViewController:0];
  [*(a1 + 32) setDragWindow:0];
  v10 = [*(a1 + 32) transcriptDelegate];
  [v10 dragManagerDidEndDragging:*(a1 + 32)];

  [*(a1 + 32) setCurrentItem:0];
}

void __70__CKBrowserDragManager_browserDragViewController_dragEndedWithTarget___block_invoke_2(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = [*(a1 + 32) dragViewController];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__CKBrowserDragManager_browserDragViewController_dragEndedWithTarget___block_invoke_3;
  v9[3] = &unk_1E72EBDB8;
  v10 = *(a1 + 40);
  [v8 animatePlacementAtPoint:a2 shouldShrink:v9 completionBlock:{a3, a4}];
}

void __70__CKBrowserDragManager_browserDragViewController_dragEndedWithTarget___block_invoke_4(uint64_t a1, double a2, double a3)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__CKBrowserDragManager_browserDragViewController_dragEndedWithTarget___block_invoke_5;
  block[3] = &unk_1E72F0D90;
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = a3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (id)draggedSticker
{
  v2 = [(CKBrowserDragManager *)self dragViewController];
  v3 = [v2 draggedSticker];

  return v3;
}

- (CKBrowserDragControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CKBrowserDragControllerTranscriptDelegate)transcriptDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_transcriptDelegate);

  return WeakRetained;
}

- (CGPoint)locationInView
{
  x = self->_locationInView.x;
  y = self->_locationInView.y;
  result.y = y;
  result.x = x;
  return result;
}

@end