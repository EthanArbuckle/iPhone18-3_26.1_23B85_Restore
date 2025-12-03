@interface CKReviewLargeAttachmentsViewController
- (CKReviewLargeAttachmentsViewController)init;
- (id)_previewItem;
- (id)modelObjectAtIndex:(unint64_t)index;
- (id)navigationBarTitle;
- (int64_t)_progressIndicatorRowIndex;
- (unint64_t)numberOfModelObjects;
- (void)_addFetchedAttachments:(id)attachments isFinished:(BOOL)finished;
- (void)_appendProgressIndicatorRowIfNeeded;
- (void)_applicationDidBecomeActive:(id)active;
- (void)_deleteProgressIndicatorRowWithRowAnimation:(int64_t)animation;
- (void)_insertAttachments:(id)attachments;
- (void)_populateAttachmentData;
- (void)_rebuildModelObjectsIfNeeded;
- (void)deleteModelObjectAndUnderlyingData:(id)data;
- (void)didSelectModelObjectAtIndex:(unint64_t)index;
- (void)previewControllerDidDismiss:(id)dismiss;
- (void)reloadModelData;
- (void)viewDidLoad;
@end

@implementation CKReviewLargeAttachmentsViewController

- (CKReviewLargeAttachmentsViewController)init
{
  v11.receiver = self;
  v11.super_class = CKReviewLargeAttachmentsViewController;
  v2 = [(CKReviewLargeAttachmentsViewController *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("CKReviewLargeAttachmentsViewController", v3);
    privateWorkQueue = v2->_privateWorkQueue;
    v2->_privateWorkQueue = v4;

    array = [MEMORY[0x1E695DF70] array];
    modelObjects = v2->_modelObjects;
    v2->_modelObjects = array;

    v8 = [MEMORY[0x1E695DFA8] set];
    loadedAttachmentGuids = v2->_loadedAttachmentGuids;
    v2->_loadedAttachmentGuids = v8;
  }

  return v2;
}

- (void)_rebuildModelObjectsIfNeeded
{
  v31 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v3 = +[CKStoragePluginDataModel sharedInstance];
  attachmentClass = [(CKReviewLargeAttachmentsViewController *)self attachmentClass];
  v19 = [v3 cachedAttachmentsForAttachmentClass:attachmentClass];

  if (v19 && [v19 count])
  {
    v5 = [MEMORY[0x1E695DFA8] set];
    [(CKReviewLargeAttachmentsViewController *)self setLoadedAttachmentGuids:v5];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v6 = v19;
    v7 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v7)
    {
      v8 = *v23;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v23 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v22 + 1) + 8 * i);
          v11 = [v10 objectForKeyedSubscript:{@"guid", v19}];
          loadedAttachmentGuids = [(CKReviewLargeAttachmentsViewController *)self loadedAttachmentGuids];
          v13 = [loadedAttachmentGuids containsObject:v11];

          if ((v13 & 1) == 0)
          {
            [array addObject:v10];
            loadedAttachmentGuids2 = [(CKReviewLargeAttachmentsViewController *)self loadedAttachmentGuids];
            [loadedAttachmentGuids2 addObject:v11];
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v7);
    }

    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = [array count];
        attachmentClass2 = [(CKReviewLargeAttachmentsViewController *)self attachmentClass];
        *buf = 134218242;
        v27 = v16;
        v28 = 2112;
        v29 = attachmentClass2;
        _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "Rebuilt cached %ld model objects for class type: %@", buf, 0x16u);
      }
    }
  }

  [(CKReviewLargeAttachmentsViewController *)self setModelObjects:array, v19];
  tableView = [(CKAbstractReviewViewController *)self tableView];
  [tableView reloadData];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CKReviewLargeAttachmentsViewController;
  [(CKReviewLargeAttachmentsViewController *)&v3 viewDidLoad];
  [(CKReviewLargeAttachmentsViewController *)self _rebuildModelObjectsIfNeeded];
  [(CKReviewLargeAttachmentsViewController *)self _populateAttachmentData];
}

- (id)navigationBarTitle
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"ATTACHMENTS" value:&stru_1F04268F8 table:@"General"];

  return v3;
}

