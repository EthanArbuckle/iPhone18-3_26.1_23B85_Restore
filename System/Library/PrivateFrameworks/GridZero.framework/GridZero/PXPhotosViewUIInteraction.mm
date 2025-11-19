@interface PXPhotosViewUIInteraction
- (BOOL)_handleHoverWithHitTestResult:(id)a3;
- (BOOL)_handleTapWithHitTestResult:(id)a3 keyModifierFlags:(int64_t)a4;
- (BOOL)_pickNavigatedAssetReference;
- (BOOL)actionPerformer:(id)a3 dismissViewController:(id)a4 completionHandler:(id)a5;
- (BOOL)allowsActionsForContextMenuInteraction:(id)a3;
- (BOOL)allowsPreviewCommittingForContextMenuInteraction:(id)a3;
- (BOOL)canPerformActionType:(id)a3;
- (BOOL)canStartContextMenuInteraction:(id)a3;
- (BOOL)canToggleSelectMode;
- (BOOL)commitPreviewForContextMenuInteraction:(id)a3;
- (BOOL)dragController:(id)a3 shouldResizeCancelledPreviewForAssetReference:(id)a4;
- (BOOL)dragController:(id)a3 shouldSelectRearrangedAssetReferences:(id)a4;
- (BOOL)ensureSelectMode;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)presentOneUpForAssetReference:(id)a3;
- (BOOL)swipeSelectionManagerIsInMultiSelectMode:(id)a3;
- (NSUndoManager)undoManager;
- (PXPhotosViewUIInteractionDelegate)uiInteractionDelegate;
- (PXSimpleIndexPath)_indexPathForAssetAtLocation:(SEL)a3 withPadding:(CGPoint)a4 forSwipeSelectionManager:(UIEdgeInsets)a5;
- (PXSimpleIndexPath)swipeSelectionManager:(SEL)a3 itemIndexPathAtLocation:(id)a4;
- (PXSimpleIndexPath)swipeSelectionManager:(SEL)a3 itemIndexPathClosestAboveLocation:(id)a4;
- (PXSimpleIndexPath)swipeSelectionManager:(SEL)a3 itemIndexPathClosestLeadingLocation:(id)a4;
- (UIScrollView)scrollView;
- (id)_adjustHiddenAssetReferences:(id)a3;
- (id)_contextMenuInteraction:(id)a3 accessoriesForMenuWithConfiguration:(id)a4;
- (id)_contextMenuInteraction:(id)a3 styleForMenuWithConfiguration:(id)a4;
- (id)_createContextMenuActionManagerForSelection;
- (id)_makePlaceholderViewForRegionOfInterest:(id)a3 roiRect:(CGRect)a4;
- (id)adjustOneUpAssetReferenceToScrollToVisible:(id)a3;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (id)contextMenuInteraction:(id)a3 previewForHighlightingMenuWithConfiguration:(id)a4;
- (id)createContextMenuActionManagerForNavigatedPreviewAssetReference;
- (id)dragController:(id)a3 draggableAssetReferenceAtLocation:(CGPoint)a4;
- (id)dragController:(id)a3 dropTargetAssetReferenceForLocation:(CGPoint)a4;
- (id)dragController:(id)a3 itemProviderForAssetReference:(id)a4;
- (id)dragControllerAssetReferenceForBeginningSession:(id)a3;
- (id)menuImageForActionType:(id)a3;
- (id)menuTitleForActionType:(id)a3;
- (id)presentationEnvironmentForActionPerformer:(id)a3;
- (id)regionOfInterestForAssetReference:(id)a3 image:(CGImage *)a4 fallbackMediaProvider:(id)a5 shouldSnapshot:(BOOL)a6;
- (id)regionOfInterestForAssetReference:(id)a3 image:(id *)a4;
- (id)swipeSelectionManager:(id)a3 indexPathSetFromIndexPath:(PXSimpleIndexPath *)a4 toIndexPath:(PXSimpleIndexPath *)a5;
- (id)targetedPreviewForAssetReference:(id)a3;
- (void)_handleDoubleTap:(id)a3;
- (void)_handleHover:(id)a3;
- (void)_handleHoverWithHitTestResults:(id)a3 hoverGesture:(id)a4;
- (void)_handlePinch:(id)a3;
- (void)_handlePress:(id)a3;
- (void)_handleTap:(id)a3;
- (void)_handleTouch:(id)a3;
- (void)_setupGestures;
- (void)_tearDownGestures;
- (void)_updateContextMenuInteraction;
- (void)_updateScrolledToStates:(id)a3;
- (void)actionPerformer:(id)a3 didChangeState:(unint64_t)a4;
- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5;
- (void)contextMenuInteraction:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)dragController:(id)a3 draggedAssetReferencesDidChange:(id)a4;
- (void)dragController:(id)a3 dropTargetAssetReferenceDidChange:(id)a4;
- (void)ensureSwipeDismissalInteraction;
- (void)handleLongPress:(id)a3;
- (void)invalidateContextMenuInteraction;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)performActionWithType:(id)a3;
- (void)scrollViewControllerDidChange;
- (void)scrollViewControllerDidScroll:(id)a3;
- (void)setContextMenuInteraction:(id)a3;
- (void)setCurrentTouchAction:(id)a3;
- (void)setHiddenAssetReferences:(id)a3;
- (void)setNavigatedAssetReference:(id)a3;
- (void)setNavigatedAssetSectionDataSourceManager:(id)a3;
- (void)swipeSelectionManager:(id)a3 extendSelectionInDirection:(unint64_t)a4;
- (void)swipeSelectionManagerAutomaticallyTransitionToMultiSelectMode:(id)a3;
- (void)swipeSelectionManagerDidAutoScroll:(id)a3;
- (void)toggleSelectMode;
- (void)touchingUIGestureRecognizerDidBeginTouching:(id)a3;
- (void)viewDidChange;
- (void)willEndPreviewingForContextMenuInteraction:(id)a3;
@end

@implementation PXPhotosViewUIInteraction

- (PXPhotosViewUIInteractionDelegate)uiInteractionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_uiInteractionDelegate);

  return WeakRetained;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v10 = a3;
  if (NavigatedSectionDataSourceObservationContext != a5)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXPhotosViewUIInteraction.m" lineNumber:1384 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v8 = [(PXPhotosViewInteraction *)self interactionHelper];
  [v8 navigatedSectionDataSourceManagerDidChangeForInteraction:self];
}

- (void)_updateScrolledToStates:(id)a3
{
  v4 = a3;
  v5 = [v4 isScrolledAtEdge:1 tolerance:0.0];
  v6 = [v4 isScrolledAtEdge:3 tolerance:10.0];

  v7 = [(PXPhotosViewInteraction *)self viewModel];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__PXPhotosViewUIInteraction__updateScrolledToStates___block_invoke;
  v8[3] = &__block_descriptor_34_e53_v16__0__PXPhotosViewModel_PXMutablePhotosViewModel__8l;
  v9 = v5;
  v10 = v6;
  [v7 performChanges:v8];
}

void __53__PXPhotosViewUIInteraction__updateScrolledToStates___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setScrolledToTop:v3];
  [v4 setScrolledToBottom:*(a1 + 33)];
}

