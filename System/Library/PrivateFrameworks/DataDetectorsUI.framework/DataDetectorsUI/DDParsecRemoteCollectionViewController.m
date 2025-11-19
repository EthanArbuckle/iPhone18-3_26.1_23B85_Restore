@interface DDParsecRemoteCollectionViewController
- (DDParsecHostVCInterface)hostSideDelegate;
- (void)getStatusBarHidden:(id)a3;
- (void)loadReportAnIssueImage:(id)a3;
- (void)openParsecURL:(id)a3;
- (void)openTrailerPunchout:(id)a3;
- (void)performClientTextQueryWithTerm:(id)a3 queryId:(unint64_t)a4 sessionId:(id)a5 userAgent:(id)a6 reply:(id)a7;
- (void)remoteVCIsReady;
- (void)reportAnIssueWithReportIdentifier:(id)a3 sfReportData:(id)a4;
- (void)showingErrorView:(BOOL)a3;
- (void)showingFTE:(BOOL)a3;
- (void)viewServiceDidTerminateWithError:(id)a3;
@end

@implementation DDParsecRemoteCollectionViewController

- (void)viewServiceDidTerminateWithError:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [DDParsecRemoteCollectionViewController viewServiceDidTerminateWithError:v4];
  }

  [(DDParsecRemoteCollectionViewController *)self interactionEndedWithPunchout:0];
  v5.receiver = self;
  v5.super_class = DDParsecRemoteCollectionViewController;
  [(_UIRemoteViewController *)&v5 viewServiceDidTerminateWithError:v4];
}

- (void)reportAnIssueWithReportIdentifier:(id)a3 sfReportData:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DDParsecRemoteCollectionViewController *)self hostSideDelegate];
  [v8 reportAnIssueWithReportIdentifier:v7 sfReportData:v6];
}

- (void)loadReportAnIssueImage:(id)a3
{
  v4 = a3;
  v5 = [(DDParsecRemoteCollectionViewController *)self hostSideDelegate];
  [v5 loadReportAnIssueImage:v4];
}

- (void)showingErrorView:(BOOL)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __59__DDParsecRemoteCollectionViewController_showingErrorView___block_invoke;
  v3[3] = &unk_278290CD0;
  v3[4] = self;
  v4 = a3;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

void __59__DDParsecRemoteCollectionViewController_showingErrorView___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hostSideDelegate];
  [v2 showingErrorView:*(a1 + 40)];
}

- (void)showingFTE:(BOOL)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __53__DDParsecRemoteCollectionViewController_showingFTE___block_invoke;
  v3[3] = &unk_278290CD0;
  v3[4] = self;
  v4 = a3;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

void __53__DDParsecRemoteCollectionViewController_showingFTE___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hostSideDelegate];
  [v2 showingFTE:*(a1 + 40)];
}

- (void)openParsecURL:(id)a3
{
  v4 = a3;
  v5 = [(DDParsecRemoteCollectionViewController *)self hostSideDelegate];
  [v5 openParsecURL:v4];
}

- (void)getStatusBarHidden:(id)a3
{
  v4 = a3;
  v5 = [(DDParsecRemoteCollectionViewController *)self hostSideDelegate];
  [v5 getStatusBarHidden:v4];
}

- (void)openTrailerPunchout:(id)a3
{
  v4 = a3;
  v5 = [(DDParsecRemoteCollectionViewController *)self hostSideDelegate];
  [v5 openTrailerPunchout:v4];
}

- (void)performClientTextQueryWithTerm:(id)a3 queryId:(unint64_t)a4 sessionId:(id)a5 userAgent:(id)a6 reply:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a3;
  v16 = [(DDParsecRemoteCollectionViewController *)self hostSideDelegate];
  [v16 performClientTextQueryWithTerm:v15 queryId:a4 sessionId:v14 userAgent:v13 reply:v12];
}

- (void)remoteVCIsReady
{
  v2 = [(DDParsecRemoteCollectionViewController *)self hostSideDelegate];
  [v2 remoteVCIsReady];
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