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
  v1 = [a1 scheme];

  return [v1 hasPrefix:@"x-attach"];
}

- (uint64_t)mf_rowID
{
  if (![a1 mf_isValidAttachmentURL])
  {
    return 0xFFFFFFFFLL;
  }

  v2 = [a1 host];
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  result = [v2 integerValue];
  if (result < 0)
  {
    return -1;
  }

  return result;
}

- (uint64_t)mf_partNumbers
{
  if (![a1 mf_isValidAttachmentURL])
  {
    return 0;
  }

  v2 = [objc_msgSend(a1 "absoluteString")];
  if (![v2 count])
  {
    return 0;
  }

  v3 = [v2 count] - 1;

  return [v2 subarrayWithRange:{1, v3}];
}

- (uint64_t)mf_lastPartNumber
{
  v1 = [a1 mf_partNumbers];

  return [v1 lastObject];
}

- (uint64_t)mf_firstPartNumber
{
  v1 = [a1 mf_partNumbers];
  result = [v1 count];
  if (result)
  {

    return [v1 objectAtIndexedSubscript:0];
  }

  return result;
}

@end