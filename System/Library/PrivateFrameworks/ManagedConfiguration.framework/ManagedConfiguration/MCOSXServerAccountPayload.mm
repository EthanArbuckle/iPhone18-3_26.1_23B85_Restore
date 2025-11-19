@interface MCOSXServerAccountPayload
- (MCOSXServerAccountPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5;
@end

@implementation MCOSXServerAccountPayload

- (MCOSXServerAccountPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5
{
  v6.receiver = self;
  v6.super_class = MCOSXServerAccountPayload;
  return [(MCPayload *)&v6 initWithDictionary:a3 profile:a4 outError:a5];
}

@end