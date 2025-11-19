@interface MUPlaceExternalActionViewModel
- (BOOL)isEnabled;
- (BOOL)shouldShowMenu;
- (id)buildMenuWithPresentationOptions:(id)a3;
- (void)buildMenuItemViewModelsWithUpdateDelegate:(id)a3 completion:(id)a4;
- (void)openPartnerActionUsingMenuItemViewModel:(id)a3 presentationOptions:(id)a4;
- (void)performSingleVendorSelectionActionWithPresentationOptions:(id)a3;
@end

@implementation MUPlaceExternalActionViewModel

- (BOOL)isEnabled
{
  if (![(GEOPlaceExternalAction *)self->_externalAction possiblyHasSupportedIntegrations])
  {
    return 0;
  }

  v3 = [(GEOPlaceExternalAction *)self->_externalAction actionProviders];
  v4 = [v3 count] != 0;

  return v4;
}

- (void)performSingleVendorSelectionActionWithPresentationOptions:(id)a3
{
  menuHelper = self->_menuHelper;
  v4 = a3;
  v5 = [(MUPlaceExternalActionMenuHelper *)menuHelper actionController];
  [v5 openFirstPartnerActionWithPresentationOptions:v4];
}

- (void)openPartnerActionUsingMenuItemViewModel:(id)a3 presentationOptions:(id)a4
{
  menuHelper = self->_menuHelper;
  v6 = a4;
  v7 = a3;
  v9 = [(MUPlaceExternalActionMenuHelper *)menuHelper actionController];
  v8 = [v7 vendorLinkViewModel];

  [v9 openPartnerActionUsingViewModel:v8 withPresentationOptions:v6];
}

- (void)buildMenuItemViewModelsWithUpdateDelegate:(id)a3 completion:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (![(MUPlaceExternalActionViewModel *)self shouldShowMenu])
  {
    (*(v6 + 2))(v6, 0, 0);
  }

  [(MUPlaceExternalActionMenuHelper *)self->_menuHelper buildMenuItemViewModelsWithUpdateDelegate:v7 completion:v6];
}

- (BOOL)shouldShowMenu
{
  v2 = [(GEOPlaceExternalAction *)self->_externalAction actionProviders];
  v3 = [v2 count] > 1;

  return v3;
}

- (id)buildMenuWithPresentationOptions:(id)a3
{
  v4 = a3;
  if ([(MUPlaceExternalActionViewModel *)self shouldShowMenu])
  {
    v5 = [(MUPlaceExternalActionMenuHelper *)self->_menuHelper buildMenuElementsWithPresentationOptions:v4];
    if ([v4 isForActionBar])
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