- (void)reloadModelData
{
  tableView = [(CKAbstractReviewViewController *)self tableView];
  tableView2 = [(CKAbstractReviewViewController *)self tableView];
  indexPathForSelectedRow = [tableView2 indexPathForSelectedRow];
  [tableView deselectRowAtIndexPath:indexPathForSelectedRow animated:0];

  v6 = +[CKStoragePluginDataModel sharedInstance];
  attachmentClass = [(CKReviewLargeAttachmentsViewController *)self attachmentClass];
  [v6 setCachedAttachments:MEMORY[0x1E695E0F0] forAttachmentClass:attachmentClass];

  array = [MEMORY[0x1E695DF70] array];
  [(CKReviewLargeAttachmentsViewController *)self setModelObjects:array];

  v9 = [MEMORY[0x1E695DFA8] set];
  [(CKReviewLargeAttachmentsViewController *)self setLoadedAttachmentGuids:v9];

  v10 = +[CKStoragePluginDataModel sharedInstance];
  attachmentClass2 = [(CKReviewLargeAttachmentsViewController *)self attachmentClass];
  [v10 setCachedAttachmentFetchOffset:0 forAttachmentClass:attachmentClass2];

  tableView3 = [(CKAbstractReviewViewController *)self tableView];
  [tableView3 reloadData];

  [(CKReviewLargeAttachmentsViewController *)self _populateAttachmentData];
}

- (void)_applicationDidBecomeActive:(id)active
{
  if (![(CKReviewLargeAttachmentsViewController *)self isLoading])
  {

    [(CKReviewLargeAttachmentsViewController *)self reloadModelData];
  }
}

- (unint64_t)numberOfModelObjects
{
  modelObjects = [(CKReviewLargeAttachmentsViewController *)self modelObjects];
  v3 = [modelObjects count];

  return v3;
}

