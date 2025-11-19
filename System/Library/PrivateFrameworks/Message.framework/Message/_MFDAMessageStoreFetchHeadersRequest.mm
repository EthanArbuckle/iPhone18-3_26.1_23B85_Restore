@interface _MFDAMessageStoreFetchHeadersRequest
- (BOOL)isEqual:(id)a3;
- (unint64_t)generationNumber;
- (unint64_t)hash;
@end

@implementation _MFDAMessageStoreFetchHeadersRequest

- (unint64_t)generationNumber
{
  v4 = [(MFMessage *)self->message generationNumber];
  if (!v4)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"MFDAMessageStore.m" lineNumber:1250 description:@"fetchable messages should have non-zero generationNumer"];
  }

  return v4;
}

- (unint64_t)hash
{
  v2 = [(MFMessage *)self->message remoteID];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(MFMessage *)self->message remoteID];
    v6 = [v4[6] remoteID];
    v7 = [v5 isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end