- (void)scrollViewControllerDidScroll:(id)a3
{
  v8 = a3;
  v4 = [(PXPhotosViewUIInteraction *)self dragController];
  v5 = [v4 isDragSessionActive];

  if (v5)
  {
    v6 = [(PXGInteraction *)self layout];
    [v6 clearLastVisibleAreaAnchoringInformation];
  }

  v7 = [(PXPhotosViewUIInteraction *)self hoverGesture];
  [v7 px_cancel];

  [(PXPhotosViewUIInteraction *)self _updateScrolledToStates:v8];
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v4 = [(PXPhotosViewInteraction *)self viewModel:a3];
  v5 = [v4 allowedGesturesKind];

  return v5 != 1;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PXPhotosViewUIInteraction *)self tapGesture];

  if (v8 == v7 && ([(PXPhotosViewUIInteraction *)self doubleTapGesture], v9 = objc_claimAutoreleasedReturnValue(), v9, v9 == v6))
  {
    v12 = [(PXPhotosViewInteraction *)self viewModel];
    if ([v12 allowsMacStyleSelection])
    {
      LOBYTE(v10) = 0;
    }

    else
    {
      v13 = [(PXPhotosViewInteraction *)self viewModel];
      v10 = [v13 isInSelectMode] ^ 1;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PXPhotosViewUIInteraction *)self pinchGesture];
  if (v8 == v6)
  {
    v10 = [(PXPhotosViewUIInteraction *)self scrollView];
    v11 = [v10 panGestureRecognizer];
    v9 = v11 == v7 || self->_longPressGesture == v7;
  }

  else
  {
    v9 = 0;
  }

  v12 = [(PXPhotosViewUIInteraction *)self tapGesture];
  if (v12 == v6)
  {
    v13 = [(PXPhotosViewUIInteraction *)self touchGesture];
    if (v13 == v7)
    {
      v9 = 1;
    }

    else
    {
      v14 = [(PXPhotosViewUIInteraction *)self touchingGesture];
      v15 = v14 == v7;

      v9 |= v15;
    }
  }

  v16 = [(PXPhotosViewUIInteraction *)self touchingGesture];

  if (v16 == v6)
  {
    v21 = 0;
    v17 = [(UILongPressGestureRecognizer *)v7 px_isPanGestureRecognizerOfScrollView:&v21];
    v18 = v21;
    v19 = v18;
    v9 = !v17 || ([v18 px_isDecelerating] & 1) == 0;
  }

  return v9 & 1;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotosViewUIInteraction *)self pinchGesture];

  if (v5 == v4)
  {
    v7 = [(PXPhotosViewUIInteraction *)self swipeSelectionManager];
    LOBYTE(v6) = [v7 state] == 0;
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  v8 = [(PXPhotosViewUIInteraction *)self doubleTapGesture];

  if (v8 == v4)
  {
    v9 = [(PXPhotosViewInteraction *)self viewModel];
    v10 = [v9 isInSelectMode];

    LOBYTE(v6) = (v10 ^ 1) & v6;
  }

  v11 = [(PXGInteraction *)self view];
  [v4 locationInView:v11];
  v12 = [v11 hitTest:0 withEvent:?];
  v13 = [(PXPhotosViewInteraction *)self viewModel];
  v14 = [v13 isEmbedded];

  if (v14)
  {
    if (MEMORY[0x21CEE04B0]() && _os_feature_enabled_impl())
    {
      if (v12 != v11)
      {
        v15 = [(PXPhotosViewUIInteraction *)self scrollView];
        if (v12 != v15)
        {
          v16 = [v12 superview];
          v17 = [(PXPhotosViewUIInteraction *)self scrollView];
          if (v16 == v17)
          {
            LOBYTE(v6) = 1;
          }

          else
          {
            v6 = [v12 isUserInteractionEnabled] ^ 1;
          }

          goto LABEL_20;
        }

        goto LABEL_17;
      }
    }

    else if (v12 != v11)
    {
      v15 = [(PXPhotosViewUIInteraction *)self scrollView];
      if (v12 != v15)
      {
        v6 = [v12 isUserInteractionEnabled] ^ 1;
LABEL_20:

        goto LABEL_21;
      }

LABEL_17:
      LOBYTE(v6) = 1;
      goto LABEL_20;
    }

    LOBYTE(v6) = 1;
  }

LABEL_21:
  objc_opt_class();
  v18 = v6 & ~objc_opt_isKindOfClass();

  return v18 & 1;
}

- (id)presentationEnvironmentForActionPerformer:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotosViewInteraction *)self contentController];
  v6 = [v5 delegate];

  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 presentationEnvironmentForActionPerformer:v4];
  }

  else
  {
    v8 = MEMORY[0x277D3CE40];
    v9 = [(PXPhotosViewInteraction *)self presentingViewController];
    v7 = [v8 defaultPresenterWithViewController:v9];
  }

  return v7;
}

- (BOOL)actionPerformer:(id)a3 dismissViewController:(id)a4 completionHandler:(id)a5
{
  v6 = a5;
  v7 = [(PXPhotosViewInteraction *)self presentingViewController];
  v8 = [v7 presentedViewController];

  if (v8)
  {
    [v7 dismissViewControllerAnimated:1 completion:v6];
  }

  return v8 != 0;
}

- (void)actionPerformer:(id)a3 didChangeState:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  v15 = v6;
  if (a4 == 10)
  {
    v8 = [v6 shouldPreventTargetedDismissalAnimation];
    v7 = v15;
    if (v8)
    {
      v9 = [(PXPhotosViewInteraction *)self interactionHelper];
      [v9 preventTargetedContextMenuDismissalAnimationForViewInteraction:self];

      v7 = v15;
    }
  }

  v10 = [v7 actionType];
  v11 = [v10 isEqualToString:*MEMORY[0x277D3CE58]];

  if (a4 == 30 && v11)
  {
    [(PXPhotosViewUIInteraction *)self _pickNavigatedAssetReference];
  }

  v12 = [(PXPhotosViewInteraction *)self viewModel];
  v13 = [v12 allowsMultiSelectMenu];
  v14 = [v12 isInSelectMode];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v15 shouldExitSelectModeForState:a4] & v13 & v14) == 1)
  {
    [(PXPhotosViewUIInteraction *)self toggleSelectMode];
  }
}

- (void)swipeSelectionManagerDidAutoScroll:(id)a3
{
  v3 = [(PXGInteraction *)self layout];
  [v3 clearLastVisibleAreaAnchoringInformation];
}

- (PXSimpleIndexPath)_indexPathForAssetAtLocation:(SEL)a3 withPadding:(CGPoint)a4 forSwipeSelectionManager:(UIEdgeInsets)a5
{
  right = a5.right;
  bottom = a5.bottom;
  left = a5.left;
  top = a5.top;
  y = a4.y;
  x = a4.x;
  v14 = [a6 scrollView];
  v15 = [(PXPhotosViewInteraction *)self assetReferenceAtLocation:v14 withPadding:x inCoordinateSpace:y, top, left, bottom, right];

  if (v15 && (-[PXPhotosViewInteraction viewModel](self, "viewModel"), v17 = objc_claimAutoreleasedReturnValue(), [v17 currentDataSource], v18 = objc_claimAutoreleasedReturnValue(), v17, objc_msgSend(v18, "assetReferenceForAssetReference:", v15), v20 = objc_claimAutoreleasedReturnValue(), v15, v18, v20))
  {
    [v20 indexPath];
  }

  else
  {
    v19 = *(MEMORY[0x277D3CFD8] + 16);
    *&retstr->dataSourceIdentifier = *MEMORY[0x277D3CFD8];
    *&retstr->item = v19;
  }

  return result;
}

- (void)swipeSelectionManager:(id)a3 extendSelectionInDirection:(unint64_t)a4
{
  v6 = [(PXPhotosViewInteraction *)self presentingViewController];
  v7 = [v6 presentedViewController];

  if (!v7 && [(PXPhotosViewUIInteraction *)self ensureSelectMode])
  {
    v8 = [(PXPhotosViewInteraction *)self contentController];
    [v8 extendSelectionInDirection:a4];

    v9 = [(PXPhotosViewUIInteraction *)self uiInteractionDelegate];
    [v9 uiInteractionDidExtendSelection:self];
  }
}

- (id)swipeSelectionManager:(id)a3 indexPathSetFromIndexPath:(PXSimpleIndexPath *)a4 toIndexPath:(PXSimpleIndexPath *)a5
{
  v9 = [a3 selectionManager];
  v10 = [v9 dataSourceManager];
  v11 = [v10 dataSource];

  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v16 = [MEMORY[0x277CCA890] currentHandler];
    v19 = objc_opt_class();
    v18 = NSStringFromClass(v19);
    v20 = [v11 px_descriptionForAssertionMessage];
    [v16 handleFailureInMethod:a2 object:self file:@"PXPhotosViewUIInteraction.m" lineNumber:1177 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"swipeSelectionManager.selectionManager.dataSourceManager.dataSource", v18, v20}];
  }

  else
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    [v16 handleFailureInMethod:a2 object:self file:@"PXPhotosViewUIInteraction.m" lineNumber:1177 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"swipeSelectionManager.selectionManager.dataSourceManager.dataSource", v18}];
  }

LABEL_3:
  v12 = *&a4->item;
  v22[0] = *&a4->dataSourceIdentifier;
  v22[1] = v12;
  v13 = *&a5->item;
  v21[0] = *&a5->dataSourceIdentifier;
  v21[1] = v13;
  v14 = [v11 indexPathSetFromIndexPath:v22 toIndexPath:v21];

  return v14;
}

- (PXSimpleIndexPath)swipeSelectionManager:(SEL)a3 itemIndexPathClosestAboveLocation:(id)a4
{
  y = a5.y;
  x = a5.x;
  v15 = a4;
  v9 = [(PXGInteraction *)self layout];
  [v9 padding];

  *&retstr->dataSourceIdentifier = 0u;
  *&retstr->item = 0u;
  PXEdgeInsetsMake();
  [(PXPhotosViewUIInteraction *)self _indexPathForAssetAtLocation:v15 withPadding:x forSwipeSelectionManager:y, v10, v11, v12, v13];

  return result;
}

- (PXSimpleIndexPath)swipeSelectionManager:(SEL)a3 itemIndexPathClosestLeadingLocation:(id)a4
{
  y = a5.y;
  x = a5.x;
  swipeSelectionManager = self->_swipeSelectionManager;
  v16 = a4;
  v10 = [(PXSwipeSelectionManager *)swipeSelectionManager scrollView];
  [v10 frame];

  *&retstr->dataSourceIdentifier = 0u;
  *&retstr->item = 0u;
  PXEdgeInsetsMake();
  [(PXPhotosViewUIInteraction *)self _indexPathForAssetAtLocation:v16 withPadding:x forSwipeSelectionManager:y, v11, v12, v13, v14];

  return result;
}

- (PXSimpleIndexPath)swipeSelectionManager:(SEL)a3 itemIndexPathAtLocation:(id)a4
{
  *&retstr->dataSourceIdentifier = 0u;
  *&retstr->item = 0u;
  return [(PXPhotosViewUIInteraction *)self _indexPathForAssetAtLocation:a4 withPadding:a5.x forSwipeSelectionManager:a5.y, *MEMORY[0x277D3CF88], *(MEMORY[0x277D3CF88] + 8), *(MEMORY[0x277D3CF88] + 16), *(MEMORY[0x277D3CF88] + 24)];
}

