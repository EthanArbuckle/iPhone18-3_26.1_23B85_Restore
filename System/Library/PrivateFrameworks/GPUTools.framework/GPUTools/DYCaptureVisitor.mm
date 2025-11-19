@interface DYCaptureVisitor
- (DYCaptureVisitor)init;
@end

@implementation DYCaptureVisitor

- (DYCaptureVisitor)init
{
  v3.receiver = self;
  v3.super_class = DYCaptureVisitor;
  result = [(DYCaptureVisitor *)&v3 init];
  if (result)
  {
    result->_visitUnusedResoures = 0;
  }

  return result;
}

@end