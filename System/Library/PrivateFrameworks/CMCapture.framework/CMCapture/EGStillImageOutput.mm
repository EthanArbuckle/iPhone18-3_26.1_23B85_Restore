@interface EGStillImageOutput
- (void)emitPayload:(id)payload;
@end

@implementation EGStillImageOutput

- (void)emitPayload:(id)payload
{
  v3.receiver = self;
  v3.super_class = EGStillImageOutput;
  [(EGOutput *)&v3 emit:payload];
}

@end