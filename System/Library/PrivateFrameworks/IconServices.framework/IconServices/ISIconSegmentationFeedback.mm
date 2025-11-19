@interface ISIconSegmentationFeedback
- (ISIconSegmentationFeedback)initWithForeground:(id)a3 background:(id)a4 recolorForeground:(id)a5;
@end

@implementation ISIconSegmentationFeedback

- (ISIconSegmentationFeedback)initWithForeground:(id)a3 background:(id)a4 recolorForeground:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = ISIconSegmentationFeedback;
  v12 = [(ISIconSegmentationFeedback *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_foreground, a3);
    objc_storeStrong(&v13->_background, a4);
    objc_storeStrong(&v13->_recolorForeground, a5);
  }

  return v13;
}

@end