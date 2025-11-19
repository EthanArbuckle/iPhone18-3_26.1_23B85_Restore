@interface CMSClient
+ (id)clientWithConnection:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation CMSClient

+ (id)clientWithConnection:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setConnection:v3];

  return v4;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(CMSClient *)self connection];
  v4 = [v2 stringWithFormat:@"<CMSClient: Connection: %@>", v3];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(CMSClient *)self connection];
  [v4 setConnection:v5];

  return v4;
}

@end