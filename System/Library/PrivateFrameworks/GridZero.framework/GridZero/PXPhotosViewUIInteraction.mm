@interface PXPhotosViewUIInteraction
- (BOOL)_handleHoverWithHitTestResult:(id)result;
- (BOOL)_handleTapWithHitTestResult:(id)result keyModifierFlags:(int64_t)flags;
- (BOOL)_pickNavigatedAssetReference;
- (BOOL)actionPerformer:(id)performer dismissViewController:(id)controller completionHandler:(id)handler;
- (BOOL)allowsActionsForContextMenuInteraction:(id)interaction;
- (BOOL)allowsPreviewCommittingForContextMenuInteraction:(id)interaction;
- (BOOL)canPerformActionType:(id)type;
- (BOOL)canStartContextMenuInteraction:(id)interaction;
- (BOOL)canToggleSelectMode;
- (BOOL)commitPreviewForContextMenuInteraction:(id)interaction;
- (BOOL)dragController:(id)controller shouldResizeCancelledPreviewForAssetReference:(id)reference;
- (BOOL)dragController:(id)controller shouldSelectRearrangedAssetReferences:(id)references;
- (BOOL)ensureSelectMode;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)presentOneUpForAssetReference:(id)reference;
- (BOOL)swipeSelectionManagerIsInMultiSelectMode:(id)mode;
- (NSUndoManager)undoManager;
- (PXPhotosViewUIInteractionDelegate)uiInteractionDelegate;
- (PXSimpleIndexPath)_indexPathForAssetAtLocation:(SEL)location withPadding:(CGPoint)padding forSwipeSelectionManager:(UIEdgeInsets)manager;
- (PXSimpleIndexPath)swipeSelectionManager:(SEL)manager itemIndexPathAtLocation:(id)location;
- (PXSimpleIndexPath)swipeSelectionManager:(SEL)manager itemIndexPathClosestAboveLocation:(id)location;
- (PXSimpleIndexPath)swipeSelectionManager:(SEL)manager itemIndexPathClosestLeadingLocation:(id)location;
- (UIScrollView)scrollView;
- (id)_adjustHiddenAssetReferences:(id)references;
- (id)_contextMenuInteraction:(id)interaction accessoriesForMenuWithConfiguration:(id)configuration;
- (id)_contextMenuInteraction:(id)interaction styleForMenuWithConfiguration:(id)configuration;
- (id)_createContextMenuActionManagerForSelection;
- (id)_makePlaceholderViewForRegionOfInterest:(id)interest roiRect:(CGRect)rect;
- (id)adjustOneUpAssetReferenceToScrollToVisible:(id)visible;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)contextMenuInteraction:(id)interaction previewForHighlightingMenuWithConfiguration:(id)configuration;
- (id)createContextMenuActionManagerForNavigatedPreviewAssetReference;
- (id)dragController:(id)controller draggableAssetReferenceAtLocation:(CGPoint)location;
- (id)dragController:(id)controller dropTargetAssetReferenceForLocation:(CGPoint)location;
- (id)dragController:(id)controller itemProviderForAssetReference:(id)reference;
- (id)dragControllerAssetReferenceForBeginningSession:(id)session;
- (id)menuImageForActionType:(id)type;
- (id)menuTitleForActionType:(id)type;
- (id)presentationEnvironmentForActionPerformer:(id)performer;
- (id)regionOfInterestForAssetReference:(id)reference image:(CGImage *)image fallbackMediaProvider:(id)provider shouldSnapshot:(BOOL)snapshot;
- (id)regionOfInterestForAssetReference:(id)reference image:(id *)image;
- (id)swipeSelectionManager:(id)manager indexPathSetFromIndexPath:(PXSimpleIndexPath *)path toIndexPath:(PXSimpleIndexPath *)indexPath;
- (id)targetedPreviewForAssetReference:(id)reference;
- (void)_handleDoubleTap:(id)tap;
- (void)_handleHover:(id)hover;
- (void)_handleHoverWithHitTestResults:(id)results hoverGesture:(id)gesture;
- (void)_handlePinch:(id)pinch;
- (void)_handlePress:(id)press;
- (void)_handleTap:(id)tap;
- (void)_handleTouch:(id)touch;
- (void)_setupGestures;
- (void)_tearDownGestures;
- (void)_updateContextMenuInteraction;
- (void)_updateScrolledToStates:(id)states;
- (void)actionPerformer:(id)performer didChangeState:(unint64_t)state;
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
- (void)contextMenuInteraction:(id)interaction willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)dragController:(id)controller draggedAssetReferencesDidChange:(id)change;
- (void)dragController:(id)controller dropTargetAssetReferenceDidChange:(id)change;
- (void)ensureSwipeDismissalInteraction;
- (void)handleLongPress:(id)press;
- (void)invalidateContextMenuInteraction;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)performActionWithType:(id)type;
- (void)scrollViewControllerDidChange;
- (void)scrollViewControllerDidScroll:(id)scroll;
- (void)setContextMenuInteraction:(id)interaction;
- (void)setCurrentTouchAction:(id)action;
- (void)setHiddenAssetReferences:(id)references;
- (void)setNavigatedAssetReference:(id)reference;
- (void)setNavigatedAssetSectionDataSourceManager:(id)manager;
- (void)swipeSelectionManager:(id)manager extendSelectionInDirection:(unint64_t)direction;
- (void)swipeSelectionManagerAutomaticallyTransitionToMultiSelectMode:(id)mode;
- (void)swipeSelectionManagerDidAutoScroll:(id)scroll;
- (void)toggleSelectMode;
- (void)touchingUIGestureRecognizerDidBeginTouching:(id)touching;
- (void)viewDidChange;
- (void)willEndPreviewingForContextMenuInteraction:(id)interaction;
@end

@implementation PXPhotosViewUIInteraction

- (PXPhotosViewUIInteractionDelegate)uiInteractionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_uiInteractionDelegate);

  return WeakRetained;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  if (NavigatedSectionDataSourceObservationContext != context)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosViewUIInteraction.m" lineNumber:1384 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  interactionHelper = [(PXPhotosViewInteraction *)self interactionHelper];
  [interactionHelper navigatedSectionDataSourceManagerDidChangeForInteraction:self];
}

- (void)_updateScrolledToStates:(id)states
{
  statesCopy = states;
  v5 = [statesCopy isScrolledAtEdge:1 tolerance:0.0];
  v6 = [statesCopy isScrolledAtEdge:3 tolerance:10.0];

  viewModel = [(PXPhotosViewInteraction *)self viewModel];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__PXPhotosViewUIInteraction__updateScrolledToStates___block_invoke;
  v8[3] = &__block_descriptor_34_e53_v16__0__PXPhotosViewModel_PXMutablePhotosViewModel__8l;
  v9 = v5;
  v10 = v6;
  [viewModel performChanges:v8];
}

void __53__PXPhotosViewUIInteraction__updateScrolledToStates___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setScrolledToTop:v3];
  [v4 setScrolledToBottom:*(a1 + 33)];
}

