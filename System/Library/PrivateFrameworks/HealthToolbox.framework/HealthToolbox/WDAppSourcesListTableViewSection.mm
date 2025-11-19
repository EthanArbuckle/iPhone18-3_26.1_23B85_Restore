@interface WDAppSourcesListTableViewSection
- (BOOL)_shouldShowUninstalledSourcesCell;
- (WDAppSourcesListTableViewSection)initWithDelegate:(id)a3 atSection:(unint64_t)a4;
- (id)_getSourceListToShow;
- (id)_sourceCellForRow:(unint64_t)a3 tableView:(id)a4;
- (id)_uninstalledSourcesCellWithTableView:(id)a3;
- (id)cellForRow:(unint64_t)a3 table:(id)a4;
- (id)noneString;
- (id)titleForFooter;
- (id)titleForHeader;
- (unint64_t)numberOfRows;
- (void)dataSourceDidUpdate;
- (void)didSelectRow:(unint64_t)a3 representedByCell:(id)a4 withCompletion:(id)a5;
@end

@implementation WDAppSourcesListTableViewSection

- (WDAppSourcesListTableViewSection)initWithDelegate:(id)a3 atSection:(unint64_t)a4
{
  v17.receiver = self;
  v17.super_class = WDAppSourcesListTableViewSection;
  v4 = [(WDTableViewSection *)&v17 initWithDelegate:a3 atSection:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(WDTableViewSection *)v4 delegate];
    v7 = [v6 profile];
    v8 = [v7 healthStore];
    v9 = [v8 profileIdentifier];
    v10 = [v9 type];

    if (v10 == 3)
    {
      v11 = 1;
    }

    else
    {
      v12 = [(WDTableViewSection *)v5 delegate];
      v13 = [v12 profile];
      v14 = [v13 presentationContext];
      v15 = v14 == @"SettingsPrivacy";

      v11 = 2 * v15;
    }

    [(WDAppSourcesListTableViewSection *)v5 setSourcesStyle:v11];
  }

  return v5;
}

- (void)dataSourceDidUpdate
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(WDAppSourcesListTableViewSection *)self _getSourceListToShow];
  [(WDAppSourcesListTableViewSection *)self setInstalledSources:v3];

  v4 = [(WDTableViewSection *)self delegate];
  [v4 reloadTable];

  v5 = [(WDSourcesListTableViewSection *)self restorationSourceBundleIdentifier];
  if (v5)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = [(WDAppSourcesListTableViewSection *)self installedSources];
    v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = *v19;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v18 + 1) + 8 * i);
          v11 = [v10 source];
          v12 = [v11 bundleIdentifier];
          v13 = [v12 isEqualToString:v5];

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

        v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
  v4 = [(WDAppSourcesListTableViewSection *)self sourcesStyle];
  if (!v4)
  {
    v5 = [(WDSourcesListTableViewSection *)self dataSource];
    v6 = [v5 sources];
    v2 = [v6 orderedAppSources];
LABEL_7:

    goto LABEL_8;
  }

  if (v4 != 1)
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = [(WDSourcesListTableViewSection *)self dataSource];
    v6 = [(WDSourcesListTableViewSection *)self dataSource];
    v7 = [v6 sources];
    v8 = [v7 orderedAppSources];
    v2 = [v5 fetchFilteredSourcesWithAuthorizationRecordsForSources:v8];

    goto LABEL_7;
  }

  v9 = [(WDSourcesListTableViewSection *)self dataSource];
  v10 = [v9 sources];
  v11 = [v10 orderedAppSources];

  v12 = [(WDSourcesListTableViewSection *)self dataSource];
  v13 = [v12 sources];
  v14 = [v13 orderedUninstalledAppSources];
  v5 = [v11 arrayByAddingObjectsFromArray:v14];

  v2 = [v5 sortedArrayUsingComparator:&__block_literal_global_9];
LABEL_8:

LABEL_9:

  return v2;
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
  v3 = [(WDAppSourcesListTableViewSection *)self installedSources];
  v4 = [v3 count];

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

