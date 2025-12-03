@interface DDParsecRemoteCollectionViewController
- (DDParsecHostVCInterface)hostSideDelegate;
- (void)getStatusBarHidden:(id)hidden;
- (void)loadReportAnIssueImage:(id)image;
- (void)openParsecURL:(id)l;
- (void)openTrailerPunchout:(id)punchout;
- (void)performClientTextQueryWithTerm:(id)term queryId:(unint64_t)id sessionId:(id)sessionId userAgent:(id)agent reply:(id)reply;
- (void)remoteVCIsReady;
- (void)reportAnIssueWithReportIdentifier:(id)identifier sfReportData:(id)data;
- (void)showingErrorView:(BOOL)view;
- (void)showingFTE:(BOOL)e;
- (void)viewServiceDidTerminateWithError:(id)error;
@end

@implementation DDParsecRemoteCollectionViewController

- (void)viewServiceDidTerminateWithError:(id)error
{
  errorCopy = error;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [DDParsecRemoteCollectionViewController viewServiceDidTerminateWithError:errorCopy];
  }

  [(DDParsecRemoteCollectionViewController *)self interactionEndedWithPunchout:0];
  v5.receiver = self;
  v5.super_class = DDParsecRemoteCollectionViewController;
  [(_UIRemoteViewController *)&v5 viewServiceDidTerminateWithError:errorCopy];
}

- (void)reportAnIssueWithReportIdentifier:(id)identifier sfReportData:(id)data
{
  dataCopy = data;
  identifierCopy = identifier;
  hostSideDelegate = [(DDParsecRemoteCollectionViewController *)self hostSideDelegate];
  [hostSideDelegate reportAnIssueWithReportIdentifier:identifierCopy sfReportData:dataCopy];
}

- (void)loadReportAnIssueImage:(id)image
{
  imageCopy = image;
  hostSideDelegate = [(DDParsecRemoteCollectionViewController *)self hostSideDelegate];
  [hostSideDelegate loadReportAnIssueImage:imageCopy];
}

- (void)showingErrorView:(BOOL)view
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __59__DDParsecRemoteCollectionViewController_showingErrorView___block_invoke;
  v3[3] = &unk_278290CD0;
  v3[4] = self;
  viewCopy = view;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

void __59__DDParsecRemoteCollectionViewController_showingErrorView___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hostSideDelegate];
  [v2 showingErrorView:*(a1 + 40)];
}

- (void)showingFTE:(BOOL)e
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __53__DDParsecRemoteCollectionViewController_showingFTE___block_invoke;
  v3[3] = &unk_278290CD0;
  v3[4] = self;
  eCopy = e;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

void __53__DDParsecRemoteCollectionViewController_showingFTE___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hostSideDelegate];
  [v2 showingFTE:*(a1 + 40)];
}

- (void)openParsecURL:(id)l
{
  lCopy = l;
  hostSideDelegate = [(DDParsecRemoteCollectionViewController *)self hostSideDelegate];
  [hostSideDelegate openParsecURL:lCopy];
}

- (void)getStatusBarHidden:(id)hidden
{
  hiddenCopy = hidden;
  hostSideDelegate = [(DDParsecRemoteCollectionViewController *)self hostSideDelegate];
  [hostSideDelegate getStatusBarHidden:hiddenCopy];
}

- (void)openTrailerPunchout:(id)punchout
{
  punchoutCopy = punchout;
  hostSideDelegate = [(DDParsecRemoteCollectionViewController *)self hostSideDelegate];
  [hostSideDelegate openTrailerPunchout:punchoutCopy];
}

- (void)performClientTextQueryWithTerm:(id)term queryId:(unint64_t)id sessionId:(id)sessionId userAgent:(id)agent reply:(id)reply
{
  replyCopy = reply;
  agentCopy = agent;
  sessionIdCopy = sessionId;
  termCopy = term;
  hostSideDelegate = [(DDParsecRemoteCollectionViewController *)self hostSideDelegate];
  [hostSideDelegate performClientTextQueryWithTerm:termCopy queryId:id sessionId:sessionIdCopy userAgent:agentCopy reply:replyCopy];
}

- (void)remoteVCIsReady
{
  hostSideDelegate = [(DDParsecRemoteCollectionViewController *)self hostSideDelegate];
  [hostSideDelegate remoteVCIsReady];
}

- (DDParsecHostVCInterface)hostSideDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_hostSideDelegate);

  return WeakRetained;
}

- (void)viewServiceDidTerminateWithError:(void *)a1 .cold.1(void *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = [a1 code];
  _os_log_debug_impl(&dword_21AB70000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "View service did terminate (reason:%ld)", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end