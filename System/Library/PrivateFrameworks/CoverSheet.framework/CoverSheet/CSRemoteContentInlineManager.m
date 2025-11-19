@interface CSRemoteContentInlineManager
- (BOOL)isInlineRemoteContentVisible;
- (CSRemoteContentInlineManager)initWithItemDestination:(id)a3;
- (CSRemoteContentInlineProviding)remoteContentInlineProvider;
- (void)_presentInlineRemoteContent:(id)a3 animatePresentation:(BOOL)a4 retryOnFailure:(BOOL)a5;
- (void)dealloc;
- (void)removeInlineRemoteContentWithAnimatedDismissal:(BOOL)a3;
- (void)setInlineRemoteContentHidden:(BOOL)a3;
- (void)setRemoteContentInlineProvider:(id)a3;
@end

@implementation CSRemoteContentInlineManager

- (CSRemoteContentInlineManager)initWithItemDestination:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CSRemoteContentInlineManager;
  v6 = [(CSRemoteContentInlineManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_itemDestination, a3);
  }

  return v7;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_remoteContentInlineProvider);
  [WeakRetained removeRemoteContentInlineProvidingManager:self];

  v4.receiver = self;
  v4.super_class = CSRemoteContentInlineManager;
  [(CSRemoteContentInlineManager *)&v4 dealloc];
}

- (void)setRemoteContentInlineProvider:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_remoteContentInlineProvider, v4);
  [v4 addRemoteContentInlineProvidingManager:self];
}

- (BOOL)isInlineRemoteContentVisible
{
  remoteInlineViewController = self->_remoteInlineViewController;
  if (remoteInlineViewController)
  {
    LOBYTE(remoteInlineViewController) = !self->_inlineRemoteContentHidden;
  }

  return remoteInlineViewController & 1;
}

- (void)_presentInlineRemoteContent:(id)a3 animatePresentation:(BOOL)a4 retryOnFailure:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v22 = *MEMORY[0x277D85DE8];
  v9 = a3;
  if (self->_item)
  {
    v10 = SBLogDashBoard();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v21 = self;
      _os_log_impl(&dword_21EB05000, v10, OS_LOG_TYPE_DEFAULT, "[RemoteContent] %{public}@: Already had remote item; dismissing before adding", buf, 0xCu);
    }

    [(CSRemoteContentInlineManager *)self removeInlineRemoteContentWithAnimatedDismissal:0];
    if (v5)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __95__CSRemoteContentInlineManager__presentInlineRemoteContent_animatePresentation_retryOnFailure___block_invoke;
      block[3] = &unk_27838B838;
      block[4] = self;
      v19 = v9;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }

  else
  {
    objc_storeStrong(&self->_remoteInlineViewController, a3);
    self->_inlineRemoteContentHidden = 0;
    v11 = [CSAdjunctListItem alloc];
    v12 = MEMORY[0x277CCACA8];
    v13 = [MEMORY[0x277CCAD78] UUID];
    v14 = [v13 UUIDString];
    v15 = [v12 stringWithFormat:@"%@ - %@", @"remote content inline identifier", v14];
    v16 = [(CSAdjunctListItem *)v11 initWithIdentifier:v15];
    item = self->_item;
    self->_item = v16;

    [(CSAdjunctListItem *)self->_item setAnimatePresentation:v6];
    [(CSAdjunctListItem *)self->_item setContentHost:v9];
    [(CSItemDestination *)self->_itemDestination addOrUpdateItem:self->_item];
  }
}

- (void)removeInlineRemoteContentWithAnimatedDismissal:(BOOL)a3
{
  item = self->_item;
  if (item)
  {
    [(CSAdjunctListItem *)item setAnimateDismissal:a3];
    itemDestination = self->_itemDestination;
    v6 = [(CSAdjunctListItem *)self->_item identifier];
    [(CSItemDestination *)itemDestination removeItemForIdentifier:v6];
  }

  remoteInlineViewController = self->_remoteInlineViewController;
  self->_remoteInlineViewController = 0;

  v8 = self->_item;
  self->_item = 0;
}

- (void)setInlineRemoteContentHidden:(BOOL)a3
{
  v3 = a3;
  v5 = [(CSAdjunctListItem *)self->_item itemView];
  [v5 alpha];
  v7 = v6;

  v8 = [(CSRemoteContentInlineViewController *)self->_remoteInlineViewController view];
  [v8 alpha];
  v10 = v9;

  if (self->_inlineRemoteContentHidden != v3 || (((v7 <= 0.0) ^ v3) & 1) != 0 || v10 <= 0.0 != v3)
  {
    self->_inlineRemoteContentHidden = v3;
    if (v3)
    {
      v11 = 0.0;
    }

    else
    {
      v11 = 1.0;
    }

    v12 = [(CSAdjunctListItem *)self->_item itemView];
    [v12 setAlpha:v11];

    v13 = [(CSRemoteContentInlineViewController *)self->_remoteInlineViewController view];
    [v13 setAlpha:v11];
  }
}

- (CSRemoteContentInlineProviding)remoteContentInlineProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_remoteContentInlineProvider);

  return WeakRetained;
}

@end