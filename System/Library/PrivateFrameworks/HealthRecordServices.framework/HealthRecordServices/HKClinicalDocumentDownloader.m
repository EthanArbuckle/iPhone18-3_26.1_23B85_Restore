@interface HKClinicalDocumentDownloader
- (HKClinicalDocumentDownloader)init;
- (HKClinicalDocumentDownloader)initWithConnection:(id)a3;
- (id)exportedInterface;
- (void)beginOrResumeDownloadingAttachments:(id)a3 shouldRequestMore:(BOOL)a4 completion:(id)a5;
- (void)downloadAttachment:(id)a3 completion:(id)a4;
- (void)pingDownloaderWithCompletion:(id)a3;
- (void)triggerDownloadForAttachment:(id)a3 completion:(id)a4;
@end

@implementation HKClinicalDocumentDownloader

- (HKClinicalDocumentDownloader)init
{
  v3 = +[HKHealthRecordsDaemonConnection sharedConnection];
  v4 = [(HKClinicalDocumentDownloader *)self initWithConnection:v3];

  return v4;
}

- (HKClinicalDocumentDownloader)initWithConnection:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKClinicalDocumentDownloader;
  v5 = [(HKClinicalDocumentDownloader *)&v9 init];
  if (v5)
  {
    v6 = [[HKHealthRecordsDaemonProxyProvider alloc] initWithConnection:v4 serviceIdentifier:@"ClinicalDocumentDownloader" exportedObject:v5];
    proxyProvider = v5->_proxyProvider;
    v5->_proxyProvider = &v6->super;

    [(HKProxyProvider *)v5->_proxyProvider setShouldRetryOnInterruption:0];
  }

  return v5;
}

- (void)beginOrResumeDownloadingAttachments:(id)a3 shouldRequestMore:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a5];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __97__HKClinicalDocumentDownloader_beginOrResumeDownloadingAttachments_shouldRequestMore_completion___block_invoke;
  v14[3] = &unk_2796DC888;
  v15 = v8;
  v17 = a4;
  v16 = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __97__HKClinicalDocumentDownloader_beginOrResumeDownloadingAttachments_shouldRequestMore_completion___block_invoke_2;
  v12[3] = &unk_2796DBFF8;
  v13 = v16;
  v10 = v16;
  v11 = v8;
  [(HKClinicalDocumentDownloader *)self _fetchProxyWithHandler:v14 errorHandler:v12];
}

- (void)downloadAttachment:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a4];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__HKClinicalDocumentDownloader_downloadAttachment_completion___block_invoke;
  v12[3] = &unk_2796DC8B0;
  v13 = v6;
  v14 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__HKClinicalDocumentDownloader_downloadAttachment_completion___block_invoke_2;
  v10[3] = &unk_2796DBFF8;
  v11 = v14;
  v8 = v14;
  v9 = v6;
  [(HKClinicalDocumentDownloader *)self _fetchProxyWithHandler:v12 errorHandler:v10];
}

- (void)pingDownloaderWithCompletion:(id)a3
{
  v4 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a3];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__HKClinicalDocumentDownloader_pingDownloaderWithCompletion___block_invoke;
  v8[3] = &unk_2796DC8D8;
  v9 = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__HKClinicalDocumentDownloader_pingDownloaderWithCompletion___block_invoke_2;
  v6[3] = &unk_2796DBFF8;
  v7 = v9;
  v5 = v9;
  [(HKClinicalDocumentDownloader *)self _fetchProxyWithHandler:v8 errorHandler:v6];
}

- (void)triggerDownloadForAttachment:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a4];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __72__HKClinicalDocumentDownloader_triggerDownloadForAttachment_completion___block_invoke;
  v12[3] = &unk_2796DC8B0;
  v13 = v6;
  v14 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__HKClinicalDocumentDownloader_triggerDownloadForAttachment_completion___block_invoke_2;
  v10[3] = &unk_2796DBFF8;
  v11 = v14;
  v8 = v14;
  v9 = v6;
  [(HKClinicalDocumentDownloader *)self _fetchProxyWithHandler:v12 errorHandler:v10];
}

- (id)exportedInterface
{
  v2 = objc_alloc_init(MEMORY[0x277CCAE90]);

  return v2;
}

@end