- (int64_t)_progressIndicatorRowIndex
{
  modelObjects = [(CKReviewLargeAttachmentsViewController *)self modelObjects];
  if ([modelObjects count])
  {
    modelObjects2 = [(CKReviewLargeAttachmentsViewController *)self modelObjects];
    lastObject = [modelObjects2 lastObject];
    v6 = +[CKStorageLoadingCell reuseIdentifier];
    v7 = [lastObject isEqual:v6];

    if (!v7)
    {
      return -1;
    }

    modelObjects = [(CKReviewLargeAttachmentsViewController *)self modelObjects];
    v8 = [modelObjects count] - 1;
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

- (id)modelObjectAtIndex:(unint64_t)index
{
  modelObjects = [(CKReviewLargeAttachmentsViewController *)self modelObjects];
  v5 = [modelObjects objectAtIndexedSubscript:index];

  return v5;
}

- (void)deleteModelObjectAndUnderlyingData:(id)data
{
  v18[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v5 = [dataCopy objectForKeyedSubscript:@"guid"];
  v6 = v5;
  if (v5)
  {
    privateWorkQueue = self->_privateWorkQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77__CKReviewLargeAttachmentsViewController_deleteModelObjectAndUnderlyingData___block_invoke;
    block[3] = &unk_1E72EBA18;
    v17 = v5;
    dispatch_async(privateWorkQueue, block);
  }

  v8 = +[CKStoragePluginDataModel sharedInstance];
  attachmentClass = [(CKReviewLargeAttachmentsViewController *)self attachmentClass];
  v10 = [v8 cachedAttachmentsForAttachmentClass:attachmentClass];

  v11 = +[CKStoragePluginDataModel sharedInstance];
  v18[0] = dataCopy;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  v13 = [v10 arrayByExcludingObjectsInArray:v12];
  attachmentClass2 = [(CKReviewLargeAttachmentsViewController *)self attachmentClass];
  [v11 setCachedAttachments:v13 forAttachmentClass:attachmentClass2];

  modelObjects = [(CKReviewLargeAttachmentsViewController *)self modelObjects];
  [modelObjects removeObject:dataCopy];
}

- (void)didSelectModelObjectAtIndex:(unint64_t)index
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (![(CKAbstractReviewViewController *)self isLoadingIndicatorRowIndex:index])
  {
    _previewItem = [(CKReviewLargeAttachmentsViewController *)self _previewItem];
    if ([MEMORY[0x1E697A0C8] canPreviewItem:_previewItem])
    {
      v5 = objc_alloc(MEMORY[0x1E697A0C8]);
      v10[0] = _previewItem;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
      indexPathForSelectedRow = [v5 initWithPreviewItems:v6];

      [indexPathForSelectedRow setDelegate:self];
      [(CKReviewLargeAttachmentsViewController *)self presentViewController:indexPathForSelectedRow animated:1 completion:0];
    }

    else
    {
      tableView = [(CKAbstractReviewViewController *)self tableView];
      indexPathForSelectedRow = [tableView indexPathForSelectedRow];

      if (indexPathForSelectedRow)
      {
        tableView2 = [(CKAbstractReviewViewController *)self tableView];
        [tableView2 deselectRowAtIndexPath:indexPathForSelectedRow animated:1];
      }
    }
  }
}

- (void)previewControllerDidDismiss:(id)dismiss
{
  tableView = [(CKAbstractReviewViewController *)self tableView];
  indexPathForSelectedRow = [tableView indexPathForSelectedRow];

  if (indexPathForSelectedRow)
  {
    tableView2 = [(CKAbstractReviewViewController *)self tableView];
    [tableView2 deselectRowAtIndexPath:indexPathForSelectedRow animated:1];
  }
}

- (void)_populateAttachmentData
{
  v19 = *MEMORY[0x1E69E9840];
  attachmentClass = [(CKReviewLargeAttachmentsViewController *)self attachmentClass];
  if ([(CKReviewLargeAttachmentsViewController *)self isLoading])
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *v16 = attachmentClass;
        _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "_populateAttachmentData called when already loading attachments of class: %@, ignoring", buf, 0xCu);
      }
    }
  }

  else
  {
    v5 = +[CKStoragePluginDataModel sharedInstance];
    attachmentClass2 = [(CKReviewLargeAttachmentsViewController *)self attachmentClass];
    v7 = [v5 cachedAttachmentsForAttachmentClass:attachmentClass2];

    if (v7 && [v7 count] >= 0x64)
    {
      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v16 = 100;
          *&v16[4] = 2112;
          *&v16[6] = attachmentClass;
          _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "_populateAttachmentData called when already loaded at least %d attachments of type: %@, ignoring", buf, 0x12u);
        }
      }
    }

    else
    {
      [(CKReviewLargeAttachmentsViewController *)self setIsLoading:1];
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = +[CKStoragePluginDataModel sharedInstance];
          *buf = 138412802;
          *v16 = attachmentClass;
          *&v16[8] = 2048;
          *&v16[10] = [v10 cachedAttachmentFetchOffsetForAttachmentClass:attachmentClass];
          v17 = 2048;
          v18 = [v7 count];
          _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "begining to fetch attachments for class: %@, starting at cache offset: %lld, %ld attachments already loaded...", buf, 0x20u);
        }
      }

      [(CKReviewLargeAttachmentsViewController *)self _appendProgressIndicatorRowIfNeeded];
      objc_initWeak(buf, self);
      privateWorkQueue = [(CKReviewLargeAttachmentsViewController *)self privateWorkQueue];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __65__CKReviewLargeAttachmentsViewController__populateAttachmentData__block_invoke;
      v12[3] = &unk_1E72EBB98;
      objc_copyWeak(&v14, buf);
      v13 = attachmentClass;
      dispatch_async(privateWorkQueue, v12);

      objc_destroyWeak(&v14);
      objc_destroyWeak(buf);
    }
  }
}

