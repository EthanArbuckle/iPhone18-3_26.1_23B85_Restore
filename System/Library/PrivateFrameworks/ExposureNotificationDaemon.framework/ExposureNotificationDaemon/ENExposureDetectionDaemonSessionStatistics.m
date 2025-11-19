@interface ENExposureDetectionDaemonSessionStatistics
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation ENExposureDetectionDaemonSessionStatistics

- (id)copyWithZone:(_NSZone *)a3
{
  result = objc_alloc_init(ENExposureDetectionDaemonSessionStatistics);
  *(result + 2) = self->_droppedCachedKeyUpdatesCount;
  *(result + 1) = self->_droppedKeyCount;
  *(result + 3) = self->_fileKeyCount;
  *(result + 4) = self->_fileInvalidKeyCount;
  *(result + 5) = self->_invalidFileSignatureCount;
  *(result + 6) = self->_matchedKeyCount;
  *(result + 7) = self->_newCachedKeyCount;
  *(result + 8) = self->_processedFileCount;
  *(result + 9) = self->_revokedKeyCount;
  *(result + 10) = self->_updatedCachedKeyCount;
  return result;
}

- (id)description
{
  v3 = objc_opt_class();
  v15 = NSStringFromClass(v3);
  NSAppendPrintF_safe();
  v4 = 0;

  if (self->_processedFileCount)
  {
    NSAppendPrintF_safe();
    v5 = v4;

    fileKeyCount = self->_fileKeyCount;
    NSAppendPrintF_safe();
    v4 = v5;

    if (self->_fileInvalidKeyCount)
    {
      fileInvalidKeyCount = self->_fileInvalidKeyCount;
      NSAppendPrintF_safe();
      v6 = v4;

      v4 = v6;
    }
  }

  if (self->_invalidFileSignatureCount)
  {
    invalidFileSignatureCount = self->_invalidFileSignatureCount;
    NSAppendPrintF_safe();
    v7 = v4;

    v4 = v7;
  }

  matchedKeyCount = self->_matchedKeyCount;
  NSAppendPrintF_safe();
  v8 = v4;

  if (self->_revokedKeyCount)
  {
    revokedKeyCount = self->_revokedKeyCount;
    NSAppendPrintF_safe();
    v9 = v8;

    v8 = v9;
  }

  if (self->_droppedKeyCount)
  {
    droppedKeyCount = self->_droppedKeyCount;
    NSAppendPrintF_safe();
    v10 = v8;

    v8 = v10;
  }

  if (self->_newCachedKeyCount)
  {
    newCachedKeyCount = self->_newCachedKeyCount;
    NSAppendPrintF_safe();
    v11 = v8;

    v8 = v11;
  }

  if (self->_updatedCachedKeyCount)
  {
    updatedCachedKeyCount = self->_updatedCachedKeyCount;
    NSAppendPrintF_safe();
    v12 = v8;

    v8 = v12;
  }

  if (self->_droppedCachedKeyUpdatesCount)
  {
    droppedCachedKeyUpdatesCount = self->_droppedCachedKeyUpdatesCount;
    NSAppendPrintF_safe();
    v13 = v8;

    v8 = v13;
  }

  return v8;
}

@end