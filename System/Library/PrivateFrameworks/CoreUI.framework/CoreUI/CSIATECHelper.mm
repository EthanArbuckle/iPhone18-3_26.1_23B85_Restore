@interface CSIATECHelper
- (void)dealloc;
@end

@implementation CSIATECHelper

- (void)dealloc
{
  data = self->data;
  if (data)
  {
    CFRelease(data);
  }

  v4.receiver = self;
  v4.super_class = CSIATECHelper;
  [(CSIATECHelper *)&v4 dealloc];
}

@end