void __65__CKReviewLargeAttachmentsViewController__populateAttachmentData__block_invoke(uint64_t a1)
{
  v75 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));

  if (WeakRetained)
  {
    v56 = objc_alloc_init(MEMORY[0x1E69A6170]);
    [v56 startTimingForKey:@"populateAttachmentData"];
    if (*(a1 + 32))
    {
      v3 = [MEMORY[0x1E69A5B20] sharedInstance];
      v4 = [v3 isEnabled];

      if (v4)
      {
        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v6 = v5;
        v57 = [MEMORY[0x1E695DF70] array];
        v7 = +[CKStoragePluginDataModel sharedInstance];
        v53 = [v7 cachedAttachmentFetchOffsetForAttachmentClass:*(a1 + 32)];

        if (IMOSLoggingEnabled())
        {
          v8 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
          {
            v9 = *(a1 + 32);
            *buf = 134218498;
            v63 = 1;
            v64 = 2112;
            v65 = v9;
            v66 = 2048;
            v67 = v53;
            _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Starting batch #%ld to populate attachment data for attachment class: %@ starting at batch offset: %lld", buf, 0x20u);
          }
        }

        v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"populateAttachmentData-batch-%ld", 1];
        [v56 startTimingForKey:v10];

        v11 = objc_loadWeakRetained((a1 + 40));
        v12 = v11 == 0;

        if (v12)
        {
          if (IMOSLoggingEnabled())
          {
            v47 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_19020E000, v47, OS_LOG_TYPE_INFO, "CKReviewLargeAttachmentsViewController weak reference is nil, bailing.", buf, 2u);
            }
          }

          goto LABEL_54;
        }

        v13 = IMDAttachmentFindLargestAttachmentGUIDsForAttachmentClassWithLimitAndOffset();
        v14 = 0;
        if ([v13 count])
        {
          v15 = v6 + 1.0;
          v54 = 1;
          while ([v57 count] <= 0x63)
          {
            v60 = 0u;
            v61 = 0u;
            v58 = 0u;
            v59 = 0u;
            obj = v13;
            v16 = 0;
            v17 = [obj countByEnumeratingWithState:&v58 objects:v74 count:16];
            if (v17)
            {
              v18 = *v59;
              while (2)
              {
                for (i = 0; i != v17; ++i)
                {
                  if (*v59 != v18)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v20 = *(*(&v58 + 1) + 8 * i);
                  v21 = objc_loadWeakRetained((a1 + 40));
                  v22 = v21 == 0;

                  if (v22)
                  {
                    if (IMOSLoggingEnabled())
                    {
                      v48 = OSLogHandleForIMFoundationCategory();
                      if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
                      {
                        *buf = 0;
                        _os_log_impl(&dword_19020E000, v48, OS_LOG_TYPE_INFO, "CKReviewLargeAttachmentsViewController weak reference is nil, bailing.", buf, 2u);
                      }
                    }

                    goto LABEL_54;
                  }

                  *buf = 0;
                  v23 = [v20 objectForKeyedSubscript:@"filename"];
                  v24 = MEMORY[0x1E69A7E68];
                  v25 = [v23 stringByExpandingTildeInPath];
                  v26 = [v24 purgableFlagsForPath:v25 error:buf];

                  if (!v26 || (IM_APFS_PURGEABLE_IGNORE_ME() & v26) != 0)
                  {
                    v27 = [v20 copy];
                    [v57 addObject:v27];

                    ++v14;
                    ++v16;
                    if (v14 == 100)
                    {

                      v14 = 100;
                      goto LABEL_28;
                    }
                  }

                  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
                  v29 = v28;
                  if (v28 >= v15 && [v57 count])
                  {
                    v30 = objc_loadWeakRetained((a1 + 40));
                    [v30 _addFetchedAttachments:v57 isFinished:0];

                    v31 = [MEMORY[0x1E695DF70] array];

                    v15 = v29 + 1.0;
                    v57 = v31;
                  }
                }

                v17 = [obj countByEnumeratingWithState:&v58 objects:v74 count:16];
                if (v17)
                {
                  continue;
                }

                break;
              }
            }

LABEL_28:

            v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"populateAttachmentData-batch-%ld", v54];
            [v56 stopTimingForKey:v32];

            if (IMOSLoggingEnabled())
            {
              v33 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
              {
                v34 = *(a1 + 32);
                v35 = [obj count];
                *buf = 134219266;
                v63 = v16;
                v64 = 2112;
                v65 = v34;
                v66 = 2048;
                v67 = v35;
                v68 = 2048;
                v69 = v54;
                v70 = 2048;
                v71 = v14;
                v72 = 1024;
                v73 = 100;
                _os_log_impl(&dword_19020E000, v33, OS_LOG_TYPE_INFO, "Found %ld eligible nonPurgeable attachments of class %@ out of batch size: %ld on batch #%ld. Loaded %ld of %d expected records.", buf, 0x3Au);
              }
            }

            if (v14 >= 100)
            {
              if (IMOSLoggingEnabled())
              {
                v49 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
                {
                  v50 = *(a1 + 32);
                  *buf = 134218498;
                  v63 = v14;
                  v64 = 2112;
                  v65 = v50;
                  v66 = 2048;
                  v67 = v54;
                  _os_log_impl(&dword_19020E000, v49, OS_LOG_TYPE_INFO, "Finish batch fetching %ld attachments of class %@ in %ld batches, we are done", buf, 0x20u);
                }
              }

              v13 = obj;
              break;
            }

            v36 = +[CKStoragePluginDataModel sharedInstance];
            v53 += 20;
            [v36 setCachedAttachmentFetchOffset:? forAttachmentClass:?];

            v13 = IMDAttachmentFindLargestAttachmentGUIDsForAttachmentClassWithLimitAndOffset();

            v37 = [v13 count];
            v38 = ++v54;
            if (!v37)
            {
              if (IMOSLoggingEnabled())
              {
                v51 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
                {
                  v52 = *(a1 + 32);
                  *buf = 138412290;
                  v63 = v52;
                  _os_log_impl(&dword_19020E000, v51, OS_LOG_TYPE_INFO, "No more attachments for %@, we are done", buf, 0xCu);
                }
              }

              break;
            }

            v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"populateAttachmentData-batch-%ld", v38];
            [v56 startTimingForKey:v39];

            if (![v13 count])
            {
              break;
            }
          }
        }

        else
        {
          v54 = 1;
        }

