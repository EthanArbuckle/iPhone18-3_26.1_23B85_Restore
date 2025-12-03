@interface MUPlaceExternalActionViewModel
- (BOOL)isEnabled;
- (BOOL)shouldShowMenu;
- (id)buildMenuWithPresentationOptions:(id)options;
- (void)buildMenuItemViewModelsWithUpdateDelegate:(id)delegate completion:(id)completion;
- (void)openPartnerActionUsingMenuItemViewModel:(id)model presentationOptions:(id)options;
- (void)performSingleVendorSelectionActionWithPresentationOptions:(id)options;
@end

@implementation MUPlaceExternalActionViewModel

- (BOOL)isEnabled
{
  if (![(GEOPlaceExternalAction *)self->_externalAction possiblyHasSupportedIntegrations])
  {
    return 0;
  }

  actionProviders = [(GEOPlaceExternalAction *)self->_externalAction actionProviders];
  v4 = [actionProviders count] != 0;

  return v4;
}

- (void)performSingleVendorSelectionActionWithPresentationOptions:(id)options
{
  menuHelper = self->_menuHelper;
  optionsCopy = options;
  actionController = [(MUPlaceExternalActionMenuHelper *)menuHelper actionController];
  [actionController openFirstPartnerActionWithPresentationOptions:optionsCopy];
}

- (void)openPartnerActionUsingMenuItemViewModel:(id)model presentationOptions:(id)options
{
  menuHelper = self->_menuHelper;
  optionsCopy = options;
  modelCopy = model;
  actionController = [(MUPlaceExternalActionMenuHelper *)menuHelper actionController];
  vendorLinkViewModel = [modelCopy vendorLinkViewModel];

  [actionController openPartnerActionUsingViewModel:vendorLinkViewModel withPresentationOptions:optionsCopy];
}

- (void)buildMenuItemViewModelsWithUpdateDelegate:(id)delegate completion:(id)completion
{
  delegateCopy = delegate;
  completionCopy = completion;
  if (![(MUPlaceExternalActionViewModel *)self shouldShowMenu])
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }

  [(MUPlaceExternalActionMenuHelper *)self->_menuHelper buildMenuItemViewModelsWithUpdateDelegate:delegateCopy completion:completionCopy];
}

- (BOOL)shouldShowMenu
{
  actionProviders = [(GEOPlaceExternalAction *)self->_externalAction actionProviders];
  v3 = [actionProviders count] > 1;

  return v3;
}

- (id)buildMenuWithPresentationOptions:(id)options
{
  optionsCopy = options;
  if ([(MUPlaceExternalActionViewModel *)self shouldShowMenu])
  {
    v5 = [(MUPlaceExternalActionMenuHelper *)self->_menuHelper buildMenuElementsWithPresentationOptions:optionsCopy];
    if ([optionsCopy isForActionBar])
    {
      [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F44CA030 image:0 identifier:0 options:1 children:v5];
    }

    else
    {
      [MEMORY[0x1E69DCC60] menuWithChildren:v5];
    }
    v6 = ;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end