@interface WDAppSourcesListTableViewSection
- (BOOL)_shouldShowUninstalledSourcesCell;
- (WDAppSourcesListTableViewSection)initWithDelegate:(id)delegate atSection:(unint64_t)section;
- (id)_getSourceListToShow;
- (id)_sourceCellForRow:(unint64_t)row tableView:(id)view;
- (id)_uninstalledSourcesCellWithTableView:(id)view;
- (id)cellForRow:(unint64_t)row table:(id)table;
- (id)noneString;
- (id)titleForFooter;
- (id)titleForHeader;
- (unint64_t)numberOfRows;
- (void)dataSourceDidUpdate;
- (void)didSelectRow:(unint64_t)row representedByCell:(id)cell withCompletion:(id)completion;
@end

@implementation WDAppSourcesListTableViewSection

- (WDAppSourcesListTableViewSection)initWithDelegate:(id)delegate atSection:(unint64_t)section
{
  v17.receiver = self;
  v17.super_class = WDAppSourcesListTableViewSection;
  v4 = [(WDTableViewSection *)&v17 initWithDelegate:delegate atSection:section];
  v5 = v4;
  if (v4)
  {
    delegate = [(WDTableViewSection *)v4 delegate];
    profile = [delegate profile];
    healthStore = [profile healthStore];
    profileIdentifier = [healthStore profileIdentifier];
    type = [profileIdentifier type];

    if (type == 3)
    {
      v11 = 1;
    }

    else
    {
      delegate2 = [(WDTableViewSection *)v5 delegate];
      profile2 = [delegate2 profile];
      presentationContext = [profile2 presentationContext];
      v15 = presentationContext == @"SettingsPrivacy";

      v11 = 2 * v15;
    }

    [(WDAppSourcesListTableViewSection *)v5 setSourcesStyle:v11];
  }

  return v5;
}

- (void)dataSourceDidUpdate
{
  v23 = *MEMORY[0x277D85DE8];
  _getSourceListToShow = [(WDAppSourcesListTableViewSection *)self _getSourceListToShow];
  [(WDAppSourcesListTableViewSection *)self setInstalledSources:_getSourceListToShow];

  delegate = [(WDTableViewSection *)self delegate];
  [delegate reloadTable];

  restorationSourceBundleIdentifier = [(WDSourcesListTableViewSection *)self restorationSourceBundleIdentifier];
  if (restorationSourceBundleIdentifier)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    installedSources = [(WDAppSourcesListTableViewSection *)self installedSources];
    v7 = [installedSources countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = *v19;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(installedSources);
          }

          v10 = *(*(&v18 + 1) + 8 * i);
          source = [v10 source];
          bundleIdentifier = [source bundleIdentifier];
          v13 = [bundleIdentifier isEqualToString:restorationSourceBundleIdentifier];

          if (v13)
          {
            objc_initWeak(&location, self);
            v15[0] = MEMORY[0x277D85DD0];
            v15[1] = 3221225472;
            v15[2] = __55__WDAppSourcesListTableViewSection_dataSourceDidUpdate__block_invoke;
            v15[3] = &unk_2796E7C50;
            objc_copyWeak(&v16, &location);
            [(WDSourcesListTableViewSection *)self createDetailViewControllerForSourceModel:v10 completion:v15];
            objc_destroyWeak(&v16);
            objc_destroyWeak(&location);
            goto LABEL_12;
          }
        }

        v7 = [installedSources countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    [(WDSourcesListTableViewSection *)self setRestorationSourceBundleIdentifier:0];
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __55__WDAppSourcesListTableViewSection_dataSourceDidUpdate__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained delegate];
  [v4 pushViewController:v3];
}

