@interface SKPresence(ForwardDeclare)
- (void)assertPresenceWithPresencePayloadDictionary:()ForwardDeclare completion:;
@end

@implementation SKPresence(ForwardDeclare)

- (void)assertPresenceWithPresencePayloadDictionary:()ForwardDeclare completion:
{
  v8 = a3;
  v6 = a4;
  if (v8 && [v8 count])
  {
    v7 = [objc_alloc(MEMORY[0x1E69D4600]) initWithDictionary:v8];
    [self assertPresenceWithPresencePayload:v7 completion:v6];
  }

  else
  {
    [self assertPresenceWithCompletion:v6];
  }
}

@end