- (id)cellForRow:(unint64_t)a3 table:(id)a4
{
  v6 = a4;
  if (a3 || ([(WDAppSourcesListTableViewSection *)self installedSources], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = [(WDAppSourcesListTableViewSection *)self installedSources];
    v9 = [v8 count];

    if (v9)
    {
      v10 = [(WDAppSourcesListTableViewSection *)self installedSources];
      v11 = [v10 count];

      if (v11 != a3)
      {
        v12 = [(WDAppSourcesListTableViewSection *)self _sourceCellForRow:a3 tableView:v6];
LABEL_9:
        v13 = v12;
        goto LABEL_10;
      }
    }

    else if (![(WDAppSourcesListTableViewSection *)self _shouldShowUninstalledSourcesCell])
    {
      v12 = [(WDSourcesListTableViewSection *)self noneCellForTableView:v6];
      goto LABEL_9;
    }

    v12 = [(WDAppSourcesListTableViewSection *)self _uninstalledSourcesCellWithTableView:v6];
    goto LABEL_9;
  }

  v15 = +[WDSpinnerTableViewCell defaultReuseIdentifier];
  v13 = [v6 dequeueReusableCellWithIdentifier:v15];

LABEL_10:

  return v13;
}

- (id)_sourceCellForRow:(unint64_t)a3 tableView:(id)a4
{
  v6 = [a4 dequeueReusableCellWithIdentifier:@"WDAppSourcesListTableViewSectionCell"];
  if (!v6)
  {
    v6 = [[WDSourcesListTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"WDAppSourcesListTableViewSectionCell"];
    [(WDSourcesListTableViewCell *)v6 setAccessoryType:1];
  }

  v7 = [(WDAppSourcesListTableViewSection *)self installedSources];
  v8 = [v7 objectAtIndexedSubscript:a3];
  [(WDSourcesListTableViewCell *)v6 setSourceModel:v8];

  v9 = [MEMORY[0x277D74300] hk_preferredFontForTextStyle:*MEMORY[0x277D76918]];
  v10 = [(WDSourcesListTableViewCell *)v6 textLabel];
  [v10 setFont:v9];

  return v6;
}

- (id)_uninstalledSourcesCellWithTableView:(id)a3
{
  v3 = [a3 dequeueReusableCellWithIdentifier:@"WDSourcesListTableViewSectionUninstalledSources"];
  if (!v3)
  {
    v3 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"WDSourcesListTableViewSectionUninstalledSources"];
  }

  [v3 setAccessoryType:1];
  v4 = WDBundle();
  v5 = [v4 localizedStringForKey:@"UNINSTALLED_APPS" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
  v6 = [v3 textLabel];
  [v6 setText:v5];

  v7 = [MEMORY[0x277D74300] hk_preferredFontForTextStyle:*MEMORY[0x277D76918]];
  v8 = [v3 textLabel];
  [v8 setFont:v7];

  return v3;
}

- (void)didSelectRow:(unint64_t)a3 representedByCell:(id)a4 withCompletion:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (a3 || ([(WDAppSourcesListTableViewSection *)self installedSources], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
  {
    v11 = [v8 reuseIdentifier];
    v12 = [v11 isEqualToString:@"WDSourcesListTableViewSectionUninstalledSources"];

    if (v12)
    {
      v13 = objc_alloc_init(WDUninstalledAppSourcesViewController);
      v14 = [(WDTableViewSection *)self delegate];
      v15 = [v14 profile];
      [(WDUninstalledAppSourcesViewController *)v13 setProfile:v15];

      v16 = [(WDSourcesListTableViewSection *)self dataSource];
      [(WDUninstalledAppSourcesViewController *)v13 setDataSource:v16];

      v17 = WDBundle();
      v18 = [v17 localizedStringForKey:@"UNINSTALLED_APPS" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
      [(WDUninstalledAppSourcesViewController *)v13 setTitle:v18];

      v19 = [(WDTableViewSection *)self delegate];
      [v19 pushViewController:v13];

      (*(v9 + 2))(v9, 0, 0);
    }

    else
    {
      v20 = [(WDAppSourcesListTableViewSection *)self installedSources];
      v21 = [v20 count];

      if (v21)
      {
        v22 = [(WDAppSourcesListTableViewSection *)self installedSources];
        v23 = [v22 objectAtIndexedSubscript:a3];

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

      (*(v9 + 2))(v9, 1, 0);
    }
  }

  else
  {
    (*(v9 + 2))(v9, 0, 0);
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

  v4 = [(WDSourcesListTableViewSection *)self dataSource];
  v5 = [v4 sources];
  v6 = [v5 orderedUninstalledAppSources];
  v3 = [v6 count] != 0;

  return v3;
}

@end