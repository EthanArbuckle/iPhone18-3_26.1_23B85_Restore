@interface FigCaptureCMSession
- (FigCaptureCMSession)initWithCMSession:(opaqueCMSession *)session;
- (id)copyProperty:(__CFString *)property error:(int *)error;
- (void)dealloc;
@end

@implementation FigCaptureCMSession

- (FigCaptureCMSession)initWithCMSession:(opaqueCMSession *)session
{
  v6.receiver = self;
  v6.super_class = FigCaptureCMSession;
  v4 = [(FigCaptureCMSession *)&v6 init];
  if (v4)
  {
    v4->_cmsession = CFRetain(session);
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

- (id)copyProperty:(__CFString *)property error:(int *)error
{
  v5 = CMSessionCopyProperty();
  if (error)
  {
    *error = v5;
  }

  return 0;
}

@end