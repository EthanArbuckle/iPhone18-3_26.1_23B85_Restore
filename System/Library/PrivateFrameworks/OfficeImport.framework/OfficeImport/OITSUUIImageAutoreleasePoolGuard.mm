@interface OITSUUIImageAutoreleasePoolGuard
- (OITSUUIImageAutoreleasePoolGuard)initWithUIImage:(id)image;
- (void)dealloc;
@end

@implementation OITSUUIImageAutoreleasePoolGuard

- (OITSUUIImageAutoreleasePoolGuard)initWithUIImage:(id)image
{
  v5.receiver = self;
  v5.super_class = OITSUUIImageAutoreleasePoolGuard;
  result = [(OITSUUIImageAutoreleasePoolGuard *)&v5 init];
  if (result)
  {
    result->mImage = image;
  }

  return result;
}

- (void)dealloc
{
  mImage = self->mImage;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__OITSUUIImageAutoreleasePoolGuard_dealloc__block_invoke;
  v5[3] = &__block_descriptor_40_e5_v8__0l;
  v5[4] = mImage;
  [OITSUUIImage i_performBlockWithUIImageLock:v5];
  v4.receiver = self;
  v4.super_class = OITSUUIImageAutoreleasePoolGuard;
  [(OITSUUIImageAutoreleasePoolGuard *)&v4 dealloc];
}

@end