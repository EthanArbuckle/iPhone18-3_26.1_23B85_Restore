@interface SKPresentDevice(ForwardDeclare)
- (id)presencePayloadDictionary;
@end

@implementation SKPresentDevice(ForwardDeclare)

- (id)presencePayloadDictionary
{
  presencePayload = [self presencePayload];
  payloadDictionary = [presencePayload payloadDictionary];
  v3 = payloadDictionary;
  if (payloadDictionary)
  {
    dictionary = payloadDictionary;
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF20] dictionary];
  }

  v5 = dictionary;

  return v5;
}

@end