- (id)_getSourceListToShow
{
  sourcesStyle = [(WDAppSourcesListTableViewSection *)self sourcesStyle];
  if (!sourcesStyle)
  {
    dataSource = [(WDSourcesListTableViewSection *)self dataSource];
    sources = [dataSource sources];
    orderedAppSources = [sources orderedAppSources];
LABEL_7:

    goto LABEL_8;
  }

  if (sourcesStyle != 1)
  {
    if (sourcesStyle != 2)
    {
      goto LABEL_9;
    }

    dataSource = [(WDSourcesListTableViewSection *)self dataSource];
    sources = [(WDSourcesListTableViewSection *)self dataSource];
    v6Sources = [sources sources];
    orderedAppSources2 = [v6Sources orderedAppSources];
    orderedAppSources = [dataSource fetchFilteredSourcesWithAuthorizationRecordsForSources:orderedAppSources2];

    goto LABEL_7;
  }

  dataSource2 = [(WDSourcesListTableViewSection *)self dataSource];
  sources2 = [dataSource2 sources];
  orderedAppSources3 = [sources2 orderedAppSources];

  dataSource3 = [(WDSourcesListTableViewSection *)self dataSource];
  sources3 = [dataSource3 sources];
  orderedUninstalledAppSources = [sources3 orderedUninstalledAppSources];
  dataSource = [orderedAppSources3 arrayByAddingObjectsFromArray:orderedUninstalledAppSources];

  orderedAppSources = [dataSource sortedArrayUsingComparator:&__block_literal_global_9];
LABEL_8:

LABEL_9:

  return orderedAppSources;
}

uint64_t __56__WDAppSourcesListTableViewSection__getSourceListToShow__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 source];
  v6 = [v5 name];
  v7 = [v4 source];

  v8 = [v7 name];
  v9 = [v6 localizedStandardCompare:v8];

  return v9;
}

- (unint64_t)numberOfRows
{
  installedSources = [(WDAppSourcesListTableViewSection *)self installedSources];
  v4 = [installedSources count];

  if (v4)
  {
    return v4 + [(WDAppSourcesListTableViewSection *)self _shouldShowUninstalledSourcesCell];
  }

  else
  {
    return 1;
  }
}

