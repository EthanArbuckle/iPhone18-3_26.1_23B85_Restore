@interface MAAutoAssetControlStatisticsByCommand
- (MAAutoAssetControlStatisticsByCommand)initWithCoder:(id)coder;
- (MAAutoAssetControlStatisticsByCommand)initWithInitialValue:(int64_t)value;
- (id)copy;
- (int64_t)total;
- (void)encodeWithCoder:(id)coder;
- (void)incrementForClientRequestMessage:(id)message;
@end

@implementation MAAutoAssetControlStatisticsByCommand

- (MAAutoAssetControlStatisticsByCommand)initWithInitialValue:(int64_t)value
{
  v5.receiver = self;
  v5.super_class = MAAutoAssetControlStatisticsByCommand;
  result = [(MAAutoAssetControlStatisticsByCommand *)&v5 init];
  if (result)
  {
    result->_interestInContent = value;
    result->_checkForNewer = value;
    result->_determineIfAvailable = value;
    result->_currentStatus = value;
    result->_lockContent = value;
    result->_mapLockedContent = value;
    result->_continueLockUsage = value;
    result->_endLockUsage = value;
    result->_endPreviousLocks = value;
    result->_endAllPreviousLocks = value;
    result->_eliminateAllForSelector = value;
    result->_eliminateAllForAssetType = value;
    result->_eliminatePromotedNeverLockedForSelector = value;
    result->_stageDetermineAllAvailable = value;
    result->_stageDownloadAll = value;
    result->_stagePurgeAll = value;
    result->_stageEraseAll = value;
    result->_estimateEvictableBytesForSoftwareUpdate = value;
    result->_suspendForSoftwareUpdate = value;
    result->_resumeFromSoftwareUpdate = value;
    result->_suspendResumeStatusForSoftwareUpdate = value;
  }

  return result;
}

- (MAAutoAssetControlStatisticsByCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = MAAutoAssetControlStatisticsByCommand;
  v5 = [(MAAutoAssetControlStatisticsByCommand *)&v7 init];
  if (v5)
  {
    v5->_interestInContent = [coderCopy decodeInt64ForKey:@"interestInContent"];
    v5->_checkForNewer = [coderCopy decodeInt64ForKey:@"checkForNewer"];
    v5->_determineIfAvailable = [coderCopy decodeInt64ForKey:@"determineIfAvailable"];
    v5->_currentStatus = [coderCopy decodeInt64ForKey:@"currentStatus"];
    v5->_lockContent = [coderCopy decodeInt64ForKey:@"lockContent"];
    v5->_mapLockedContent = [coderCopy decodeInt64ForKey:@"mapLockedContent"];
    v5->_continueLockUsage = [coderCopy decodeInt64ForKey:@"continueLockUsage"];
    v5->_endLockUsage = [coderCopy decodeInt64ForKey:@"endLockUsage"];
    v5->_endPreviousLocks = [coderCopy decodeInt64ForKey:@"endPreviousLocks"];
    v5->_endAllPreviousLocks = [coderCopy decodeInt64ForKey:@"endAllPreviousLocks"];
    v5->_eliminateAllForSelector = [coderCopy decodeInt64ForKey:@"eliminateAllForSelector"];
    v5->_eliminateAllForAssetType = [coderCopy decodeInt64ForKey:@"eliminateAllForAssetType"];
    v5->_eliminatePromotedNeverLockedForSelector = [coderCopy decodeInt64ForKey:@"eliminatePromotedNeverLockedForSelector"];
    v5->_stageDetermineAllAvailable = [coderCopy decodeInt64ForKey:@"stageDetermineAllAvailable"];
    v5->_stageDownloadAll = [coderCopy decodeInt64ForKey:@"stageDownloadAll"];
    v5->_stagePurgeAll = [coderCopy decodeInt64ForKey:@"stagePurgeAll"];
    v5->_stageEraseAll = [coderCopy decodeInt64ForKey:@"stageEraseAll"];
    v5->_estimateEvictableBytesForSoftwareUpdate = [coderCopy decodeInt64ForKey:@"estimateEvictableBytesForSoftwareUpdate"];
    v5->_suspendForSoftwareUpdate = [coderCopy decodeInt64ForKey:@"suspendForSoftwareUpdate"];
    v5->_resumeFromSoftwareUpdate = [coderCopy decodeInt64ForKey:@"resumeFromSoftwareUpdate"];
    v5->_suspendResumeStatusForSoftwareUpdate = [coderCopy decodeInt64ForKey:@"suspendResumeStatusForSoftwareUpdate"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:-[MAAutoAssetControlStatisticsByCommand interestInContent](self forKey:{"interestInContent"), @"interestInContent"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStatisticsByCommand checkForNewer](self forKey:{"checkForNewer"), @"checkForNewer"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStatisticsByCommand determineIfAvailable](self forKey:{"determineIfAvailable"), @"determineIfAvailable"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStatisticsByCommand currentStatus](self forKey:{"currentStatus"), @"currentStatus"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStatisticsByCommand lockContent](self forKey:{"lockContent"), @"lockContent"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStatisticsByCommand mapLockedContent](self forKey:{"mapLockedContent"), @"mapLockedContent"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStatisticsByCommand continueLockUsage](self forKey:{"continueLockUsage"), @"continueLockUsage"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStatisticsByCommand endLockUsage](self forKey:{"endLockUsage"), @"endLockUsage"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStatisticsByCommand endPreviousLocks](self forKey:{"endPreviousLocks"), @"endPreviousLocks"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStatisticsByCommand endAllPreviousLocks](self forKey:{"endAllPreviousLocks"), @"endAllPreviousLocks"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStatisticsByCommand eliminateAllForSelector](self forKey:{"eliminateAllForSelector"), @"eliminateAllForSelector"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStatisticsByCommand eliminateAllForAssetType](self forKey:{"eliminateAllForAssetType"), @"eliminateAllForAssetType"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStatisticsByCommand eliminatePromotedNeverLockedForSelector](self forKey:{"eliminatePromotedNeverLockedForSelector"), @"eliminatePromotedNeverLockedForSelector"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStatisticsByCommand stageDetermineAllAvailable](self forKey:{"stageDetermineAllAvailable"), @"stageDetermineAllAvailable"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStatisticsByCommand stageDownloadAll](self forKey:{"stageDownloadAll"), @"stageDownloadAll"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStatisticsByCommand stagePurgeAll](self forKey:{"stagePurgeAll"), @"stagePurgeAll"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStatisticsByCommand stageEraseAll](self forKey:{"stageEraseAll"), @"stageEraseAll"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStatisticsByCommand estimateEvictableBytesForSoftwareUpdate](self forKey:{"estimateEvictableBytesForSoftwareUpdate"), @"estimateEvictableBytesForSoftwareUpdate"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStatisticsByCommand suspendForSoftwareUpdate](self forKey:{"suspendForSoftwareUpdate"), @"suspendForSoftwareUpdate"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStatisticsByCommand resumeFromSoftwareUpdate](self forKey:{"resumeFromSoftwareUpdate"), @"resumeFromSoftwareUpdate"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStatisticsByCommand suspendResumeStatusForSoftwareUpdate](self forKey:{"suspendResumeStatusForSoftwareUpdate"), @"suspendResumeStatusForSoftwareUpdate"}];
}

- (void)incrementForClientRequestMessage:(id)message
{
  messageCopy = message;
  if ([MEMORY[0x1E69D3880] stringIsEqual:? to:?])
  {
    [(MAAutoAssetControlStatisticsByCommand *)self setInterestInContent:[(MAAutoAssetControlStatisticsByCommand *)self interestInContent]+ 1];
  }

  else if ([MEMORY[0x1E69D3880] stringIsEqual:messageCopy to:@"MA-AUTO:CHECK_FOR_NEWER"])
  {
    [(MAAutoAssetControlStatisticsByCommand *)self setCheckForNewer:[(MAAutoAssetControlStatisticsByCommand *)self checkForNewer]+ 1];
  }

  else if ([MEMORY[0x1E69D3880] stringIsEqual:messageCopy to:@"MA-AUTO:DETERMINE_IF_AVAILABLE"])
  {
    [(MAAutoAssetControlStatisticsByCommand *)self setDetermineIfAvailable:[(MAAutoAssetControlStatisticsByCommand *)self determineIfAvailable]+ 1];
  }

  else if ([MEMORY[0x1E69D3880] stringIsEqual:messageCopy to:@"MA-AUTO:LOCK_CONTENT"])
  {
    [(MAAutoAssetControlStatisticsByCommand *)self setLockContent:[(MAAutoAssetControlStatisticsByCommand *)self lockContent]+ 1];
  }

  else if ([MEMORY[0x1E69D3880] stringIsEqual:messageCopy to:@"MA-AUTO:MAP_LOCKED_CONTENT_TO_EXCLAVE"])
  {
    [(MAAutoAssetControlStatisticsByCommand *)self setMapLockedContent:[(MAAutoAssetControlStatisticsByCommand *)self mapLockedContent]+ 1];
  }

  else if ([MEMORY[0x1E69D3880] stringIsEqual:messageCopy to:@"MA-AUTO:CONTINUE_LOCK_USAGE"])
  {
    [(MAAutoAssetControlStatisticsByCommand *)self setContinueLockUsage:[(MAAutoAssetControlStatisticsByCommand *)self continueLockUsage]+ 1];
  }

  else if ([MEMORY[0x1E69D3880] stringIsEqual:messageCopy to:@"MA-AUTO:END_LOCK_USAGE"])
  {
    [(MAAutoAssetControlStatisticsByCommand *)self setEndLockUsage:[(MAAutoAssetControlStatisticsByCommand *)self endLockUsage]+ 1];
  }

  else if ([MEMORY[0x1E69D3880] stringIsEqual:messageCopy to:@"MA-AUTO:END_PREVIOUS_LOCKS"])
  {
    [(MAAutoAssetControlStatisticsByCommand *)self setEndPreviousLocks:[(MAAutoAssetControlStatisticsByCommand *)self endPreviousLocks]+ 1];
  }

  else if ([MEMORY[0x1E69D3880] stringIsEqual:messageCopy to:@"MA-AUTO:END_ALL_PREVIOUS_LOCKS"])
  {
    [(MAAutoAssetControlStatisticsByCommand *)self setEndAllPreviousLocks:[(MAAutoAssetControlStatisticsByCommand *)self endAllPreviousLocks]+ 1];
  }

  else if ([MEMORY[0x1E69D3880] stringIsEqual:messageCopy to:@"MA-AUTO:ELIMINATE_ALL_FOR_SELECTOR"])
  {
    [(MAAutoAssetControlStatisticsByCommand *)self setEliminateAllForSelector:[(MAAutoAssetControlStatisticsByCommand *)self eliminateAllForSelector]+ 1];
  }

  else if ([MEMORY[0x1E69D3880] stringIsEqual:messageCopy to:@"MA-AUTO:ELIMINATE_ALL_FOR_ASSET_TYPE"])
  {
    [(MAAutoAssetControlStatisticsByCommand *)self setEliminateAllForAssetType:[(MAAutoAssetControlStatisticsByCommand *)self eliminateAllForAssetType]+ 1];
  }

  else if ([MEMORY[0x1E69D3880] stringIsEqual:messageCopy to:@"MA-AUTO:ELIMINATE_PROMOTED_NEVER_LOCKED_FOR_SELECTOR"])
  {
    [(MAAutoAssetControlStatisticsByCommand *)self setEliminatePromotedNeverLockedForSelector:[(MAAutoAssetControlStatisticsByCommand *)self eliminatePromotedNeverLockedForSelector]+ 1];
  }

  else if (([MEMORY[0x1E69D3880] stringIsEqual:messageCopy to:@"MA-AUTO-STAGE:DETERMINE_GROUPS_AVAILABLE_FOR_UPDATE"] & 1) != 0 || (objc_msgSend(MEMORY[0x1E69D3880], "stringIsEqual:to:", messageCopy, @"MA-AUTO-STAGE:DETERMINE_ALL_AVAILABLE_FOR_UPDATE") & 1) != 0 || objc_msgSend(MEMORY[0x1E69D3880], "stringIsEqual:to:", messageCopy, @"MA-AUTO-STAGE:DETERMINE_ALL_AVAILABLE"))
  {
    [(MAAutoAssetControlStatisticsByCommand *)self setStageDetermineAllAvailable:[(MAAutoAssetControlStatisticsByCommand *)self stageDetermineAllAvailable]+ 1];
  }

  else if (([MEMORY[0x1E69D3880] stringIsEqual:messageCopy to:@"MA-AUTO-STAGE:DOWNLOAD_GROUPS"] & 1) != 0 || objc_msgSend(MEMORY[0x1E69D3880], "stringIsEqual:to:", messageCopy, @"MA-AUTO-STAGE:DOWNLOAD_ALL"))
  {
    [(MAAutoAssetControlStatisticsByCommand *)self setStageDownloadAll:[(MAAutoAssetControlStatisticsByCommand *)self stageDownloadAll]+ 1];
  }

  else if ([MEMORY[0x1E69D3880] stringIsEqual:messageCopy to:@"MA-AUTO-STAGE:PURGE_ALL"])
  {
    [(MAAutoAssetControlStatisticsByCommand *)self setStagePurgeAll:[(MAAutoAssetControlStatisticsByCommand *)self stagePurgeAll]+ 1];
  }

  else if ([MEMORY[0x1E69D3880] stringIsEqual:messageCopy to:@"MA-AUTO-STAGE:ERASE_ALL"])
  {
    [(MAAutoAssetControlStatisticsByCommand *)self setStageEraseAll:[(MAAutoAssetControlStatisticsByCommand *)self stageEraseAll]+ 1];
  }

  else if ([MEMORY[0x1E69D3880] stringIsEqual:messageCopy to:@"MA-AUTO-SUSPEND-RESUME-SU:EVICTABLE_BYTES"])
  {
    [(MAAutoAssetControlStatisticsByCommand *)self setEstimateEvictableBytesForSoftwareUpdate:[(MAAutoAssetControlStatisticsByCommand *)self estimateEvictableBytesForSoftwareUpdate]+ 1];
  }

  else if ([MEMORY[0x1E69D3880] stringIsEqual:messageCopy to:@"MA-AUTO-SUSPEND-RESUME-SU:SUSPEND"])
  {
    [(MAAutoAssetControlStatisticsByCommand *)self setSuspendForSoftwareUpdate:[(MAAutoAssetControlStatisticsByCommand *)self suspendForSoftwareUpdate]+ 1];
  }

  else if ([MEMORY[0x1E69D3880] stringIsEqual:messageCopy to:@"MA-AUTO-SUSPEND-RESUME-SU:RESUME"])
  {
    [(MAAutoAssetControlStatisticsByCommand *)self setResumeFromSoftwareUpdate:[(MAAutoAssetControlStatisticsByCommand *)self resumeFromSoftwareUpdate]+ 1];
  }

  else if ([MEMORY[0x1E69D3880] stringIsEqual:messageCopy to:@"MA-AUTO-SUSPEND-RESUME-SU:STATUS"])
  {
    [(MAAutoAssetControlStatisticsByCommand *)self setSuspendResumeStatusForSoftwareUpdate:[(MAAutoAssetControlStatisticsByCommand *)self suspendResumeStatusForSoftwareUpdate]+ 1];
  }
}

- (id)copy
{
  v3 = objc_alloc_init(MAAutoAssetControlStatisticsByCommand);
  [(MAAutoAssetControlStatisticsByCommand *)v3 setInterestInContent:[(MAAutoAssetControlStatisticsByCommand *)self interestInContent]];
  [(MAAutoAssetControlStatisticsByCommand *)v3 setCheckForNewer:[(MAAutoAssetControlStatisticsByCommand *)self checkForNewer]];
  [(MAAutoAssetControlStatisticsByCommand *)v3 setDetermineIfAvailable:[(MAAutoAssetControlStatisticsByCommand *)self determineIfAvailable]];
  [(MAAutoAssetControlStatisticsByCommand *)v3 setCurrentStatus:[(MAAutoAssetControlStatisticsByCommand *)self currentStatus]];
  [(MAAutoAssetControlStatisticsByCommand *)v3 setLockContent:[(MAAutoAssetControlStatisticsByCommand *)self lockContent]];
  [(MAAutoAssetControlStatisticsByCommand *)v3 setMapLockedContent:[(MAAutoAssetControlStatisticsByCommand *)self mapLockedContent]];
  [(MAAutoAssetControlStatisticsByCommand *)v3 setContinueLockUsage:[(MAAutoAssetControlStatisticsByCommand *)self continueLockUsage]];
  [(MAAutoAssetControlStatisticsByCommand *)v3 setEndLockUsage:[(MAAutoAssetControlStatisticsByCommand *)self endLockUsage]];
  [(MAAutoAssetControlStatisticsByCommand *)v3 setEndPreviousLocks:[(MAAutoAssetControlStatisticsByCommand *)self endPreviousLocks]];
  [(MAAutoAssetControlStatisticsByCommand *)v3 setEndAllPreviousLocks:[(MAAutoAssetControlStatisticsByCommand *)self endAllPreviousLocks]];
  [(MAAutoAssetControlStatisticsByCommand *)v3 setEliminateAllForSelector:[(MAAutoAssetControlStatisticsByCommand *)self eliminateAllForSelector]];
  [(MAAutoAssetControlStatisticsByCommand *)v3 setEliminateAllForAssetType:[(MAAutoAssetControlStatisticsByCommand *)self eliminateAllForAssetType]];
  [(MAAutoAssetControlStatisticsByCommand *)v3 setEliminatePromotedNeverLockedForSelector:[(MAAutoAssetControlStatisticsByCommand *)self eliminatePromotedNeverLockedForSelector]];
  [(MAAutoAssetControlStatisticsByCommand *)v3 setStageDetermineAllAvailable:[(MAAutoAssetControlStatisticsByCommand *)self stageDetermineAllAvailable]];
  [(MAAutoAssetControlStatisticsByCommand *)v3 setStageDownloadAll:[(MAAutoAssetControlStatisticsByCommand *)self stageDownloadAll]];
  [(MAAutoAssetControlStatisticsByCommand *)v3 setStagePurgeAll:[(MAAutoAssetControlStatisticsByCommand *)self stagePurgeAll]];
  [(MAAutoAssetControlStatisticsByCommand *)v3 setStageEraseAll:[(MAAutoAssetControlStatisticsByCommand *)self stageEraseAll]];
  [(MAAutoAssetControlStatisticsByCommand *)v3 setEstimateEvictableBytesForSoftwareUpdate:[(MAAutoAssetControlStatisticsByCommand *)self estimateEvictableBytesForSoftwareUpdate]];
  [(MAAutoAssetControlStatisticsByCommand *)v3 setSuspendForSoftwareUpdate:[(MAAutoAssetControlStatisticsByCommand *)self suspendForSoftwareUpdate]];
  [(MAAutoAssetControlStatisticsByCommand *)v3 setResumeFromSoftwareUpdate:[(MAAutoAssetControlStatisticsByCommand *)self resumeFromSoftwareUpdate]];
  [(MAAutoAssetControlStatisticsByCommand *)v3 setSuspendResumeStatusForSoftwareUpdate:[(MAAutoAssetControlStatisticsByCommand *)self suspendResumeStatusForSoftwareUpdate]];
  return v3;
}

- (int64_t)total
{
  interestInContent = [(MAAutoAssetControlStatisticsByCommand *)self interestInContent];
  v4 = [(MAAutoAssetControlStatisticsByCommand *)self checkForNewer]+ interestInContent;
  determineIfAvailable = [(MAAutoAssetControlStatisticsByCommand *)self determineIfAvailable];
  v6 = v4 + determineIfAvailable + [(MAAutoAssetControlStatisticsByCommand *)self currentStatus];
  lockContent = [(MAAutoAssetControlStatisticsByCommand *)self lockContent];
  v8 = lockContent + [(MAAutoAssetControlStatisticsByCommand *)self mapLockedContent];
  v9 = v6 + v8 + [(MAAutoAssetControlStatisticsByCommand *)self continueLockUsage];
  endLockUsage = [(MAAutoAssetControlStatisticsByCommand *)self endLockUsage];
  v11 = endLockUsage + [(MAAutoAssetControlStatisticsByCommand *)self endPreviousLocks];
  v12 = v11 + [(MAAutoAssetControlStatisticsByCommand *)self endAllPreviousLocks];
  v13 = v9 + v12 + [(MAAutoAssetControlStatisticsByCommand *)self eliminateAllForSelector];
  eliminateAllForAssetType = [(MAAutoAssetControlStatisticsByCommand *)self eliminateAllForAssetType];
  v15 = eliminateAllForAssetType + [(MAAutoAssetControlStatisticsByCommand *)self eliminatePromotedNeverLockedForSelector];
  v16 = v15 + [(MAAutoAssetControlStatisticsByCommand *)self stageDetermineAllAvailable];
  v17 = v16 + [(MAAutoAssetControlStatisticsByCommand *)self stageDownloadAll];
  v18 = v13 + v17 + [(MAAutoAssetControlStatisticsByCommand *)self stagePurgeAll];
  stageEraseAll = [(MAAutoAssetControlStatisticsByCommand *)self stageEraseAll];
  v20 = stageEraseAll + [(MAAutoAssetControlStatisticsByCommand *)self estimateEvictableBytesForSoftwareUpdate];
  v21 = v20 + [(MAAutoAssetControlStatisticsByCommand *)self suspendForSoftwareUpdate];
  v22 = v21 + [(MAAutoAssetControlStatisticsByCommand *)self resumeFromSoftwareUpdate];
  return v18 + v22 + [(MAAutoAssetControlStatisticsByCommand *)self suspendResumeStatusForSoftwareUpdate];
}

@end