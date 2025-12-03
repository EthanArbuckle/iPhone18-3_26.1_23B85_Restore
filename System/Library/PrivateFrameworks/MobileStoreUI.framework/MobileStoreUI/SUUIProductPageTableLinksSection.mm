@interface SUUIProductPageTableLinksSection
- (SUUIProductPageTableLinksSection)initWithItem:(id)item clientContext:(id)context askPermission:(BOOL)permission;
- (id)selectionActionForTableView:(id)view indexPath:(id)path;
- (id)tableViewCellForTableView:(id)view indexPath:(id)path;
@end

@implementation SUUIProductPageTableLinksSection

- (SUUIProductPageTableLinksSection)initWithItem:(id)item clientContext:(id)context askPermission:(BOOL)permission
{
  itemCopy = item;
  contextCopy = context;
  v74.receiver = self;
  v74.super_class = SUUIProductPageTableLinksSection;
  v11 = [(SUUIProductPageTableLinksSection *)&v74 init];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_42;
  }

  objc_storeStrong(&v11->_item, item);
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  actions = v12->_actions;
  v55 = 48;
  v12->_actions = v13;

  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  titles = v12->_titles;
  v12->_titles = v15;

  if (SUUIUserInterfaceIdiom(contextCopy))
  {
    if (permission)
    {
      goto LABEL_42;
    }

    goto LABEL_16;
  }

  inAppPurchases = [(SUUIProductPageItem *)v12->_item inAppPurchases];
  if ([inAppPurchases count])
  {
    v18 = [SUUIProductPageAction actionWithType:3];
    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = __77__SUUIProductPageTableLinksSection_initWithItem_clientContext_askPermission___block_invoke;
    v71[3] = &unk_2798F5958;
    v72 = inAppPurchases;
    v19 = contextCopy;
    v73 = v19;
    [v18 setViewControllerBlock:v71];
    [(NSMutableArray *)v12->_actions addObject:v18];
    v20 = v12->_titles;
    if (v19)
    {
      [v19 localizedStringForKey:@"PRODUCT_PAGE_IN_APPS_TITLE" inTable:@"ProductPage"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"PRODUCT_PAGE_IN_APPS_TITLE" inBundles:0 inTable:@"ProductPage"];
    }
    v21 = ;
    [(NSMutableArray *)v20 addObject:v21, 48];
  }

  releaseNotes = [(SUUIProductPageItem *)v12->_item releaseNotes];

  if ([releaseNotes count])
  {
    v23 = [SUUIProductPageAction actionWithType:3];
    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 3221225472;
    v68[2] = __77__SUUIProductPageTableLinksSection_initWithItem_clientContext_askPermission___block_invoke_2;
    v68[3] = &unk_2798F5958;
    v69 = releaseNotes;
    v24 = contextCopy;
    v70 = v24;
    [v23 setViewControllerBlock:v68];
    [*(&v12->super.super.super.isa + v55) addObject:v23];
    v25 = v12->_titles;
    if (v24)
    {
      [v24 localizedStringForKey:@"PRODUCT_PAGE_UPDATE_HISTORY_TITLE" inTable:@"ProductPage"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"PRODUCT_PAGE_UPDATE_HISTORY_TITLE" inBundles:0 inTable:@"ProductPage"];
    }
    v26 = ;
    [(NSMutableArray *)v25 addObject:v26];
  }

  if (!permission)
  {
LABEL_16:
    supportURLString = [itemCopy supportURLString];
    if (supportURLString)
    {
      v28 = [SUUIProductPageAction actionWithType:1];
      v29 = [MEMORY[0x277CBEBC0] URLWithString:supportURLString];
      [v28 setURL:v29];

      [*(&v12->super.super.super.isa + v56) addObject:v28];
      v30 = v12->_titles;
      if (contextCopy)
      {
        [contextCopy localizedStringForKey:@"PRODUCT_PAGE_DEVELOPER_WEBSITE" inTable:@"ProductPage"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"PRODUCT_PAGE_DEVELOPER_WEBSITE" inBundles:0 inTable:@"ProductPage"];
      }
      v31 = ;
      [(NSMutableArray *)v30 addObject:v31];
    }

    licenseAgreementURLString = [itemCopy licenseAgreementURLString];

    if (licenseAgreementURLString)
    {
      v33 = [MEMORY[0x277CBEBC0] URLWithString:licenseAgreementURLString];
      v34 = [v33 URLByAppendingQueryParameter:@"mt" value:@"8"];

      v35 = [SUUIProductPageAction actionWithType:2];
      [v35 setURL:v34];
      v65[0] = MEMORY[0x277D85DD0];
      v65[1] = 3221225472;
      v65[2] = __77__SUUIProductPageTableLinksSection_initWithItem_clientContext_askPermission___block_invoke_3;
      v65[3] = &unk_2798F5980;
      v36 = v34;
      v66 = v36;
      v37 = contextCopy;
      v67 = v37;
      [v35 setViewControllerBlock:v65];
      [*(&v12->super.super.super.isa + v56) addObject:v35];
      v38 = v12->_titles;
      if (v37)
      {
        [v37 localizedStringForKey:@"PRODUCT_PAGE_LICENSE_AGREEMENT" inTable:@"ProductPage"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"PRODUCT_PAGE_LICENSE_AGREEMENT" inBundles:0 inTable:@"ProductPage"];
      }
      v39 = ;
      [(NSMutableArray *)v38 addObject:v39];
    }

    privacyPolicyURLString = [itemCopy privacyPolicyURLString];

    if (privacyPolicyURLString)
    {
      v41 = [SUUIProductPageAction actionWithType:1];
      v42 = [MEMORY[0x277CBEBC0] URLWithString:privacyPolicyURLString];
      [v41 setURL:v42];

      [*(&v12->super.super.super.isa + v56) addObject:v41];
      v43 = v12->_titles;
      if (contextCopy)
      {
        [contextCopy localizedStringForKey:@"PRODUCT_PAGE_PRIVACY_POLICY" inTable:@"ProductPage"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"PRODUCT_PAGE_PRIVACY_POLICY" inBundles:0 inTable:@"ProductPage"];
      }
      v44 = ;
      [(NSMutableArray *)v43 addObject:v44];
    }

    artistPageURL = [itemCopy artistPageURL];
    if (artistPageURL)
    {
      v46 = [SUUIProductPageAction actionWithType:2];
      [v46 setURL:artistPageURL];
      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = __77__SUUIProductPageTableLinksSection_initWithItem_clientContext_askPermission___block_invoke_4;
      v61[3] = &unk_2798F59A8;
      v47 = contextCopy;
      v62 = v47;
      v63 = itemCopy;
      v64 = artistPageURL;
      [v46 setViewControllerBlock:v61];
      [*(&v12->super.super.super.isa + v56) addObject:v46];
      v48 = v12->_titles;
      if (v47)
      {
        [v47 localizedStringForKey:@"PRODUCT_PAGE_DEVELOPER_APPS" inTable:@"ProductPage"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"PRODUCT_PAGE_DEVELOPER_APPS" inBundles:0 inTable:@"ProductPage"];
      }
      v49 = ;
      [(NSMutableArray *)v48 addObject:v49];
    }

    developerInfo = [itemCopy developerInfo];
    if (developerInfo)
    {
      v51 = [SUUIProductPageAction actionWithType:3];
      if (contextCopy)
      {
        [contextCopy localizedStringForKey:@"PRODUCT_PAGE_DEVELOPER_INFO" inTable:@"ProductPage"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"PRODUCT_PAGE_DEVELOPER_INFO" inBundles:0 inTable:@"ProductPage"];
      }
      v52 = ;
      v57[0] = MEMORY[0x277D85DD0];
      v57[1] = 3221225472;
      v57[2] = __77__SUUIProductPageTableLinksSection_initWithItem_clientContext_askPermission___block_invoke_5;
      v57[3] = &unk_2798F59D0;
      v58 = developerInfo;
      v59 = contextCopy;
      v60 = v52;
      v53 = v52;
      [v51 setViewControllerBlock:v57];
      [*(&v12->super.super.super.isa + v56) addObject:v51];
      [(NSMutableArray *)v12->_titles addObject:v53];
    }
  }

