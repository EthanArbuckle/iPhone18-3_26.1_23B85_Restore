@interface EGStillImageOutput
- (void)emitPayload:(id)a3;
@end

@implementation EGStillImageOutput

- (void)emitPayload:(id)a3
{
  v3.receiver = self;
  v3.super_class = EGStillImageOutput;
  [(EGOutput *)&v3 emit:a3];
}

@end