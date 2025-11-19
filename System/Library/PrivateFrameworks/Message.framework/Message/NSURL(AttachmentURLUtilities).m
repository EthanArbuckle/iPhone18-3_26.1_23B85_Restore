@interface NSURL(AttachmentURLUtilities)
- (id)mf_firstPartNumber;
- (id)mf_lastPartNumber;
- (id)mf_partNumbers;
- (uint64_t)mf_isValidAttachmentURL;
- (uint64_t)mf_rowID;
@end

@implementation NSURL(AttachmentURLUtilities)

- (uint64_t)mf_isValidAttachmentURL
{
  v1 = [a1 scheme];
  v2 = [v1 hasPrefix:@"x-attach"];

  return v2;
}

- (uint64_t)mf_rowID
{
  v2 = *MEMORY[0x1E699A728];
  if ([a1 mf_isValidAttachmentURL])
  {
    v3 = [a1 host];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 longLongValue];
      if (v5 >= 0)
      {
        v2 = v5;
      }
    }
  }

  return v2;
}

- (id)mf_partNumbers
{
  if ([a1 mf_isValidAttachmentURL])
  {
    v2 = [a1 absoluteString];
    v3 = [v2 pathComponents];

    if ([v3 count])
    {
      v4 = [v3 subarrayWithRange:{1, objc_msgSend(v3, "count") - 1}];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)mf_lastPartNumber
{
  v1 = [a1 mf_partNumbers];
  v2 = [v1 lastObject];

  return v2;
}

- (id)mf_firstPartNumber
{
  v1 = [a1 mf_partNumbers];
  if ([v1 count])
  {
    v2 = [v1 objectAtIndexedSubscript:0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end