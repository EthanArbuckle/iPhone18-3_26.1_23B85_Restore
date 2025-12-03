@interface ICDocCamPreviewView
- (AVCaptureSession)session;
- (void)setSession:(id)session;
@end

@implementation ICDocCamPreviewView

- (AVCaptureSession)session
{
  layer = [(ICDocCamPreviewView *)self layer];
  session = [layer session];

  return session;
}

- (void)setSession:(id)session
{
  sessionCopy = session;
  layer = [(ICDocCamPreviewView *)self layer];
  [layer setSession:sessionCopy];
}

@end