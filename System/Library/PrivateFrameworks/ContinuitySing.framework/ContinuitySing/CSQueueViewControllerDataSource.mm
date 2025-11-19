@interface CSQueueViewControllerDataSource
- (BOOL)tableView:(id)a3 canMoveRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5;
@end

@implementation CSQueueViewControllerDataSource

- (BOOL)tableView:(id)a3 canMoveRowAtIndexPath:(id)a4
{
  v4 = [(UITableViewDiffableDataSource *)self itemIdentifierForIndexPath:a4];
  if ([v4 isAddSongsItem])
  {
    v5 = 0;
  }

  else
  {
    v6 = +[CSShieldManager sharedManager];
    v7 = [v6 playbackManager];
    v8 = [v7 tracklist];
    v9 = [v8 reorderCommand];
    v10 = [v4 responseItem];
    v5 = [v9 canMoveItem:v10];
  }

  return v5;
}

- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (([v7 isEqual:v8] & 1) == 0)
  {
    v9 = [(UITableViewDiffableDataSource *)self snapshot];
    v10 = [(UITableViewDiffableDataSource *)self itemIdentifierForIndexPath:v7];
    v11 = [(UITableViewDiffableDataSource *)self itemIdentifierForIndexPath:v8];
    v12 = +[CSShieldManager sharedManager];
    v13 = [v12 playbackManager];
    v14 = [v13 tracklist];

    v15 = [v7 row];
    if (v15 < [v8 row])
    {
      [v9 moveItemWithIdentifier:v10 afterItemWithIdentifier:{v11, v14}];
      v16 = [v14 reorderCommand];
      v17 = [v10 responseItem];
      v18 = [v11 responseItem];
      [v16 moveItem:v17 afterItem:v18];
    }

    else
    {
      [v9 moveItemWithIdentifier:v10 beforeItemWithIdentifier:{v11, v14}];
      v16 = [v14 reorderCommand];
      v17 = [v10 responseItem];
      v18 = [v11 responseItem];
      [v16 moveItem:v17 beforeItem:v18];
    }
    v19 = ;

    [(UITableViewDiffableDataSource *)self applySnapshot:v9 animatingDifferences:0];
    v20 = MEMORY[0x277D278B8];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __76__CSQueueViewControllerDataSource_tableView_moveRowAtIndexPath_toIndexPath___block_invoke;
    v23[3] = &unk_278E0ADC8;
    v24 = v10;
    v21 = v10;
    [v20 performRequest:v19 completion:v23];
  }
}

void __76__CSQueueViewControllerDataSource_tableView_moveRowAtIndexPath_toIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = ContinuitySingLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __76__CSQueueViewControllerDataSource_tableView_moveRowAtIndexPath_toIndexPath___block_invoke_cold_1(a1, v3, v4);
    }
  }
}

void __76__CSQueueViewControllerDataSource_tableView_moveRowAtIndexPath_toIndexPath___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = [*(a1 + 32) responseItem];
  v6 = 136315650;
  v7 = "[CSQueueViewControllerDataSource tableView:moveRowAtIndexPath:toIndexPath:]_block_invoke";
  v8 = 2112;
  v9 = v5;
  v10 = 2112;
  v11 = a2;
  _os_log_error_impl(&dword_2441FB000, a3, OS_LOG_TYPE_ERROR, "%s: Failed to perform queue reordering of %@ with error %@", &v6, 0x20u);
}

@end