@interface CSRemoteContentInlineManager
- (BOOL)isInlineRemoteContentVisible;
- (CSRemoteContentInlineManager)initWithItemDestination:(id)destination;
- (CSRemoteContentInlineProviding)remoteContentInlineProvider;
- (void)_presentInlineRemoteContent:(id)content animatePresentation:(BOOL)presentation retryOnFailure:(BOOL)failure;
- (void)dealloc;
- (void)removeInlineRemoteContentWithAnimatedDismissal:(BOOL)dismissal;
- (void)setInlineRemoteContentHidden:(BOOL)hidden;
- (void)setRemoteContentInlineProvider:(id)provider;
@end

@implementation CSRemoteContentInlineManager

- (CSRemoteContentInlineManager)initWithItemDestination:(id)destination
{
  destinationCopy = destination;
  v9.receiver = self;
  v9.super_class = CSRemoteContentInlineManager;
  v6 = [(CSRemoteContentInlineManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_itemDestination, destination);
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

- (void)setRemoteContentInlineProvider:(id)provider
{
  providerCopy = provider;
  objc_storeWeak(&self->_remoteContentInlineProvider, providerCopy);
  [providerCopy addRemoteContentInlineProvidingManager:self];
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

- (void)_presentInlineRemoteContent:(id)content animatePresentation:(BOOL)presentation retryOnFailure:(BOOL)failure
{
  failureCopy = failure;
  presentationCopy = presentation;
  v22 = *MEMORY[0x277D85DE8];
  contentCopy = content;
  if (self->_item)
  {
    v10 = SBLogDashBoard();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_21EB05000, v10, OS_LOG_TYPE_DEFAULT, "[RemoteContent] %{public}@: Already had remote item; dismissing before adding", buf, 0xCu);
    }

    [(CSRemoteContentInlineManager *)self removeInlineRemoteContentWithAnimatedDismissal:0];
    if (failureCopy)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __95__CSRemoteContentInlineManager__presentInlineRemoteContent_animatePresentation_retryOnFailure___block_invoke;
      block[3] = &unk_27838B838;
      block[4] = self;
      v19 = contentCopy;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }

  else
  {
    objc_storeStrong(&self->_remoteInlineViewController, content);
    self->_inlineRemoteContentHidden = 0;
    v11 = [CSAdjunctListItem alloc];
    v12 = MEMORY[0x277CCACA8];
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v15 = [v12 stringWithFormat:@"%@ - %@", @"remote content inline identifier", uUIDString];
    v16 = [(CSAdjunctListItem *)v11 initWithIdentifier:v15];
    item = self->_item;
    self->_item = v16;

    [(CSAdjunctListItem *)self->_item setAnimatePresentation:presentationCopy];
    [(CSAdjunctListItem *)self->_item setContentHost:contentCopy];
    [(CSItemDestination *)self->_itemDestination addOrUpdateItem:self->_item];
  }
}

- (void)removeInlineRemoteContentWithAnimatedDismissal:(BOOL)dismissal
{
  item = self->_item;
  if (item)
  {
    [(CSAdjunctListItem *)item setAnimateDismissal:dismissal];
    itemDestination = self->_itemDestination;
    identifier = [(CSAdjunctListItem *)self->_item identifier];
    [(CSItemDestination *)itemDestination removeItemForIdentifier:identifier];
  }

  remoteInlineViewController = self->_remoteInlineViewController;
  self->_remoteInlineViewController = 0;

  v8 = self->_item;
  self->_item = 0;
}

- (void)setInlineRemoteContentHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  itemView = [(CSAdjunctListItem *)self->_item itemView];
  [itemView alpha];
  v7 = v6;

  view = [(CSRemoteContentInlineViewController *)self->_remoteInlineViewController view];
  [view alpha];
  v10 = v9;

  if (self->_inlineRemoteContentHidden != hiddenCopy || (((v7 <= 0.0) ^ hiddenCopy) & 1) != 0 || v10 <= 0.0 != hiddenCopy)
  {
    self->_inlineRemoteContentHidden = hiddenCopy;
    if (hiddenCopy)
    {
      v11 = 0.0;
    }

    else
    {
      v11 = 1.0;
    }

    itemView2 = [(CSAdjunctListItem *)self->_item itemView];
    [itemView2 setAlpha:v11];

    view2 = [(CSRemoteContentInlineViewController *)self->_remoteInlineViewController view];
    [view2 setAlpha:v11];
  }
}

- (CSRemoteContentInlineProviding)remoteContentInlineProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_remoteContentInlineProvider);

  return WeakRetained;
}

@end