- (void)swipeSelectionManagerAutomaticallyTransitionToMultiSelectMode:(id)a3
{
  v3 = [(PXPhotosViewInteraction *)self viewModel];
  if (([v3 isInSelectMode] & 1) == 0 && objc_msgSend(v3, "canEnterSelectMode"))
  {
    [v3 performChanges:&__block_literal_global_68];
  }
}

- (BOOL)swipeSelectionManagerIsInMultiSelectMode:(id)a3
{
  v3 = [(PXPhotosViewInteraction *)self viewModel];
  v4 = [v3 canSwipeSelect];

  return v4;
}

- (id)dragController:(id)a3 itemProviderForAssetReference:(id)a4
{
  v5 = a4;
  v6 = [(PXPhotosViewInteraction *)self viewModel];
  if ([v6 viewDelegateRespondsTo:2048])
  {
    v7 = [v6 viewDelegate];
    v8 = [(PXPhotosViewInteraction *)self presentingViewController];
    v9 = [v7 photosViewController:v8 dragItemProviderForAssetReference:v5];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)dragController:(id)a3 dropTargetAssetReferenceDidChange:(id)a4
{
  v5 = a4;
  v6 = [(PXPhotosViewInteraction *)self viewModel];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __78__PXPhotosViewUIInteraction_dragController_dropTargetAssetReferenceDidChange___block_invoke;
  v8[3] = &unk_278298E60;
  v9 = v5;
  v7 = v5;
  [v6 performChanges:v8];
}

- (void)dragController:(id)a3 draggedAssetReferencesDidChange:(id)a4
{
  v5 = a4;
  v6 = [(PXPhotosViewInteraction *)self viewModel];
  v7 = [v6 draggedAssetReferences];
  v8 = [v7 count];
  v9 = [v5 count];

  if (v8 > v9)
  {
    v10 = [(PXGInteraction *)self layout];
    v11 = [v10 createFenceWithType:2];
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __76__PXPhotosViewUIInteraction_dragController_draggedAssetReferencesDidChange___block_invoke;
  v13[3] = &unk_278298E60;
  v14 = v5;
  v12 = v5;
  [v6 performChanges:v13];
}

- (BOOL)dragController:(id)a3 shouldResizeCancelledPreviewForAssetReference:(id)a4
{
  v4 = [(PXGInteraction *)self layout:a3];
  v5 = [v4 hiddenSpriteIndexes];
  v6 = [v5 count] == 0;

  return v6;
}

- (BOOL)dragController:(id)a3 shouldSelectRearrangedAssetReferences:(id)a4
{
  v4 = [(PXPhotosViewInteraction *)self viewModel:a3];
  v5 = [v4 isInSelectMode];

  return v5;
}

- (id)dragControllerAssetReferenceForBeginningSession:(id)a3
{
  v4 = [(PXPhotosViewInteraction *)self interactionHelper];
  if ([v4 isContextMenuInteractionActiveForViewInteraction:self])
  {
    v5 = [(PXPhotosViewUIInteraction *)self navigatedAssetReference];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)dragController:(id)a3 dropTargetAssetReferenceForLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = [(PXGInteraction *)self view];
  v7 = [v6 dropTargetObjectReferenceForLocation:{x, y}];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)dragController:(id)a3 draggableAssetReferenceAtLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = [a3 contentView];
  v8 = [(PXPhotosViewInteraction *)self assetReferenceAtLocation:v7 withPadding:x inCoordinateSpace:y, *MEMORY[0x277D3CF88], *(MEMORY[0x277D3CF88] + 8), *(MEMORY[0x277D3CF88] + 16), *(MEMORY[0x277D3CF88] + 24)];

  return v8;
}

- (id)_contextMenuInteraction:(id)a3 styleForMenuWithConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PXPhotosViewInteraction *)self viewModel];
  if ([v8 viewDelegateRespondsTo:1024])
  {
    v9 = [v8 viewDelegate];
    v10 = [(PXPhotosViewInteraction *)self presentingViewController];
    v11 = [v9 photosViewController:v10 contextMenuInteraction:v6 styleForMenuWithConfiguration:v7];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(PXPhotosViewInteraction *)self viewModel];
  if ([v10 viewDelegateRespondsTo:512])
  {
    v11 = [v10 viewDelegate];
    v12 = [(PXPhotosViewInteraction *)self presentingViewController];
    [v11 photosViewController:v12 contextMenuInteraction:v13 willEndForConfiguration:v8 animator:v9];
  }
}

- (id)_contextMenuInteraction:(id)a3 accessoriesForMenuWithConfiguration:(id)a4
{
  v5 = a3;
  v6 = [(PXPhotosViewInteraction *)self viewModel];
  if ([v6 viewDelegateRespondsTo:256] && (objc_msgSend(v6, "isInSelectMode") & 1) == 0)
  {
    v8 = [v6 viewDelegate];
    v9 = [(PXPhotosViewInteraction *)self presentingViewController];
    v10 = [(PXPhotosViewUIInteraction *)self navigatedAssetReference];
    v7 = [v8 photosViewController:v9 accessoriesForContextMenuInteraction:v5 assetReference:v10];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)contextMenuInteraction:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [(PXPhotosViewInteraction *)self viewModel];
  if ([v9 viewDelegateRespondsTo:128])
  {
    v10 = [(PXPhotosViewInteraction *)self presentingViewController];
    [v8 setPreferredCommitStyle:1];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __110__PXPhotosViewUIInteraction_contextMenuInteraction_willPerformPreviewActionForMenuWithConfiguration_animator___block_invoke;
    v12[3] = &unk_278298EE0;
    v13 = v9;
    v14 = v10;
    v15 = v7;
    v11 = v10;
    [v8 addCompletion:v12];
  }
}

void __110__PXPhotosViewUIInteraction_contextMenuInteraction_willPerformPreviewActionForMenuWithConfiguration_animator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) viewDelegate];
  [v2 photosViewController:*(a1 + 40) commitPreviewViewControllerForContextMenuInteraction:*(a1 + 48)];
}

- (id)contextMenuInteraction:(id)a3 previewForHighlightingMenuWithConfiguration:(id)a4
{
  v5 = [(PXPhotosViewUIInteraction *)self navigatedAssetReference:a3];
  v6 = [(PXPhotosViewUIInteraction *)self targetedPreviewForAssetReference:v5];

  return v6;
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  v5 = a3;
  if ([(PXPhotosViewUIInteraction *)self canStartContextMenuInteraction:v5])
  {
    v6 = [(PXPhotosViewInteraction *)self viewModel];
    if ([v6 viewDelegateRespondsTo:64])
    {
      v7 = [v6 viewDelegate];
      v8 = [(PXPhotosViewInteraction *)self presentingViewController];
      v9 = [(PXPhotosViewUIInteraction *)self navigatedAssetReference];
      v10 = [v7 photosViewController:v8 configurationForContextMenuInteraction:v5 assetReference:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)targetedPreviewForAssetReference:(id)a3
{
  v17 = 0;
  v4 = [(PXPhotosViewUIInteraction *)self regionOfInterestForAssetReference:a3 image:&v17];
  v5 = v17;
  v6 = [(PXPhotosViewUIInteraction *)self scrollView];
  v7 = [v6 coordinateSpace];
  [v4 rectInCoordinateSpace:v7];

  if (!v5)
  {
    v9 = [v4 placeholderViewFactory];

    if (!v9)
    {
      goto LABEL_7;
    }

    v10 = [v4 placeholderViewFactory];
    v8 = (v10)[2](v10, v4);

    if (!v8)
    {
      goto LABEL_7;
    }

LABEL_6:
    v11 = objc_alloc(MEMORY[0x277D758E0]);
    PXRectGetCenter();
    v12 = [v11 initWithContainer:v6 center:?];
    v13 = objc_alloc_init(MEMORY[0x277D758D8]);
    v14 = [MEMORY[0x277D75348] clearColor];
    [v13 setBackgroundColor:v14];

    v15 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:v8 parameters:v13 target:v12];
    goto LABEL_8;
  }

  v8 = PXPreviewImageViewForImage();
  if (v8)
  {
    goto LABEL_6;
  }

LABEL_7:
  v15 = 0;
LABEL_8:

  return v15;
}

- (void)willEndPreviewingForContextMenuInteraction:(id)a3
{
  v3 = [(PXPhotosViewInteraction *)self contentController];
  [v3 stopForceIncludingAllAssetsInDataSource];
}

- (BOOL)commitPreviewForContextMenuInteraction:(id)a3
{
  v4 = [(PXPhotosViewInteraction *)self viewModel];
  v5 = [v4 allowsPickAssetAction];

  if (!v5)
  {
    return 0;
  }

  return [(PXPhotosViewUIInteraction *)self _pickNavigatedAssetReference];
}

- (BOOL)allowsPreviewCommittingForContextMenuInteraction:(id)a3
{
  v4 = [(PXPhotosViewInteraction *)self viewModel];
  v5 = [v4 allowsOneUpPresentation];
  v6 = [v4 allowsPickAssetAction];
  v7 = [(PXPhotosViewUIInteraction *)self navigatedAssetReference];
  if (v7 && (v8 = v7, -[PXPhotosViewUIInteraction navigatedAssetReference](self, "navigatedAssetReference"), v9 = objc_claimAutoreleasedReturnValue(), [v9 asset], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_opt_respondsToSelector(), v10, v9, v8, (v11 & 1) != 0))
  {
    v12 = [(PXPhotosViewUIInteraction *)self navigatedAssetReference];
    v13 = [v12 asset];
    v14 = [v13 isContentAnalyzedAsPreviewable];
  }

  else
  {
    v14 = 1;
  }

  return (v5 | v6) & v14 & 1;
}

- (BOOL)allowsActionsForContextMenuInteraction:(id)a3
{
  v3 = [(PXPhotosViewInteraction *)self viewModel];
  v4 = [v3 isInSelectMode];
  if ([v3 allowsPickAssetAction])
  {
    v5 = 1;
  }

  else
  {
    v7 = [v3 allowsQuickLookAction];
    v5 = 1;
    if (v4 && (v7 & 1) == 0 && ([v3 allowsMacStyleSelection] & 1) == 0)
    {
      v5 = [v3 allowsMultiSelectMenu];
    }
  }

  return v5;
}

- (BOOL)canStartContextMenuInteraction:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotosViewInteraction *)self viewModel];
  if ([v5 viewDelegateRespondsTo:32])
  {
    v6 = [v5 viewDelegate];
    v7 = [(PXPhotosViewInteraction *)self presentingViewController];
    v8 = [v6 allowsContextMenuInteractionForPhotosViewController:v7];
  }

  else
  {
    v8 = 1;
  }

  v9 = [(PXPhotosViewInteraction *)self zoomablePhotosInteraction];
  v10 = [v9 viewModel];

  v11 = [(PXGInteraction *)self view];
  [v4 locationInView:v11];
  v13 = v12;
  v15 = v14;

  v16 = [(PXPhotosViewInteraction *)self assetReferenceAtLocation:v11 withPadding:v13 inCoordinateSpace:v15, *MEMORY[0x277D3CF90], *(MEMORY[0x277D3CF90] + 8), *(MEMORY[0x277D3CF90] + 16), *(MEMORY[0x277D3CF90] + 24)];
  if (v10)
  {
    v17 = 1;
    if (!v8)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  v18 = [(PXPhotosViewInteraction *)self zoomablePhotosInteraction];
  v19 = [v18 viewModelProvider];
  v10 = [v19 provideViewModelForAssetReference:v16];

  v17 = [v10 isDisplayingIndividualItems];
  v20 = [v10 assetsDataSourceManager];
  v21 = [v20 dataSource];
  v22 = [v21 assetReferenceForAssetReference:v16];

  if (!v22)
  {
    v17 = 1;
  }

  if (v8)
  {
LABEL_10:
    v23 = [(PXPhotosViewInteraction *)self zoomablePhotosInteraction];
    v24 = (v23 == 0) | v17;

    LOBYTE(v8) = 0;
    if ((v24 & 1) != 0 && v16)
    {
      [(PXPhotosViewUIInteraction *)self setNavigatedAssetReference:v16];
      LOBYTE(v8) = 1;
    }
  }

LABEL_13:

  return v8;
}

