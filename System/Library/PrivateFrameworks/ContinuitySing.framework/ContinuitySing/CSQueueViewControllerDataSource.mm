@interface CSQueueViewControllerDataSource
- (BOOL)tableView:(id)view canMoveRowAtIndexPath:(id)path;
- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath;
@end

@implementation CSQueueViewControllerDataSource

- (BOOL)tableView:(id)view canMoveRowAtIndexPath:(id)path
{
  v4 = [(UITableViewDiffableDataSource *)self itemIdentifierForIndexPath:path];
  if ([v4 isAddSongsItem])
  {
    v5 = 0;
  }

  else
  {
    v6 = +[CSShieldManager sharedManager];
    playbackManager = [v6 playbackManager];
    tracklist = [playbackManager tracklist];
    reorderCommand = [tracklist reorderCommand];
    responseItem = [v4 responseItem];
    v5 = [reorderCommand canMoveItem:responseItem];
  }

  return v5;
}

- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  pathCopy = path;
  indexPathCopy = indexPath;
  if (([pathCopy isEqual:indexPathCopy] & 1) == 0)
  {
    snapshot = [(UITableViewDiffableDataSource *)self snapshot];
    v10 = [(UITableViewDiffableDataSource *)self itemIdentifierForIndexPath:pathCopy];
    v11 = [(UITableViewDiffableDataSource *)self itemIdentifierForIndexPath:indexPathCopy];
    v12 = +[CSShieldManager sharedManager];
    playbackManager = [v12 playbackManager];
    tracklist = [playbackManager tracklist];

    v15 = [pathCopy row];
    if (v15 < [indexPathCopy row])
    {
      [snapshot moveItemWithIdentifier:v10 afterItemWithIdentifier:{v11, tracklist}];
      reorderCommand = [tracklist reorderCommand];
      responseItem = [v10 responseItem];
      responseItem2 = [v11 responseItem];
      [reorderCommand moveItem:responseItem afterItem:responseItem2];
    }

    else
    {
      [snapshot moveItemWithIdentifier:v10 beforeItemWithIdentifier:{v11, tracklist}];
      reorderCommand = [tracklist reorderCommand];
      responseItem = [v10 responseItem];
      responseItem2 = [v11 responseItem];
      [reorderCommand moveItem:responseItem beforeItem:responseItem2];
    }
    v19 = ;

    [(UITableViewDiffableDataSource *)self applySnapshot:snapshot animatingDifferences:0];
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