@interface _HDOntologyDownloadTask
- (_HDOntologyDownloadTask)init;
- (id)_taskError;
- (id)initForDownloader:(id)a3 session:(id)a4 queue:(id)a5;
- (void)downloadShardsForEntries:(id)a3 completion:(id)a4;
@end

@implementation _HDOntologyDownloadTask

- (_HDOntologyDownloadTask)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (id)initForDownloader:(id)a3 session:(id)a4 queue:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = _HDOntologyDownloadTask;
  v12 = [(_HDOntologyDownloadTask *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_downloader, a3);
    objc_storeStrong(&v13->_session, a4);
    objc_storeStrong(&v13->_queue, a5);
    v14 = dispatch_group_create();
    downloadGroup = v13->_downloadGroup;
    v13->_downloadGroup = v14;
  }

  return v13;
}

- (void)downloadShardsForEntries:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = dispatch_group_create();
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __63___HDOntologyDownloadTask_downloadShardsForEntries_completion___block_invoke;
  v16[3] = &unk_2796B9718;
  v16[4] = self;
  v17 = v8;
  v9 = v8;
  v10 = [v7 hk_map:v16];

  downloadTasks = self->_downloadTasks;
  self->_downloadTasks = v10;

  queue = self->_queue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __63___HDOntologyDownloadTask_downloadShardsForEntries_completion___block_invoke_2;
  v14[3] = &unk_2796B9740;
  v14[4] = self;
  v15 = v6;
  v13 = v6;
  dispatch_group_notify(v9, queue, v14);
}

- (id)_taskError
{
  v2 = [(NSArray *)self->_downloadTasks hk_firstObjectPassingTest:&__block_literal_global_5];
  v3 = [v2 error];

  return v3;
}

@end