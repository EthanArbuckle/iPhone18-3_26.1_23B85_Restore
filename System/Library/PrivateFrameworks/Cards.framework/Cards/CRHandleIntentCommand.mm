@interface CRHandleIntentCommand
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CRHandleIntentCommand

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = CRHandleIntentCommand;
  v5 = [(CRBasicPayloadCommand *)&v9 copyWithZone:?];
  v6 = [(CRHandleIntentCommand *)self intent];
  v7 = [v6 copyWithZone:a3];
  [v5 setIntent:v7];

  return v5;
}

@end