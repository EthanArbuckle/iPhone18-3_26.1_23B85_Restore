@interface ICDocCamPreviewView
- (AVCaptureSession)session;
- (void)setSession:(id)a3;
@end

@implementation ICDocCamPreviewView

- (AVCaptureSession)session
{
  v2 = [(ICDocCamPreviewView *)self layer];
  v3 = [v2 session];

  return v3;
}

- (void)setSession:(id)a3
{
  v4 = a3;
  v5 = [(ICDocCamPreviewView *)self layer];
  [v5 setSession:v4];
}

@end