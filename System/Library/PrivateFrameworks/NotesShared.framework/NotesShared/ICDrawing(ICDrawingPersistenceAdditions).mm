@interface ICDrawing(ICDrawingPersistenceAdditions)
@end

@implementation ICDrawing(ICDrawingPersistenceAdditions)

- (void)initWithArchive:()ICDrawingPersistenceAdditions version:replicaID:.cold.1(int *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3[0] = 67109376;
  v3[1] = v2;
  v4 = 1024;
  v5 = 6;
  _os_log_error_impl(&dword_214D51000, a2, OS_LOG_TYPE_ERROR, "Skipped loading drawing. Drawing archive is wrong version (%d != %d).", v3, 0xEu);
}

@end