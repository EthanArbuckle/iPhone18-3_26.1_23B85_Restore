@interface CRHandleIntentCommand
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CRHandleIntentCommand

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = CRHandleIntentCommand;
  v5 = [(CRBasicPayloadCommand *)&v9 copyWithZone:?];
  intent = [(CRHandleIntentCommand *)self intent];
  v7 = [intent copyWithZone:zone];
  [v5 setIntent:v7];

  return v5;
}

@end