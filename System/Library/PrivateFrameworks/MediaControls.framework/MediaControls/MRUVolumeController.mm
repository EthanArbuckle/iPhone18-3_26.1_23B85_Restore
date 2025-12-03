@interface MRUVolumeController
- (MRUVolumeControllerCoordinationDelegate)coordinationDelegate;
- (MRUVolumeControllerDelegate)shadowDelegate;
- (float)volumeValue;
- (id)description;
- (void)beginEqualization;
- (void)finishEqualization;
- (void)restoreDelegate;
- (void)setDelegate:(id)delegate;
- (void)setOptimisticValue:(id)value;
- (void)setVolumeValue:(float)value;
@end

@implementation MRUVolumeController

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  volumeControlLabel = [(MPVolumeController *)self volumeControlLabel];
  v6 = [v3 stringWithFormat:@"<%@:%p (%@)>", v4, self, volumeControlLabel];

  return v6;
}

- (void)setDelegate:(id)delegate
{
  v5.receiver = self;
  v5.super_class = MRUVolumeController;
  delegateCopy = delegate;
  [(MPVolumeController *)&v5 setDelegate:delegateCopy];
  objc_storeWeak(&self->_shadowDelegate, delegateCopy);
}

- (float)volumeValue
{
  if (self->_optimisticValue)
  {
    optimisticValue = self->_optimisticValue;

    [(NSNumber *)optimisticValue floatValue];
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = MRUVolumeController;
    [(MPVolumeController *)&v6 volumeValue];
  }

  return result;
}

- (void)setVolumeValue:(float)value
{
  v9.receiver = self;
  v9.super_class = MRUVolumeController;
  [(MPVolumeController *)&v9 setVolumeValue:?];
  *&v5 = value;
  v6 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  [(MRUVolumeController *)self setOptimisticValue:v6];

  coordinationDelegate = [(MRUVolumeController *)self coordinationDelegate];
  *&v8 = value;
  [coordinationDelegate volumeController:self volumeValueDidChange:v8];
}

- (void)setOptimisticValue:(id)value
{
  v19 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  if (!self->_optimisticValue)
  {
    v6 = MCLogCategoryVolume();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      [valueCopy floatValue];
      *buf = 138412546;
      selfCopy = self;
      v17 = 2048;
      v18 = v7;
      _os_log_impl(&dword_1A20FC000, v6, OS_LOG_TYPE_DEFAULT, "%@ - Start optimistic state with: %.2f", buf, 0x16u);
    }
  }

  v14.receiver = self;
  v14.super_class = MRUVolumeController;
  [(MPVolumeController *)&v14 setDelegate:0];
  objc_storeStrong(&self->_optimisticValue, value);
  WeakRetained = objc_loadWeakRetained(&self->_shadowDelegate);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = objc_loadWeakRetained(&self->_shadowDelegate);
    [valueCopy floatValue];
    [v10 volumeController:self volumeValueDidChange:?];
  }

  [(NSTimer *)self->_optimisticTimer invalidate];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __42__MRUVolumeController_setOptimisticValue___block_invoke;
  v13[3] = &unk_1E7663F10;
  v13[4] = self;
  v11 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:0 repeats:v13 block:2.0];
  optimisticTimer = self->_optimisticTimer;
  self->_optimisticTimer = v11;
}

void __42__MRUVolumeController_setOptimisticValue___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 40) floatValue];
  v3 = v2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  *(v4 + 32) = 0;

  v6 = *(a1 + 32);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  [*(a1 + 32) restoreDelegate];
  v8 = MCLogCategoryVolume();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    [v9 volumeValue];
    v11 = 138412802;
    v12 = v9;
    v13 = 2048;
    v14 = v10;
    v15 = 2048;
    v16 = v3;
    _os_log_impl(&dword_1A20FC000, v8, OS_LOG_TYPE_DEFAULT, "%@ Finish optimistic state with value: %.2f (optimistic=%.2f)", &v11, 0x20u);
  }
}

- (void)beginEqualization
{
  WeakRetained = objc_loadWeakRetained(&self->_shadowDelegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_shadowDelegate);
    [v5 volumeControllerWillBeginEqualization:self];
  }
}

- (void)finishEqualization
{
  WeakRetained = objc_loadWeakRetained(&self->_shadowDelegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_shadowDelegate);
    [v5 volumeControllerDidFinishEqualization:self];
  }
}

- (void)restoreDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_shadowDelegate);
  v16.receiver = self;
  v16.super_class = MRUVolumeController;
  [(MPVolumeController *)&v16 setDelegate:WeakRetained];

  v4 = objc_loadWeakRetained(&self->_shadowDelegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate = [(MPVolumeController *)self delegate];
    [(MRUVolumeController *)self volumeValue];
    [delegate volumeController:self volumeValueDidChange:?];
  }

  v7 = objc_loadWeakRetained(&self->_shadowDelegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(MPVolumeController *)self delegate];
    [delegate2 volumeController:self volumeControlAvailableDidChange:{-[MPVolumeController isVolumeControlAvailable](self, "isVolumeControlAvailable")}];
  }

  v10 = objc_loadWeakRetained(&self->_shadowDelegate);
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    delegate3 = [(MPVolumeController *)self delegate];
    [delegate3 volumeController:self volumeControlCapabilitiesDidChange:{-[MPVolumeController volumeCapabilities](self, "volumeCapabilities")}];
  }

  v13 = objc_loadWeakRetained(&self->_shadowDelegate);
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    delegate4 = [(MPVolumeController *)self delegate];
    [delegate4 volumeController:self mutedStateDidChange:{-[MPVolumeController isMuted](self, "isMuted")}];
  }
}

- (MRUVolumeControllerCoordinationDelegate)coordinationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_coordinationDelegate);

  return WeakRetained;
}

- (MRUVolumeControllerDelegate)shadowDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_shadowDelegate);

  return WeakRetained;
}

@end