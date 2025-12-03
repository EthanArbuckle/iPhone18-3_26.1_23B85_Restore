@interface MFPRedEyeCorrectionEffect
- (MFPRedEyeCorrectionEffect)initWithAreas:(const void *)areas;
- (void)dealloc;
@end

@implementation MFPRedEyeCorrectionEffect

- (MFPRedEyeCorrectionEffect)initWithAreas:(const void *)areas
{
  v4.receiver = self;
  v4.super_class = MFPRedEyeCorrectionEffect;
  if ([(MFPRedEyeCorrectionEffect *)&v4 init])
  {
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  mAreas = self->mAreas;
  if (mAreas)
  {
    v4 = *mAreas;
    if (*mAreas)
    {
      mAreas[1] = v4;
      operator delete(v4);
    }

    MEMORY[0x25F897000](mAreas, 0x20C40960023A9);
  }

  v5.receiver = self;
  v5.super_class = MFPRedEyeCorrectionEffect;
  [(MFPRedEyeCorrectionEffect *)&v5 dealloc];
}

@end