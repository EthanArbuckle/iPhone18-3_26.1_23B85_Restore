@interface NTKFaceSnapshotResultCachedFile(ReplicationSupport)
@end

@implementation NTKFaceSnapshotResultCachedFile(ReplicationSupport)

- (void)_cachedFileForGalleryLiteStoredWithin:()ReplicationSupport withError:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = a1;
  *&v3[12] = 2112;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_2(&dword_22D9C5000, a2, a3, "Marking %@ as purgeable failed: %@", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

@end