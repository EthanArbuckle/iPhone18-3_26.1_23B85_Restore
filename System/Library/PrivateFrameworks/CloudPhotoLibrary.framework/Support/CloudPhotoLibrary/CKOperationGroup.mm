@interface CKOperationGroup
- (id)cplDebugDescription;
- (void)setRoughCPLDownloadEstimatedSize:(unint64_t)size;
- (void)setRoughCPLDownloadEstimatedSizeWithEstimatedRecordCount:(unint64_t)count;
- (void)setRoughCPLUploadEstimatedSize:(unint64_t)size;
@end

@implementation CKOperationGroup

- (void)setRoughCPLUploadEstimatedSize:(unint64_t)size
{
  v3 = 2;
  v4 = 3;
  v5 = 4;
  v6 = 5;
  v7 = 6;
  if (HIDWORD(size) >= 0x19)
  {
    v7 = 7;
  }

  if (size >> 31 >= 5)
  {
    v6 = v7;
  }

  if (size >> 30)
  {
    v5 = v6;
  }

  if (size >> 22 >= 0x19)
  {
    v4 = v5;
  }

  if (size >= 0xA00000)
  {
    v3 = v4;
  }

  if (size >= 0x100000)
  {
    [(CKOperationGroup *)self setExpectedSendSize:v3];
  }

  else
  {
    [(CKOperationGroup *)self setExpectedSendSize:1];
  }
}

- (void)setRoughCPLDownloadEstimatedSize:(unint64_t)size
{
  v3 = 2;
  v4 = 3;
  v5 = 4;
  v6 = 5;
  v7 = 6;
  if (HIDWORD(size) >= 0x19)
  {
    v7 = 7;
  }

  if (size >> 31 >= 5)
  {
    v6 = v7;
  }

  if (size >> 30)
  {
    v5 = v6;
  }

  if (size >> 22 >= 0x19)
  {
    v4 = v5;
  }

  if (size >= 0xA00000)
  {
    v3 = v4;
  }

  if (size >= 0x100000)
  {
    [(CKOperationGroup *)self setExpectedReceiveSize:v3];
  }

  else
  {
    [(CKOperationGroup *)self setExpectedReceiveSize:1];
  }
}

- (void)setRoughCPLDownloadEstimatedSizeWithEstimatedRecordCount:(unint64_t)count
{
  v3 = count << 10;
  v4 = 2;
  v5 = 3;
  v6 = 4;
  v7 = 5;
  v8 = 6;
  if (count << 10 >> 32 >= 0x19)
  {
    v8 = 7;
  }

  if (count << 10 >> 31 >= 5)
  {
    v7 = v8;
  }

  if (count << 10 >> 30)
  {
    v6 = v7;
  }

  if (count << 10 >> 22 >= 0x19)
  {
    v5 = v6;
  }

  if (v3 >= 0xA00000)
  {
    v4 = v5;
  }

  if (v3 >= 0x100000)
  {
    [(CKOperationGroup *)self setExpectedReceiveSize:v4];
  }

  else
  {
    [(CKOperationGroup *)self setExpectedReceiveSize:1];
  }
}

- (id)cplDebugDescription
{
  expectedSendSize = [(CKOperationGroup *)self expectedSendSize];
  v4 = 0;
  v5 = 1;
  if (expectedSendSize <= CKOperationGroupTransferSizeTensOfMegabytes)
  {
    switch(expectedSendSize)
    {
      case CKOperationGroupTransferSizeKilobytes:
        v5 = 0;
        v4 = @"Kilobytes";
        break;
      case CKOperationGroupTransferSizeMegabytes:
        v5 = 0;
        v4 = @"Megabytes";
        break;
      case CKOperationGroupTransferSizeTensOfMegabytes:
        v5 = 0;
        v4 = @"10s of Megabytes";
        break;
    }
  }

  else if (expectedSendSize > CKOperationGroupTransferSizeGigabytes)
  {
    if (expectedSendSize == CKOperationGroupTransferSizeTensOfGigabytes)
    {
      v5 = 0;
      v4 = @"10s of Gigabytes";
    }

    else if (expectedSendSize == CKOperationGroupTransferSizeHundredsOfGigabytes)
    {
      v5 = 0;
      v4 = @"100s of Gigabytes";
    }
  }

  else
  {
    v5 = 0;
    if (expectedSendSize == CKOperationGroupTransferSizeHundredsOfMegabytes)
    {
      v4 = @"100s of Megabytes";
    }

    else
    {
      v4 = @"Gigabytes";
    }
  }

  expectedReceiveSize = [(CKOperationGroup *)self expectedReceiveSize];
  v7 = 0;
  v8 = 1;
  if (expectedReceiveSize <= CKOperationGroupTransferSizeTensOfMegabytes)
  {
    switch(expectedReceiveSize)
    {
      case CKOperationGroupTransferSizeKilobytes:
        v8 = 0;
        v7 = @"Kilobytes";
        break;
      case CKOperationGroupTransferSizeMegabytes:
        v8 = 0;
        v7 = @"Megabytes";
        break;
      case CKOperationGroupTransferSizeTensOfMegabytes:
        v8 = 0;
        v7 = @"10s of Megabytes";
        break;
    }
  }

  else if (expectedReceiveSize > CKOperationGroupTransferSizeGigabytes)
  {
    if (expectedReceiveSize == CKOperationGroupTransferSizeTensOfGigabytes)
    {
      v8 = 0;
      v7 = @"10s of Gigabytes";
    }

    else if (expectedReceiveSize == CKOperationGroupTransferSizeHundredsOfGigabytes)
    {
      v8 = 0;
      v7 = @"100s of Gigabytes";
    }
  }

  else
  {
    v8 = 0;
    if (expectedReceiveSize == CKOperationGroupTransferSizeHundredsOfMegabytes)
    {
      v7 = @"100s of Megabytes";
    }

    else
    {
      v7 = @"Gigabytes";
    }
  }

  name = [(CKOperationGroup *)self name];
  v10 = [name mutableCopy];

  if ((v5 & 1) == 0)
  {
    [v10 appendFormat:@" up: %@", v4];
  }

  if ((v8 & 1) == 0)
  {
    [v10 appendFormat:@" down: %@", v7];
  }

  if ([(CKOperationGroup *)self quantity])
  {
    [v10 appendFormat:@" count: %lu", -[CKOperationGroup quantity](self, "quantity")];
  }

  return v10;
}

@end