LABEL_49:
        [v56 stopTimingForKey:@"populateAttachmentData"];
        if (IMOSLoggingEnabled())
        {
          v44 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
          {
            v45 = *(a1 + 32);
            *buf = 134218754;
            v63 = v14;
            v64 = 2112;
            v65 = v45;
            v66 = 2048;
            v67 = v54;
            v68 = 2112;
            v69 = v56;
            _os_log_impl(&dword_19020E000, v44, OS_LOG_TYPE_INFO, "Finished loading %ld items for %@ with %ld batches: %@", buf, 0x2Au);
          }
        }

        v46 = objc_loadWeakRetained((a1 + 40));
        [v46 _addFetchedAttachments:v57 isFinished:1];

LABEL_54:
        return;
      }

      v57 = IMDAttachmentFindLargestAttachmentGUIDsForAttachmentClassWithLimitAndOffset();
      v14 = [v57 count];
      if (IMOSLoggingEnabled())
      {
        v41 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          v42 = [v57 count];
          v43 = *(a1 + 32);
          *buf = 134218242;
          v63 = v42;
          v64 = 2112;
          v65 = v43;
          _os_log_impl(&dword_19020E000, v41, OS_LOG_TYPE_INFO, "Loaded %ld attachments for %@, we are done", buf, 0x16u);
        }

LABEL_47:
      }
    }

    else
    {
      v57 = IMDAttachmentFindLargestNonSyncedAttachmentGUIDs();
      v14 = [v57 count];
      if (IMOSLoggingEnabled())
      {
        v41 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          v63 = [v57 count];
          _os_log_impl(&dword_19020E000, v41, OS_LOG_TYPE_INFO, "Loaded %ld attachments for nil attachment class, we are done", buf, 0xCu);
        }

        goto LABEL_47;
      }
    }

    v54 = 1;
    goto LABEL_49;
  }

  if (IMOSLoggingEnabled())
  {
    v40 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v40, OS_LOG_TYPE_INFO, "CKReviewLargeAttachmentsViewController weak reference is nil, bailing.", buf, 2u);
    }
  }
}

