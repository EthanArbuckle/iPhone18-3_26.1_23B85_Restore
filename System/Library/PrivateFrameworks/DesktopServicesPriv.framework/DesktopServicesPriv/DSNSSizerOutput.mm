@interface DSNSSizerOutput
- (DSNSSizerOutput)initWithSizerOutput:(TSizerOutput *)output;
- (DSNSSizerOutput)initWithSpaceNeeds:(DestinationSpaceNeeds *)needs;
@end

@implementation DSNSSizerOutput

- (DSNSSizerOutput)initWithSizerOutput:(TSizerOutput *)output
{
  v8.receiver = self;
  v8.super_class = DSNSSizerOutput;
  v4 = [(DSNSSizerOutput *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_userVisibleItemCount = output->var0;
    v4->_fsItemCount = output->var1;
    v4->_logicalBytesTotal = output->var2;
    v4->_physicalBytesTotal = output->var3;
    v4->_mergeSourceNewerConflictsCount = output->var5;
    v4->_mergeSourceItemsNotInDestinationCount = output->var6;
    v4->_mergeDestinationItemsNotInSourceCount = output->var7;
    v4->_mergeDestinationNewerConflictsBytes = output->var8;
    v4->_mergeMatchedFilesCount = output->var9;
    v4->_mergeMatchedFilesBytes = output->var10;
    v4->_mergeDiffMetaDataFilesCount = output->var11;
    v4->_mergeDestinationItemsNotInSourceCount = output->var12;
    fRef = output->var14.fString.fRef;
    v4->_mergePhysicalDelta = output->var13;
    objc_storeStrong(&v4->_sourcePath, fRef);
    objc_storeStrong(&v5->_destinationPath, output->var15.fString.fRef);
    v5->_conflictPhysicalDelta = output->var16;
    v5->_maxFileSize = output->var17;
    v5->_conflicts = output->var18;
  }

  return v5;
}

- (DSNSSizerOutput)initWithSpaceNeeds:(DestinationSpaceNeeds *)needs
{
  v11.receiver = self;
  v11.super_class = DSNSSizerOutput;
  v4 = [(DSNSSizerOutput *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_userVisibleItemCount = needs->var0;
    v4->_fsItemCount = needs->var1;
    v4->_logicalBytesTotal = needs->var2;
    v4->_physicalBytesTotal = needs->var3;
    v4->_mergeSourceNewerConflictsCount = needs->var4;
    v4->_mergeSourceItemsNotInDestinationCount = needs->var5;
    v4->_mergeDestinationItemsNotInSourceCount = needs->var6;
    v4->_mergeDestinationNewerConflictsBytes = needs->var7;
    v4->_mergeMatchedFilesCount = needs->var9;
    v4->_mergeMatchedFilesBytes = needs->var10;
    v4->_mergeDiffMetaDataFilesCount = needs->var11;
    v4->_mergeDestinationItemsNotInSourceCount = needs->var8;
    v4->_mergePhysicalDelta = needs->var12;
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:needs->var13];
    sourcePath = v5->_sourcePath;
    v5->_sourcePath = v6;

    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:needs->var14];
    destinationPath = v5->_destinationPath;
    v5->_destinationPath = v8;

    v5->_conflictPhysicalDelta = needs->var15;
    v5->_maxFileSize = needs->var16;
    v5->_conflicts = needs->var18;
  }

  return v5;
}

@end