@interface WDResearchStudySourcesListTableViewSection
- (id)_sourceCellForRow:(unint64_t)row tableView:(id)view;
- (id)cellForRow:(unint64_t)row table:(id)table;
- (id)noneString;
- (id)titleForFooter;
- (id)titleForHeader;
- (unint64_t)numberOfRows;
- (void)dataSourceDidUpdate;
- (void)didSelectRow:(unint64_t)row representedByCell:(id)cell withCompletion:(id)completion;
@end

@implementation WDResearchStudySourcesListTableViewSection

- (void)dataSourceDidUpdate
{
  v25 = *MEMORY[0x277D85DE8];
  dataSource = [(WDSourcesListTableViewSection *)self dataSource];
  sources = [dataSource sources];
  orderedResearchStudySources = [sources orderedResearchStudySources];
  [(WDResearchStudySourcesListTableViewSection *)self setResearchSources:orderedResearchStudySources];

  delegate = [(WDTableViewSection *)self delegate];
  [delegate reloadTable];

  restorationSourceBundleIdentifier = [(WDSourcesListTableViewSection *)self restorationSourceBundleIdentifier];
  if (restorationSourceBundleIdentifier)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    researchSources = [(WDResearchStudySourcesListTableViewSection *)self researchSources];
    v9 = [researchSources countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = *v21;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(researchSources);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          source = [v12 source];
          bundleIdentifier = [source bundleIdentifier];
          v15 = [bundleIdentifier isEqualToString:restorationSourceBundleIdentifier];

          if (v15)
          {
            objc_initWeak(&location, self);
            v17[0] = MEMORY[0x277D85DD0];
            v17[1] = 3221225472;
            v17[2] = __65__WDResearchStudySourcesListTableViewSection_dataSourceDidUpdate__block_invoke;
            v17[3] = &unk_2796E7C50;
            objc_copyWeak(&v18, &location);
            [(WDSourcesListTableViewSection *)self createDetailViewControllerForSourceModel:v12 completion:v17];
            objc_destroyWeak(&v18);
            objc_destroyWeak(&location);
            goto LABEL_12;
          }
        }

        v9 = [researchSources countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    [(WDSourcesListTableViewSection *)self setRestorationSourceBundleIdentifier:0];
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __65__WDResearchStudySourcesListTableViewSection_dataSourceDidUpdate__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained delegate];
  [v4 pushViewController:v3];
}

- (unint64_t)numberOfRows
{
  researchSources = [(WDResearchStudySourcesListTableViewSection *)self researchSources];
  v3 = [researchSources count];

  if (v3 <= 1)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

- (id)titleForHeader
{
  v2 = WDBundle();
  v3 = [v2 localizedStringForKey:@"RESEARCH_STUDIES_LIST_HEADER" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];

  return v3;
}

- (id)titleForFooter
{
  v2 = WDBundle();
  v3 = [v2 localizedStringForKey:@"RESEARCH_STUDIES_LIST_EXPLANATION" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];

  return v3;
}

- (id)noneString
{
  v2 = WDBundle();
  v3 = [v2 localizedStringForKey:@"RESEARCH_STUDIES_NONE" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];

  return v3;
}

- (id)cellForRow:(unint64_t)row table:(id)table
{
  tableCopy = table;
  if (row || ([(WDResearchStudySourcesListTableViewSection *)self researchSources], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    researchSources = [(WDResearchStudySourcesListTableViewSection *)self researchSources];
    v9 = [researchSources count];

    if (v9)
    {
      [(WDResearchStudySourcesListTableViewSection *)self _sourceCellForRow:row tableView:tableCopy];
    }

    else
    {
      [(WDSourcesListTableViewSection *)self noneCellForTableView:tableCopy];
    }
    v10 = ;
  }

  else
  {
    v12 = +[WDSpinnerTableViewCell defaultReuseIdentifier];
    v10 = [tableCopy dequeueReusableCellWithIdentifier:v12];
  }

  return v10;
}

- (id)_sourceCellForRow:(unint64_t)row tableView:(id)view
{
  v6 = [view dequeueReusableCellWithIdentifier:@"WDResearchStudySourcesListTableViewSectionCell"];
  if (!v6)
  {
    v6 = [[WDSourcesListTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"WDResearchStudySourcesListTableViewSectionCell"];
    [(WDSourcesListTableViewCell *)v6 setAccessoryType:1];
  }

  researchSources = [(WDResearchStudySourcesListTableViewSection *)self researchSources];
  v8 = [researchSources objectAtIndexedSubscript:row];
  [(WDSourcesListTableViewCell *)v6 setSourceModel:v8];

  return v6;
}

- (void)didSelectRow:(unint64_t)row representedByCell:(id)cell withCompletion:(id)completion
{
  cellCopy = cell;
  completionCopy = completion;
  if (row || ([(WDResearchStudySourcesListTableViewSection *)self researchSources], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
  {
    researchSources = [(WDResearchStudySourcesListTableViewSection *)self researchSources];
    v12 = [researchSources count];

    if (v12)
    {
      objc_initWeak(&location, self);
      researchSources2 = [(WDResearchStudySourcesListTableViewSection *)self researchSources];
      v14 = [researchSources2 objectAtIndexedSubscript:row];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __92__WDResearchStudySourcesListTableViewSection_didSelectRow_representedByCell_withCompletion___block_invoke;
      v15[3] = &unk_2796E7C50;
      objc_copyWeak(&v16, &location);
      [(WDSourcesListTableViewSection *)self createDetailViewControllerForSourceModel:v14 completion:v15];

      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);
    }

    completionCopy[2](completionCopy, 1, 0);
  }

  else
  {
    completionCopy[2](completionCopy, 0, 0);
  }
}

void __92__WDResearchStudySourcesListTableViewSection_didSelectRow_representedByCell_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained delegate];
  [v4 pushViewController:v3];
}

@end