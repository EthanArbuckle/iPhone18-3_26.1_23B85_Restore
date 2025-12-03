@interface HistoryLibraryItemController
- (BOOL)_showsProfile;
- (id)viewController;
- (void)updateListContentConfiguration:(id)configuration;
@end

@implementation HistoryLibraryItemController

- (void)updateListContentConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = [MEMORY[0x277D755B8] systemImageNamed:@"clock"];
  [configurationCopy setImage:v4];

  if ([(HistoryLibraryItemController *)self _showsProfile])
  {
    configuration = [(LibraryItemController *)self configuration];
    tabGroupProvider = [configuration tabGroupProvider];
    activeProfile = [tabGroupProvider activeProfile];

    v8 = MEMORY[0x277CCACA8];
    v9 = _WBSLocalizedString();
    title = [activeProfile title];
    v11 = [v8 stringWithFormat:v9, title];
    [configurationCopy setText:v11];
  }

  else
  {
    activeProfile = _WBSLocalizedString();
    [configurationCopy setText:activeProfile];
  }
}

- (id)viewController
{
  configuration = [(LibraryItemController *)self configuration];
  linkPreviewProvider = [configuration linkPreviewProvider];

  configuration2 = [(LibraryItemController *)self configuration];
  navigationIntentHandler = [configuration2 navigationIntentHandler];

  configuration3 = [(LibraryItemController *)self configuration];
  tabGroupProvider = [configuration3 tabGroupProvider];

  activeProfile = [tabGroupProvider activeProfile];
  v10 = +[Application sharedApplication];
  historyController = [v10 historyController];
  identifier = [activeProfile identifier];
  v13 = [historyController historyForProfileIdentifier:identifier loadIfNeeded:1];

  historyViewController = self->_historyViewController;
  if (!historyViewController || ([(SFHistoryViewController *)historyViewController history], v15 = objc_claimAutoreleasedReturnValue(), v15, v15 != v13))
  {
    v16 = [[SFHistoryViewController alloc] initWithHistory:v13];
    v17 = self->_historyViewController;
    self->_historyViewController = v16;

    [(SFHistoryViewController *)self->_historyViewController setLinkPreviewProvider:linkPreviewProvider];
    [(SFHistoryViewController *)self->_historyViewController setNavigationIntentHandler:navigationIntentHandler];
    [(SFHistoryViewController *)self->_historyViewController setTabGroupProvider:tabGroupProvider];
    [(SFHistoryViewController *)self->_historyViewController setDelegate:self];
    navigationItem = [(SFHistoryViewController *)self->_historyViewController navigationItem];
    [navigationItem setLargeTitleDisplayMode:2];
  }

  if ([(HistoryLibraryItemController *)self _showsProfile])
  {
    v19 = MEMORY[0x277CCACA8];
    v20 = _WBSLocalizedString();
    title = [activeProfile title];
    v22 = [v19 stringWithFormat:v20, title];
    [(SFHistoryViewController *)self->_historyViewController setTitle:v22];
  }

  v23 = self->_historyViewController;
  v24 = v23;

  return v23;
}

- (BOOL)_showsProfile
{
  configuration = [(LibraryItemController *)self configuration];
  tabGroupProvider = [configuration tabGroupProvider];
  hasMultipleProfiles = [tabGroupProvider hasMultipleProfiles];

  return hasMultipleProfiles;
}

@end