@interface ICGalleryAttachmentView(PlatformSpecificResponsibilty)
@end

@implementation ICGalleryAttachmentView(PlatformSpecificResponsibilty)

- (void)collectionView:()PlatformSpecificResponsibilty cellForItemAtIndexPath:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a2 subAttachmentItems];
  v6 = 138412546;
  v7 = a1;
  v8 = 2048;
  v9 = [v5 count];
  _os_log_error_impl(&dword_2151A1000, a3, OS_LOG_TYPE_ERROR, "Collection view cell out of bounds: %@ (%ld)", &v6, 0x16u);
}

@end