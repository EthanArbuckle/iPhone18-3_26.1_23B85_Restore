@interface _UIShareOverviewController
- (BOOL)isShowAddPeople;
- (BOOL)itemIsInsideFolderShare;
- (BOOL)itemIsShareRoot;
- (BOOL)shareViewControllerIsNotesOrRemindersOrDocSharing;
- (CKShare)share;
- (NSURL)itemURL;
- (_UIShareOverviewController)initWithDelegate:(id)delegate;
- (_UIShareOverviewControllerDelegate)delegate;
- (id)editableParticipants;
- (id)rootItemName;
- (id)shareRootItemURL;
- (id)sharedByModifiedByText;
- (void)dismiss;
- (void)presentError:(id)error;
- (void)setNavigationItemSpinner:(BOOL)spinner;
- (void)shareDidChange;
- (void)traitCollectionDidChange:(id)change;
- (void)updateThumbnail;
@end

@implementation _UIShareOverviewController

- (_UIShareOverviewController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = _UIShareOverviewController;
  v5 = [(_UIShareOverviewController *)&v8 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(_UIShareOverviewController *)v5 setDelegate:delegateCopy];
  }

  return v6;
}

- (void)presentError:(id)error
{
  errorCopy = error;
  [(_UIShareOverviewController *)self setError:errorCopy];
  delegate = [(_UIShareOverviewController *)self delegate];
  [delegate shareViewController:self presentError:errorCopy];
}

- (void)dismiss
{
  delegate = [(_UIShareOverviewController *)self delegate];
  [delegate shareViewControllerDismiss:self];
}

- (CKShare)share
{
  delegate = [(_UIShareOverviewController *)self delegate];
  v4 = [delegate viewControllerShare:self];

  return v4;
}

- (BOOL)isShowAddPeople
{
  delegate = [(_UIShareOverviewController *)self delegate];
  isShowAddPeople = [delegate isShowAddPeople];

  return isShowAddPeople;
}

- (id)editableParticipants
{
  delegate = [(_UIShareOverviewController *)self delegate];
  editableParticipants = [delegate editableParticipants];

  return editableParticipants;
}

- (BOOL)itemIsShareRoot
{
  delegate = [(_UIShareOverviewController *)self delegate];
  itemIsShareRoot = [delegate itemIsShareRoot];

  return itemIsShareRoot;
}

- (BOOL)itemIsInsideFolderShare
{
  delegate = [(_UIShareOverviewController *)self delegate];
  itemIsInsideFolderShare = [delegate itemIsInsideFolderShare];

  return itemIsInsideFolderShare;
}

- (id)shareRootItemURL
{
  delegate = [(_UIShareOverviewController *)self delegate];
  shareRootItemURL = [delegate shareRootItemURL];

  return shareRootItemURL;
}

- (id)rootItemName
{
  delegate = [(_UIShareOverviewController *)self delegate];
  rootItemName = [delegate rootItemName];

  return rootItemName;
}

- (id)sharedByModifiedByText
{
  delegate = [(_UIShareOverviewController *)self delegate];
  sharedByModifiedByText = [delegate sharedByModifiedByText];

  return sharedByModifiedByText;
}

- (BOOL)shareViewControllerIsNotesOrRemindersOrDocSharing
{
  selfCopy = self;
  delegate = [(_UIShareOverviewController *)self delegate];
  LOBYTE(selfCopy) = [delegate shareViewControllerIsNotesOrRemindersOrDocSharing:selfCopy];

  return selfCopy;
}

- (NSURL)itemURL
{
  delegate = [(_UIShareOverviewController *)self delegate];
  v4 = [delegate viewControllerItemURL:self];

  return v4;
}

- (void)setNavigationItemSpinner:(BOOL)spinner
{
  spinnerCopy = spinner;
  navigationItem = [(_UIShareOverviewController *)self navigationItem];
  leftBarButtonItems = [navigationItem leftBarButtonItems];
  v7 = [NSMutableArray arrayWithArray:leftBarButtonItems];

  if (spinnerCopy)
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

  navigationItem2 = [(_UIShareOverviewController *)self navigationItem];
  [navigationItem2 setLeftBarButtonItems:v7];

  navigationItem3 = [(_UIShareOverviewController *)self navigationItem];
  rightBarButtonItem = [navigationItem3 rightBarButtonItem];
  if (rightBarButtonItem)
  {

LABEL_10:
    goto LABEL_11;
  }

  showingSpinner = self->_showingSpinner;

  if (showingSpinner)
  {
    navigationItem3 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:5 target:0 action:0];
    v18 = navigationItem3;
    v15 = [NSArray arrayWithObjects:&v18 count:1];
    navigationItem4 = [(_UIShareOverviewController *)self navigationItem];
    [navigationItem4 setRightBarButtonItems:v15];

    goto LABEL_10;
  }

LABEL_11:
  view = [(_UIShareOverviewController *)self view];
  [view setUserInteractionEnabled:!spinnerCopy];
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = _UIShareOverviewController;
  [(_UIShareOverviewController *)&v4 traitCollectionDidChange:change];
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