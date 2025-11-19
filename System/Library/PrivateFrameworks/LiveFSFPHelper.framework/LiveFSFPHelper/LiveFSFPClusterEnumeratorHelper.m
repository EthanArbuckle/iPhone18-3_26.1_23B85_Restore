@interface LiveFSFPClusterEnumeratorHelper
+ (id)newWithEnumeratedItem:(id)a3 extension:(id)a4 error:(id *)a5;
- (LiveFSFPClusterEnumeratorHelper)initWithEnumeratedItem:(id)a3 extension:(id)a4 error:(id *)a5;
- (void)enumerateItemsForObserver:(id)a3 startingAtPage:(id)a4;
- (void)invalidate;
@end

@implementation LiveFSFPClusterEnumeratorHelper

- (LiveFSFPClusterEnumeratorHelper)initWithEnumeratedItem:(id)a3 extension:(id)a4 error:(id *)a5
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = LiveFSFPClusterEnumeratorHelper;
  v8 = [(LiveFSFPClusterEnumeratorHelper *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->ext, a4);
  }

  return v9;
}

+ (id)newWithEnumeratedItem:(id)a3 extension:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 isEqualToString:*MEMORY[0x277CC6368]];
  v11 = *MEMORY[0x277CC6348];
  if (v10)
  {
    v12 = v11;

    v8 = v12;
LABEL_4:
    v13 = [[a1 alloc] initWithEnumeratedItem:v8 extension:v9 error:a5];
    goto LABEL_5;
  }

  if ([v8 isEqualToString:v11])
  {
    goto LABEL_4;
  }

  if (a5)
  {
    [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:22];
    *a5 = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

LABEL_5:

  return v13;
}

- (void)invalidate
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = livefs_std_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[LiveFSFPClusterEnumeratorHelper invalidate]";
    _os_log_impl(&dword_255FE9000, v3, OS_LOG_TYPE_INFO, "%s: marking state as DEAD", &v6, 0xCu);
  }

  v4 = self;
  objc_sync_enter(v4);
  v4->_state = 3;
  objc_sync_exit(v4);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)enumerateItemsForObserver:(id)a3 startingAtPage:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_opt_new();
  ext = self->ext;
  v16 = 0;
  v8 = [(LiveFSFPExtensionHelper *)ext clusterDomainItemsOrError:&v16];
  v9 = v16;
  v10 = livefs_std_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      *buf = 136315394;
      v18 = "[LiveFSFPClusterEnumeratorHelper enumerateItemsForObserver:startingAtPage:]";
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&dword_255FE9000, v10, OS_LOG_TYPE_DEFAULT, "%s: err (%@)", buf, 0x16u);
    }

    [v5 finishEnumeratingWithError:v9];
  }

  else
  {
    if (v11)
    {
      *buf = 136315394;
      v18 = "[LiveFSFPClusterEnumeratorHelper enumerateItemsForObserver:startingAtPage:]";
      v19 = 2112;
      v20 = v8;
      _os_log_impl(&dword_255FE9000, v10, OS_LOG_TYPE_DEFAULT, "%s: clusterDomainItems (%@)", buf, 0x16u);
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __76__LiveFSFPClusterEnumeratorHelper_enumerateItemsForObserver_startingAtPage___block_invoke;
    v14[3] = &unk_27981AEE8;
    v14[4] = self;
    v12 = v6;
    v15 = v12;
    [v8 enumerateObjectsUsingBlock:v14];
    [v5 didEnumerateItems:v12];
    [v5 finishEnumeratingUpToPage:0];
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __76__LiveFSFPClusterEnumeratorHelper_enumerateItemsForObserver_startingAtPage___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [LiveFSFPClusterItem newWithName:v3 extension:*(*(a1 + 32) + 8)];
  v5 = livefs_std_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315650;
    v8 = "[LiveFSFPClusterEnumeratorHelper enumerateItemsForObserver:startingAtPage:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_255FE9000, v5, OS_LOG_TYPE_DEFAULT, "%s: clusterItem(%@) LiveFSFPClusterItem (%@)", &v7, 0x20u);
  }

  [*(a1 + 40) addObject:v4];
  v6 = *MEMORY[0x277D85DE8];
}

@end