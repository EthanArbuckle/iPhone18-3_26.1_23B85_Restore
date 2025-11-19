@interface MUShareSheetPresenter
- (MUShareSheetPresenter)initWithPlaceItem:(id)a3 presentationOptions:(id)a4;
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
    v3 = [(MUShareSheetPresenter *)self delegate];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = [(MUShareSheetPresenter *)self delegate];
      v6 = [v5 footerActivitiesForShareSheetPresenter:self];
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

  v13 = [(MUPresentationOptions *)self->_presentationOptions presentingViewController];
  if (v13)
  {
    v24 = v13;
    v14 = [MEMORY[0x1E696F3B8] sharedInstance];
    v15 = [v14 userInterfaceIdiom];

    if ((v15 & 0xFFFFFFFD) == 1)
    {
      v16 = [v24 _popoverController];
      if (v16)
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

    v18 = [(MUActivityViewController *)self->_activityViewController popoverPresentationController];
    v19 = [(MUPresentationOptions *)self->_presentationOptions sourceItem];

    presentationOptions = self->_presentationOptions;
    if (v19)
    {
      v21 = [(MUPresentationOptions *)presentationOptions sourceItem];
      [v18 setSourceItem:v21];
    }

    else
    {
      v22 = [(MUPresentationOptions *)presentationOptions sourceView];

      if (!v22)
      {
LABEL_19:
        [v18 setPermittedArrowDirections:15];
        [v24 presentViewController:self->_activityViewController animated:1 completion:0];

        v13 = v24;
        goto LABEL_20;
      }

      v23 = [(MUPresentationOptions *)self->_presentationOptions sourceView];
      [v18 setSourceView:v23];

      v21 = [(MUPresentationOptions *)self->_presentationOptions sourceView];
      [v21 bounds];
      [v18 setSourceRect:?];
    }

    goto LABEL_19;
  }

LABEL_20:
}

- (void)present
{
  v3 = [(MUShareSheetPresenter *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(MUShareSheetPresenter *)self delegate];
    v6 = [v5 shareSheetPresenterRequestsOverridenActivityViewController:self];
    activityViewController = self->_activityViewController;
    self->_activityViewController = v6;
  }

  [(MUShareSheetPresenter *)self _present];
}

- (MUShareSheetPresenter)initWithPlaceItem:(id)a3 presentationOptions:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MUShareSheetPresenter;
  v9 = [(MUShareSheetPresenter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_placeItem, a3);
    objc_storeStrong(&v10->_presentationOptions, a4);
  }

  return v10;
}

@end