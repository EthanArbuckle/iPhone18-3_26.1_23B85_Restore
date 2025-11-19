@interface _UIShareOverviewController
- (BOOL)isShowAddPeople;
- (BOOL)itemIsInsideFolderShare;
- (BOOL)itemIsShareRoot;
- (BOOL)shareViewControllerIsNotesOrRemindersOrDocSharing;
- (CKShare)share;
- (NSURL)itemURL;
- (_UIShareOverviewController)initWithDelegate:(id)a3;
- (_UIShareOverviewControllerDelegate)delegate;
- (id)editableParticipants;
- (id)rootItemName;
- (id)shareRootItemURL;
- (id)sharedByModifiedByText;
- (void)dismiss;
- (void)presentError:(id)a3;
- (void)setNavigationItemSpinner:(BOOL)a3;
- (void)shareDidChange;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateThumbnail;
@end

@implementation _UIShareOverviewController

- (_UIShareOverviewController)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _UIShareOverviewController;
  v5 = [(_UIShareOverviewController *)&v8 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(_UIShareOverviewController *)v5 setDelegate:v4];
  }

  return v6;
}

- (void)presentError:(id)a3
{
  v4 = a3;
  [(_UIShareOverviewController *)self setError:v4];
  v5 = [(_UIShareOverviewController *)self delegate];
  [v5 shareViewController:self presentError:v4];
}

- (void)dismiss
{
  v3 = [(_UIShareOverviewController *)self delegate];
  [v3 shareViewControllerDismiss:self];
}

- (CKShare)share
{
  v3 = [(_UIShareOverviewController *)self delegate];
  v4 = [v3 viewControllerShare:self];

  return v4;
}

- (BOOL)isShowAddPeople
{
  v2 = [(_UIShareOverviewController *)self delegate];
  v3 = [v2 isShowAddPeople];

  return v3;
}

- (id)editableParticipants
{
  v2 = [(_UIShareOverviewController *)self delegate];
  v3 = [v2 editableParticipants];

  return v3;
}

- (BOOL)itemIsShareRoot
{
  v2 = [(_UIShareOverviewController *)self delegate];
  v3 = [v2 itemIsShareRoot];

  return v3;
}

- (BOOL)itemIsInsideFolderShare
{
  v2 = [(_UIShareOverviewController *)self delegate];
  v3 = [v2 itemIsInsideFolderShare];

  return v3;
}

- (id)shareRootItemURL
{
  v2 = [(_UIShareOverviewController *)self delegate];
  v3 = [v2 shareRootItemURL];

  return v3;
}

- (id)rootItemName
{
  v2 = [(_UIShareOverviewController *)self delegate];
  v3 = [v2 rootItemName];

  return v3;
}

- (id)sharedByModifiedByText
{
  v2 = [(_UIShareOverviewController *)self delegate];
  v3 = [v2 sharedByModifiedByText];

  return v3;
}

- (BOOL)shareViewControllerIsNotesOrRemindersOrDocSharing
{
  v2 = self;
  v3 = [(_UIShareOverviewController *)self delegate];
  LOBYTE(v2) = [v3 shareViewControllerIsNotesOrRemindersOrDocSharing:v2];

  return v2;
}

- (NSURL)itemURL
{
  v3 = [(_UIShareOverviewController *)self delegate];
  v4 = [v3 viewControllerItemURL:self];

  return v4;
}

- (void)setNavigationItemSpinner:(BOOL)a3
{
  v3 = a3;
  v5 = [(_UIShareOverviewController *)self navigationItem];
  v6 = [v5 leftBarButtonItems];
  v7 = [NSMutableArray arrayWithArray:v6];

  if (v3)
  {
    if (!self->_showingSpinner)
    {
      v8 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
      [v8 startAnimating];
      v9 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:5 target:0 action:0];
      v10 = [[UIBarButtonItem alloc] initWithCustomView:v8];
      [v7 addObject:v9];
      [v7 addObject:v10];
      self->_showingSpinner = 1;
    }
  }

  else if (self->_showingSpinner)
  {
    [v7 removeLastObject];
    [v7 removeLastObject];
    self->_showingSpinner = 0;
  }

  v11 = [(_UIShareOverviewController *)self navigationItem];
  [v11 setLeftBarButtonItems:v7];

  v12 = [(_UIShareOverviewController *)self navigationItem];
  v13 = [v12 rightBarButtonItem];
  if (v13)
  {

LABEL_10:
    goto LABEL_11;
  }

  showingSpinner = self->_showingSpinner;

  if (showingSpinner)
  {
    v12 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:5 target:0 action:0];
    v18 = v12;
    v15 = [NSArray arrayWithObjects:&v18 count:1];
    v16 = [(_UIShareOverviewController *)self navigationItem];
    [v16 setRightBarButtonItems:v15];

    goto LABEL_10;
  }

LABEL_11:
  v17 = [(_UIShareOverviewController *)self view];
  [v17 setUserInteractionEnabled:!v3];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = _UIShareOverviewController;
  [(_UIShareOverviewController *)&v4 traitCollectionDidChange:a3];
  [(_UIShareOverviewController *)self updateTraitCollection];
}

- (_UIShareOverviewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)updateThumbnail
{
  v4 = objc_opt_class();

  _NSRequestConcreteImplementation(self, a2, v4);
}

- (void)shareDidChange
{
  v4 = objc_opt_class();

  _NSRequestConcreteImplementation(self, a2, v4);
}

@end