- (id)titleForHeader
{
  if ([(WDSourcesListTableViewSection *)self shouldHideHeader])
  {
    v2 = &stru_28641D9B8;
  }

  else
  {
    v3 = WDBundle();
    v2 = [v3 localizedStringForKey:@"APPS_LIST_HEADER" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
  }

  return v2;
}

- (id)titleForFooter
{
  v2 = WDBundle();
  v3 = [v2 localizedStringForKey:@"APPS_LIST_EXPLANATION" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];

  return v3;
}

- (id)noneString
{
  v2 = WDBundle();
  v3 = [v2 localizedStringForKey:@"APPS_NONE" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];

  return v3;
}

- (id)cellForRow:(unint64_t)row table:(id)table
{
  tableCopy = table;
  if (row || ([(WDAppSourcesListTableViewSection *)self installedSources], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    installedSources = [(WDAppSourcesListTableViewSection *)self installedSources];
    v9 = [installedSources count];

    if (v9)
    {
      installedSources2 = [(WDAppSourcesListTableViewSection *)self installedSources];
      v11 = [installedSources2 count];

      if (v11 != row)
      {
        v12 = [(WDAppSourcesListTableViewSection *)self _sourceCellForRow:row tableView:tableCopy];
LABEL_9:
        v13 = v12;
        goto LABEL_10;
      }
    }

    else if (![(WDAppSourcesListTableViewSection *)self _shouldShowUninstalledSourcesCell])
    {
      v12 = [(WDSourcesListTableViewSection *)self noneCellForTableView:tableCopy];
      goto LABEL_9;
    }

    v12 = [(WDAppSourcesListTableViewSection *)self _uninstalledSourcesCellWithTableView:tableCopy];
    goto LABEL_9;
  }

  v15 = +[WDSpinnerTableViewCell defaultReuseIdentifier];
  v13 = [tableCopy dequeueReusableCellWithIdentifier:v15];

LABEL_10:

  return v13;
}

- (id)_sourceCellForRow:(unint64_t)row tableView:(id)view
{
  v6 = [view dequeueReusableCellWithIdentifier:@"WDAppSourcesListTableViewSectionCell"];
  if (!v6)
  {
    v6 = [[WDSourcesListTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"WDAppSourcesListTableViewSectionCell"];
    [(WDSourcesListTableViewCell *)v6 setAccessoryType:1];
  }

  installedSources = [(WDAppSourcesListTableViewSection *)self installedSources];
  v8 = [installedSources objectAtIndexedSubscript:row];
  [(WDSourcesListTableViewCell *)v6 setSourceModel:v8];

  v9 = [MEMORY[0x277D74300] hk_preferredFontForTextStyle:*MEMORY[0x277D76918]];
  textLabel = [(WDSourcesListTableViewCell *)v6 textLabel];
  [textLabel setFont:v9];

  return v6;
}

- (id)_uninstalledSourcesCellWithTableView:(id)view
{
  v3 = [view dequeueReusableCellWithIdentifier:@"WDSourcesListTableViewSectionUninstalledSources"];
  if (!v3)
  {
    v3 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"WDSourcesListTableViewSectionUninstalledSources"];
  }

  [v3 setAccessoryType:1];
  v4 = WDBundle();
  v5 = [v4 localizedStringForKey:@"UNINSTALLED_APPS" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
  textLabel = [v3 textLabel];
  [textLabel setText:v5];

  v7 = [MEMORY[0x277D74300] hk_preferredFontForTextStyle:*MEMORY[0x277D76918]];
  textLabel2 = [v3 textLabel];
  [textLabel2 setFont:v7];

  return v3;
}

- (void)didSelectRow:(unint64_t)row representedByCell:(id)cell withCompletion:(id)completion
{
  cellCopy = cell;
  completionCopy = completion;
  if (row || ([(WDAppSourcesListTableViewSection *)self installedSources], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
  {
    reuseIdentifier = [cellCopy reuseIdentifier];
    v12 = [reuseIdentifier isEqualToString:@"WDSourcesListTableViewSectionUninstalledSources"];

    if (v12)
    {
      v13 = objc_alloc_init(WDUninstalledAppSourcesViewController);
      delegate = [(WDTableViewSection *)self delegate];
      profile = [delegate profile];
      [(WDUninstalledAppSourcesViewController *)v13 setProfile:profile];

      dataSource = [(WDSourcesListTableViewSection *)self dataSource];
      [(WDUninstalledAppSourcesViewController *)v13 setDataSource:dataSource];

      v17 = WDBundle();
      v18 = [v17 localizedStringForKey:@"UNINSTALLED_APPS" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
      [(WDUninstalledAppSourcesViewController *)v13 setTitle:v18];

      delegate2 = [(WDTableViewSection *)self delegate];
      [delegate2 pushViewController:v13];

      (*(completionCopy + 2))(completionCopy, 0, 0);
    }

    else
    {
      installedSources = [(WDAppSourcesListTableViewSection *)self installedSources];
      v21 = [installedSources count];

      if (v21)
      {
        installedSources2 = [(WDAppSourcesListTableViewSection *)self installedSources];
        v23 = [installedSources2 objectAtIndexedSubscript:row];

        objc_initWeak(&location, self);
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __82__WDAppSourcesListTableViewSection_didSelectRow_representedByCell_withCompletion___block_invoke;
        v24[3] = &unk_2796E7C50;
        objc_copyWeak(&v25, &location);
        [(WDSourcesListTableViewSection *)self createDetailViewControllerForSourceModel:v23 completion:v24];
        objc_destroyWeak(&v25);
        objc_destroyWeak(&location);
      }

      (*(completionCopy + 2))(completionCopy, 1, 0);
    }
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

void __82__WDAppSourcesListTableViewSection_didSelectRow_representedByCell_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained delegate];
  [v4 pushViewController:v3];
}

- (BOOL)_shouldShowUninstalledSourcesCell
{
  if ([(WDAppSourcesListTableViewSection *)self sourcesStyle])
  {
    return 0;
  }

  dataSource = [(WDSourcesListTableViewSection *)self dataSource];
  sources = [dataSource sources];
  orderedUninstalledAppSources = [sources orderedUninstalledAppSources];
  v3 = [orderedUninstalledAppSources count] != 0;

  return v3;
}

@end