- (void)scrollViewControllerDidScroll:(id)scroll
{
  scrollCopy = scroll;
  dragController = [(PXPhotosViewUIInteraction *)self dragController];
  isDragSessionActive = [dragController isDragSessionActive];

  if (isDragSessionActive)
  {
    layout = [(PXGInteraction *)self layout];
    [layout clearLastVisibleAreaAnchoringInformation];
  }

  hoverGesture = [(PXPhotosViewUIInteraction *)self hoverGesture];
  [hoverGesture px_cancel];

  [(PXPhotosViewUIInteraction *)self _updateScrolledToStates:scrollCopy];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  v4 = [(PXPhotosViewInteraction *)self viewModel:recognizer];
  allowedGesturesKind = [v4 allowedGesturesKind];

  return allowedGesturesKind != 1;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  recognizerCopy = recognizer;
  tapGesture = [(PXPhotosViewUIInteraction *)self tapGesture];

  if (tapGesture == recognizerCopy && ([(PXPhotosViewUIInteraction *)self doubleTapGesture], v9 = objc_claimAutoreleasedReturnValue(), v9, v9 == gestureRecognizerCopy))
  {
    viewModel = [(PXPhotosViewInteraction *)self viewModel];
    if ([viewModel allowsMacStyleSelection])
    {
      LOBYTE(v10) = 0;
    }

    else
    {
      viewModel2 = [(PXPhotosViewInteraction *)self viewModel];
      v10 = [viewModel2 isInSelectMode] ^ 1;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  pinchGesture = [(PXPhotosViewUIInteraction *)self pinchGesture];
  if (pinchGesture == recognizerCopy)
  {
    scrollView = [(PXPhotosViewUIInteraction *)self scrollView];
    panGestureRecognizer = [scrollView panGestureRecognizer];
    v9 = panGestureRecognizer == gestureRecognizerCopy || self->_longPressGesture == gestureRecognizerCopy;
  }

  else
  {
    v9 = 0;
  }

  tapGesture = [(PXPhotosViewUIInteraction *)self tapGesture];
  if (tapGesture == recognizerCopy)
  {
    touchGesture = [(PXPhotosViewUIInteraction *)self touchGesture];
    if (touchGesture == gestureRecognizerCopy)
    {
      v9 = 1;
    }

    else
    {
      touchingGesture = [(PXPhotosViewUIInteraction *)self touchingGesture];
      v15 = touchingGesture == gestureRecognizerCopy;

      v9 |= v15;
    }
  }

  touchingGesture2 = [(PXPhotosViewUIInteraction *)self touchingGesture];

  if (touchingGesture2 == recognizerCopy)
  {
    v21 = 0;
    v17 = [(UILongPressGestureRecognizer *)gestureRecognizerCopy px_isPanGestureRecognizerOfScrollView:&v21];
    v18 = v21;
    v19 = v18;
    v9 = !v17 || ([v18 px_isDecelerating] & 1) == 0;
  }

  return v9 & 1;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  pinchGesture = [(PXPhotosViewUIInteraction *)self pinchGesture];

  if (pinchGesture == beginCopy)
  {
    swipeSelectionManager = [(PXPhotosViewUIInteraction *)self swipeSelectionManager];
    LOBYTE(v6) = [swipeSelectionManager state] == 0;
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  doubleTapGesture = [(PXPhotosViewUIInteraction *)self doubleTapGesture];

  if (doubleTapGesture == beginCopy)
  {
    viewModel = [(PXPhotosViewInteraction *)self viewModel];
    isInSelectMode = [viewModel isInSelectMode];

    LOBYTE(v6) = (isInSelectMode ^ 1) & v6;
  }

  view = [(PXGInteraction *)self view];
  [beginCopy locationInView:view];
  v12 = [view hitTest:0 withEvent:?];
  viewModel2 = [(PXPhotosViewInteraction *)self viewModel];
  isEmbedded = [viewModel2 isEmbedded];

  if (isEmbedded)
  {
    if (MEMORY[0x21CEE04B0]() && _os_feature_enabled_impl())
    {
      if (v12 != view)
      {
        scrollView = [(PXPhotosViewUIInteraction *)self scrollView];
        if (v12 != scrollView)
        {
          superview = [v12 superview];
          scrollView2 = [(PXPhotosViewUIInteraction *)self scrollView];
          if (superview == scrollView2)
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

    else if (v12 != view)
    {
      scrollView = [(PXPhotosViewUIInteraction *)self scrollView];
      if (v12 != scrollView)
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

- (id)presentationEnvironmentForActionPerformer:(id)performer
{
  performerCopy = performer;
  contentController = [(PXPhotosViewInteraction *)self contentController];
  delegate = [contentController delegate];

  if (objc_opt_respondsToSelector())
  {
    v7 = [delegate presentationEnvironmentForActionPerformer:performerCopy];
  }

  else
  {
    v8 = MEMORY[0x277D3CE40];
    presentingViewController = [(PXPhotosViewInteraction *)self presentingViewController];
    v7 = [v8 defaultPresenterWithViewController:presentingViewController];
  }

  return v7;
}

- (BOOL)actionPerformer:(id)performer dismissViewController:(id)controller completionHandler:(id)handler
{
  handlerCopy = handler;
  presentingViewController = [(PXPhotosViewInteraction *)self presentingViewController];
  presentedViewController = [presentingViewController presentedViewController];

  if (presentedViewController)
  {
    [presentingViewController dismissViewControllerAnimated:1 completion:handlerCopy];
  }

  return presentedViewController != 0;
}

- (void)actionPerformer:(id)performer didChangeState:(unint64_t)state
{
  performerCopy = performer;
  v7 = performerCopy;
  v15 = performerCopy;
  if (state == 10)
  {
    shouldPreventTargetedDismissalAnimation = [performerCopy shouldPreventTargetedDismissalAnimation];
    v7 = v15;
    if (shouldPreventTargetedDismissalAnimation)
    {
      interactionHelper = [(PXPhotosViewInteraction *)self interactionHelper];
      [interactionHelper preventTargetedContextMenuDismissalAnimationForViewInteraction:self];

      v7 = v15;
    }
  }

  actionType = [v7 actionType];
  v11 = [actionType isEqualToString:*MEMORY[0x277D3CE58]];

  if (state == 30 && v11)
  {
    [(PXPhotosViewUIInteraction *)self _pickNavigatedAssetReference];
  }

  viewModel = [(PXPhotosViewInteraction *)self viewModel];
  allowsMultiSelectMenu = [viewModel allowsMultiSelectMenu];
  isInSelectMode = [viewModel isInSelectMode];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v15 shouldExitSelectModeForState:state] & allowsMultiSelectMenu & isInSelectMode) == 1)
  {
    [(PXPhotosViewUIInteraction *)self toggleSelectMode];
  }
}

- (void)swipeSelectionManagerDidAutoScroll:(id)scroll
{
  layout = [(PXGInteraction *)self layout];
  [layout clearLastVisibleAreaAnchoringInformation];
}

- (PXSimpleIndexPath)_indexPathForAssetAtLocation:(SEL)location withPadding:(CGPoint)padding forSwipeSelectionManager:(UIEdgeInsets)manager
{
  right = manager.right;
  bottom = manager.bottom;
  left = manager.left;
  top = manager.top;
  y = padding.y;
  x = padding.x;
  scrollView = [a6 scrollView];
  right = [(PXPhotosViewInteraction *)self assetReferenceAtLocation:scrollView withPadding:x inCoordinateSpace:y, top, left, bottom, right];

  if (right && (-[PXPhotosViewInteraction viewModel](self, "viewModel"), v17 = objc_claimAutoreleasedReturnValue(), [v17 currentDataSource], v18 = objc_claimAutoreleasedReturnValue(), v17, objc_msgSend(v18, "assetReferenceForAssetReference:", right), v20 = objc_claimAutoreleasedReturnValue(), right, v18, v20))
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

- (void)swipeSelectionManager:(id)manager extendSelectionInDirection:(unint64_t)direction
{
  presentingViewController = [(PXPhotosViewInteraction *)self presentingViewController];
  presentedViewController = [presentingViewController presentedViewController];

  if (!presentedViewController && [(PXPhotosViewUIInteraction *)self ensureSelectMode])
  {
    contentController = [(PXPhotosViewInteraction *)self contentController];
    [contentController extendSelectionInDirection:direction];

    uiInteractionDelegate = [(PXPhotosViewUIInteraction *)self uiInteractionDelegate];
    [uiInteractionDelegate uiInteractionDidExtendSelection:self];
  }
}

- (id)swipeSelectionManager:(id)manager indexPathSetFromIndexPath:(PXSimpleIndexPath *)path toIndexPath:(PXSimpleIndexPath *)indexPath
{
  selectionManager = [manager selectionManager];
  dataSourceManager = [selectionManager dataSourceManager];
  dataSource = [dataSourceManager dataSource];

  if (dataSource)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v19 = objc_opt_class();
    v18 = NSStringFromClass(v19);
    px_descriptionForAssertionMessage = [dataSource px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosViewUIInteraction.m" lineNumber:1177 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"swipeSelectionManager.selectionManager.dataSourceManager.dataSource", v18, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosViewUIInteraction.m" lineNumber:1177 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"swipeSelectionManager.selectionManager.dataSourceManager.dataSource", v18}];
  }

LABEL_3:
  v12 = *&path->item;
  v22[0] = *&path->dataSourceIdentifier;
  v22[1] = v12;
  v13 = *&indexPath->item;
  v21[0] = *&indexPath->dataSourceIdentifier;
  v21[1] = v13;
  v14 = [dataSource indexPathSetFromIndexPath:v22 toIndexPath:v21];

  return v14;
}

- (PXSimpleIndexPath)swipeSelectionManager:(SEL)manager itemIndexPathClosestAboveLocation:(id)location
{
  y = a5.y;
  x = a5.x;
  locationCopy = location;
  layout = [(PXGInteraction *)self layout];
  [layout padding];

  *&retstr->dataSourceIdentifier = 0u;
  *&retstr->item = 0u;
  PXEdgeInsetsMake();
  [(PXPhotosViewUIInteraction *)self _indexPathForAssetAtLocation:locationCopy withPadding:x forSwipeSelectionManager:y, v10, v11, v12, v13];

  return result;
}

- (PXSimpleIndexPath)swipeSelectionManager:(SEL)manager itemIndexPathClosestLeadingLocation:(id)location
{
  y = a5.y;
  x = a5.x;
  swipeSelectionManager = self->_swipeSelectionManager;
  locationCopy = location;
  scrollView = [(PXSwipeSelectionManager *)swipeSelectionManager scrollView];
  [scrollView frame];

  *&retstr->dataSourceIdentifier = 0u;
  *&retstr->item = 0u;
  PXEdgeInsetsMake();
  [(PXPhotosViewUIInteraction *)self _indexPathForAssetAtLocation:locationCopy withPadding:x forSwipeSelectionManager:y, v11, v12, v13, v14];

  return result;
}

- (PXSimpleIndexPath)swipeSelectionManager:(SEL)manager itemIndexPathAtLocation:(id)location
{
  *&retstr->dataSourceIdentifier = 0u;
  *&retstr->item = 0u;
  return [(PXPhotosViewUIInteraction *)self _indexPathForAssetAtLocation:location withPadding:a5.x forSwipeSelectionManager:a5.y, *MEMORY[0x277D3CF88], *(MEMORY[0x277D3CF88] + 8), *(MEMORY[0x277D3CF88] + 16), *(MEMORY[0x277D3CF88] + 24)];
}

- (void)swipeSelectionManagerAutomaticallyTransitionToMultiSelectMode:(id)mode
{
  viewModel = [(PXPhotosViewInteraction *)self viewModel];
  if (([viewModel isInSelectMode] & 1) == 0 && objc_msgSend(viewModel, "canEnterSelectMode"))
  {
    [viewModel performChanges:&__block_literal_global_68];
  }
}

- (BOOL)swipeSelectionManagerIsInMultiSelectMode:(id)mode
{
  viewModel = [(PXPhotosViewInteraction *)self viewModel];
  canSwipeSelect = [viewModel canSwipeSelect];

  return canSwipeSelect;
}

- (id)dragController:(id)controller itemProviderForAssetReference:(id)reference
{
  referenceCopy = reference;
  viewModel = [(PXPhotosViewInteraction *)self viewModel];
  if ([viewModel viewDelegateRespondsTo:2048])
  {
    viewDelegate = [viewModel viewDelegate];
    presentingViewController = [(PXPhotosViewInteraction *)self presentingViewController];
    v9 = [viewDelegate photosViewController:presentingViewController dragItemProviderForAssetReference:referenceCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)dragController:(id)controller dropTargetAssetReferenceDidChange:(id)change
{
  changeCopy = change;
  viewModel = [(PXPhotosViewInteraction *)self viewModel];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __78__PXPhotosViewUIInteraction_dragController_dropTargetAssetReferenceDidChange___block_invoke;
  v8[3] = &unk_278298E60;
  v9 = changeCopy;
  v7 = changeCopy;
  [viewModel performChanges:v8];
}

- (void)dragController:(id)controller draggedAssetReferencesDidChange:(id)change
{
  changeCopy = change;
  viewModel = [(PXPhotosViewInteraction *)self viewModel];
  draggedAssetReferences = [viewModel draggedAssetReferences];
  v8 = [draggedAssetReferences count];
  v9 = [changeCopy count];

  if (v8 > v9)
  {
    layout = [(PXGInteraction *)self layout];
    v11 = [layout createFenceWithType:2];
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __76__PXPhotosViewUIInteraction_dragController_draggedAssetReferencesDidChange___block_invoke;
  v13[3] = &unk_278298E60;
  v14 = changeCopy;
  v12 = changeCopy;
  [viewModel performChanges:v13];
}

- (BOOL)dragController:(id)controller shouldResizeCancelledPreviewForAssetReference:(id)reference
{
  v4 = [(PXGInteraction *)self layout:controller];
  hiddenSpriteIndexes = [v4 hiddenSpriteIndexes];
  v6 = [hiddenSpriteIndexes count] == 0;

  return v6;
}

- (BOOL)dragController:(id)controller shouldSelectRearrangedAssetReferences:(id)references
{
  v4 = [(PXPhotosViewInteraction *)self viewModel:controller];
  isInSelectMode = [v4 isInSelectMode];

  return isInSelectMode;
}

- (id)dragControllerAssetReferenceForBeginningSession:(id)session
{
  interactionHelper = [(PXPhotosViewInteraction *)self interactionHelper];
  if ([interactionHelper isContextMenuInteractionActiveForViewInteraction:self])
  {
    navigatedAssetReference = [(PXPhotosViewUIInteraction *)self navigatedAssetReference];
  }

  else
  {
    navigatedAssetReference = 0;
  }

  return navigatedAssetReference;
}

- (id)dragController:(id)controller dropTargetAssetReferenceForLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  view = [(PXGInteraction *)self view];
  v7 = [view dropTargetObjectReferenceForLocation:{x, y}];

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

- (id)dragController:(id)controller draggableAssetReferenceAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  contentView = [controller contentView];
  v8 = [(PXPhotosViewInteraction *)self assetReferenceAtLocation:contentView withPadding:x inCoordinateSpace:y, *MEMORY[0x277D3CF88], *(MEMORY[0x277D3CF88] + 8), *(MEMORY[0x277D3CF88] + 16), *(MEMORY[0x277D3CF88] + 24)];

  return v8;
}

- (id)_contextMenuInteraction:(id)interaction styleForMenuWithConfiguration:(id)configuration
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  viewModel = [(PXPhotosViewInteraction *)self viewModel];
  if ([viewModel viewDelegateRespondsTo:1024])
  {
    viewDelegate = [viewModel viewDelegate];
    presentingViewController = [(PXPhotosViewInteraction *)self presentingViewController];
    v11 = [viewDelegate photosViewController:presentingViewController contextMenuInteraction:interactionCopy styleForMenuWithConfiguration:configurationCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  animatorCopy = animator;
  viewModel = [(PXPhotosViewInteraction *)self viewModel];
  if ([viewModel viewDelegateRespondsTo:512])
  {
    viewDelegate = [viewModel viewDelegate];
    presentingViewController = [(PXPhotosViewInteraction *)self presentingViewController];
    [viewDelegate photosViewController:presentingViewController contextMenuInteraction:interactionCopy willEndForConfiguration:configurationCopy animator:animatorCopy];
  }
}

- (id)_contextMenuInteraction:(id)interaction accessoriesForMenuWithConfiguration:(id)configuration
{
  interactionCopy = interaction;
  viewModel = [(PXPhotosViewInteraction *)self viewModel];
  if ([viewModel viewDelegateRespondsTo:256] && (objc_msgSend(viewModel, "isInSelectMode") & 1) == 0)
  {
    viewDelegate = [viewModel viewDelegate];
    presentingViewController = [(PXPhotosViewInteraction *)self presentingViewController];
    navigatedAssetReference = [(PXPhotosViewUIInteraction *)self navigatedAssetReference];
    v7 = [viewDelegate photosViewController:presentingViewController accessoriesForContextMenuInteraction:interactionCopy assetReference:navigatedAssetReference];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)contextMenuInteraction:(id)interaction willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  interactionCopy = interaction;
  animatorCopy = animator;
  viewModel = [(PXPhotosViewInteraction *)self viewModel];
  if ([viewModel viewDelegateRespondsTo:128])
  {
    presentingViewController = [(PXPhotosViewInteraction *)self presentingViewController];
    [animatorCopy setPreferredCommitStyle:1];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __110__PXPhotosViewUIInteraction_contextMenuInteraction_willPerformPreviewActionForMenuWithConfiguration_animator___block_invoke;
    v12[3] = &unk_278298EE0;
    v13 = viewModel;
    v14 = presentingViewController;
    v15 = interactionCopy;
    v11 = presentingViewController;
    [animatorCopy addCompletion:v12];
  }
}

void __110__PXPhotosViewUIInteraction_contextMenuInteraction_willPerformPreviewActionForMenuWithConfiguration_animator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) viewDelegate];
  [v2 photosViewController:*(a1 + 40) commitPreviewViewControllerForContextMenuInteraction:*(a1 + 48)];
}

- (id)contextMenuInteraction:(id)interaction previewForHighlightingMenuWithConfiguration:(id)configuration
{
  v5 = [(PXPhotosViewUIInteraction *)self navigatedAssetReference:interaction];
  v6 = [(PXPhotosViewUIInteraction *)self targetedPreviewForAssetReference:v5];

  return v6;
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  interactionCopy = interaction;
  if ([(PXPhotosViewUIInteraction *)self canStartContextMenuInteraction:interactionCopy])
  {
    viewModel = [(PXPhotosViewInteraction *)self viewModel];
    if ([viewModel viewDelegateRespondsTo:64])
    {
      viewDelegate = [viewModel viewDelegate];
      presentingViewController = [(PXPhotosViewInteraction *)self presentingViewController];
      navigatedAssetReference = [(PXPhotosViewUIInteraction *)self navigatedAssetReference];
      v10 = [viewDelegate photosViewController:presentingViewController configurationForContextMenuInteraction:interactionCopy assetReference:navigatedAssetReference];
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

- (id)targetedPreviewForAssetReference:(id)reference
{
  v17 = 0;
  v4 = [(PXPhotosViewUIInteraction *)self regionOfInterestForAssetReference:reference image:&v17];
  v5 = v17;
  scrollView = [(PXPhotosViewUIInteraction *)self scrollView];
  coordinateSpace = [scrollView coordinateSpace];
  [v4 rectInCoordinateSpace:coordinateSpace];

  if (!v5)
  {
    placeholderViewFactory = [v4 placeholderViewFactory];

    if (!placeholderViewFactory)
    {
      goto LABEL_7;
    }

    placeholderViewFactory2 = [v4 placeholderViewFactory];
    v8 = (placeholderViewFactory2)[2](placeholderViewFactory2, v4);

    if (!v8)
    {
      goto LABEL_7;
    }

LABEL_6:
    v11 = objc_alloc(MEMORY[0x277D758E0]);
    PXRectGetCenter();
    v12 = [v11 initWithContainer:scrollView center:?];
    v13 = objc_alloc_init(MEMORY[0x277D758D8]);
    clearColor = [MEMORY[0x277D75348] clearColor];
    [v13 setBackgroundColor:clearColor];

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

- (void)willEndPreviewingForContextMenuInteraction:(id)interaction
{
  contentController = [(PXPhotosViewInteraction *)self contentController];
  [contentController stopForceIncludingAllAssetsInDataSource];
}

- (BOOL)commitPreviewForContextMenuInteraction:(id)interaction
{
  viewModel = [(PXPhotosViewInteraction *)self viewModel];
  allowsPickAssetAction = [viewModel allowsPickAssetAction];

  if (!allowsPickAssetAction)
  {
    return 0;
  }

  return [(PXPhotosViewUIInteraction *)self _pickNavigatedAssetReference];
}

- (BOOL)allowsPreviewCommittingForContextMenuInteraction:(id)interaction
{
  viewModel = [(PXPhotosViewInteraction *)self viewModel];
  allowsOneUpPresentation = [viewModel allowsOneUpPresentation];
  allowsPickAssetAction = [viewModel allowsPickAssetAction];
  navigatedAssetReference = [(PXPhotosViewUIInteraction *)self navigatedAssetReference];
  if (navigatedAssetReference && (v8 = navigatedAssetReference, -[PXPhotosViewUIInteraction navigatedAssetReference](self, "navigatedAssetReference"), v9 = objc_claimAutoreleasedReturnValue(), [v9 asset], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_opt_respondsToSelector(), v10, v9, v8, (v11 & 1) != 0))
  {
    navigatedAssetReference2 = [(PXPhotosViewUIInteraction *)self navigatedAssetReference];
    asset = [navigatedAssetReference2 asset];
    isContentAnalyzedAsPreviewable = [asset isContentAnalyzedAsPreviewable];
  }

  else
  {
    isContentAnalyzedAsPreviewable = 1;
  }

  return (allowsOneUpPresentation | allowsPickAssetAction) & isContentAnalyzedAsPreviewable & 1;
}

- (BOOL)allowsActionsForContextMenuInteraction:(id)interaction
{
  viewModel = [(PXPhotosViewInteraction *)self viewModel];
  isInSelectMode = [viewModel isInSelectMode];
  if ([viewModel allowsPickAssetAction])
  {
    allowsMultiSelectMenu = 1;
  }

  else
  {
    allowsQuickLookAction = [viewModel allowsQuickLookAction];
    allowsMultiSelectMenu = 1;
    if (isInSelectMode && (allowsQuickLookAction & 1) == 0 && ([viewModel allowsMacStyleSelection] & 1) == 0)
    {
      allowsMultiSelectMenu = [viewModel allowsMultiSelectMenu];
    }
  }

  return allowsMultiSelectMenu;
}

- (BOOL)canStartContextMenuInteraction:(id)interaction
{
  interactionCopy = interaction;
  viewModel = [(PXPhotosViewInteraction *)self viewModel];
  if ([viewModel viewDelegateRespondsTo:32])
  {
    viewDelegate = [viewModel viewDelegate];
    presentingViewController = [(PXPhotosViewInteraction *)self presentingViewController];
    v8 = [viewDelegate allowsContextMenuInteractionForPhotosViewController:presentingViewController];
  }

  else
  {
    v8 = 1;
  }

  zoomablePhotosInteraction = [(PXPhotosViewInteraction *)self zoomablePhotosInteraction];
  viewModel2 = [zoomablePhotosInteraction viewModel];

  view = [(PXGInteraction *)self view];
  [interactionCopy locationInView:view];
  v13 = v12;
  v15 = v14;

  v16 = [(PXPhotosViewInteraction *)self assetReferenceAtLocation:view withPadding:v13 inCoordinateSpace:v15, *MEMORY[0x277D3CF90], *(MEMORY[0x277D3CF90] + 8), *(MEMORY[0x277D3CF90] + 16), *(MEMORY[0x277D3CF90] + 24)];
  if (viewModel2)
  {
    isDisplayingIndividualItems = 1;
    if (!v8)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  zoomablePhotosInteraction2 = [(PXPhotosViewInteraction *)self zoomablePhotosInteraction];
  viewModelProvider = [zoomablePhotosInteraction2 viewModelProvider];
  viewModel2 = [viewModelProvider provideViewModelForAssetReference:v16];

  isDisplayingIndividualItems = [viewModel2 isDisplayingIndividualItems];
  assetsDataSourceManager = [viewModel2 assetsDataSourceManager];
  dataSource = [assetsDataSourceManager dataSource];
  v22 = [dataSource assetReferenceForAssetReference:v16];

  if (!v22)
  {
    isDisplayingIndividualItems = 1;
  }

  if (v8)
  {
LABEL_10:
    zoomablePhotosInteraction3 = [(PXPhotosViewInteraction *)self zoomablePhotosInteraction];
    v24 = (zoomablePhotosInteraction3 == 0) | isDisplayingIndividualItems;

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

- (void)touchingUIGestureRecognizerDidBeginTouching:(id)touching
{
  touchingCopy = touching;
  view = [(PXGInteraction *)self view];
  [touchingCopy locationInView:view];
  v7 = v6;
  v9 = v8;

  view2 = [(PXGInteraction *)self view];
  v13 = [view2 hitTestResultAtPoint:{v7, v9}];

  if (objc_opt_respondsToSelector())
  {
    px_photosViewTouchableHitTestResultTouchAction = [v13 px_photosViewTouchableHitTestResultTouchAction];
    v12 = px_photosViewTouchableHitTestResultTouchAction[2]();
    [(PXPhotosViewUIInteraction *)self setCurrentTouchAction:v12];
  }
}

- (void)setCurrentTouchAction:(id)action
{
  actionCopy = action;
  currentTouchAction = self->_currentTouchAction;
  if (currentTouchAction != actionCopy)
  {
    v8 = actionCopy;
    if (currentTouchAction)
    {
      currentTouchAction[2]();
      actionCopy = v8;
    }

    v6 = _Block_copy(actionCopy);
    v7 = self->_currentTouchAction;
    self->_currentTouchAction = v6;

    actionCopy = v8;
  }

  MEMORY[0x2821F96F8](currentTouchAction, actionCopy);
}

- (void)_handleTouch:(id)touch
{
  v52 = *MEMORY[0x277D85DE8];
  touchCopy = touch;
  state = [touchCopy state];
  if ((state - 3) < 3)
  {
    viewModel = [(PXPhotosViewInteraction *)self viewModel];
    selectionManager = [viewModel selectionManager];
    [selectionManager performChanges:&__block_literal_global_57_8003];

    goto LABEL_24;
  }

  if (state != 1)
  {
    goto LABEL_24;
  }

  view = [(PXGInteraction *)self view];
  v39 = touchCopy;
  [touchCopy locationInView:view];
  v10 = v9;
  v12 = v11;

  view2 = [(PXGInteraction *)self view];
  v14 = [view2 hitTestResultsAtPoint:{v10, v12}];

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
      identifier = [v21 identifier];
      if (identifier == v19)
      {
      }

      else
      {
        v23 = identifier;
        v24 = [(__CFString *)identifier isEqualToString:v19];

        if (!v24)
        {
          continue;
        }
      }

      viewModel2 = [(PXPhotosViewInteraction *)self viewModel];
      userData = [v21 userData];
      v45 = 0u;
      v46 = 0u;
      currentDataSource = [viewModel2 currentDataSource];
      v28 = currentDataSource;
      if (currentDataSource)
      {
        [currentDataSource indexPathForAssetReference:userData];
      }

      else
      {
        v45 = 0u;
        v46 = 0u;
      }

      if (v45 != v18)
      {
        currentDataSource2 = [viewModel2 currentDataSource];
        v41 = viewModel2;
        v30 = userData;
        v31 = v16;
        v32 = v19;
        v33 = v17;
        v34 = v18;
        selfCopy = self;
        identifier2 = [currentDataSource2 identifier];

        v37 = v45 == identifier2;
        self = selfCopy;
        v18 = v34;
        v17 = v33;
        v19 = v32;
        v16 = v31;
        userData = v30;
        viewModel2 = v41;
        if (v37)
        {
          selectionManager2 = [v41 selectionManager];
          v42[0] = MEMORY[0x277D85DD0];
          v42[1] = 3221225472;
          v42[2] = __42__PXPhotosViewUIInteraction__handleTouch___block_invoke;
          v42[3] = &__block_descriptor_64_e37_v16__0___PXMutableSelectionManager__8l;
          v43 = v45;
          v44 = v46;
          [selectionManager2 performChanges:v42];

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

  touchCopy = v39;
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

- (void)_handlePinch:(id)pinch
{
  pinchCopy = pinch;
  if ([pinchCopy state] == 1)
  {
    scrollView = [(PXPhotosViewUIInteraction *)self scrollView];
    panGestureRecognizer = [scrollView panGestureRecognizer];
    [panGestureRecognizer px_cancel];
  }

  viewModel = [(PXPhotosViewInteraction *)self viewModel];
  view = [(PXGInteraction *)self view];
  if (([viewModel isInSelectMode] & 1) != 0 || !objc_msgSend(viewModel, "canPresentOneUp"))
  {
    v10 = 1;
  }

  else
  {
    interactionHelper = [(PXPhotosViewInteraction *)self interactionHelper];
    v9 = [interactionHelper handlePresentingPinchGestureRecognizer:pinchCopy forViewInteraction:self];

    v10 = 0;
    if (v9)
    {
      v11 = 1;
      goto LABEL_9;
    }
  }

  zoomablePhotosInteraction = [(PXPhotosViewInteraction *)self zoomablePhotosInteraction];
  v11 = [zoomablePhotosInteraction handlePinch:pinchCopy];

LABEL_9:
  v13 = [pinchCopy state] != 1 && objc_msgSend(pinchCopy, "state") != 2;
  if (((v11 | v13) & 1) == 0)
  {
    [pinchCopy velocity];
    v15 = v14 <= 0.0 ? 1 : v10;
    if ((v15 & 1) == 0)
    {
      [pinchCopy locationInView:view];
      v16 = [PXPhotosViewInteraction assetReferenceAtLocation:"assetReferenceAtLocation:withPadding:inCoordinateSpace:" withPadding:view inCoordinateSpace:?];
      if (v16)
      {
        interactionHelper2 = [(PXPhotosViewInteraction *)self interactionHelper];
        [interactionHelper2 presentOneUpForAssetReference:v16 style:2];
      }
    }
  }
}

- (void)_handlePress:(id)press
{
  if ([press state] == 3)
  {
    viewModel = [(PXPhotosViewInteraction *)self viewModel];
    singleSelectedAssetReference = [viewModel singleSelectedAssetReference];
    if (singleSelectedAssetReference && ([viewModel isInSelectMode] & 1) == 0 && objc_msgSend(viewModel, "canPresentOneUp"))
    {
      interactionHelper = [(PXPhotosViewInteraction *)self interactionHelper];
      [interactionHelper presentOneUpForAssetReference:singleSelectedAssetReference style:1];
    }
  }
}

- (void)handleLongPress:(id)press
{
  pressCopy = press;
  if ([pressCopy state] == 1)
  {
    view = [(PXGInteraction *)self view];
    [pressCopy locationInView:view];
    v6 = v5;
    v8 = v7;
    v9 = [PXPhotosViewInteraction assetReferenceAtLocation:"assetReferenceAtLocation:withPadding:inCoordinateSpace:" withPadding:view inCoordinateSpace:?];
    presentingViewController = [(PXPhotosViewInteraction *)self presentingViewController];
    v11 = [presentingViewController canPerformAction:sel_paste_ withSender:pressCopy];

    if (v11)
    {
      viewModel = [(PXPhotosViewInteraction *)self viewModel];
      isInSelectMode = [viewModel isInSelectMode];

      if ((isInSelectMode & 1) == 0)
      {
        [view becomeFirstResponder];
        v14 = *MEMORY[0x277CBF3A8];
        v15 = *(MEMORY[0x277CBF3A8] + 8);
        if (v9)
        {
          v16 = [(PXPhotosViewUIInteraction *)self regionOfInterestForAssetReference:v9];
          [v16 rectInCoordinateSpace:view];
          PXRectGetCenter();
          v6 = v17;
          v8 = v18;
        }

        mEMORY[0x277D75718] = [MEMORY[0x277D75718] sharedMenuController];
        [mEMORY[0x277D75718] showMenuFromView:view rect:{v6, v8, v14, v15}];
      }
    }
  }
}

- (void)_handleDoubleTap:(id)tap
{
  v31 = *MEMORY[0x277D85DE8];
  tapCopy = tap;
  if ([tapCopy state] == 3)
  {
    viewModel = [(PXPhotosViewInteraction *)self viewModel];
    if ([viewModel viewDelegateRespondsTo:16])
    {
      view = [(PXGInteraction *)self view];
      [tapCopy locationInView:view];
      v8 = v7;
      v10 = v9;

      view2 = [(PXGInteraction *)self view];
      v12 = [view2 hitTestResultsAtPoint:{v8, v10}];

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
        v25 = viewModel;
        while (2)
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v27 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v26 + 1) + 8 * i);
            identifier = [v18 identifier];
            if (identifier == @"PXPhotosLayoutHitTestIdentifierAsset")
            {

LABEL_14:
              userData = [v18 userData];
              viewModel = v25;
              viewDelegate = [v25 viewDelegate];
              presentingViewController = [(PXPhotosViewInteraction *)self presentingViewController];
              [viewDelegate photosViewController:presentingViewController didDoubleTapAssetReference:userData];

              goto LABEL_15;
            }

            v20 = identifier;
            v21 = [(__CFString *)identifier isEqualToString:@"PXPhotosLayoutHitTestIdentifierAsset"];

            if (v21)
            {
              goto LABEL_14;
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
          viewModel = v25;
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

- (BOOL)_handleTapWithHitTestResult:(id)result keyModifierFlags:(int64_t)flags
{
  v59 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  viewModel = [(PXPhotosViewInteraction *)self viewModel];
  if (flags & 0x100000) != 0 && ([MEMORY[0x277D75658] isInHardwareKeyboardMode])
  {
    isInHardwareKeyboardMode = 0;
    v9 = 1;
  }

  else if ((flags & 0x20000) != 0)
  {
    isInHardwareKeyboardMode = [MEMORY[0x277D75658] isInHardwareKeyboardMode];
    v9 = 0;
  }

  else
  {
    v9 = 0;
    isInHardwareKeyboardMode = 0;
  }

  identifier = [resultCopy identifier];
  if (identifier == @"PXPhotosLayoutHitTestIdentifierAsset")
  {

LABEL_16:
    userData = [resultCopy userData];
    zoomablePhotosInteraction = [(PXPhotosViewInteraction *)self zoomablePhotosInteraction];
    v28 = [zoomablePhotosInteraction handleTapOnAssetReference:userData];

    if (v28)
    {
      layout = [(PXGInteraction *)self layout];
      [layout clearLastVisibleAreaAnchoringInformation];
    }

    else
    {
      if (!isInHardwareKeyboardMode || ![(PXPhotosViewUIInteraction *)self ensureSelectMode])
      {
        if ([viewModel isInSelectMode])
        {
          if ([viewModel allowsMacStyleSelection])
          {
            if (v9)
            {
              v53[0] = MEMORY[0x277D85DD0];
              v53[1] = 3221225472;
              v53[2] = __74__PXPhotosViewUIInteraction__handleTapWithHitTestResult_keyModifierFlags___block_invoke;
              v53[3] = &unk_278298E60;
              v54 = userData;
              [viewModel performChanges:v53];
              v33 = v54;
            }

            else
            {
              v51[0] = MEMORY[0x277D85DD0];
              v51[1] = 3221225472;
              v51[2] = __74__PXPhotosViewUIInteraction__handleTapWithHitTestResult_keyModifierFlags___block_invoke_2;
              v51[3] = &unk_278298E60;
              v52 = userData;
              [viewModel performChanges:v51];
              v33 = v52;
            }
          }

          else
          {
            v49[0] = MEMORY[0x277D85DD0];
            v49[1] = 3221225472;
            v49[2] = __74__PXPhotosViewUIInteraction__handleTapWithHitTestResult_keyModifierFlags___block_invoke_3;
            v49[3] = &unk_278298E60;
            v50 = userData;
            [viewModel performChanges:v49];
            v33 = v50;
          }
        }

        else
        {
          if (!v9 || ([viewModel allowsMacStyleSelection] & 1) != 0 || !-[PXPhotosViewUIInteraction ensureSelectMode](self, "ensureSelectMode"))
          {
            if (![viewModel canPresentOneUp])
            {
              customAssetSelectionHandler = [viewModel customAssetSelectionHandler];

              if (customAssetSelectionHandler)
              {
                if ([viewModel oneUpAssetsViewMode])
                {
                  [(PXPhotosViewUIInteraction *)self setNavigatedAssetReference:userData];
                  customAssetSelectionHandler2 = [viewModel customAssetSelectionHandler];
                  [(PXPhotosViewUIInteraction *)self navigatedAssetSectionDataSourceManager];
                }

                else
                {
                  customAssetSelectionHandler2 = [viewModel customAssetSelectionHandler];
                  [viewModel dataSourceManager];
                }
                presentingViewController = ;
                v43 = (customAssetSelectionHandler2)[2](customAssetSelectionHandler2, userData, presentingViewController);
              }

              else
              {
                if (![viewModel viewDelegateRespondsTo:1])
                {
                  v38 = 0;
                  goto LABEL_50;
                }

                customAssetSelectionHandler2 = [viewModel viewDelegate];
                presentingViewController = [(PXPhotosViewInteraction *)self presentingViewController];
                v43 = [customAssetSelectionHandler2 photosViewController:presentingViewController didPickAssetReference:userData];
              }

              v38 = v43;

LABEL_50:
              goto LABEL_51;
            }

            interactionHelper = [(PXPhotosViewInteraction *)self interactionHelper];
            [interactionHelper presentOneUpForAssetReference:userData style:0];

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
            *&buf[10] = [viewModel allowsMacStyleSelection];
            *&buf[14] = 1024;
            LODWORD(v57) = [viewModel isInSelectMode];
            WORD2(v57) = 2048;
            *(&v57 + 6) = flags;
            HIWORD(v57) = 1024;
            isInHardwareKeyboardMode2 = [MEMORY[0x277D75658] isInHardwareKeyboardMode];
            _os_log_impl(&dword_21ABF3000, v34, OS_LOG_TYPE_DEFAULT, "[PXPhotosViewUIInteraction] Handling tap wants toggle selection: %i. Allows mac style selection: %i. Select mode enabled: %i. Key modifier flags: %lu. Connected to hardware keyboard: %i.", buf, 0x24u);
          }

          v44 = MEMORY[0x277D85DD0];
          v45 = 3221225472;
          v46 = __74__PXPhotosViewUIInteraction__handleTapWithHitTestResult_keyModifierFlags___block_invoke_52;
          v47 = &unk_278298E60;
          v48 = userData;
          [viewModel performChanges:&v44];
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
        *&buf[10] = [viewModel isInSelectMode];
        *&buf[14] = 2048;
        *&v57 = flags;
        WORD4(v57) = 1024;
        *(&v57 + 10) = [MEMORY[0x277D75658] isInHardwareKeyboardMode];
        _os_log_impl(&dword_21ABF3000, v30, OS_LOG_TYPE_DEFAULT, "[PXPhotosViewUIInteraction] Handling tap wants range selection: %i. Select mode enabled: %i. Key modifier flags: %lu. Connected to hardware keyboard: %i.", buf, 0x1Eu);
      }

      *buf = 0u;
      v57 = 0u;
      currentDataSource = [viewModel currentDataSource];
      v32 = currentDataSource;
      if (currentDataSource)
      {
        [currentDataSource indexPathForAssetReference:userData];
      }

      else
      {
        *buf = 0u;
        v57 = 0u;
      }

      layout = [viewModel selectionManager];
      contentController = [(PXPhotosViewInteraction *)self contentController];
      v55[0] = *buf;
      v55[1] = v57;
      [layout extendSelectionToItemIndexPath:v55 withDelegate:contentController];
    }

    goto LABEL_48;
  }

  v11 = identifier;
  v12 = [(__CFString *)identifier isEqualToString:@"PXPhotosLayoutHitTestIdentifierAsset"];

  if (v12)
  {
    goto LABEL_16;
  }

  identifier2 = [resultCopy identifier];
  v14 = identifier2;
  if (identifier2 == *MEMORY[0x277D73D40])
  {
  }

  else
  {
    v15 = [identifier2 isEqualToString:?];

    if ((v15 & 1) == 0)
    {
      identifier3 = [resultCopy identifier];
      if (identifier3 == @"PXPhotosLayoutHitTestIdentifierAccessoryCell")
      {
      }

      else
      {
        v17 = identifier3;
        v18 = [(__CFString *)identifier3 isEqualToString:@"PXPhotosLayoutHitTestIdentifierAccessoryCell"];

        if ((v18 & 1) == 0)
        {
          contentController2 = [(PXPhotosViewInteraction *)self contentController];
          overlayController = [contentController2 overlayController];
          spriteReference = [resultCopy spriteReference];
          objectReference = [spriteReference objectReference];
          v23 = [overlayController canHandleObjectReference:objectReference];

          if (!v23)
          {
            v38 = 0;
            goto LABEL_51;
          }

          contentController3 = [(PXPhotosViewInteraction *)self contentController];
          overlayController2 = [contentController3 overlayController];
          [overlayController2 handleTap:resultCopy];
        }
      }
    }
  }

  v38 = 1;
LABEL_51:

  return v38;
}

- (void)_handleTap:(id)tap
{
  v28 = *MEMORY[0x277D85DE8];
  tapCopy = tap;
  if ([tapCopy state] == 3)
  {
    view = [(PXGInteraction *)self view];
    [tapCopy locationInView:view];
    v7 = v6;
    v9 = v8;

    view2 = [(PXGInteraction *)self view];
    v11 = [view2 hitTestResultsAtPoint:{v7, v9}];

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

          if (-[PXPhotosViewUIInteraction _handleTapWithHitTestResult:keyModifierFlags:](self, "_handleTapWithHitTestResult:keyModifierFlags:", *(*(&v23 + 1) + 8 * v16), [tapCopy modifierFlags]))
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

    viewModel = [(PXPhotosViewInteraction *)self viewModel];
    v19 = viewModel;
    if ((v17 & 1) == 0 && ([viewModel handlePrimaryAction:tapCopy] & 1) == 0 && objc_msgSend(v19, "allowsMacStyleSelection"))
    {
      selectionManager = [v19 selectionManager];
      [selectionManager performChanges:&__block_literal_global_50_8010];
    }

    if ([tapCopy state] == 3 && objc_msgSend(v19, "viewDelegateRespondsTo:", 0x40000))
    {
      viewDelegate = [v19 viewDelegate];
      presentingViewController = [(PXPhotosViewInteraction *)self presentingViewController];
      [viewDelegate photosViewController:presentingViewController didReceiveUserInteraction:1];
    }
  }
}

- (BOOL)_handleHoverWithHitTestResult:(id)result
{
  resultCopy = result;
  identifier = [resultCopy identifier];
  if (identifier == @"PXPhotosLayoutHitTestIdentifierAsset")
  {
  }

  else
  {
    v6 = identifier;
    v7 = [(__CFString *)identifier isEqualToString:@"PXPhotosLayoutHitTestIdentifierAsset"];

    if (!v7)
    {
      v8 = 0;
      goto LABEL_9;
    }
  }

  viewModel = [(PXPhotosViewInteraction *)self viewModel];
  userData = [resultCopy userData];
  v19 = 0u;
  v20 = 0u;
  currentDataSource = [viewModel currentDataSource];
  v12 = currentDataSource;
  if (currentDataSource)
  {
    [currentDataSource indexPathForAssetReference:userData];
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  objc_initWeak(&location, self);
  selectionManager = [viewModel selectionManager];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __59__PXPhotosViewUIInteraction__handleHoverWithHitTestResult___block_invoke;
  v15[3] = &__block_descriptor_64_e37_v16__0___PXMutableSelectionManager__8l;
  v16 = v19;
  v17 = v20;
  [selectionManager performChanges:v15];

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

- (void)_handleHoverWithHitTestResults:(id)results hoverGesture:(id)gesture
{
  v19 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  gestureCopy = gesture;
  if ([gestureCopy state] != 1 && objc_msgSend(gestureCopy, "state") != 2)
  {
    goto LABEL_12;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  viewModel = resultsCopy;
  v9 = [viewModel countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (!v9)
  {
LABEL_11:

LABEL_12:
    viewModel = [(PXPhotosViewInteraction *)self viewModel];
    selectionManager = [viewModel selectionManager];
    [selectionManager performChanges:&__block_literal_global_48_8012];

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
      objc_enumerationMutation(viewModel);
    }

    if ([(PXPhotosViewUIInteraction *)self _handleHoverWithHitTestResult:*(*(&v14 + 1) + 8 * v12), v14])
    {
      break;
    }

    if (v10 == ++v12)
    {
      v10 = [viewModel countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (void)_handleHover:(id)hover
{
  hoverCopy = hover;
  view = [(PXGInteraction *)self view];
  [hoverCopy locationInView:view];
  v7 = v6;
  v9 = v8;

  view2 = [(PXGInteraction *)self view];
  v11 = [view2 hitTestResultsAtPoint:{v7, v9}];

  [(PXPhotosViewUIInteraction *)self _handleHoverWithHitTestResults:v11 hoverGesture:hoverCopy];
}

- (void)setContextMenuInteraction:(id)interaction
{
  interactionCopy = interaction;
  contextMenuInteraction = self->_contextMenuInteraction;
  if (contextMenuInteraction != interactionCopy)
  {
    v9 = interactionCopy;
    if (!interactionCopy && contextMenuInteraction)
    {
      view = [(UIContextMenuInteraction *)contextMenuInteraction view];
      [view removeInteraction:self->_contextMenuInteraction];
    }

    objc_storeStrong(&self->_contextMenuInteraction, interaction);
    interactionCopy = v9;
    if (self->_contextMenuInteraction)
    {
      view2 = [(PXGInteraction *)self view];
      [view2 addInteraction:self->_contextMenuInteraction];

      interactionCopy = v9;
    }
  }

  MEMORY[0x2821F96F8](contextMenuInteraction, interactionCopy);
}

- (id)adjustOneUpAssetReferenceToScrollToVisible:(id)visible
{
  visibleCopy = visible;
  uiInteractionDelegate = [(PXPhotosViewUIInteraction *)self uiInteractionDelegate];
  if (uiInteractionDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v6 = [uiInteractionDelegate uiInteraction:self adjustOneUpAssetReferenceToScrollToVisible:visibleCopy];
  }

  else
  {
    v6 = visibleCopy;
  }

  v7 = v6;

  return v7;
}

- (BOOL)presentOneUpForAssetReference:(id)reference
{
  referenceCopy = reference;
  interactionHelper = [(PXPhotosViewInteraction *)self interactionHelper];
  v6 = [interactionHelper presentOneUpForAssetReference:referenceCopy style:0];

  return v6;
}

- (id)_createContextMenuActionManagerForSelection
{
  viewModel = [(PXPhotosViewInteraction *)self viewModel];
  selectionManager = [viewModel selectionManager];

  v5 = [objc_alloc(MEMORY[0x277D3CCD0]) initWithSelectionManager:selectionManager];
  [v5 setPerformerDelegate:self];

  return v5;
}

- (id)createContextMenuActionManagerForNavigatedPreviewAssetReference
{
  navigatedAssetReference = [(PXPhotosViewUIInteraction *)self navigatedAssetReference];
  if (navigatedAssetReference)
  {
    viewModel = [(PXPhotosViewInteraction *)self viewModel];
    assetActionManager = [viewModel assetActionManager];
    v6 = objc_alloc(objc_opt_class());
    selectionManager = [viewModel selectionManager];
    v8 = [v6 initWithSelectionManager:selectionManager];

    [v8 setPerformerDelegate:self];
    allowsMultiSelectMenu = [viewModel allowsMultiSelectMenu];
    selectionManager2 = [v8 selectionManager];
    selectionSnapshot = [selectionManager2 selectionSnapshot];

    selectedIndexPaths = [selectionSnapshot selectedIndexPaths];
    [navigatedAssetReference indexPath];
    v13 = [selectedIndexPaths containsIndexPath:v19];

    if (!v13 || (allowsMultiSelectMenu & 1) == 0)
    {
      [v8 setObjectReference:navigatedAssetReference];
    }

    assetActionManager2 = [viewModel assetActionManager];
    [v8 setAdditionalPropertiesFromActionManager:assetActionManager2];
  }

  else
  {
    v15 = PXAssertGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v19 = 0;
      _os_log_error_impl(&dword_21ABF3000, v15, OS_LOG_TYPE_ERROR, "Unable to retrieve asset reference for one up presentation action manager", v19, 2u);
    }

    viewModel = [(PXPhotosViewInteraction *)self viewModel];
    v8 = 0;
  }

  assetActionManager3 = [viewModel assetActionManager];
  allowedActionTypes = [assetActionManager3 allowedActionTypes];
  [v8 setAllowedActionTypes:allowedActionTypes];

  return v8;
}

- (void)ensureSwipeDismissalInteraction
{
  if (!self->_edgeSwipeGesture)
  {
    v3 = objc_alloc_init(MEMORY[0x277D759A8]);
    view = [(PXGInteraction *)self view];
    effectiveUserInterfaceLayoutDirection = [view effectiveUserInterfaceLayoutDirection];

    if (effectiveUserInterfaceLayoutDirection == 1)
    {
      v6 = 8;
    }

    else
    {
      v6 = 2;
    }

    [(UIScreenEdgePanGestureRecognizer *)v3 setEdges:v6];
    view2 = [(PXGInteraction *)self view];
    [view2 addGestureRecognizer:v3];

    edgeSwipeGesture = self->_edgeSwipeGesture;
    self->_edgeSwipeGesture = v3;
    v9 = v3;

    v10 = [PXPhotosGridEdgeSwipeInteractiveDismissalTransition alloc];
    presentingViewController = [(PXPhotosViewInteraction *)self presentingViewController];
    v11 = [(PXPhotosGridEdgeSwipeInteractiveDismissalTransition *)v10 initWithEdgeSwipeGesture:v9 viewController:presentingViewController];
    edgeSwipeDismissalInteraction = self->_edgeSwipeDismissalInteraction;
    self->_edgeSwipeDismissalInteraction = v11;
  }
}

- (id)_adjustHiddenAssetReferences:(id)references
{
  referencesCopy = references;
  uiInteractionDelegate = [(PXPhotosViewUIInteraction *)self uiInteractionDelegate];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0 || (-[PXPhotosViewUIInteraction uiInteractionDelegate](self, "uiInteractionDelegate"), v7 = objc_claimAutoreleasedReturnValue(), [v7 uiInteraction:self adjustHiddenAssetReferences:referencesCopy], v8 = objc_claimAutoreleasedReturnValue(), v7, !v8))
  {
    v8 = referencesCopy;
  }

  return v8;
}

- (void)setHiddenAssetReferences:(id)references
{
  v4 = [(PXPhotosViewUIInteraction *)self _adjustHiddenAssetReferences:references];
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

      layout = [(PXGInteraction *)self layout];
      rootLayout = [layout rootLayout];
      [rootLayout hideSpritesForObjectReferences:v10];

      v5 = v10;
    }
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (id)_makePlaceholderViewForRegionOfInterest:(id)interest roiRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  view = [(PXGInteraction *)self view];
  v9 = [view resizableSnapshotViewFromRect:0 afterScreenUpdates:x withCapInsets:{y, width, height, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];

  return v9;
}

- (id)regionOfInterestForAssetReference:(id)reference image:(CGImage *)image fallbackMediaProvider:(id)provider shouldSnapshot:(BOOL)snapshot
{
  snapshotCopy = snapshot;
  referenceCopy = reference;
  providerCopy = provider;
  uiInteractionDelegate = [(PXPhotosViewUIInteraction *)self uiInteractionDelegate];
  v13 = objc_opt_respondsToSelector();

  if ((v13 & 1) == 0 || (-[PXPhotosViewUIInteraction uiInteractionDelegate](self, "uiInteractionDelegate"), v14 = objc_claimAutoreleasedReturnValue(), [v14 uiInteraction:self customRegionOfInterestForAssetReference:referenceCopy], v15 = objc_claimAutoreleasedReturnValue(), v14, !v15))
  {
    v32 = 0;
    if (snapshotCopy)
    {
      imageCopy = image;
    }

    else
    {
      imageCopy = &v32;
    }

    v31.receiver = self;
    v31.super_class = PXPhotosViewUIInteraction;
    v15 = [(PXPhotosViewInteraction *)&v31 regionOfInterestForAssetReference:referenceCopy image:imageCopy fallbackMediaProvider:providerCopy shouldSnapshot:snapshotCopy];
    if (image && !snapshotCopy)
    {
      *image = v32;
    }

    objc_initWeak(&location, self);
    view = [(PXGInteraction *)self view];
    [v15 rectInCoordinateSpace:view];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __106__PXPhotosViewUIInteraction_regionOfInterestForAssetReference_image_fallbackMediaProvider_shouldSnapshot___block_invoke;
    v27[3] = &unk_278298EA8;
    v29 = snapshotCopy;
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

- (id)regionOfInterestForAssetReference:(id)reference image:(id *)image
{
  v8 = 0;
  if (image)
  {
    v5 = &v8;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(PXPhotosViewUIInteraction *)self regionOfInterestForAssetReference:reference image:v5 fallbackMediaProvider:0 shouldSnapshot:1];
  if (v8)
  {
    *image = [MEMORY[0x277D755B8] imageWithCGImage:?];
  }

  return v6;
}

- (id)menuImageForActionType:(id)type
{
  typeCopy = type;
  viewModel = [(PXPhotosViewInteraction *)self viewModel];
  gridActionManager = [viewModel gridActionManager];
  v7 = [gridActionManager actionPerformerForActionType:typeCopy];

  activitySystemImageName = [v7 activitySystemImageName];
  if (activitySystemImageName)
  {
    v9 = MEMORY[0x277D755B8];
    activitySystemImageName2 = [v7 activitySystemImageName];
    v11 = [v9 systemImageNamed:activitySystemImageName2];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)menuTitleForActionType:(id)type
{
  typeCopy = type;
  viewModel = [(PXPhotosViewInteraction *)self viewModel];
  gridActionManager = [viewModel gridActionManager];
  v7 = [gridActionManager actionPerformerForActionType:typeCopy];

  v8 = [v7 localizedTitleForUseCase:1];

  return v8;
}

- (void)performActionWithType:(id)type
{
  typeCopy = type;
  viewModel = [(PXPhotosViewInteraction *)self viewModel];
  gridActionManager = [viewModel gridActionManager];
  v7 = [gridActionManager actionPerformerForActionType:typeCopy];

  [v7 performActionWithCompletionHandler:0];
}

- (BOOL)canPerformActionType:(id)type
{
  typeCopy = type;
  viewModel = [(PXPhotosViewInteraction *)self viewModel];
  gridActionManager = [viewModel gridActionManager];
  v7 = [gridActionManager canPerformActionType:typeCopy];

  return v7;
}

- (BOOL)ensureSelectMode
{
  viewModel = [(PXPhotosViewInteraction *)self viewModel];
  if ([viewModel canEnterSelectMode])
  {
    [viewModel performChanges:&__block_literal_global_32];
  }

  isInSelectMode = [viewModel isInSelectMode];

  return isInSelectMode;
}

- (void)toggleSelectMode
{
  if ([(PXPhotosViewUIInteraction *)self canToggleSelectMode])
  {
    viewModel = [(PXPhotosViewInteraction *)self viewModel];
    [viewModel performChanges:&__block_literal_global_30];
  }
}

void __45__PXPhotosViewUIInteraction_toggleSelectMode__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 attemptSetInSelectMode:{objc_msgSend(v2, "isInSelectMode") ^ 1}];
}

- (BOOL)canToggleSelectMode
{
  viewModel = [(PXPhotosViewInteraction *)self viewModel];
  if ([viewModel canEnterSelectMode])
  {
    canExitSelectMode = 1;
  }

  else
  {
    canExitSelectMode = [viewModel canExitSelectMode];
  }

  return canExitSelectMode;
}

- (BOOL)_pickNavigatedAssetReference
{
  navigatedAssetReference = [(PXPhotosViewUIInteraction *)self navigatedAssetReference];
  if (navigatedAssetReference)
  {
    viewModel = [(PXPhotosViewInteraction *)self viewModel];
    if ([viewModel isInSelectMode])
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __57__PXPhotosViewUIInteraction__pickNavigatedAssetReference__block_invoke;
      v9[3] = &unk_278298E60;
      v10 = navigatedAssetReference;
      [viewModel performChanges:v9];
    }

    else
    {
      if (![viewModel viewDelegateRespondsTo:1])
      {
        v5 = 0;
        goto LABEL_9;
      }

      viewDelegate = [viewModel viewDelegate];
      presentingViewController = [(PXPhotosViewInteraction *)self presentingViewController];
      [viewDelegate photosViewController:presentingViewController didPickAssetReference:navigatedAssetReference];
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
    viewModel = [(PXPhotosViewInteraction *)self viewModel];
    allowsContextMenuCustomization = [viewModel allowsContextMenuCustomization];

    if (allowsContextMenuCustomization)
    {
      v7 = [objc_alloc(MEMORY[0x277D753B8]) initWithDelegate:self];
    }

    else
    {
      interactionHelper = [(PXPhotosViewInteraction *)self interactionHelper];
      v7 = [interactionHelper contextMenuInteractionForViewInteraction:self];
    }

    [(PXPhotosViewUIInteraction *)self setContextMenuInteraction:v7];
  }
}

- (void)_tearDownGestures
{
  view = [(UITapGestureRecognizer *)self->_tapGesture view];
  [view removeGestureRecognizer:self->_tapGesture];

  view2 = [(UILongPressGestureRecognizer *)self->_longPressGesture view];
  [view2 removeGestureRecognizer:self->_longPressGesture];

  view3 = [(UIPinchGestureRecognizer *)self->_pinchGesture view];
  [view3 removeGestureRecognizer:self->_pinchGesture];

  view4 = [(UILongPressGestureRecognizer *)self->_touchGesture view];
  [view4 removeGestureRecognizer:self->_touchGesture];

  view5 = [(PXTouchingUIGestureRecognizer *)self->_touchingGesture view];
  [view5 removeGestureRecognizer:self->_touchingGesture];

  [(PXSwipeSelectionManager *)self->_swipeSelectionManager removeFromView];
  [(PXPhotosDragController *)self->_dragController removeFromView];
  zoomablePhotosInteraction = [(PXPhotosViewInteraction *)self zoomablePhotosInteraction];
  [zoomablePhotosInteraction setView:0];

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
  view = [(PXGInteraction *)self view];

  if (view)
  {
    viewModel = [(PXPhotosViewInteraction *)self viewModel];
    view2 = [(PXGInteraction *)self view];
    v5 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel_handleLongPress_];
    [v5 setDelegate:self];
    objc_storeStrong(&self->_longPressGesture, v5);
    [view2 addGestureRecognizer:v5];
    if ([viewModel allowsHoverBehavior])
    {
      v6 = [objc_alloc(MEMORY[0x277D755A0]) initWithTarget:self action:sel__handleHover_];
      [(UIHoverGestureRecognizer *)v6 setDelegate:self];
      hoverGesture = self->_hoverGesture;
      self->_hoverGesture = v6;
      v8 = v6;

      [view2 addGestureRecognizer:v8];
    }

    v9 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handleTap_];
    [v9 setDelegate:self];
    [v9 setCancelsTouchesInView:0];
    objc_storeStrong(&self->_tapGesture, v9);
    [view2 addGestureRecognizer:v9];
    if ([viewModel allowsDoubleTapBehavior])
    {
      v10 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handleDoubleTap_];
      [(UITapGestureRecognizer *)v10 setNumberOfTapsRequired:2];
      [(UITapGestureRecognizer *)v10 setDelegate:self];
      [v9 setCancelsTouchesInView:0];
      doubleTapGesture = self->_doubleTapGesture;
      self->_doubleTapGesture = v10;
      v12 = v10;

      [view2 addGestureRecognizer:v12];
    }

    v13 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handlePress_];
    [v13 setAllowedPressTypes:&unk_282C48228];
    [v13 setDelegate:self];
    objc_storeStrong(&self->_pressGesture, v13);
    [view2 addGestureRecognizer:v13];
    v14 = [objc_alloc(MEMORY[0x277D75848]) initWithTarget:self action:sel__handlePinch_];
    [v14 _setEndsOnSingleTouch:1];
    [v14 setDelegate:self];
    objc_storeStrong(&self->_pinchGesture, v14);
    [view2 addGestureRecognizer:v14];
    if ([viewModel allowsSwipeToSelect])
    {
      v15 = [PXSwipeSelectionManager alloc];
      viewModel2 = [(PXPhotosViewInteraction *)self viewModel];
      selectionManager = [viewModel2 selectionManager];
      scrollView = [(PXPhotosViewUIInteraction *)self scrollView];
      v19 = [(PXSwipeSelectionManager *)v15 initWithSelectionManager:selectionManager scrollView:scrollView];

      [(PXSwipeSelectionManager *)v19 setDelegate:self];
      swipeSelectionManager = self->_swipeSelectionManager;
      self->_swipeSelectionManager = v19;
    }

    if (([viewModel allowsDragOut] & 1) != 0 || objc_msgSend(viewModel, "allowsDragIn"))
    {
      v21 = [PXPhotosDragController alloc];
      selectionManager2 = [viewModel selectionManager];
      assetCollectionActionManager = [viewModel assetCollectionActionManager];
      v24 = [(PXPhotosDragController *)v21 initWithContentView:view2 selectionManager:selectionManager2 assetCollectionActionManager:assetCollectionActionManager delegate:self];
      dragController = self->_dragController;
      self->_dragController = v24;

      allowsDragIn = [viewModel allowsDragIn];
      dragController = [(PXPhotosViewUIInteraction *)self dragController];
      [dragController setCanDragIn:allowsDragIn];
    }

    view3 = [(PXGInteraction *)self view];
    zoomablePhotosInteraction = [(PXPhotosViewInteraction *)self zoomablePhotosInteraction];
    [zoomablePhotosInteraction setView:view3];

    interactionHelper = [(PXPhotosViewInteraction *)self interactionHelper];
    [interactionHelper didSetupGesturesForInteraction:self];

    [(PXPhotosViewUIInteraction *)self _updateContextMenuInteraction];
  }
}

- (void)setNavigatedAssetSectionDataSourceManager:(id)manager
{
  managerCopy = manager;
  [(PXAssetsDataSourceManager *)self->_navigatedAssetSectionDataSourceManager unregisterChangeObserver:self context:NavigatedSectionDataSourceObservationContext];
  navigatedAssetSectionDataSourceManager = self->_navigatedAssetSectionDataSourceManager;
  self->_navigatedAssetSectionDataSourceManager = managerCopy;
  v6 = managerCopy;

  [(PXAssetsDataSourceManager *)self->_navigatedAssetSectionDataSourceManager registerChangeObserver:self context:NavigatedSectionDataSourceObservationContext];
}

- (void)setNavigatedAssetReference:(id)reference
{
  referenceCopy = reference;
  v7 = referenceCopy;
  if (self->_navigatedAssetReference != referenceCopy && ([(PXAssetReference *)referenceCopy isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_navigatedAssetReference, reference);
    uiInteractionDelegate = [(PXPhotosViewUIInteraction *)self uiInteractionDelegate];
    [uiInteractionDelegate uiInteraction:self didChangeNavigatedAssetReference:v7];

    if (v7)
    {
      viewModel = [(PXPhotosViewInteraction *)self viewModel];
      dataSourceManager = [viewModel dataSourceManager];
      oneUpAssetsViewMode = [viewModel oneUpAssetsViewMode];
      if (oneUpAssetsViewMode == 2)
      {
        createReverselySortedDataSourceManager = [dataSourceManager createReverselySortedDataSourceManager];
        if (!createReverselySortedDataSourceManager)
        {
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosViewUIInteraction.m" lineNumber:126 description:@"Unable to create a data source manager for the selected asset section."];
        }

        [(PXPhotosViewUIInteraction *)self setNavigatedAssetSectionDataSourceManager:createReverselySortedDataSourceManager];
        v14 = dispatch_get_global_queue(33, 0);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __56__PXPhotosViewUIInteraction_setNavigatedAssetReference___block_invoke;
        block[3] = &unk_278299118;
        v19 = createReverselySortedDataSourceManager;
        v15 = createReverselySortedDataSourceManager;
        dispatch_sync(v14, block);
      }

      else if (oneUpAssetsViewMode == 1)
      {
        v12 = [dataSourceManager createDataSourceManagerForAssetsInSectionOfAsset:v7 usingNewTransientAssetCollection:{objc_msgSend(viewModel, "gridStyle") == 6}];
        if (!v12)
        {
          currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPhotosViewUIInteraction.m" lineNumber:119 description:@"Unable to create a data source manager for the selected asset section."];
        }

        [(PXPhotosViewUIInteraction *)self setNavigatedAssetSectionDataSourceManager:v12];
      }
    }
  }
}

- (NSUndoManager)undoManager
{
  delegate = [(PXPhotosViewInteraction *)self delegate];
  v4 = [delegate undoManagerForPhotosInteraction:self];

  return v4;
}

- (void)invalidateContextMenuInteraction
{
  [(PXPhotosViewUIInteraction *)self setContextMenuInteraction:0];

  [(PXPhotosViewUIInteraction *)self _updateContextMenuInteraction];
}

- (UIScrollView)scrollView
{
  scrollViewController = [(PXGInteraction *)self scrollViewController];
  scrollView = [scrollViewController scrollView];

  return scrollView;
}

- (void)scrollViewControllerDidChange
{
  v5.receiver = self;
  v5.super_class = PXPhotosViewUIInteraction;
  [(PXGInteraction *)&v5 scrollViewControllerDidChange];
  scrollViewController = [(PXGInteraction *)self scrollViewController];
  [scrollViewController registerObserver:self];

  interactionHelper = [(PXPhotosViewInteraction *)self interactionHelper];
  [interactionHelper scrollViewControllerDidChangeForInteraction:self];
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