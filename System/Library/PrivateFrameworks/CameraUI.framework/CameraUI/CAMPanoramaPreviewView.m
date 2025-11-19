@interface CAMPanoramaPreviewView
- (_CAImageQueue)imageQueue;
- (void)setImageQueue:(_CAImageQueue *)a3;
@end

@implementation CAMPanoramaPreviewView

- (_CAImageQueue)imageQueue
{
  v2 = [(CAMPanoramaPreviewView *)self layer];
  v3 = [v2 contents];

  return v3;
}

- (void)setImageQueue:(_CAImageQueue *)a3
{
  v4 = [(CAMPanoramaPreviewView *)self layer];
  [v4 setContents:a3];
}

@end