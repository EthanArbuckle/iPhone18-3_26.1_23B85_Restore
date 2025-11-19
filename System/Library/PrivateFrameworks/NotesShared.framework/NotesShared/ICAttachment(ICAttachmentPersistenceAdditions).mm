@interface ICAttachment(ICAttachmentPersistenceAdditions)
@end

@implementation ICAttachment(ICAttachmentPersistenceAdditions)

- (void)loadFromArchive:()ICAttachmentPersistenceAdditions dataPersister:withIdentifierMap:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_214D51000, a2, OS_LOG_TYPE_ERROR, "Error creating unarchiver: %@", &v2, 0xCu);
}

- (void)saveToArchive:()ICAttachmentPersistenceAdditions dataPersister:stripImageMarkupMetadata:error:.cold.1(void *a1, uint8_t *buf, os_log_t log, void *a4)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_214D51000, log, OS_LOG_TYPE_ERROR, "Media (%@) has no filename when archiving — falling back to identifier", buf, 0xCu);
}

- (void)saveToArchive:()ICAttachmentPersistenceAdditions dataPersister:stripImageMarkupMetadata:error:.cold.2(void *a1, uint8_t *buf, os_log_t log, void *a4)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_214D51000, log, OS_LOG_TYPE_ERROR, "Media (%@) has no data when archiving", buf, 0xCu);
}

- (void)saveToArchive:()ICAttachmentPersistenceAdditions dataPersister:stripImageMarkupMetadata:error:.cold.3(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_214D51000, log, OS_LOG_TYPE_ERROR, "Failed to archive PaperKit bundle (%@) at: %@", buf, 0x16u);
}

@end