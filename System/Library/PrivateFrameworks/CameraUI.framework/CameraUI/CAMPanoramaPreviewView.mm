@interface CAMPanoramaPreviewView
- (_CAImageQueue)imageQueue;
- (void)setImageQueue:(_CAImageQueue *)queue;
@end

@implementation CAMPanoramaPreviewView

- (_CAImageQueue)imageQueue
{
  layer = [(CAMPanoramaPreviewView *)self layer];
  contents = [layer contents];

  return contents;
}

- (void)setImageQueue:(_CAImageQueue *)queue
{
  layer = [(CAMPanoramaPreviewView *)self layer];
  [layer setContents:queue];
}

@end