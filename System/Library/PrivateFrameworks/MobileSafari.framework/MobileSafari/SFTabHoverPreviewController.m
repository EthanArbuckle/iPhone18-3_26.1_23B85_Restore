@interface SFTabHoverPreviewController
- (SFTabHoverPreviewController)init;
- (SFTabHoverPreviewControllerDelegate)delegate;
- (void)_cancelOrCloseHoverPreviewWithGracePeriod:(BOOL)a3;
- (void)_showHoverPreviewForItem:(id)a3;
- (void)_temporarilyDisableHover;
- (void)dealloc;
- (void)dismiss;
- (void)setEnabled:(BOOL)a3;
- (void)setNeedsSnapshotUpdate;
- (void)updateWithItem:(id)a3 atLocation:(CGPoint)a4;
@end

@implementation SFTabHoverPreviewController

- (SFTabHoverPreviewController)init
{
  v10.receiver = self;
  v10.super_class = SFTabHoverPreviewController;
  v2 = [(SFTabHoverPreviewController *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v2->_enabled = 1;
    v4 = [objc_alloc(MEMORY[0x1E698E5E8]) initWithIdentifier:@"com.apple.mobilesafari.tabHoverPreviewShowTimer"];
    tabHoverPreviewShowTimer = v3->_tabHoverPreviewShowTimer;
    v3->_tabHoverPreviewShowTimer = v4;

    v6 = [objc_alloc(MEMORY[0x1E698E5E8]) initWithIdentifier:@"com.apple.mobilesafari.disableHoverTimer"];
    disableHoverTimer = v3->_disableHoverTimer;
    v3->_disableHoverTimer = v6;

    v8 = v3;
  }

  return v3;
}

- (void)dealloc
{
  [(BSAbsoluteMachTimer *)self->_tabHoverPreviewShowTimer invalidate];
  [(BSAbsoluteMachTimer *)self->_disableHoverTimer invalidate];
  v3.receiver = self;
  v3.super_class = SFTabHoverPreviewController;
  [(SFTabHoverPreviewController *)&v3 dealloc];
}

- (void)setEnabled:(BOOL)a3
{
  self->_enabled = a3;
  if (!a3)
  {
    [(SFTabHoverPreviewController *)self cancel];
  }
}

- (void)updateWithItem:(id)a3 atLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v8 = a3;
  v9 = v8;
  if (self->_enabled)
  {
    if (v8)
    {
      if (self->_itemShowingPreview != v8 && (self->_itemPendingPreview != v8 || sqrt((x - self->_pendingHoverLocation.x) * (x - self->_pendingHoverLocation.x) + (y - self->_pendingHoverLocation.y) * (y - self->_pendingHoverLocation.y)) >= 10.0))
      {
        Current = CFAbsoluteTimeGetCurrent();
        if (self->_itemShowingPreview || (Current = Current - self->_lastTimeHoverPreviewWasDismissed, Current < 0.5))
        {
          [(SFTabHoverPreviewController *)self _showHoverPreviewForItem:v9, Current];
        }

        else
        {
          objc_storeStrong(&self->_itemPendingPreview, a3);
          self->_pendingHoverLocation.x = x;
          self->_pendingHoverLocation.y = y;
          [(BSAbsoluteMachTimer *)self->_tabHoverPreviewShowTimer cancel];
          objc_initWeak(&location, self);
          tabHoverPreviewShowTimer = self->_tabHoverPreviewShowTimer;
          v12 = MEMORY[0x1E69E96A0];
          v13 = MEMORY[0x1E69E96A0];
          v14[0] = MEMORY[0x1E69E9820];
          v14[1] = 3221225472;
          v14[2] = __57__SFTabHoverPreviewController_updateWithItem_atLocation___block_invoke;
          v14[3] = &unk_1E721E9B8;
          objc_copyWeak(&v16, &location);
          v15 = v9;
          [(BSAbsoluteMachTimer *)tabHoverPreviewShowTimer scheduleWithFireInterval:v12 leewayInterval:v14 queue:0.6 handler:0.06];

          objc_destroyWeak(&v16);
          objc_destroyWeak(&location);
        }
      }
    }

    else
    {
      [(SFTabHoverPreviewController *)self _cancelOrCloseHoverPreviewWithGracePeriod:1];
    }
  }
}

void __57__SFTabHoverPreviewController_updateWithItem_atLocation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _showHoverPreviewForItem:*(a1 + 32)];
}

- (void)dismiss
{
  [(SFTabHoverPreviewController *)self _cancelOrCloseHoverPreviewWithGracePeriod:0];

  [(SFTabHoverPreviewController *)self _temporarilyDisableHover];
}

- (void)setNeedsSnapshotUpdate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained tabHoverPreviewControllerNeedsSnapshotUpdate:self];
}

- (void)_showHoverPreviewForItem:(id)a3
{
  v4 = a3;
  [(BSAbsoluteMachTimer *)self->_tabHoverPreviewShowTimer cancel];
  itemPendingPreview = self->_itemPendingPreview;
  self->_itemPendingPreview = 0;

  itemShowingPreview = self->_itemShowingPreview;
  self->_itemShowingPreview = v4;
  v7 = v4;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained tabHoverPreviewController:self showPreviewForItem:v7];
}

- (void)_cancelOrCloseHoverPreviewWithGracePeriod:(BOOL)a3
{
  v3 = a3;
  [(BSAbsoluteMachTimer *)self->_tabHoverPreviewShowTimer cancel];
  Current = 0.0;
  if (v3 && self->_itemShowingPreview)
  {
    Current = CFAbsoluteTimeGetCurrent();
  }

  self->_lastTimeHoverPreviewWasDismissed = Current;
  itemPendingPreview = self->_itemPendingPreview;
  self->_itemPendingPreview = 0;

  itemShowingPreview = self->_itemShowingPreview;
  self->_itemShowingPreview = 0;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained tabHoverPreviewControllerDismissPreview:self];
}

- (void)_temporarilyDisableHover
{
  if ([(BSAbsoluteMachTimer *)self->_disableHoverTimer isScheduled])
  {
    [(BSAbsoluteMachTimer *)self->_disableHoverTimer cancel];
  }

  [(UIHoverGestureRecognizer *)self->_hoverRecognizer setEnabled:0];
  objc_initWeak(&location, self);
  disableHoverTimer = self->_disableHoverTimer;
  v4 = MEMORY[0x1E69E96A0];
  v5 = MEMORY[0x1E69E96A0];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__SFTabHoverPreviewController__temporarilyDisableHover__block_invoke;
  v6[3] = &unk_1E721E9E0;
  objc_copyWeak(&v7, &location);
  [(BSAbsoluteMachTimer *)disableHoverTimer scheduleWithFireInterval:v4 leewayInterval:v6 queue:0.5 handler:0.05];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __55__SFTabHoverPreviewController__temporarilyDisableHover__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[10] setEnabled:1];
    WeakRetained = v2;
  }
}

- (SFTabHoverPreviewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end