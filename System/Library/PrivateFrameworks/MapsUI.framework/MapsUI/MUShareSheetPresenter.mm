@interface MUShareSheetPresenter
- (MUShareSheetPresenter)initWithPlaceItem:(id)item presentationOptions:(id)options;
- (MUShareSheetPresenterDelegate)delegate;
- (void)_present;
- (void)present;
@end

@implementation MUShareSheetPresenter

- (MUShareSheetPresenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_present
{
  if (!self->_activityViewController)
  {
    delegate = [(MUShareSheetPresenter *)self delegate];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      delegate2 = [(MUShareSheetPresenter *)self delegate];
      v6 = [delegate2 footerActivitiesForShareSheetPresenter:self];
    }

    else
    {
      v6 = 0;
    }

    v7 = [MUPlaceItemShareItemSource alloc];
    placeItem = self->_placeItem;
    v9 = [v6 copy];
    v10 = [(MUPlaceItemShareItemSource *)v7 initWithPlaceItem:placeItem applicationActivities:v9];

    v11 = [[MUActivityViewController alloc] initWithShareItem:v10];
    activityViewController = self->_activityViewController;
    self->_activityViewController = v11;
  }

  presentingViewController = [(MUPresentationOptions *)self->_presentationOptions presentingViewController];
  if (presentingViewController)
  {
    v24 = presentingViewController;
    mEMORY[0x1E696F3B8] = [MEMORY[0x1E696F3B8] sharedInstance];
    userInterfaceIdiom = [mEMORY[0x1E696F3B8] userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFD) == 1)
    {
      _popoverController = [v24 _popoverController];
      if (_popoverController)
      {

        v17 = 2;
      }

      else if ([v24 _isInPopoverPresentation])
      {
        v17 = 2;
      }

      else
      {
        v17 = 7;
      }

      [(MUActivityViewController *)self->_activityViewController setModalPresentationStyle:v17];
    }

    popoverPresentationController = [(MUActivityViewController *)self->_activityViewController popoverPresentationController];
    sourceItem = [(MUPresentationOptions *)self->_presentationOptions sourceItem];

    presentationOptions = self->_presentationOptions;
    if (sourceItem)
    {
      sourceItem2 = [(MUPresentationOptions *)presentationOptions sourceItem];
      [popoverPresentationController setSourceItem:sourceItem2];
    }

    else
    {
      sourceView = [(MUPresentationOptions *)presentationOptions sourceView];

      if (!sourceView)
      {
LABEL_19:
        [popoverPresentationController setPermittedArrowDirections:15];
        [v24 presentViewController:self->_activityViewController animated:1 completion:0];

        presentingViewController = v24;
        goto LABEL_20;
      }

      sourceView2 = [(MUPresentationOptions *)self->_presentationOptions sourceView];
      [popoverPresentationController setSourceView:sourceView2];

      sourceItem2 = [(MUPresentationOptions *)self->_presentationOptions sourceView];
      [sourceItem2 bounds];
      [popoverPresentationController setSourceRect:?];
    }

    goto LABEL_19;
  }

LABEL_20:
}

- (void)present
{
  delegate = [(MUShareSheetPresenter *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(MUShareSheetPresenter *)self delegate];
    v6 = [delegate2 shareSheetPresenterRequestsOverridenActivityViewController:self];
    activityViewController = self->_activityViewController;
    self->_activityViewController = v6;
  }

  [(MUShareSheetPresenter *)self _present];
}

- (MUShareSheetPresenter)initWithPlaceItem:(id)item presentationOptions:(id)options
{
  itemCopy = item;
  optionsCopy = options;
  v12.receiver = self;
  v12.super_class = MUShareSheetPresenter;
  v9 = [(MUShareSheetPresenter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_placeItem, item);
    objc_storeStrong(&v10->_presentationOptions, options);
  }

  return v10;
}

@end