- (void)touchingUIGestureRecognizerDidBeginTouching:(id)a3
{
  v4 = a3;
  v5 = [(PXGInteraction *)self view];
  [v4 locationInView:v5];
  v7 = v6;
  v9 = v8;

  v10 = [(PXGInteraction *)self view];
  v13 = [v10 hitTestResultAtPoint:{v7, v9}];

  if (objc_opt_respondsToSelector())
  {
    v11 = [v13 px_photosViewTouchableHitTestResultTouchAction];
    v12 = v11[2]();
    [(PXPhotosViewUIInteraction *)self setCurrentTouchAction:v12];
  }
}

- (void)setCurrentTouchAction:(id)a3
{
  v4 = a3;
  currentTouchAction = self->_currentTouchAction;
  if (currentTouchAction != v4)
  {
    v8 = v4;
    if (currentTouchAction)
    {
      currentTouchAction[2]();
      v4 = v8;
    }

    v6 = _Block_copy(v4);
    v7 = self->_currentTouchAction;
    self->_currentTouchAction = v6;

    v4 = v8;
  }

  MEMORY[0x2821F96F8](currentTouchAction, v4);
}

- (void)_handleTouch:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 state];
  if ((v5 - 3) < 3)
  {
    v6 = [(PXPhotosViewInteraction *)self viewModel];
    v7 = [v6 selectionManager];
    [v7 performChanges:&__block_literal_global_57_8003];

    goto LABEL_24;
  }

  if (v5 != 1)
  {
    goto LABEL_24;
  }

  v8 = [(PXGInteraction *)self view];
  v39 = v4;
  [v4 locationInView:v8];
  v10 = v9;
  v12 = v11;

  v13 = [(PXGInteraction *)self view];
  v14 = [v13 hitTestResultsAtPoint:{v10, v12}];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = v14;
  v15 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (!v15)
  {
    goto LABEL_23;
  }

  v16 = v15;
  v17 = *v48;
  v18 = *MEMORY[0x277D3CF78];
  v19 = @"PXPhotosLayoutHitTestIdentifierAsset";
  while (2)
  {
    for (i = 0; i != v16; ++i)
    {
      if (*v48 != v17)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v47 + 1) + 8 * i);
      v22 = [v21 identifier];
      if (v22 == v19)
      {
      }

      else
      {
        v23 = v22;
        v24 = [(__CFString *)v22 isEqualToString:v19];

        if (!v24)
        {
          continue;
        }
      }

      v25 = [(PXPhotosViewInteraction *)self viewModel];
      v26 = [v21 userData];
      v45 = 0u;
      v46 = 0u;
      v27 = [v25 currentDataSource];
      v28 = v27;
      if (v27)
      {
        [v27 indexPathForAssetReference:v26];
      }

      else
      {
        v45 = 0u;
        v46 = 0u;
      }

      if (v45 != v18)
      {
        v29 = [v25 currentDataSource];
        v41 = v25;
        v30 = v26;
        v31 = v16;
        v32 = v19;
        v33 = v17;
        v34 = v18;
        v35 = self;
        v36 = [v29 identifier];

        v37 = v45 == v36;
        self = v35;
        v18 = v34;
        v17 = v33;
        v19 = v32;
        v16 = v31;
        v26 = v30;
        v25 = v41;
        if (v37)
        {
          v38 = [v41 selectionManager];
          v42[0] = MEMORY[0x277D85DD0];
          v42[1] = 3221225472;
          v42[2] = __42__PXPhotosViewUIInteraction__handleTouch___block_invoke;
          v42[3] = &__block_descriptor_64_e37_v16__0___PXMutableSelectionManager__8l;
          v43 = v45;
          v44 = v46;
          [v38 performChanges:v42];

          goto LABEL_23;
        }
      }
    }

    v16 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
    if (v16)
    {
      continue;
    }

    break;
  }

LABEL_23:

  v4 = v39;
LABEL_24:
}

uint64_t __42__PXPhotosViewUIInteraction__handleTouch___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 48);
  v4[0] = *(a1 + 32);
  v4[1] = v2;
  return [a2 setPressedIndexPath:v4];
}

uint64_t __42__PXPhotosViewUIInteraction__handleTouch___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(MEMORY[0x277D3CFD8] + 16);
  v4[0] = *MEMORY[0x277D3CFD8];
  v4[1] = v2;
  return [a2 setPressedIndexPath:v4];
}

- (void)_handlePinch:(id)a3
{
  v18 = a3;
  if ([v18 state] == 1)
  {
    v4 = [(PXPhotosViewUIInteraction *)self scrollView];
    v5 = [v4 panGestureRecognizer];
    [v5 px_cancel];
  }

  v6 = [(PXPhotosViewInteraction *)self viewModel];
  v7 = [(PXGInteraction *)self view];
  if (([v6 isInSelectMode] & 1) != 0 || !objc_msgSend(v6, "canPresentOneUp"))
  {
    v10 = 1;
  }

  else
  {
    v8 = [(PXPhotosViewInteraction *)self interactionHelper];
    v9 = [v8 handlePresentingPinchGestureRecognizer:v18 forViewInteraction:self];

    v10 = 0;
    if (v9)
    {
      v11 = 1;
      goto LABEL_9;
    }
  }

  v12 = [(PXPhotosViewInteraction *)self zoomablePhotosInteraction];
  v11 = [v12 handlePinch:v18];

LABEL_9:
  v13 = [v18 state] != 1 && objc_msgSend(v18, "state") != 2;
  if (((v11 | v13) & 1) == 0)
  {
    [v18 velocity];
    v15 = v14 <= 0.0 ? 1 : v10;
    if ((v15 & 1) == 0)
    {
      [v18 locationInView:v7];
      v16 = [PXPhotosViewInteraction assetReferenceAtLocation:"assetReferenceAtLocation:withPadding:inCoordinateSpace:" withPadding:v7 inCoordinateSpace:?];
      if (v16)
      {
        v17 = [(PXPhotosViewInteraction *)self interactionHelper];
        [v17 presentOneUpForAssetReference:v16 style:2];
      }
    }
  }
}

