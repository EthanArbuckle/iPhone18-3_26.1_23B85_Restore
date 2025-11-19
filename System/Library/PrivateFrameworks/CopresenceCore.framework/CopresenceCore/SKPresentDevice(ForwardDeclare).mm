@interface SKPresentDevice(ForwardDeclare)
- (id)presencePayloadDictionary;
@end

@implementation SKPresentDevice(ForwardDeclare)

- (id)presencePayloadDictionary
{
  v1 = [a1 presencePayload];
  v2 = [v1 payloadDictionary];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E695DF20] dictionary];
  }

  v5 = v4;

  return v5;
}

@end