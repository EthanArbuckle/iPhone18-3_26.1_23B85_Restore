@interface CSRemoteContentHostViewController
+ (id)serviceViewControllerInterface;
- (CGRect)_customContentBounds;
- (CGRect)contentFrame;
- (CSRemoteContentHostDelegate)delegate;
- (void)_fetchContentPreferences;
- (void)_fetchInlinePresentationContentFrame;
- (void)_updateContentFrame:(CGRect)frame;
- (void)_updateContentPreferences:(id)preferences;
- (void)configureWithDefinition:(id)definition;
- (void)didDismissForDismissType:(int64_t)type;
- (void)getContentBoundsWithReplyBlock:(id)block;
- (void)hostDidChangeContentBounds;
- (void)presentAlert:(id)alert replyBlock:(id)block;
- (void)setHidden:(BOOL)hidden;
- (void)viewServiceDidTerminateWithError:(id)error;
@end

@implementation CSRemoteContentHostViewController

- (void)configureWithDefinition:(id)definition
{
  v18 = *MEMORY[0x277D85DE8];
  definitionCopy = definition;
  objc_storeStrong(&self->_definition, definition);
  v6 = *(MEMORY[0x277CBF398] + 16);
  self->_contentFrame.origin = *MEMORY[0x277CBF398];
  self->_contentFrame.size = v6;
  v7 = xpc_dictionary_create(0, 0, 0);
  [(CSRemoteContentHostViewController *)self _customContentBounds];
  BSSerializeCGRectToXPCDictionaryWithKey();
  serviceViewControllerProxy = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  userInfo = [(SBSRemoteContentDefinition *)self->_definition userInfo];
  xpcEndpoint = [(SBSRemoteContentDefinition *)self->_definition xpcEndpoint];
  [serviceViewControllerProxy configureWithUserInfo:userInfo contentBounds:v7 endpoint:xpcEndpoint];

  v11 = SBLogDashBoard();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    userInfo2 = [(SBSRemoteContentDefinition *)self->_definition userInfo];
    xpcEndpoint2 = [(SBSRemoteContentDefinition *)self->_definition xpcEndpoint];
    v14 = 138412546;
    v15 = userInfo2;
    v16 = 2112;
    v17 = xpcEndpoint2;
    _os_log_impl(&dword_21EB05000, v11, OS_LOG_TYPE_DEFAULT, "[RemoteContent] CSRemoteContentHostViewController configuring with user info: %@, endpoint: %@", &v14, 0x16u);
  }

  [(CSRemoteContentHostViewController *)self _fetchContentPreferences];
}

- (void)didDismissForDismissType:(int64_t)type
{
  serviceViewControllerProxy = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [serviceViewControllerProxy didDismissForDismissType:type];
}

- (void)hostDidChangeContentBounds
{
  serviceViewControllerProxy = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [serviceViewControllerProxy didChangeContentBounds];
}

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  view = [(CSRemoteContentHostViewController *)self view];
  [view setHidden:hiddenCopy];
}

- (void)getContentBoundsWithReplyBlock:(id)block
{
  if (block)
  {
    blockCopy = block;
    v5 = xpc_dictionary_create(0, 0, 0);
    [(CSRemoteContentHostViewController *)self _customContentBounds];
    BSSerializeCGRectToXPCDictionaryWithKey();
    blockCopy[2](blockCopy, v5);
  }
}

- (void)presentAlert:(id)alert replyBlock:(id)block
{
  v31 = *MEMORY[0x277D85DE8];
  alertCopy = alert;
  blockCopy = block;
  v7 = MEMORY[0x277D75110];
  title = [alertCopy title];
  message = [alertCopy message];
  v10 = [v7 alertControllerWithTitle:title message:message preferredStyle:{objc_msgSend(alertCopy, "preferredStyle")}];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v22 = alertCopy;
  obj = [alertCopy actions];
  v11 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v27;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v26 + 1) + 8 * i);
        v16 = MEMORY[0x277D750F8];
        title2 = [v15 title];
        style = [v15 style];
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __61__CSRemoteContentHostViewController_presentAlert_replyBlock___block_invoke;
        v24[3] = &unk_27838DFD8;
        v19 = blockCopy;
        v24[4] = v15;
        v25 = v19;
        v20 = [v16 actionWithTitle:title2 style:style handler:v24];
        [v10 addAction:v20];
      }

      v12 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v12);
  }

  [(CSRemoteContentHostViewController *)self presentViewController:v10 animated:1 completion:0];
}