LABEL_42:

  return v12;
}

SUUIViewController *__77__SUUIProductPageTableLinksSection_initWithItem_clientContext_askPermission___block_invoke(uint64_t a1)
{
  v2 = [[SUUIProductPageTableViewController alloc] initWithInAppPurchases:*(a1 + 32) clientContext:*(a1 + 40)];
  v3 = [(SUUIProductPageTableViewController *)v2 view];
  [v3 setAutoresizingMask:18];

  v4 = objc_alloc_init(SUUIViewController);
  [(SUUIViewController *)v4 setClientContext:*(a1 + 40)];
  [(SUUIViewController *)v4 addChildViewController:v2];
  [(SUUIViewController *)v4 showDefaultNavigationItems];
  v5 = [(SUUIViewController *)v4 view];
  v6 = [(SUUIProductPageTableViewController *)v2 view];
  [v5 addSubview:v6];

  v7 = [(SUUIProductPageTableViewController *)v2 view];
  v8 = [(SUUIViewController *)v4 view];
  [v8 bounds];
  [v7 setFrame:?];

  return v4;
}

SUUIViewController *__77__SUUIProductPageTableLinksSection_initWithItem_clientContext_askPermission___block_invoke_2(uint64_t a1)
{
  v2 = [[SUUIProductPageTableViewController alloc] initWithReleaseNotes:*(a1 + 32) clientContext:*(a1 + 40)];
  v3 = [(SUUIProductPageTableViewController *)v2 view];
  [v3 setAutoresizingMask:18];

  v4 = objc_alloc_init(SUUIViewController);
  [(SUUIViewController *)v4 setClientContext:*(a1 + 40)];
  [(SUUIViewController *)v4 addChildViewController:v2];
  [(SUUIViewController *)v4 showDefaultNavigationItems];
  v5 = [(SUUIViewController *)v4 view];
  v6 = [(SUUIProductPageTableViewController *)v2 view];
  [v5 addSubview:v6];

  v7 = [(SUUIProductPageTableViewController *)v2 view];
  v8 = [(SUUIViewController *)v4 view];
  [v8 bounds];
  [v7 setFrame:?];

  return v4;
}

