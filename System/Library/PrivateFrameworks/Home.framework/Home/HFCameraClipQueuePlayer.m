@interface HFCameraClipQueuePlayer
- (HFCameraClipPlayerItem)currentItem;
- (HFCameraClipQueuePlayer)initWithItems:(id)a3;
- (NSArray)items;
@end

@implementation HFCameraClipQueuePlayer

- (HFCameraClipQueuePlayer)initWithItems:(id)a3
{
  v4.receiver = self;
  v4.super_class = HFCameraClipQueuePlayer;
  return [(HFCameraClipQueuePlayer *)&v4 initWithItems:a3];
}

- (NSArray)items
{
  v4.receiver = self;
  v4.super_class = HFCameraClipQueuePlayer;
  v2 = [(HFCameraClipQueuePlayer *)&v4 items];

  return v2;
}

- (HFCameraClipPlayerItem)currentItem
{
  v3 = objc_opt_class();
  v10.receiver = self;
  v10.super_class = HFCameraClipQueuePlayer;
  v4 = [(HFCameraClipQueuePlayer *)&v10 currentItem];
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v4;
    if (v5)
    {
      goto LABEL_8;
    }

    v7 = [MEMORY[0x277CCA890] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v7 handleFailureInFunction:v8 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v3, objc_opt_class()}];
  }

  v6 = 0;
LABEL_8:

  return v6;
}

@end