@interface PreviewTableViewController
- (LinkPreviewProvider)linkPreviewProvider;
- (PreviewTableViewControllerDelegate)previewDelegate;
- (id)tableView:(id)view contextMenuConfigurationForRowAtIndexPath:(id)path point:(CGPoint)point;
- (id)tableView:(id)view previewForDismissingContextMenuWithConfiguration:(id)configuration;
- (id)tableView:(id)view previewForHighlightingContextMenuWithConfiguration:(id)configuration;
- (void)tableView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation PreviewTableViewController

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = PreviewTableViewController;
  [(PreviewTableViewController *)&v5 viewWillDisappear:disappear];
  tableView = [(PreviewTableViewController *)self tableView];
  [(UITableView *)tableView safari_dismissContextMenu];
}

- (id)tableView:(id)view contextMenuConfigurationForRowAtIndexPath:(id)path point:(CGPoint)point
{
  viewCopy = view;
  pathCopy = path;
  objc_initWeak(&location, self);
  v9 = MEMORY[0x277D753B0];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __88__PreviewTableViewController_tableView_contextMenuConfigurationForRowAtIndexPath_point___block_invoke;
  v17[3] = &unk_2781D8498;
  objc_copyWeak(&v19, &location);
  v10 = pathCopy;
  v18 = v10;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __88__PreviewTableViewController_tableView_contextMenuConfigurationForRowAtIndexPath_point___block_invoke_2;
  v14[3] = &unk_2781D84C0;
  objc_copyWeak(&v16, &location);
  v11 = v10;
  v15 = v11;
  v12 = [v9 configurationWithIdentifier:v11 previewProvider:v17 actionProvider:v14];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  return v12;
}

id __88__PreviewTableViewController_tableView_contextMenuConfigurationForRowAtIndexPath_point___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(WeakRetained + 130);
    v5 = [v4 previewTableViewController:v3 URLForRowAtIndexPath:*(a1 + 32)];

    v6 = objc_loadWeakRetained(v3 + 131);
    v7 = [v6 linkPreviewViewControllerForURL:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id __88__PreviewTableViewController_tableView_contextMenuConfigurationForRowAtIndexPath_point___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(WeakRetained + 130);
    v5 = [v4 previewTableViewController:v3 menuForRowAtIndexPath:*(a1 + 32)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)tableView:(id)view previewForHighlightingContextMenuWithConfiguration:(id)configuration
{
  viewCopy = view;
  identifier = [configuration identifier];
  v7 = [viewCopy cellForRowAtIndexPath:identifier];

  v8 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:v7];

  return v8;
}

- (void)tableView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  viewCopy = view;
  configurationCopy = configuration;
  animatorCopy = animator;
  [animatorCopy setPreferredCommitStyle:1];
  previewViewController = [animatorCopy previewViewController];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __98__PreviewTableViewController_tableView_willPerformPreviewActionForMenuWithConfiguration_animator___block_invoke;
  v15[3] = &unk_2781D5A50;
  v16 = viewCopy;
  v17 = previewViewController;
  selfCopy = self;
  v19 = configurationCopy;
  v12 = configurationCopy;
  v13 = previewViewController;
  v14 = viewCopy;
  [animatorCopy addAnimations:v15];
}

void __98__PreviewTableViewController_tableView_willPerformPreviewActionForMenuWithConfiguration_animator___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  if (*(a1 + 40))
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 1048));
    [WeakRetained commitLinkPreviewViewController:*(a1 + 40)];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_6;
    }

    v3 = *(a1 + 32);
    WeakRetained = [*(a1 + 56) identifier];
    [v4 tableView:v3 didSelectRowAtIndexPath:WeakRetained];
  }

LABEL_6:
}

- (id)tableView:(id)view previewForDismissingContextMenuWithConfiguration:(id)configuration
{
  WeakRetained = objc_loadWeakRetained(&self->_linkPreviewProvider);
  [WeakRetained linkPreviewProviderWillDismissPreview];

  return 0;
}

- (PreviewTableViewControllerDelegate)previewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_previewDelegate);

  return WeakRetained;
}

- (LinkPreviewProvider)linkPreviewProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_linkPreviewProvider);

  return WeakRetained;
}

@end