SUUIApplicationLicenseViewController *__77__SUUIProductPageTableLinksSection_initWithItem_clientContext_askPermission___block_invoke_3(uint64_t a1)
{
  v2 = [[SUUIApplicationLicenseViewController alloc] initWithLicenseAgreementURL:*(a1 + 32)];
  [(SUUIViewController *)v2 setClientContext:*(a1 + 40)];

  return v2;
}

SUUIStorePageViewController *__77__SUUIProductPageTableLinksSection_initWithItem_clientContext_askPermission___block_invoke_4(uint64_t a1)
{
  v2 = objc_alloc_init(SUUIStorePageViewController);
  [(SUUIStorePageViewController *)v2 setClientContext:*(a1 + 32)];
  v3 = [*(a1 + 40) artistName];
  [(SUUIStorePageViewController *)v2 setTitle:v3];

  [(SUUIStorePageViewController *)v2 loadURL:*(a1 + 48) withCompletionBlock:0];

  return v2;
}

SUUIDeveloperInfoViewController *__77__SUUIProductPageTableLinksSection_initWithItem_clientContext_askPermission___block_invoke_5(void *a1)
{
  v2 = [[SUUIDeveloperInfoViewController alloc] initWithDeveloperInfo:a1[4]];
  [(SUUIViewController *)v2 setClientContext:a1[5]];
  [(SUUIDeveloperInfoViewController *)v2 setTitle:a1[6]];

  return v2;
}

- (id)selectionActionForTableView:(id)view indexPath:(id)path
{
  actions = self->_actions;
  v5 = [path row];

  return [(NSMutableArray *)actions objectAtIndex:v5];
}

- (id)tableViewCellForTableView:(id)view indexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"LK"];
  if (!v7)
  {
    v7 = [[SUUITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"LK"];
    [(SUUITableViewCell *)v7 setAccessoryType:1];
    primaryTextColor = [(SUUIColorScheme *)self->_colorScheme primaryTextColor];
    if (primaryTextColor)
    {
      [(SUUITableViewCell *)v7 setBottomBorderColor:primaryTextColor];
    }

    else
    {
      v9 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
      [(SUUITableViewCell *)v7 setBottomBorderColor:v9];
    }

    textLabel = [(SUUITableViewCell *)v7 textLabel];
    v11 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
    [textLabel setFont:v11];

    secondaryTextColor = [(SUUIColorScheme *)self->_colorScheme secondaryTextColor];
    if (secondaryTextColor)
    {
      [textLabel setTextColor:secondaryTextColor];
    }

    else
    {
      blackColor = [MEMORY[0x277D75348] blackColor];
      [textLabel setTextColor:blackColor];
    }
  }

  textLabel2 = [(SUUITableViewCell *)v7 textLabel];
  titles = self->_titles;
  v16 = [pathCopy row];

  v17 = [(NSMutableArray *)titles objectAtIndex:v16];
  [textLabel2 setText:v17];

  return v7;
}

@end