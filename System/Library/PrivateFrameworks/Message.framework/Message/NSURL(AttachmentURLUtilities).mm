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
  scheme = [self scheme];
  v2 = [scheme hasPrefix:@"x-attach"];

  return v2;
}

- (uint64_t)mf_rowID
{
  v2 = *MEMORY[0x1E699A728];
  if ([self mf_isValidAttachmentURL])
  {
    host = [self host];
    v4 = host;
    if (host)
    {
      longLongValue = [host longLongValue];
      if (longLongValue >= 0)
      {
        v2 = longLongValue;
      }
    }
  }

  return v2;
}

- (id)mf_partNumbers
{
  if ([self mf_isValidAttachmentURL])
  {
    absoluteString = [self absoluteString];
    pathComponents = [absoluteString pathComponents];

    if ([pathComponents count])
    {
      v4 = [pathComponents subarrayWithRange:{1, objc_msgSend(pathComponents, "count") - 1}];
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
  mf_partNumbers = [self mf_partNumbers];
  lastObject = [mf_partNumbers lastObject];

  return lastObject;
}

- (id)mf_firstPartNumber
{
  mf_partNumbers = [self mf_partNumbers];
  if ([mf_partNumbers count])
  {
    v2 = [mf_partNumbers objectAtIndexedSubscript:0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end