- (void)_handlePress:(id)a3
{
  if ([a3 state] == 3)
  {
    v6 = [(PXPhotosViewInteraction *)self viewModel];
    v4 = [v6 singleSelectedAssetReference];
    if (v4 && ([v6 isInSelectMode] & 1) == 0 && objc_msgSend(v6, "canPresentOneUp"))
    {
      v5 = [(PXPhotosViewInteraction *)self interactionHelper];
      [v5 presentOneUpForAssetReference:v4 style:1];
    }
  }
}

- (void)handleLongPress:(id)a3
{
  v20 = a3;
  if ([v20 state] == 1)
  {
    v4 = [(PXGInteraction *)self view];
    [v20 locationInView:v4];
    v6 = v5;
    v8 = v7;
    v9 = [PXPhotosViewInteraction assetReferenceAtLocation:"assetReferenceAtLocation:withPadding:inCoordinateSpace:" withPadding:v4 inCoordinateSpace:?];
    v10 = [(PXPhotosViewInteraction *)self presentingViewController];
    v11 = [v10 canPerformAction:sel_paste_ withSender:v20];

    if (v11)
    {
      v12 = [(PXPhotosViewInteraction *)self viewModel];
      v13 = [v12 isInSelectMode];

      if ((v13 & 1) == 0)
      {
        [v4 becomeFirstResponder];
        v14 = *MEMORY[0x277CBF3A8];
        v15 = *(MEMORY[0x277CBF3A8] + 8);
        if (v9)
        {
          v16 = [(PXPhotosViewUIInteraction *)self regionOfInterestForAssetReference:v9];
          [v16 rectInCoordinateSpace:v4];
          PXRectGetCenter();
          v6 = v17;
          v8 = v18;
        }

        v19 = [MEMORY[0x277D75718] sharedMenuController];
        [v19 showMenuFromView:v4 rect:{v6, v8, v14, v15}];
      }
    }
  }
}

- (void)_handleDoubleTap:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 state] == 3)
  {
    v5 = [(PXPhotosViewInteraction *)self viewModel];
    if ([v5 viewDelegateRespondsTo:16])
    {
      v6 = [(PXGInteraction *)self view];
      [v4 locationInView:v6];
      v8 = v7;
      v10 = v9;

      v11 = [(PXGInteraction *)self view];
      v12 = [v11 hitTestResultsAtPoint:{v8, v10}];

      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v13 = v12;
      v14 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v27;
        v25 = v5;
        while (2)
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v27 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v26 + 1) + 8 * i);
            v19 = [v18 identifier];
            if (v19 == @"PXPhotosLayoutHitTestIdentifierAsset")
            {

LABEL_14:
              v22 = [v18 userData];
              v5 = v25;
              v23 = [v25 viewDelegate];
              v24 = [(PXPhotosViewInteraction *)self presentingViewController];
              [v23 photosViewController:v24 didDoubleTapAssetReference:v22];

              goto LABEL_15;
            }

            v20 = v19;
            v21 = [(__CFString *)v19 isEqualToString:@"PXPhotosLayoutHitTestIdentifierAsset"];

            if (v21)
            {
              goto LABEL_14;
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
          v5 = v25;
          if (v15)
          {
            continue;
          }

          break;
        }
      }

LABEL_15:
    }
  }
}

- (BOOL)_handleTapWithHitTestResult:(id)a3 keyModifierFlags:(int64_t)a4
{
  v59 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(PXPhotosViewInteraction *)self viewModel];
  if (a4 & 0x100000) != 0 && ([MEMORY[0x277D75658] isInHardwareKeyboardMode])
  {
    v8 = 0;
    v9 = 1;
  }

  else if ((a4 & 0x20000) != 0)
  {
    v8 = [MEMORY[0x277D75658] isInHardwareKeyboardMode];
    v9 = 0;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = [v6 identifier];
  if (v10 == @"PXPhotosLayoutHitTestIdentifierAsset")
  {

LABEL_16:
    v26 = [v6 userData];
    v27 = [(PXPhotosViewInteraction *)self zoomablePhotosInteraction];
    v28 = [v27 handleTapOnAssetReference:v26];

    if (v28)
    {
      v29 = [(PXGInteraction *)self layout];
      [v29 clearLastVisibleAreaAnchoringInformation];
    }

    else
    {
      if (!v8 || ![(PXPhotosViewUIInteraction *)self ensureSelectMode])
      {
        if ([v7 isInSelectMode])
        {
          if ([v7 allowsMacStyleSelection])
          {
            if (v9)
            {
              v53[0] = MEMORY[0x277D85DD0];
              v53[1] = 3221225472;
              v53[2] = __74__PXPhotosViewUIInteraction__handleTapWithHitTestResult_keyModifierFlags___block_invoke;
              v53[3] = &unk_278298E60;
              v54 = v26;
              [v7 performChanges:v53];
              v33 = v54;
            }

            else
            {
              v51[0] = MEMORY[0x277D85DD0];
              v51[1] = 3221225472;
              v51[2] = __74__PXPhotosViewUIInteraction__handleTapWithHitTestResult_keyModifierFlags___block_invoke_2;
              v51[3] = &unk_278298E60;
              v52 = v26;
              [v7 performChanges:v51];
              v33 = v52;
            }
          }

          else
          {
            v49[0] = MEMORY[0x277D85DD0];
            v49[1] = 3221225472;
            v49[2] = __74__PXPhotosViewUIInteraction__handleTapWithHitTestResult_keyModifierFlags___block_invoke_3;
            v49[3] = &unk_278298E60;
            v50 = v26;
            [v7 performChanges:v49];
            v33 = v50;
          }
        }

        else
        {
          if (!v9 || ([v7 allowsMacStyleSelection] & 1) != 0 || !-[PXPhotosViewUIInteraction ensureSelectMode](self, "ensureSelectMode"))
          {
            if (![v7 canPresentOneUp])
            {
              v36 = [v7 customAssetSelectionHandler];

              if (v36)
              {
                if ([v7 oneUpAssetsViewMode])
                {
                  [(PXPhotosViewUIInteraction *)self setNavigatedAssetReference:v26];
                  v37 = [v7 customAssetSelectionHandler];
                  [(PXPhotosViewUIInteraction *)self navigatedAssetSectionDataSourceManager];
                }

                else
                {
                  v37 = [v7 customAssetSelectionHandler];
                  [v7 dataSourceManager];
                }
                v42 = ;
                v43 = (v37)[2](v37, v26, v42);
              }

              else
              {
                if (![v7 viewDelegateRespondsTo:1])
                {
                  v38 = 0;
                  goto LABEL_50;
                }

                v37 = [v7 viewDelegate];
                v42 = [(PXPhotosViewInteraction *)self presentingViewController];
                v43 = [v37 photosViewController:v42 didPickAssetReference:v26];
              }

              v38 = v43;

LABEL_50:
              goto LABEL_51;
            }

            v35 = [(PXPhotosViewInteraction *)self interactionHelper];
            [v35 presentOneUpForAssetReference:v26 style:0];

LABEL_49:
            v38 = 1;
            goto LABEL_50;
          }

          v34 = PFUIGetLog();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67110144;
            *&buf[4] = 1;
            *&buf[8] = 1024;
            *&buf[10] = [v7 allowsMacStyleSelection];
            *&buf[14] = 1024;
            LODWORD(v57) = [v7 isInSelectMode];
            WORD2(v57) = 2048;
            *(&v57 + 6) = a4;
            HIWORD(v57) = 1024;
            v58 = [MEMORY[0x277D75658] isInHardwareKeyboardMode];
            _os_log_impl(&dword_21ABF3000, v34, OS_LOG_TYPE_DEFAULT, "[PXPhotosViewUIInteraction] Handling tap wants toggle selection: %i. Allows mac style selection: %i. Select mode enabled: %i. Key modifier flags: %lu. Connected to hardware keyboard: %i.", buf, 0x24u);
          }

          v44 = MEMORY[0x277D85DD0];
          v45 = 3221225472;
          v46 = __74__PXPhotosViewUIInteraction__handleTapWithHitTestResult_keyModifierFlags___block_invoke_52;
          v47 = &unk_278298E60;
          v48 = v26;
          [v7 performChanges:&v44];
          v33 = v48;
        }

LABEL_48:
        v40 = [(PXPhotosViewInteraction *)self interactionHelper:v44];
        [v40 didMakeInteractiveSelectionChangeForInteraction:self];

        goto LABEL_49;
      }

      v30 = PFUIGetLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109888;
        *&buf[4] = 1;
        *&buf[8] = 1024;
        *&buf[10] = [v7 isInSelectMode];
        *&buf[14] = 2048;
        *&v57 = a4;
        WORD4(v57) = 1024;
        *(&v57 + 10) = [MEMORY[0x277D75658] isInHardwareKeyboardMode];
        _os_log_impl(&dword_21ABF3000, v30, OS_LOG_TYPE_DEFAULT, "[PXPhotosViewUIInteraction] Handling tap wants range selection: %i. Select mode enabled: %i. Key modifier flags: %lu. Connected to hardware keyboard: %i.", buf, 0x1Eu);
      }

      *buf = 0u;
      v57 = 0u;
      v31 = [v7 currentDataSource];
      v32 = v31;
      if (v31)
      {
        [v31 indexPathForAssetReference:v26];
      }

      else
      {
        *buf = 0u;
        v57 = 0u;
      }

      v29 = [v7 selectionManager];
      v39 = [(PXPhotosViewInteraction *)self contentController];
      v55[0] = *buf;
      v55[1] = v57;
      [v29 extendSelectionToItemIndexPath:v55 withDelegate:v39];
    }

    goto LABEL_48;
  }

  v11 = v10;
  v12 = [(__CFString *)v10 isEqualToString:@"PXPhotosLayoutHitTestIdentifierAsset"];

  if (v12)
  {
    goto LABEL_16;
  }

  v13 = [v6 identifier];
  v14 = v13;
  if (v13 == *MEMORY[0x277D73D40])
  {
  }

  else
  {
    v15 = [v13 isEqualToString:?];

    if ((v15 & 1) == 0)
    {
      v16 = [v6 identifier];
      if (v16 == @"PXPhotosLayoutHitTestIdentifierAccessoryCell")
      {
      }

      else
      {
        v17 = v16;
        v18 = [(__CFString *)v16 isEqualToString:@"PXPhotosLayoutHitTestIdentifierAccessoryCell"];

        if ((v18 & 1) == 0)
        {
          v19 = [(PXPhotosViewInteraction *)self contentController];
          v20 = [v19 overlayController];
          v21 = [v6 spriteReference];
          v22 = [v21 objectReference];
          v23 = [v20 canHandleObjectReference:v22];

          if (!v23)
          {
            v38 = 0;
            goto LABEL_51;
          }

          v24 = [(PXPhotosViewInteraction *)self contentController];
          v25 = [v24 overlayController];
          [v25 handleTap:v6];
        }
      }
    }
  }

  v38 = 1;
