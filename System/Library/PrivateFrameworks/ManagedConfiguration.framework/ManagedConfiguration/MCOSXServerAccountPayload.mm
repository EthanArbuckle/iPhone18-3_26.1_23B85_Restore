@interface MCOSXServerAccountPayload
- (MCOSXServerAccountPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error;
@end

@implementation MCOSXServerAccountPayload

- (MCOSXServerAccountPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error
{
  v6.receiver = self;
  v6.super_class = MCOSXServerAccountPayload;
  return [(MCPayload *)&v6 initWithDictionary:dictionary profile:profile outError:error];
}

@end