- (void)_deleteProgressIndicatorRowWithRowAnimation:(int64_t)animation
{
  v11[1] = *MEMORY[0x1E69E9840];
  _progressIndicatorRowIndex = [(CKReviewLargeAttachmentsViewController *)self _progressIndicatorRowIndex];
  if ((_progressIndicatorRowIndex & 0x8000000000000000) == 0)
  {
    v6 = _progressIndicatorRowIndex;
    modelObjects = [(CKReviewLargeAttachmentsViewController *)self modelObjects];
    [modelObjects removeObjectAtIndex:v6];

    tableView = [(CKAbstractReviewViewController *)self tableView];
    v9 = [MEMORY[0x1E696AC88] indexPathForRow:v6 inSection:0];
    v11[0] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    [tableView deleteRowsAtIndexPaths:v10 withRowAnimation:animation];
  }
}

- (void)_appendProgressIndicatorRowIfNeeded
{
  v10[1] = *MEMORY[0x1E69E9840];
  if ([(CKReviewLargeAttachmentsViewController *)self isLoading])
  {
    if ([(CKReviewLargeAttachmentsViewController *)self _progressIndicatorRowIndex]== -1)
    {
      modelObjects = [(CKReviewLargeAttachmentsViewController *)self modelObjects];
      v4 = +[CKStorageLoadingCell reuseIdentifier];
      [modelObjects addObject:v4];

      tableView = [(CKAbstractReviewViewController *)self tableView];
      v6 = MEMORY[0x1E696AC88];
      modelObjects2 = [(CKReviewLargeAttachmentsViewController *)self modelObjects];
      v8 = [v6 indexPathForRow:objc_msgSend(modelObjects2 inSection:{"count") - 1, 0}];
      v10[0] = v8;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
      [tableView insertRowsAtIndexPaths:v9 withRowAnimation:5];
    }
  }
}

- (void)_insertAttachments:(id)attachments
{
  v60 = *MEMORY[0x1E69E9840];
  attachmentsCopy = attachments;
  if ([attachmentsCopy count])
  {
    v4 = +[CKStoragePluginDataModel sharedInstance];
    attachmentClass = [(CKReviewLargeAttachmentsViewController *)self attachmentClass];
    v6 = [v4 cachedAttachmentsForAttachmentClass:attachmentClass];
    v7 = [v6 mutableCopy];

    array = v7;
    if (!v7)
    {
      array = [MEMORY[0x1E695DF70] array];
    }

    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [attachmentsCopy count];
        attachmentClass2 = [(CKReviewLargeAttachmentsViewController *)self attachmentClass];
        modelObjects = [(CKReviewLargeAttachmentsViewController *)self modelObjects];
        v12 = [modelObjects count];
        v13 = [array count];
        v14 = [array count];
        *buf = 134219010;
        v51 = v9;
        v52 = 2112;
        v53 = attachmentClass2;
        v54 = 2048;
        v55 = v12 - 1;
        v56 = 2048;
        v57 = v13;
        v58 = 2048;
        v59 = [attachmentsCopy count] + v14;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Adding %ld new attachments of class %@ at row %ld. Previous attachment count: %ld. New total attachment count: %ld", buf, 0x34u);
      }
    }

    modelObjects2 = [(CKReviewLargeAttachmentsViewController *)self modelObjects];
    v16 = modelObjects2 == 0;

    if (v16)
    {
      array2 = [MEMORY[0x1E695DF70] array];
      [(CKReviewLargeAttachmentsViewController *)self setModelObjects:array2];
    }

    loadedAttachmentGuids = [(CKReviewLargeAttachmentsViewController *)self loadedAttachmentGuids];
    v19 = loadedAttachmentGuids == 0;

    if (v19)
    {
      v20 = [MEMORY[0x1E695DFA8] set];
      [(CKReviewLargeAttachmentsViewController *)self setLoadedAttachmentGuids:v20];
    }

    tableView = [(CKAbstractReviewViewController *)self tableView];
    [tableView beginUpdates];

    [(CKReviewLargeAttachmentsViewController *)self _deleteProgressIndicatorRowWithRowAnimation:5];
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v22 = attachmentsCopy;
    v23 = [v22 countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v23)
    {
      v24 = *v45;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v45 != v24)
          {
            objc_enumerationMutation(v22);
          }

          v26 = *(*(&v44 + 1) + 8 * i);
          v27 = [v26 objectForKeyedSubscript:@"guid"];
          loadedAttachmentGuids2 = [(CKReviewLargeAttachmentsViewController *)self loadedAttachmentGuids];
          v29 = [loadedAttachmentGuids2 containsObject:v27];

          if ((v29 & 1) == 0)
          {
            loadedAttachmentGuids3 = [(CKReviewLargeAttachmentsViewController *)self loadedAttachmentGuids];
            [loadedAttachmentGuids3 addObject:v27];

            if (IMOSLoggingEnabled())
            {
              v31 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
              {
                attachmentClass3 = [(CKReviewLargeAttachmentsViewController *)self attachmentClass];
                *buf = 138412546;
                v51 = v27;
                v52 = 2112;
                v53 = attachmentClass3;
                _os_log_impl(&dword_19020E000, v31, OS_LOG_TYPE_INFO, "Adding attachment %@ of type: %@", buf, 0x16u);
              }
            }

            [array addObject:v26];
            modelObjects3 = [(CKReviewLargeAttachmentsViewController *)self modelObjects];
            [modelObjects3 addObject:v26];

            tableView2 = [(CKAbstractReviewViewController *)self tableView];
            v35 = MEMORY[0x1E696AC88];
            modelObjects4 = [(CKReviewLargeAttachmentsViewController *)self modelObjects];
            v37 = [v35 indexPathForRow:objc_msgSend(modelObjects4 inSection:{"count") - 1, 0}];
            v48 = v37;
            v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
            [tableView2 insertRowsAtIndexPaths:v38 withRowAnimation:5];
          }
        }

        v23 = [v22 countByEnumeratingWithState:&v44 objects:v49 count:16];
      }

      while (v23);
    }

    [(CKReviewLargeAttachmentsViewController *)self _appendProgressIndicatorRowIfNeeded];
    tableView3 = [(CKAbstractReviewViewController *)self tableView];
    [tableView3 endUpdates];

    v40 = +[CKStoragePluginDataModel sharedInstance];
    attachmentClass4 = [(CKReviewLargeAttachmentsViewController *)self attachmentClass];
    [v40 setCachedAttachments:array forAttachmentClass:attachmentClass4];
  }
}

