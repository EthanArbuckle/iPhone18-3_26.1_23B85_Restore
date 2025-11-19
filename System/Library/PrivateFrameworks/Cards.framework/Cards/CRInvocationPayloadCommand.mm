@interface CRInvocationPayloadCommand
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CRInvocationPayloadCommand

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = CRInvocationPayloadCommand;
  v5 = [(CRBasicPayloadCommand *)&v9 copyWithZone:?];
  v6 = [(CRInvocationPayloadCommand *)self invocationIdentifier];
  v7 = [v6 copyWithZone:a3];
  [v5 setInvocationIdentifier:v7];

  return v5;
}

@end