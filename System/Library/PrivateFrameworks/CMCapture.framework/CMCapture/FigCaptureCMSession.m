@interface FigCaptureCMSession
- (FigCaptureCMSession)initWithCMSession:(opaqueCMSession *)a3;
- (id)copyProperty:(__CFString *)a3 error:(int *)a4;
- (void)dealloc;
@end

@implementation FigCaptureCMSession

- (FigCaptureCMSession)initWithCMSession:(opaqueCMSession *)a3
{
  v6.receiver = self;
  v6.super_class = FigCaptureCMSession;
  v4 = [(FigCaptureCMSession *)&v6 init];
  if (v4)
  {
    v4->_cmsession = CFRetain(a3);
  }

  return v4;
}

- (void)dealloc
{
  CFRelease(self->_cmsession);
  v3.receiver = self;
  v3.super_class = FigCaptureCMSession;
  [(FigCaptureCMSession *)&v3 dealloc];
}

- (id)copyProperty:(__CFString *)a3 error:(int *)a4
{
  v5 = CMSessionCopyProperty();
  if (a4)
  {
    *a4 = v5;
  }

  return 0;
}

@end