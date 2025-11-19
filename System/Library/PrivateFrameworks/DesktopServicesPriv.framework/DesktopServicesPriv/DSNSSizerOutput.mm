@interface DSNSSizerOutput
- (DSNSSizerOutput)initWithSizerOutput:(TSizerOutput *)a3;
- (DSNSSizerOutput)initWithSpaceNeeds:(DestinationSpaceNeeds *)a3;
@end

@implementation DSNSSizerOutput

- (DSNSSizerOutput)initWithSizerOutput:(TSizerOutput *)a3
{
  v8.receiver = self;
  v8.super_class = DSNSSizerOutput;
  v4 = [(DSNSSizerOutput *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_userVisibleItemCount = a3->var0;
    v4->_fsItemCount = a3->var1;
    v4->_logicalBytesTotal = a3->var2;
    v4->_physicalBytesTotal = a3->var3;
    v4->_mergeSourceNewerConflictsCount = a3->var5;
    v4->_mergeSourceItemsNotInDestinationCount = a3->var6;
    v4->_mergeDestinationItemsNotInSourceCount = a3->var7;
    v4->_mergeDestinationNewerConflictsBytes = a3->var8;
    v4->_mergeMatchedFilesCount = a3->var9;
    v4->_mergeMatchedFilesBytes = a3->var10;
    v4->_mergeDiffMetaDataFilesCount = a3->var11;
    v4->_mergeDestinationItemsNotInSourceCount = a3->var12;
    fRef = a3->var14.fString.fRef;
    v4->_mergePhysicalDelta = a3->var13;
    objc_storeStrong(&v4->_sourcePath, fRef);
    objc_storeStrong(&v5->_destinationPath, a3->var15.fString.fRef);
    v5->_conflictPhysicalDelta = a3->var16;
    v5->_maxFileSize = a3->var17;
    v5->_conflicts = a3->var18;
  }

  return v5;
}

- (DSNSSizerOutput)initWithSpaceNeeds:(DestinationSpaceNeeds *)a3
{
  v11.receiver = self;
  v11.super_class = DSNSSizerOutput;
  v4 = [(DSNSSizerOutput *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_userVisibleItemCount = a3->var0;
    v4->_fsItemCount = a3->var1;
    v4->_logicalBytesTotal = a3->var2;
    v4->_physicalBytesTotal = a3->var3;
    v4->_mergeSourceNewerConflictsCount = a3->var4;
    v4->_mergeSourceItemsNotInDestinationCount = a3->var5;
    v4->_mergeDestinationItemsNotInSourceCount = a3->var6;
    v4->_mergeDestinationNewerConflictsBytes = a3->var7;
    v4->_mergeMatchedFilesCount = a3->var9;
    v4->_mergeMatchedFilesBytes = a3->var10;
    v4->_mergeDiffMetaDataFilesCount = a3->var11;
    v4->_mergeDestinationItemsNotInSourceCount = a3->var8;
    v4->_mergePhysicalDelta = a3->var12;
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a3->var13];
    sourcePath = v5->_sourcePath;
    v5->_sourcePath = v6;

    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a3->var14];
    destinationPath = v5->_destinationPath;
    v5->_destinationPath = v8;

    v5->_conflictPhysicalDelta = a3->var15;
    v5->_maxFileSize = a3->var16;
    v5->_conflicts = a3->var18;
  }

  return v5;
}

@end