- (void)viewServiceDidTerminateWithError:(id)error
{
  v11 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = SBLogDashBoard();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = errorCopy;
    _os_log_impl(&dword_21EB05000, v5, OS_LOG_TYPE_DEFAULT, "[RemoteContent] CSRemoteContentHostViewController client process terminated: %@", &v9, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained remoteContentHostViewController:self didTerminateWithError:errorCopy];
  }

  else
  {
    v8 = SBLogDashBoard();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_21EB05000, v8, OS_LOG_TYPE_DEFAULT, "[RemoteContent] unhandled termination for nil delegate", &v9, 2u);
    }
  }
}

+ (id)serviceViewControllerInterface
{
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2830EF280];
  [v2 setXPCType:MEMORY[0x277D86468] forSelector:sel_getInlinePresentationContentFrameWithReplyBlock_ argumentIndex:0 ofReply:1];

  return v2;
}

- (void)_fetchContentPreferences
{
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __61__CSRemoteContentHostViewController__fetchContentPreferences__block_invoke;
  v5[3] = &unk_27838E000;
  objc_copyWeak(&v6, &location);
  v5[4] = self;
  v3 = MEMORY[0x223D698D0](v5);
  serviceViewControllerProxy = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [serviceViewControllerProxy getContentPreferencesWithReplyBlock:v3];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __61__CSRemoteContentHostViewController__fetchContentPreferences__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (v3)
  {
    [WeakRetained _updateContentPreferences:v3];
  }

  else
  {
    v6 = SBLogDashBoard();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = 138543362;
      v9 = v7;
      _os_log_impl(&dword_21EB05000, v6, OS_LOG_TYPE_DEFAULT, "[RemoteContent] %{public}@: Ignoring nil remote preferences", &v8, 0xCu);
    }
  }
}

- (void)_updateContentPreferences:(id)preferences
{
  preferencesCopy = preferences;
  objc_storeStrong(&self->_contentPreferences, preferences);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didChangeRemotePreferences:preferencesCopy];
  if ([WeakRetained prefersInlineForPreferences:preferencesCopy])
  {
    [(CSRemoteContentHostViewController *)self _fetchInlinePresentationContentFrame];
  }
}

- (CGRect)_customContentBounds
{
  interfaceOrientation = [(CSRemoteContentHostViewController *)self interfaceOrientation];
  [CSContentCutoutBoundsCalculator modalContentCutoutBoundsForInterfaceOrientation:interfaceOrientation];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if ((interfaceOrientation - 1) <= 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained remoteContentComplicationTopYInset];
    v7 = v7 + v13;
    [WeakRetained remoteContentComplicationHeightInset];
    v11 = v11 - v14;
  }

  v15 = v5;
  v16 = v7;
  v17 = v9;
  v18 = v11;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (void)_fetchInlinePresentationContentFrame
{
  objc_initWeak(&location, self);
  serviceViewControllerProxy = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __73__CSRemoteContentHostViewController__fetchInlinePresentationContentFrame__block_invoke;
  v4[3] = &unk_27838E028;
  objc_copyWeak(&v5, &location);
  [serviceViewControllerProxy getInlinePresentationContentFrameWithReplyBlock:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __73__CSRemoteContentHostViewController__fetchInlinePresentationContentFrame__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    BSDeserializeCGRectFromXPCDictionaryWithKey();
    [WeakRetained _updateContentFrame:?];
  }
}

- (void)_updateContentFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  p_contentFrame = &self->_contentFrame;
  if (!CGRectEqualToRect(self->_contentFrame, frame))
  {
    p_contentFrame->origin.x = x;
    p_contentFrame->origin.y = y;
    p_contentFrame->size.width = width;
    p_contentFrame->size.height = height;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained didChangeRemoteHostContentFrame:{x, y, width, height}];
  }
}

- (CSRemoteContentHostDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGRect)contentFrame
{
  x = self->_contentFrame.origin.x;
  y = self->_contentFrame.origin.y;
  width = self->_contentFrame.size.width;
  height = self->_contentFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end