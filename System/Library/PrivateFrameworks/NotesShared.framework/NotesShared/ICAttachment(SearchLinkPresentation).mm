@interface ICAttachment(SearchLinkPresentation)
- (void)synapseBasedMetadata;
@end

@implementation ICAttachment(SearchLinkPresentation)

- (void)synapseBasedMetadata
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_214D51000, a2, OS_LOG_TYPE_ERROR, "Error unarchiving SYContentItem: %@", &v2, 0xCu);
}

@end