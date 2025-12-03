@interface _MFDAMessageStoreFetchHeadersRequest
- (BOOL)isEqual:(id)equal;
- (unint64_t)generationNumber;
- (unint64_t)hash;
@end

@implementation _MFDAMessageStoreFetchHeadersRequest

- (unint64_t)generationNumber
{
  generationNumber = [(MFMessage *)self->message generationNumber];
  if (!generationNumber)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MFDAMessageStore.m" lineNumber:1250 description:@"fetchable messages should have non-zero generationNumer"];
  }

  return generationNumber;
}

- (unint64_t)hash
{
  remoteID = [(MFMessage *)self->message remoteID];
  v3 = [remoteID hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    remoteID = [(MFMessage *)self->message remoteID];
    remoteID2 = [equalCopy[6] remoteID];
    v7 = [remoteID isEqualToString:remoteID2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end