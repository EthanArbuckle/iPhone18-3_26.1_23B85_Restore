@interface MGGroupIdentifier(MGRemoteQueryCoding)
+ (id)rq_instanceFromCoded:()MGRemoteQueryCoding;
- (id)rq_coded;
@end

@implementation MGGroupIdentifier(MGRemoteQueryCoding)

- (id)rq_coded
{
  v1 = MGGroupIdentifierCopyApplyingHashing(a1);
  v2 = [v1 normalized];
  v3 = [v2 rq_coded];

  return v3;
}

+ (id)rq_instanceFromCoded:()MGRemoteQueryCoding
{
  v0 = [MEMORY[0x277CCACA8] rq_instanceFromCoded:?];
  if (v0)
  {
    v1 = [MEMORY[0x277CCACE0] componentsWithString:v0];
    v2 = v1;
    if (v1 && ([v1 scheme], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "length"), v3, v4))
    {
      v5 = [objc_alloc(MEMORY[0x277D27450]) initWithURLComponents:v2];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end