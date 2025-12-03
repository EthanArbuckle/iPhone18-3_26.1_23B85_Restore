@interface HFCameraClipQueuePlayer
- (HFCameraClipPlayerItem)currentItem;
- (HFCameraClipQueuePlayer)initWithItems:(id)items;
- (NSArray)items;
@end

@implementation HFCameraClipQueuePlayer

- (HFCameraClipQueuePlayer)initWithItems:(id)items
{
  v4.receiver = self;
  v4.super_class = HFCameraClipQueuePlayer;
  return [(HFCameraClipQueuePlayer *)&v4 initWithItems:items];
}

- (NSArray)items
{
  v4.receiver = self;
  v4.super_class = HFCameraClipQueuePlayer;
  items = [(HFCameraClipQueuePlayer *)&v4 items];

  return items;
}

- (HFCameraClipPlayerItem)currentItem
{
  v3 = objc_opt_class();
  v10.receiver = self;
  v10.super_class = HFCameraClipQueuePlayer;
  currentItem = [(HFCameraClipQueuePlayer *)&v10 currentItem];
  if (currentItem)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = currentItem;
    }

    else
    {
      v5 = 0;
    }

    v6 = currentItem;
    if (v5)
    {
      goto LABEL_8;
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler handleFailureInFunction:v8 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v3, objc_opt_class()}];
  }

  v6 = 0;
LABEL_8:

  return v6;
}

@end