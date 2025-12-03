@interface NFArchiver
- (BOOL)archiveDirectory:(id)directory toLocation:(id)location;
- (BOOL)unarchive:(id)unarchive toLocation:(id)location;
@end

@implementation NFArchiver

- (BOOL)archiveDirectory:(id)directory toLocation:(id)location
{
  v12[1] = *MEMORY[0x277D85DE8];
  locationCopy = location;
  directoryCopy = directory;
  BOMCopierNew();
  array = [MEMORY[0x277CBEB18] array];
  BOMCopierSetUserData();
  BOMCopierSetCopyFileFinishedHandler();
  v11 = @"createPKZip";
  v12[0] = MEMORY[0x277CBEC38];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  [directoryCopy fileSystemRepresentation];

  [locationCopy fileSystemRepresentation];
  LODWORD(locationCopy) = BOMCopierCopyWithOptions();
  BOMCopierFree();

  v9 = *MEMORY[0x277D85DE8];
  return locationCopy == 0;
}

- (BOOL)unarchive:(id)unarchive toLocation:(id)location
{
  v12[1] = *MEMORY[0x277D85DE8];
  locationCopy = location;
  unarchiveCopy = unarchive;
  BOMCopierNew();
  array = [MEMORY[0x277CBEB18] array];
  BOMCopierSetUserData();
  BOMCopierSetCopyFileFinishedHandler();
  v11 = @"extractPKZip";
  v12[0] = MEMORY[0x277CBEC38];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  [unarchiveCopy fileSystemRepresentation];

  [locationCopy fileSystemRepresentation];
  LODWORD(locationCopy) = BOMCopierCopyWithOptions();
  BOMCopierFree();

  v9 = *MEMORY[0x277D85DE8];
  return locationCopy == 0;
}

@end