LABEL_51:

  return v38;
}

- (void)_handleTap:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 state] == 3)
  {
    v5 = [(PXGInteraction *)self view];
    [v4 locationInView:v5];
    v7 = v6;
    v9 = v8;

    v10 = [(PXGInteraction *)self view];
    v11 = [v10 hitTestResultsAtPoint:{v7, v9}];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v24;
      while (2)
      {
        v16 = 0;
        do
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v12);
          }

          if (-[PXPhotosViewUIInteraction _handleTapWithHitTestResult:keyModifierFlags:](self, "_handleTapWithHitTestResult:keyModifierFlags:", *(*(&v23 + 1) + 8 * v16), [v4 modifierFlags]))
          {
            v17 = 1;
            goto LABEL_12;
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    v17 = 0;
LABEL_12:

    v18 = [(PXPhotosViewInteraction *)self viewModel];
    v19 = v18;
    if ((v17 & 1) == 0 && ([v18 handlePrimaryAction:v4] & 1) == 0 && objc_msgSend(v19, "allowsMacStyleSelection"))
    {
      v20 = [v19 selectionManager];
      [v20 performChanges:&__block_literal_global_50_8010];
    }

    if ([v4 state] == 3 && objc_msgSend(v19, "viewDelegateRespondsTo:", 0x40000))
    {
      v21 = [v19 viewDelegate];
      v22 = [(PXPhotosViewInteraction *)self presentingViewController];
      [v21 photosViewController:v22 didReceiveUserInteraction:1];
    }
  }
}

- (BOOL)_handleHoverWithHitTestResult:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  if (v5 == @"PXPhotosLayoutHitTestIdentifierAsset")
  {
  }

  else
  {
    v6 = v5;
    v7 = [(__CFString *)v5 isEqualToString:@"PXPhotosLayoutHitTestIdentifierAsset"];

    if (!v7)
    {
      v8 = 0;
      goto LABEL_9;
    }
  }

  v9 = [(PXPhotosViewInteraction *)self viewModel];
  v10 = [v4 userData];
  v19 = 0u;
  v20 = 0u;
  v11 = [v9 currentDataSource];
  v12 = v11;
  if (v11)
  {
    [v11 indexPathForAssetReference:v10];
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  objc_initWeak(&location, self);
  v13 = [v9 selectionManager];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __59__PXPhotosViewUIInteraction__handleHoverWithHitTestResult___block_invoke;
  v15[3] = &__block_descriptor_64_e37_v16__0___PXMutableSelectionManager__8l;
  v16 = v19;
  v17 = v20;
  [v13 performChanges:v15];

  objc_destroyWeak(&location);
  v8 = 1;
LABEL_9:

  return v8;
}

uint64_t __59__PXPhotosViewUIInteraction__handleHoverWithHitTestResult___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 48);
  v4[0] = *(a1 + 32);
  v4[1] = v2;
  return [a2 setPendingIndexPath:v4];
}

- (void)_handleHoverWithHitTestResults:(id)a3 hoverGesture:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v7 state] != 1 && objc_msgSend(v7, "state") != 2)
  {
    goto LABEL_12;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (!v9)
  {
LABEL_11:

LABEL_12:
    v8 = [(PXPhotosViewInteraction *)self viewModel];
    v13 = [v8 selectionManager];
    [v13 performChanges:&__block_literal_global_48_8012];

    goto LABEL_13;
  }

  v10 = v9;
  v11 = *v15;
LABEL_5:
  v12 = 0;
  while (1)
  {
    if (*v15 != v11)
    {
      objc_enumerationMutation(v8);
    }

    if ([(PXPhotosViewUIInteraction *)self _handleHoverWithHitTestResult:*(*(&v14 + 1) + 8 * v12), v14])
    {
      break;
    }

    if (v10 == ++v12)
    {
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v10)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

LABEL_13:
}

uint64_t __73__PXPhotosViewUIInteraction__handleHoverWithHitTestResults_hoverGesture___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(MEMORY[0x277D3CFD8] + 16);
  v4[0] = *MEMORY[0x277D3CFD8];
  v4[1] = v2;
  return [a2 setPendingIndexPath:v4];
}

- (void)_handleHover:(id)a3
{
  v4 = a3;
  v5 = [(PXGInteraction *)self view];
  [v4 locationInView:v5];
  v7 = v6;
  v9 = v8;

  v10 = [(PXGInteraction *)self view];
  v11 = [v10 hitTestResultsAtPoint:{v7, v9}];

  [(PXPhotosViewUIInteraction *)self _handleHoverWithHitTestResults:v11 hoverGesture:v4];
}

- (void)setContextMenuInteraction:(id)a3
{
  v5 = a3;
  contextMenuInteraction = self->_contextMenuInteraction;
  if (contextMenuInteraction != v5)
  {
    v9 = v5;
    if (!v5 && contextMenuInteraction)
    {
      v7 = [(UIContextMenuInteraction *)contextMenuInteraction view];
      [v7 removeInteraction:self->_contextMenuInteraction];
    }

    objc_storeStrong(&self->_contextMenuInteraction, a3);
    v5 = v9;
    if (self->_contextMenuInteraction)
    {
      v8 = [(PXGInteraction *)self view];
      [v8 addInteraction:self->_contextMenuInteraction];

      v5 = v9;
    }
  }

  MEMORY[0x2821F96F8](contextMenuInteraction, v5);
}

- (id)adjustOneUpAssetReferenceToScrollToVisible:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotosViewUIInteraction *)self uiInteractionDelegate];
  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v6 = [v5 uiInteraction:self adjustOneUpAssetReferenceToScrollToVisible:v4];
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;

  return v7;
}

- (BOOL)presentOneUpForAssetReference:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotosViewInteraction *)self interactionHelper];
  v6 = [v5 presentOneUpForAssetReference:v4 style:0];

  return v6;
}

- (id)_createContextMenuActionManagerForSelection
{
  v3 = [(PXPhotosViewInteraction *)self viewModel];
  v4 = [v3 selectionManager];

  v5 = [objc_alloc(MEMORY[0x277D3CCD0]) initWithSelectionManager:v4];
  [v5 setPerformerDelegate:self];

  return v5;
}

- (id)createContextMenuActionManagerForNavigatedPreviewAssetReference
{
  v3 = [(PXPhotosViewUIInteraction *)self navigatedAssetReference];
  if (v3)
  {
    v4 = [(PXPhotosViewInteraction *)self viewModel];
    v5 = [v4 assetActionManager];
    v6 = objc_alloc(objc_opt_class());
    v7 = [v4 selectionManager];
    v8 = [v6 initWithSelectionManager:v7];

    [v8 setPerformerDelegate:self];
    v9 = [v4 allowsMultiSelectMenu];
    v10 = [v8 selectionManager];
    v11 = [v10 selectionSnapshot];

    v12 = [v11 selectedIndexPaths];
    [v3 indexPath];
    v13 = [v12 containsIndexPath:v19];

    if (!v13 || (v9 & 1) == 0)
    {
      [v8 setObjectReference:v3];
    }

    v14 = [v4 assetActionManager];
    [v8 setAdditionalPropertiesFromActionManager:v14];
  }

  else
  {
    v15 = PXAssertGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v19 = 0;
      _os_log_error_impl(&dword_21ABF3000, v15, OS_LOG_TYPE_ERROR, "Unable to retrieve asset reference for one up presentation action manager", v19, 2u);
    }

    v4 = [(PXPhotosViewInteraction *)self viewModel];
    v8 = 0;
  }

  v16 = [v4 assetActionManager];
  v17 = [v16 allowedActionTypes];
  [v8 setAllowedActionTypes:v17];

  return v8;
}

