@interface HKClinicalDocumentDownloader
- (HKClinicalDocumentDownloader)init;
- (HKClinicalDocumentDownloader)initWithConnection:(id)connection;
- (id)exportedInterface;
- (void)beginOrResumeDownloadingAttachments:(id)attachments shouldRequestMore:(BOOL)more completion:(id)completion;
- (void)downloadAttachment:(id)attachment completion:(id)completion;
- (void)pingDownloaderWithCompletion:(id)completion;
- (void)triggerDownloadForAttachment:(id)attachment completion:(id)completion;
@end

@implementation HKClinicalDocumentDownloader

- (HKClinicalDocumentDownloader)init
{
  v3 = +[HKHealthRecordsDaemonConnection sharedConnection];
  v4 = [(HKClinicalDocumentDownloader *)self initWithConnection:v3];

  return v4;
}

- (HKClinicalDocumentDownloader)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = HKClinicalDocumentDownloader;
  v5 = [(HKClinicalDocumentDownloader *)&v9 init];
  if (v5)
  {
    v6 = [[HKHealthRecordsDaemonProxyProvider alloc] initWithConnection:connectionCopy serviceIdentifier:@"ClinicalDocumentDownloader" exportedObject:v5];
    proxyProvider = v5->_proxyProvider;
    v5->_proxyProvider = &v6->super;

    [(HKProxyProvider *)v5->_proxyProvider setShouldRetryOnInterruption:0];
  }

  return v5;
}

- (void)beginOrResumeDownloadingAttachments:(id)attachments shouldRequestMore:(BOOL)more completion:(id)completion
{
  attachmentsCopy = attachments;
  v9 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __97__HKClinicalDocumentDownloader_beginOrResumeDownloadingAttachments_shouldRequestMore_completion___block_invoke;
  v14[3] = &unk_2796DC888;
  v15 = attachmentsCopy;
  moreCopy = more;
  v16 = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __97__HKClinicalDocumentDownloader_beginOrResumeDownloadingAttachments_shouldRequestMore_completion___block_invoke_2;
  v12[3] = &unk_2796DBFF8;
  v13 = v16;
  v10 = v16;
  v11 = attachmentsCopy;
  [(HKClinicalDocumentDownloader *)self _fetchProxyWithHandler:v14 errorHandler:v12];
}

- (void)downloadAttachment:(id)attachment completion:(id)completion
{
  attachmentCopy = attachment;
  v7 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__HKClinicalDocumentDownloader_downloadAttachment_completion___block_invoke;
  v12[3] = &unk_2796DC8B0;
  v13 = attachmentCopy;
  v14 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__HKClinicalDocumentDownloader_downloadAttachment_completion___block_invoke_2;
  v10[3] = &unk_2796DBFF8;
  v11 = v14;
  v8 = v14;
  v9 = attachmentCopy;
  [(HKClinicalDocumentDownloader *)self _fetchProxyWithHandler:v12 errorHandler:v10];
}

- (void)pingDownloaderWithCompletion:(id)completion
{
  v4 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
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

- (void)triggerDownloadForAttachment:(id)attachment completion:(id)completion
{
  attachmentCopy = attachment;
  v7 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __72__HKClinicalDocumentDownloader_triggerDownloadForAttachment_completion___block_invoke;
  v12[3] = &unk_2796DC8B0;
  v13 = attachmentCopy;
  v14 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__HKClinicalDocumentDownloader_triggerDownloadForAttachment_completion___block_invoke_2;
  v10[3] = &unk_2796DBFF8;
  v11 = v14;
  v8 = v14;
  v9 = attachmentCopy;
  [(HKClinicalDocumentDownloader *)self _fetchProxyWithHandler:v12 errorHandler:v10];
}

- (id)exportedInterface
{
  v2 = objc_alloc_init(MEMORY[0x277CCAE90]);

  return v2;
}

@end