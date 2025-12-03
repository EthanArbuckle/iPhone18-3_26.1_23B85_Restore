@interface NSURL(AttachmentURLUtilities)
- (uint64_t)mf_firstPartNumber;
- (uint64_t)mf_isValidAttachmentURL;
- (uint64_t)mf_lastPartNumber;
- (uint64_t)mf_partNumbers;
- (uint64_t)mf_rowID;
@end

@implementation NSURL(AttachmentURLUtilities)

- (uint64_t)mf_isValidAttachmentURL
{
  scheme = [self scheme];

  return [scheme hasPrefix:@"x-attach"];
}

- (uint64_t)mf_rowID
{
  if (![self mf_isValidAttachmentURL])
  {
    return 0xFFFFFFFFLL;
  }

  host = [self host];
  if (!host)
  {
    return 0xFFFFFFFFLL;
  }

  result = [host integerValue];
  if (result < 0)
  {
    return -1;
  }

  return result;
}

- (uint64_t)mf_partNumbers
{
  if (![self mf_isValidAttachmentURL])
  {
    return 0;
  }

  v2 = [objc_msgSend(self "absoluteString")];
  if (![v2 count])
  {
    return 0;
  }

  v3 = [v2 count] - 1;

  return [v2 subarrayWithRange:{1, v3}];
}

- (uint64_t)mf_lastPartNumber
{
  mf_partNumbers = [self mf_partNumbers];

  return [mf_partNumbers lastObject];
}

- (uint64_t)mf_firstPartNumber
{
  mf_partNumbers = [self mf_partNumbers];
  result = [mf_partNumbers count];
  if (result)
  {

    return [mf_partNumbers objectAtIndexedSubscript:0];
  }

  return result;
}

@end