@interface CKOperationGroup
- (id)cplDebugDescription;
- (void)setRoughCPLDownloadEstimatedSize:(unint64_t)a3;
- (void)setRoughCPLDownloadEstimatedSizeWithEstimatedRecordCount:(unint64_t)a3;
- (void)setRoughCPLUploadEstimatedSize:(unint64_t)a3;
@end

@implementation CKOperationGroup

- (void)setRoughCPLUploadEstimatedSize:(unint64_t)a3
{
  v3 = 2;
  v4 = 3;
  v5 = 4;
  v6 = 5;
  v7 = 6;
  if (HIDWORD(a3) >= 0x19)
  {
    v7 = 7;
  }

  if (a3 >> 31 >= 5)
  {
    v6 = v7;
  }

  if (a3 >> 30)
  {
    v5 = v6;
  }

  if (a3 >> 22 >= 0x19)
  {
    v4 = v5;
  }

  if (a3 >= 0xA00000)
  {
    v3 = v4;
  }

  if (a3 >= 0x100000)
  {
    [(CKOperationGroup *)self setExpectedSendSize:v3];
  }

  else
  {
    [(CKOperationGroup *)self setExpectedSendSize:1];
  }
}

- (void)setRoughCPLDownloadEstimatedSize:(unint64_t)a3
{
  v3 = 2;
  v4 = 3;
  v5 = 4;
  v6 = 5;
  v7 = 6;
  if (HIDWORD(a3) >= 0x19)
  {
    v7 = 7;
  }

  if (a3 >> 31 >= 5)
  {
    v6 = v7;
  }

  if (a3 >> 30)
  {
    v5 = v6;
  }

  if (a3 >> 22 >= 0x19)
  {
    v4 = v5;
  }

  if (a3 >= 0xA00000)
  {
    v3 = v4;
  }

  if (a3 >= 0x100000)
  {
    [(CKOperationGroup *)self setExpectedReceiveSize:v3];
  }

  else
  {
    [(CKOperationGroup *)self setExpectedReceiveSize:1];
  }
}

- (void)setRoughCPLDownloadEstimatedSizeWithEstimatedRecordCount:(unint64_t)a3
{
  v3 = a3 << 10;
  v4 = 2;
  v5 = 3;
  v6 = 4;
  v7 = 5;
  v8 = 6;
  if (a3 << 10 >> 32 >= 0x19)
  {
    v8 = 7;
  }

  if (a3 << 10 >> 31 >= 5)
  {
    v7 = v8;
  }

  if (a3 << 10 >> 30)
  {
    v6 = v7;
  }

  if (a3 << 10 >> 22 >= 0x19)
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
  v3 = [(CKOperationGroup *)self expectedSendSize];
  v4 = 0;
  v5 = 1;
  if (v3 <= CKOperationGroupTransferSizeTensOfMegabytes)
  {
    switch(v3)
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

  else if (v3 > CKOperationGroupTransferSizeGigabytes)
  {
    if (v3 == CKOperationGroupTransferSizeTensOfGigabytes)
    {
      v5 = 0;
      v4 = @"10s of Gigabytes";
    }

    else if (v3 == CKOperationGroupTransferSizeHundredsOfGigabytes)
    {
      v5 = 0;
      v4 = @"100s of Gigabytes";
    }
  }

  else
  {
    v5 = 0;
    if (v3 == CKOperationGroupTransferSizeHundredsOfMegabytes)
    {
      v4 = @"100s of Megabytes";
    }

    else
    {
      v4 = @"Gigabytes";
    }
  }

  v6 = [(CKOperationGroup *)self expectedReceiveSize];
  v7 = 0;
  v8 = 1;
  if (v6 <= CKOperationGroupTransferSizeTensOfMegabytes)
  {
    switch(v6)
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

  else if (v6 > CKOperationGroupTransferSizeGigabytes)
  {
    if (v6 == CKOperationGroupTransferSizeTensOfGigabytes)
    {
      v8 = 0;
      v7 = @"10s of Gigabytes";
    }

    else if (v6 == CKOperationGroupTransferSizeHundredsOfGigabytes)
    {
      v8 = 0;
      v7 = @"100s of Gigabytes";
    }
  }

  else
  {
    v8 = 0;
    if (v6 == CKOperationGroupTransferSizeHundredsOfMegabytes)
    {
      v7 = @"100s of Megabytes";
    }

    else
    {
      v7 = @"Gigabytes";
    }
  }

  v9 = [(CKOperationGroup *)self name];
  v10 = [v9 mutableCopy];

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