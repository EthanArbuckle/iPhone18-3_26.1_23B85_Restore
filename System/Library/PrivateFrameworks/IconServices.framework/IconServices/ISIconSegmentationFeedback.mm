@interface ISIconSegmentationFeedback
- (ISIconSegmentationFeedback)initWithForeground:(id)foreground background:(id)background recolorForeground:(id)recolorForeground;
@end

@implementation ISIconSegmentationFeedback

- (ISIconSegmentationFeedback)initWithForeground:(id)foreground background:(id)background recolorForeground:(id)recolorForeground
{
  foregroundCopy = foreground;
  backgroundCopy = background;
  recolorForegroundCopy = recolorForeground;
  v15.receiver = self;
  v15.super_class = ISIconSegmentationFeedback;
  v12 = [(ISIconSegmentationFeedback *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_foreground, foreground);
    objc_storeStrong(&v13->_background, background);
    objc_storeStrong(&v13->_recolorForeground, recolorForeground);
  }

  return v13;
}

@end