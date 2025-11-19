@interface OITSUUIImage
+ (id)imageNamed:(id)a3;
+ (void)i_performBlockWithUIImageLock:(id)a3;
- (CGImage)CGImage;
- (CGImage)CGImageForSize:(CGSize)a3;
- (CGSize)size;
- (OITSUUIImage)initWithContentsOfFile:(id)a3;
- (double)scale;
- (id)UIImage;
- (id)copyWithZone:(_NSZone *)a3;
- (id)p_initWithUIImage:(id)a3 needsGuard:(BOOL)a4;
- (int64_t)imageOrientation;
- (void)dealloc;
@end

@implementation OITSUUIImage

+ (void)i_performBlockWithUIImageLock:(id)a3
{
  if (i_performBlockWithUIImageLock__sOnce != -1)
  {
    +[OITSUUIImage i_performBlockWithUIImageLock:];
  }

  dispatch_semaphore_wait(i_performBlockWithUIImageLock__sLock, 0xFFFFFFFFFFFFFFFFLL);
  (*(a3 + 2))(a3);
  v4 = i_performBlockWithUIImageLock__sLock;

  dispatch_semaphore_signal(v4);
}

dispatch_semaphore_t __46__OITSUUIImage_i_performBlockWithUIImageLock___block_invoke()
{
  result = dispatch_semaphore_create(1);
  i_performBlockWithUIImageLock__sLock = result;
  return result;
}

+ (id)imageNamed:(id)a3
{
  v5 = [TSUQuicklookResource imagePathForQuicklookResource:?];
  if (!v5 || (v6 = [[a1 alloc] initWithContentsOfFile:v5]) == 0)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3052000000;
    v13 = __Block_byref_object_copy__4;
    v14 = __Block_byref_object_dispose__4;
    v15 = 0;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __27__OITSUUIImage_imageNamed___block_invoke;
    v9[3] = &unk_2799C65E8;
    v9[4] = a3;
    v9[5] = &v10;
    [a1 i_performBlockWithUIImageLock:v9];
    if (v11[5])
    {
      v7 = [a1 alloc];
      v6 = [v7 p_initWithUIImage:v11[5] needsGuard:1];
    }

    else
    {
      v6 = 0;
    }

    _Block_object_dispose(&v10, 8);
  }

  return v6;
}

void __27__OITSUUIImage_imageNamed___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(*(a1 + 40) + 8) + 40) = [MEMORY[0x277D755B8] imageNamed:*(a1 + 32)];

  objc_autoreleasePoolPop(v2);
}

- (id)p_initWithUIImage:(id)a3 needsGuard:(BOOL)a4
{
  v4 = a4;
  v11.receiver = self;
  v11.super_class = OITSUUIImage;
  v6 = [(OITSUImage *)&v11 init];
  v7 = v6;
  if (v6)
  {
    if (a3)
    {
      v6->mUIImage = a3;
      if (v4)
      {
        v8 = [[OITSUUIImageAutoreleasePoolGuard alloc] initWithUIImage:v7->mUIImage];
        v7->mGuard = v8;
        if (v8)
        {
          v9 = v8;
        }
      }
    }

    else
    {

      return 0;
    }
  }

  return v7;
}

- (OITSUUIImage)initWithContentsOfFile:(id)a3
{
  v4 = [objc_alloc(MEMORY[0x277D755B8]) initWithContentsOfFile:a3];

  return [(OITSUUIImage *)self initWithUIImage:v4];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  mUIImage = self->mUIImage;

  return [v4 initWithUIImage:mUIImage];
}

- (void)dealloc
{
  mGuard = self->mGuard;
  if (mGuard)
  {
    v4 = mGuard;
  }

  else
  {
  }

  v5.receiver = self;
  v5.super_class = OITSUUIImage;
  [(OITSUImage *)&v5 dealloc];
}

- (id)UIImage
{
  mGuard = self->mGuard;
  if (mGuard)
  {
    v4 = mGuard;
  }

  return self->mUIImage;
}

- (CGSize)size
{
  mGuard = self->mGuard;
  if (mGuard)
  {
    v4 = mGuard;
  }

  mUIImage = self->mUIImage;

  [mUIImage size];
  result.height = v7;
  result.width = v6;
  return result;
}

- (double)scale
{
  mGuard = self->mGuard;
  if (mGuard)
  {
    v4 = mGuard;
  }

  mUIImage = self->mUIImage;

  [mUIImage scale];
  return result;
}

- (CGImage)CGImage
{
  mGuard = self->mGuard;
  if (mGuard)
  {
    v4 = mGuard;
  }

  mUIImage = self->mUIImage;

  return [mUIImage CGImage];
}

- (CGImage)CGImageForSize:(CGSize)a3
{
  mGuard = self->mGuard;
  if (mGuard)
  {
    v5 = mGuard;
  }

  mUIImage = self->mUIImage;

  return [mUIImage CGImage:a3.width];
}

- (int64_t)imageOrientation
{
  mGuard = self->mGuard;
  if (mGuard)
  {
    v4 = mGuard;
  }

  mUIImage = self->mUIImage;

  return [mUIImage imageOrientation];
}

@end