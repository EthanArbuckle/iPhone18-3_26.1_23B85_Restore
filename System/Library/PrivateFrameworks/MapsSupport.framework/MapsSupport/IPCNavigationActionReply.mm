@interface IPCNavigationActionReply
- (IPCNavigationActionReply)initWithDictionary:(id)a3;
- (id)description;
- (id)dictionaryValue;
@end

@implementation IPCNavigationActionReply

- (IPCNavigationActionReply)initWithDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = IPCNavigationActionReply;
  v5 = [(IPCMessageObject *)&v9 initWithDictionary:v4];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"kIPCNavigationActionReplySuccessKey"];
    -[IPCNavigationActionReply setSuccess:](v5, "setSuccess:", [v6 BOOLValue]);

    v7 = [v4 objectForKeyedSubscript:@"kIPCNavigationActionReplyNavigationActionErrorKey"];
    -[IPCNavigationActionReply setNavigationActionError:](v5, "setNavigationActionError:", [v7 unsignedIntegerValue]);
  }

  return v5;
}

- (id)dictionaryValue
{
  v9.receiver = self;
  v9.super_class = IPCNavigationActionReply;
  v3 = [(IPCMessageObject *)&v9 dictionaryValue];
  v4 = [v3 mutableCopy];

  v5 = [NSNumber numberWithBool:[(IPCNavigationActionReply *)self success]];
  [v4 setObject:v5 forKeyedSubscript:@"kIPCNavigationActionReplySuccessKey"];

  v6 = [NSNumber numberWithUnsignedInteger:[(IPCNavigationActionReply *)self navigationActionError]];
  [v4 setObject:v6 forKeyedSubscript:@"kIPCNavigationActionReplyNavigationActionErrorKey"];

  v7 = [v4 copy];

  return v7;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = IPCNavigationActionReply;
  v3 = [(IPCNavigationActionReply *)&v7 description];
  v4 = [(IPCNavigationActionReply *)self dictionaryValue];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

@end