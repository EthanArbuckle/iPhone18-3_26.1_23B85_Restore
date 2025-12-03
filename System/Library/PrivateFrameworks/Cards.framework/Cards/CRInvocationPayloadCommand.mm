@interface CRInvocationPayloadCommand
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CRInvocationPayloadCommand

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = CRInvocationPayloadCommand;
  v5 = [(CRBasicPayloadCommand *)&v9 copyWithZone:?];
  invocationIdentifier = [(CRInvocationPayloadCommand *)self invocationIdentifier];
  v7 = [invocationIdentifier copyWithZone:zone];
  [v5 setInvocationIdentifier:v7];

  return v5;
}

@end