- (void)ensureSwipeDismissalInteraction
{
  if (!self->_edgeSwipeGesture)
  {
    v3 = objc_alloc_init(MEMORY[0x277D759A8]);
    v4 = [(PXGInteraction *)self view];
    v5 = [v4 effectiveUserInterfaceLayoutDirection];

    if (v5 == 1)
    {
      v6 = 8;
    }

    else
    {
      v6 = 2;
    }

    [(UIScreenEdgePanGestureRecognizer *)v3 setEdges:v6];
    v7 = [(PXGInteraction *)self view];
    [v7 addGestureRecognizer:v3];

    edgeSwipeGesture = self->_edgeSwipeGesture;
    self->_edgeSwipeGesture = v3;
    v9 = v3;

    v10 = [PXPhotosGridEdgeSwipeInteractiveDismissalTransition alloc];
    v13 = [(PXPhotosViewInteraction *)self presentingViewController];
    v11 = [(PXPhotosGridEdgeSwipeInteractiveDismissalTransition *)v10 initWithEdgeSwipeGesture:v9 viewController:v13];
    edgeSwipeDismissalInteraction = self->_edgeSwipeDismissalInteraction;
    self->_edgeSwipeDismissalInteraction = v11;
  }
}

- (id)_adjustHiddenAssetReferences:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotosViewUIInteraction *)self uiInteractionDelegate];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0 || (-[PXPhotosViewUIInteraction uiInteractionDelegate](self, "uiInteractionDelegate"), v7 = objc_claimAutoreleasedReturnValue(), [v7 uiInteraction:self adjustHiddenAssetReferences:v4], v8 = objc_claimAutoreleasedReturnValue(), v7, !v8))
  {
    v8 = v4;
  }

  return v8;
}

- (void)setHiddenAssetReferences:(id)a3
{
  v4 = [(PXPhotosViewUIInteraction *)self _adjustHiddenAssetReferences:a3];
  v5 = v4;
  if (v4 != self->_hiddenAssetReferences)
  {
    v10 = v4;
    v4 = [v4 isEqual:?];
    v5 = v10;
    if ((v4 & 1) == 0)
    {
      v6 = [v10 copy];
      hiddenAssetReferences = self->_hiddenAssetReferences;
      self->_hiddenAssetReferences = v6;

      v8 = [(PXGInteraction *)self layout];
      v9 = [v8 rootLayout];
      [v9 hideSpritesForObjectReferences:v10];

      v5 = v10;
    }
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (id)_makePlaceholderViewForRegionOfInterest:(id)a3 roiRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = [(PXGInteraction *)self view];
  v9 = [v8 resizableSnapshotViewFromRect:0 afterScreenUpdates:x withCapInsets:{y, width, height, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];

  return v9;
}

- (id)regionOfInterestForAssetReference:(id)a3 image:(CGImage *)a4 fallbackMediaProvider:(id)a5 shouldSnapshot:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a5;
  v12 = [(PXPhotosViewUIInteraction *)self uiInteractionDelegate];
  v13 = objc_opt_respondsToSelector();

  if ((v13 & 1) == 0 || (-[PXPhotosViewUIInteraction uiInteractionDelegate](self, "uiInteractionDelegate"), v14 = objc_claimAutoreleasedReturnValue(), [v14 uiInteraction:self customRegionOfInterestForAssetReference:v10], v15 = objc_claimAutoreleasedReturnValue(), v14, !v15))
  {
    v32 = 0;
    if (v6)
    {
      v16 = a4;
    }

    else
    {
      v16 = &v32;
    }

    v31.receiver = self;
    v31.super_class = PXPhotosViewUIInteraction;
    v15 = [(PXPhotosViewInteraction *)&v31 regionOfInterestForAssetReference:v10 image:v16 fallbackMediaProvider:v11 shouldSnapshot:v6];
    if (a4 && !v6)
    {
      *a4 = v32;
    }

    objc_initWeak(&location, self);
    v17 = [(PXGInteraction *)self view];
    [v15 rectInCoordinateSpace:v17];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __106__PXPhotosViewUIInteraction_regionOfInterestForAssetReference_image_fallbackMediaProvider_shouldSnapshot___block_invoke;
    v27[3] = &unk_278298EA8;
    v29 = v6;
    objc_copyWeak(v28, &location);
    v28[1] = v19;
    v28[2] = v21;
    v28[3] = v23;
    v28[4] = v25;
    v28[5] = v32;
    [v15 setPlaceholderViewFactory:v27];
    objc_destroyWeak(v28);
    objc_destroyWeak(&location);
  }

  return v15;
}

id __106__PXPhotosViewUIInteraction_regionOfInterestForAssetReference_image_fallbackMediaProvider_shouldSnapshot___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 80) == 1)
  {
    v4 = a2;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _makePlaceholderViewForRegionOfInterest:v4 roiRect:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  }

  else
  {
    v6 = MEMORY[0x277D755B8];
    v7 = *(a1 + 72);
    v8 = a2;
    WeakRetained = [v6 imageWithCGImage:v7];
    PXPreviewImageViewForImage();
  }
  v9 = ;

  return v9;
}

- (id)regionOfInterestForAssetReference:(id)a3 image:(id *)a4
{
  v8 = 0;
  if (a4)
  {
    v5 = &v8;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(PXPhotosViewUIInteraction *)self regionOfInterestForAssetReference:a3 image:v5 fallbackMediaProvider:0 shouldSnapshot:1];
  if (v8)
  {
    *a4 = [MEMORY[0x277D755B8] imageWithCGImage:?];
  }

  return v6;
}

- (id)menuImageForActionType:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotosViewInteraction *)self viewModel];
  v6 = [v5 gridActionManager];
  v7 = [v6 actionPerformerForActionType:v4];

  v8 = [v7 activitySystemImageName];
  if (v8)
  {
    v9 = MEMORY[0x277D755B8];
    v10 = [v7 activitySystemImageName];
    v11 = [v9 systemImageNamed:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)menuTitleForActionType:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotosViewInteraction *)self viewModel];
  v6 = [v5 gridActionManager];
  v7 = [v6 actionPerformerForActionType:v4];

  v8 = [v7 localizedTitleForUseCase:1];

  return v8;
}

- (void)performActionWithType:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotosViewInteraction *)self viewModel];
  v6 = [v5 gridActionManager];
  v7 = [v6 actionPerformerForActionType:v4];

  [v7 performActionWithCompletionHandler:0];
}

- (BOOL)canPerformActionType:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotosViewInteraction *)self viewModel];
  v6 = [v5 gridActionManager];
  v7 = [v6 canPerformActionType:v4];

  return v7;
}

- (BOOL)ensureSelectMode
{
  v2 = [(PXPhotosViewInteraction *)self viewModel];
  if ([v2 canEnterSelectMode])
  {
    [v2 performChanges:&__block_literal_global_32];
  }

  v3 = [v2 isInSelectMode];

  return v3;
}

- (void)toggleSelectMode
{
  if ([(PXPhotosViewUIInteraction *)self canToggleSelectMode])
  {
    v3 = [(PXPhotosViewInteraction *)self viewModel];
    [v3 performChanges:&__block_literal_global_30];
  }
}

void __45__PXPhotosViewUIInteraction_toggleSelectMode__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 attemptSetInSelectMode:{objc_msgSend(v2, "isInSelectMode") ^ 1}];
}

- (BOOL)canToggleSelectMode
{
  v2 = [(PXPhotosViewInteraction *)self viewModel];
  if ([v2 canEnterSelectMode])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 canExitSelectMode];
  }

  return v3;
}

- (BOOL)_pickNavigatedAssetReference
{
  v3 = [(PXPhotosViewUIInteraction *)self navigatedAssetReference];
  if (v3)
  {
    v4 = [(PXPhotosViewInteraction *)self viewModel];
    if ([v4 isInSelectMode])
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __57__PXPhotosViewUIInteraction__pickNavigatedAssetReference__block_invoke;
      v9[3] = &unk_278298E60;
      v10 = v3;
      [v4 performChanges:v9];
    }

    else
    {
      if (![v4 viewDelegateRespondsTo:1])
      {
        v5 = 0;
        goto LABEL_9;
      }

      v6 = [v4 viewDelegate];
      v7 = [(PXPhotosViewInteraction *)self presentingViewController];
      [v6 photosViewController:v7 didPickAssetReference:v3];
    }

    v5 = 1;
LABEL_9:

    goto LABEL_10;
  }

  v5 = 0;
LABEL_10:

  return v5;
}

- (void)_updateContextMenuInteraction
{
  if (!self->_contextMenuInteraction)
  {
    v4 = [(PXPhotosViewInteraction *)self viewModel];
    v5 = [v4 allowsContextMenuCustomization];

    if (v5)
    {
      v7 = [objc_alloc(MEMORY[0x277D753B8]) initWithDelegate:self];
    }

    else
    {
      v6 = [(PXPhotosViewInteraction *)self interactionHelper];
      v7 = [v6 contextMenuInteractionForViewInteraction:self];
    }

    [(PXPhotosViewUIInteraction *)self setContextMenuInteraction:v7];
  }
}

