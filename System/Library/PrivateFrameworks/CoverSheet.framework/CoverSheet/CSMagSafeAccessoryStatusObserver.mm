@interface CSMagSafeAccessoryStatusObserver
- (CSMagSafeAccessoryStatusDelegate)delegate;
- (CSMagSafeAccessoryStatusObserver)initWithCoverSheetContext:(id)context;
- (void)dealloc;
- (void)notifiedWithAccessoryAnimationStatusChanged;
- (void)notifiedWithAccessoryAttached;
- (void)notifiedWithAccessoryDetached;
@end

@implementation CSMagSafeAccessoryStatusObserver

- (CSMagSafeAccessoryStatusObserver)initWithCoverSheetContext:(id)context
{
  contextCopy = context;
  v26.receiver = self;
  v26.super_class = CSMagSafeAccessoryStatusObserver;
  v5 = [(CSMagSafeAccessoryStatusObserver *)&v26 init];
  if (v5)
  {
    accessoryStatusProvider = [contextCopy accessoryStatusProvider];
    statusProvider = v5->_statusProvider;
    v5->_statusProvider = accessoryStatusProvider;

    objc_initWeak(&location, v5);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    accessoryAttachedNotificationName = [contextCopy accessoryAttachedNotificationName];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __62__CSMagSafeAccessoryStatusObserver_initWithCoverSheetContext___block_invoke;
    v23[3] = &unk_27838CFC0;
    objc_copyWeak(&v24, &location);
    v10 = [defaultCenter addObserverForName:accessoryAttachedNotificationName object:0 queue:0 usingBlock:v23];
    attachmentNotificationToken = v5->_attachmentNotificationToken;
    v5->_attachmentNotificationToken = v10;

    accessoryDetachedNotificationName = [contextCopy accessoryDetachedNotificationName];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __62__CSMagSafeAccessoryStatusObserver_initWithCoverSheetContext___block_invoke_2;
    v21[3] = &unk_27838CFC0;
    objc_copyWeak(&v22, &location);
    v13 = [defaultCenter addObserverForName:accessoryDetachedNotificationName object:0 queue:0 usingBlock:v21];
    detachmentNotificationToken = v5->_detachmentNotificationToken;
    v5->_detachmentNotificationToken = v13;

    accessoryAnimationStatusChangedNotificationName = [contextCopy accessoryAnimationStatusChangedNotificationName];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __62__CSMagSafeAccessoryStatusObserver_initWithCoverSheetContext___block_invoke_3;
    v19[3] = &unk_27838CFC0;
    objc_copyWeak(&v20, &location);
    v16 = [defaultCenter addObserverForName:accessoryAnimationStatusChangedNotificationName object:0 queue:0 usingBlock:v19];
    animationStatusNotificationToken = v5->_animationStatusNotificationToken;
    v5->_animationStatusNotificationToken = v16;

    objc_destroyWeak(&v20);
    objc_destroyWeak(&v22);
    objc_destroyWeak(&v24);

    objc_destroyWeak(&location);
  }

  return v5;
}

void __62__CSMagSafeAccessoryStatusObserver_initWithCoverSheetContext___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained notifiedWithAccessoryAttached];
}

void __62__CSMagSafeAccessoryStatusObserver_initWithCoverSheetContext___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained notifiedWithAccessoryDetached];
}

void __62__CSMagSafeAccessoryStatusObserver_initWithCoverSheetContext___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained notifiedWithAccessoryAnimationStatusChanged];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self->_attachmentNotificationToken];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 removeObserver:self->_detachmentNotificationToken];

  v5.receiver = self;
  v5.super_class = CSMagSafeAccessoryStatusObserver;
  [(CSMagSafeAccessoryStatusObserver *)&v5 dealloc];
}

- (void)notifiedWithAccessoryAttached
{
  delegate = [(CSMagSafeAccessoryStatusObserver *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    lastAttachedAccessory = [(CSMagSafeAccessoryStatusProviding *)self->_statusProvider lastAttachedAccessory];
    [delegate accessoryAttached:lastAttachedAccessory];
  }
}

- (void)notifiedWithAccessoryDetached
{
  delegate = [(CSMagSafeAccessoryStatusObserver *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    lastDetachedAccessory = [(CSMagSafeAccessoryStatusProviding *)self->_statusProvider lastDetachedAccessory];
    [delegate accessoryDetached:lastDetachedAccessory];
  }
}

- (void)notifiedWithAccessoryAnimationStatusChanged
{
  delegate = [(CSMagSafeAccessoryStatusObserver *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate accessoryAnimationStatusChanged:{-[CSMagSafeAccessoryStatusProviding isAccessoryAnimationAllowed](self->_statusProvider, "isAccessoryAnimationAllowed")}];
  }
}

- (CSMagSafeAccessoryStatusDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end