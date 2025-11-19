@interface NFArchiver
- (BOOL)archiveDirectory:(id)a3 toLocation:(id)a4;
- (BOOL)unarchive:(id)a3 toLocation:(id)a4;
@end

@implementation NFArchiver

- (BOOL)archiveDirectory:(id)a3 toLocation:(id)a4
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = a3;
  BOMCopierNew();
  v7 = [MEMORY[0x277CBEB18] array];
  BOMCopierSetUserData();
  BOMCopierSetCopyFileFinishedHandler();
  v11 = @"createPKZip";
  v12[0] = MEMORY[0x277CBEC38];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  [v6 fileSystemRepresentation];

  [v5 fileSystemRepresentation];
  LODWORD(v5) = BOMCopierCopyWithOptions();
  BOMCopierFree();

  v9 = *MEMORY[0x277D85DE8];
  return v5 == 0;
}

- (BOOL)unarchive:(id)a3 toLocation:(id)a4
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = a3;
  BOMCopierNew();
  v7 = [MEMORY[0x277CBEB18] array];
  BOMCopierSetUserData();
  BOMCopierSetCopyFileFinishedHandler();
  v11 = @"extractPKZip";
  v12[0] = MEMORY[0x277CBEC38];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  [v6 fileSystemRepresentation];

  [v5 fileSystemRepresentation];
  LODWORD(v5) = BOMCopierCopyWithOptions();
  BOMCopierFree();

  v9 = *MEMORY[0x277D85DE8];
  return v5 == 0;
}

@end