- (void)_addFetchedAttachments:(id)attachments isFinished:(BOOL)finished
{
  attachmentsCopy = attachments;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__CKReviewLargeAttachmentsViewController__addFetchedAttachments_isFinished___block_invoke;
  block[3] = &unk_1E72EBBC0;
  block[4] = self;
  v9 = attachmentsCopy;
  finishedCopy = finished;
  v7 = attachmentsCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __76__CKReviewLargeAttachmentsViewController__addFetchedAttachments_isFinished___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _insertAttachments:*(a1 + 40)];
  if (*(a1 + 48) == 1)
  {
    [*(a1 + 32) _deleteProgressIndicatorRowWithRowAnimation:5];
    [*(a1 + 32) setIsLoading:0];
    if (IMOSLoggingEnabled())
    {
      v2 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        *v3 = 0;
        _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "Finished Loading attachments", v3, 2u);
      }
    }
  }
}

- (id)_previewItem
{
  tableView = [(CKAbstractReviewViewController *)self tableView];
  indexPathForSelectedRow = [tableView indexPathForSelectedRow];

  if (indexPathForSelectedRow && !-[CKAbstractReviewViewController isLoadingIndicatorRowIndex:](self, "isLoadingIndicatorRowIndex:", [indexPathForSelectedRow row]))
  {
    tableView2 = [(CKAbstractReviewViewController *)self tableView];
    v7 = [tableView2 cellForRowAtIndexPath:indexPathForSelectedRow];

    if (v7)
    {
      cachedAttachmentItem = [v7 cachedAttachmentItem];
      attachmentItem = [cachedAttachmentItem attachmentItem];
    }

    else
    {
      attachmentItem = 0;
    }
  }

  else
  {
    attachmentItem = 0;
  }

  return attachmentItem;
}

@end