- (void)_tearDownGestures
{
  v3 = [(UITapGestureRecognizer *)self->_tapGesture view];
  [v3 removeGestureRecognizer:self->_tapGesture];

  v4 = [(UILongPressGestureRecognizer *)self->_longPressGesture view];
  [v4 removeGestureRecognizer:self->_longPressGesture];

  v5 = [(UIPinchGestureRecognizer *)self->_pinchGesture view];
  [v5 removeGestureRecognizer:self->_pinchGesture];

  v6 = [(UILongPressGestureRecognizer *)self->_touchGesture view];
  [v6 removeGestureRecognizer:self->_touchGesture];

  v7 = [(PXTouchingUIGestureRecognizer *)self->_touchingGesture view];
  [v7 removeGestureRecognizer:self->_touchingGesture];

  [(PXSwipeSelectionManager *)self->_swipeSelectionManager removeFromView];
  [(PXPhotosDragController *)self->_dragController removeFromView];
  v8 = [(PXPhotosViewInteraction *)self zoomablePhotosInteraction];
  [v8 setView:0];

  tapGesture = self->_tapGesture;
  self->_tapGesture = 0;

  longPressGesture = self->_longPressGesture;
  self->_longPressGesture = 0;

  pinchGesture = self->_pinchGesture;
  self->_pinchGesture = 0;

  touchGesture = self->_touchGesture;
  self->_touchGesture = 0;

  touchingGesture = self->_touchingGesture;
  self->_touchingGesture = 0;

  swipeSelectionManager = self->_swipeSelectionManager;
  self->_swipeSelectionManager = 0;

  dragController = self->_dragController;
  self->_dragController = 0;

  [(PXPhotosViewUIInteraction *)self setContextMenuInteraction:0];
}

- (void)_setupGestures
{
  v3 = [(PXGInteraction *)self view];

  if (v3)
  {
    v31 = [(PXPhotosViewInteraction *)self viewModel];
    v4 = [(PXGInteraction *)self view];
    v5 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel_handleLongPress_];
    [v5 setDelegate:self];
    objc_storeStrong(&self->_longPressGesture, v5);
    [v4 addGestureRecognizer:v5];
    if ([v31 allowsHoverBehavior])
    {
      v6 = [objc_alloc(MEMORY[0x277D755A0]) initWithTarget:self action:sel__handleHover_];
      [(UIHoverGestureRecognizer *)v6 setDelegate:self];
      hoverGesture = self->_hoverGesture;
      self->_hoverGesture = v6;
      v8 = v6;

      [v4 addGestureRecognizer:v8];
    }

    v9 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handleTap_];
    [v9 setDelegate:self];
    [v9 setCancelsTouchesInView:0];
    objc_storeStrong(&self->_tapGesture, v9);
    [v4 addGestureRecognizer:v9];
    if ([v31 allowsDoubleTapBehavior])
    {
      v10 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handleDoubleTap_];
      [(UITapGestureRecognizer *)v10 setNumberOfTapsRequired:2];
      [(UITapGestureRecognizer *)v10 setDelegate:self];
      [v9 setCancelsTouchesInView:0];
      doubleTapGesture = self->_doubleTapGesture;
      self->_doubleTapGesture = v10;
      v12 = v10;

      [v4 addGestureRecognizer:v12];
    }

    v13 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handlePress_];
    [v13 setAllowedPressTypes:&unk_282C48228];
    [v13 setDelegate:self];
    objc_storeStrong(&self->_pressGesture, v13);
    [v4 addGestureRecognizer:v13];
    v14 = [objc_alloc(MEMORY[0x277D75848]) initWithTarget:self action:sel__handlePinch_];
    [v14 _setEndsOnSingleTouch:1];
    [v14 setDelegate:self];
    objc_storeStrong(&self->_pinchGesture, v14);
    [v4 addGestureRecognizer:v14];
    if ([v31 allowsSwipeToSelect])
    {
      v15 = [PXSwipeSelectionManager alloc];
      v16 = [(PXPhotosViewInteraction *)self viewModel];
      v17 = [v16 selectionManager];
      v18 = [(PXPhotosViewUIInteraction *)self scrollView];
      v19 = [(PXSwipeSelectionManager *)v15 initWithSelectionManager:v17 scrollView:v18];

      [(PXSwipeSelectionManager *)v19 setDelegate:self];
      swipeSelectionManager = self->_swipeSelectionManager;
      self->_swipeSelectionManager = v19;
    }

    if (([v31 allowsDragOut] & 1) != 0 || objc_msgSend(v31, "allowsDragIn"))
    {
      v21 = [PXPhotosDragController alloc];
      v22 = [v31 selectionManager];
      v23 = [v31 assetCollectionActionManager];
      v24 = [(PXPhotosDragController *)v21 initWithContentView:v4 selectionManager:v22 assetCollectionActionManager:v23 delegate:self];
      dragController = self->_dragController;
      self->_dragController = v24;

      v26 = [v31 allowsDragIn];
      v27 = [(PXPhotosViewUIInteraction *)self dragController];
      [v27 setCanDragIn:v26];
    }

    v28 = [(PXGInteraction *)self view];
    v29 = [(PXPhotosViewInteraction *)self zoomablePhotosInteraction];
    [v29 setView:v28];

    v30 = [(PXPhotosViewInteraction *)self interactionHelper];
    [v30 didSetupGesturesForInteraction:self];

    [(PXPhotosViewUIInteraction *)self _updateContextMenuInteraction];
  }
}

- (void)setNavigatedAssetSectionDataSourceManager:(id)a3
{
  v4 = a3;
  [(PXAssetsDataSourceManager *)self->_navigatedAssetSectionDataSourceManager unregisterChangeObserver:self context:NavigatedSectionDataSourceObservationContext];
  navigatedAssetSectionDataSourceManager = self->_navigatedAssetSectionDataSourceManager;
  self->_navigatedAssetSectionDataSourceManager = v4;
  v6 = v4;

  [(PXAssetsDataSourceManager *)self->_navigatedAssetSectionDataSourceManager registerChangeObserver:self context:NavigatedSectionDataSourceObservationContext];
}

- (void)setNavigatedAssetReference:(id)a3
{
  v6 = a3;
  v7 = v6;
  if (self->_navigatedAssetReference != v6 && ([(PXAssetReference *)v6 isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_navigatedAssetReference, a3);
    v8 = [(PXPhotosViewUIInteraction *)self uiInteractionDelegate];
    [v8 uiInteraction:self didChangeNavigatedAssetReference:v7];

    if (v7)
    {
      v9 = [(PXPhotosViewInteraction *)self viewModel];
      v10 = [v9 dataSourceManager];
      v11 = [v9 oneUpAssetsViewMode];
      if (v11 == 2)
      {
        v13 = [v10 createReverselySortedDataSourceManager];
        if (!v13)
        {
          v17 = [MEMORY[0x277CCA890] currentHandler];
          [v17 handleFailureInMethod:a2 object:self file:@"PXPhotosViewUIInteraction.m" lineNumber:126 description:@"Unable to create a data source manager for the selected asset section."];
        }

        [(PXPhotosViewUIInteraction *)self setNavigatedAssetSectionDataSourceManager:v13];
        v14 = dispatch_get_global_queue(33, 0);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __56__PXPhotosViewUIInteraction_setNavigatedAssetReference___block_invoke;
        block[3] = &unk_278299118;
        v19 = v13;
        v15 = v13;
        dispatch_sync(v14, block);
      }

      else if (v11 == 1)
      {
        v12 = [v10 createDataSourceManagerForAssetsInSectionOfAsset:v7 usingNewTransientAssetCollection:{objc_msgSend(v9, "gridStyle") == 6}];
        if (!v12)
        {
          v16 = [MEMORY[0x277CCA890] currentHandler];
          [v16 handleFailureInMethod:a2 object:self file:@"PXPhotosViewUIInteraction.m" lineNumber:119 description:@"Unable to create a data source manager for the selected asset section."];
        }

        [(PXPhotosViewUIInteraction *)self setNavigatedAssetSectionDataSourceManager:v12];
      }
    }
  }
}

- (NSUndoManager)undoManager
{
  v3 = [(PXPhotosViewInteraction *)self delegate];
  v4 = [v3 undoManagerForPhotosInteraction:self];

  return v4;
}

- (void)invalidateContextMenuInteraction
{
  [(PXPhotosViewUIInteraction *)self setContextMenuInteraction:0];

  [(PXPhotosViewUIInteraction *)self _updateContextMenuInteraction];
}

- (UIScrollView)scrollView
{
  v2 = [(PXGInteraction *)self scrollViewController];
  v3 = [v2 scrollView];

  return v3;
}

- (void)scrollViewControllerDidChange
{
  v5.receiver = self;
  v5.super_class = PXPhotosViewUIInteraction;
  [(PXGInteraction *)&v5 scrollViewControllerDidChange];
  v3 = [(PXGInteraction *)self scrollViewController];
  [v3 registerObserver:self];

  v4 = [(PXPhotosViewInteraction *)self interactionHelper];
  [v4 scrollViewControllerDidChangeForInteraction:self];
}

- (void)viewDidChange
{
  v3.receiver = self;
  v3.super_class = PXPhotosViewUIInteraction;
  [(PXGInteraction *)&v3 viewDidChange];
  [(PXPhotosViewUIInteraction *)self _tearDownGestures];
  [(PXPhotosViewUIInteraction *)self _setupGestures];
}

@end