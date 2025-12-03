@interface OITSUDateParserLibrary
- (OITSUDateParserLibrary)initWithLocale:(id)locale;
- (id)checkoutDateParser;
- (void)dealloc;
- (void)prepareDateParserInBackground;
- (void)returnDateParser:(id)parser;
@end

@implementation OITSUDateParserLibrary

- (OITSUDateParserLibrary)initWithLocale:(id)locale
{
  v7.receiver = self;
  v7.super_class = OITSUDateParserLibrary;
  v4 = [(OITSUDateParserLibrary *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->mLocale = locale;
    v4->mAvailableDateParsers = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5->mParserLibraryConditionVariable = objc_alloc_init(MEMORY[0x277CCA928]);
    v5->mNumberOfUses = 0;
    v5->mParsersCreated = 0;
    v5->mMaxPermittedParsers = 1;
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OITSUDateParserLibrary;
  [(OITSUDateParserLibrary *)&v3 dealloc];
}

- (id)checkoutDateParser
{
  [(NSCondition *)self->mParserLibraryConditionVariable lock];
  if (!self->mMaxPermittedParsers)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUDateParserLibrary checkoutDateParser]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v3, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUDateParserLibrary.m"], 47, 0, "can't have no permitted parsers");
    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  mNumberOfUses = self->mNumberOfUses;
  if (mNumberOfUses != -1)
  {
    self->mNumberOfUses = mNumberOfUses + 1;
    mMaxPermittedParsers = self->mMaxPermittedParsers;
    if (mMaxPermittedParsers < [objc_msgSend(MEMORY[0x277CCAC38] "processInfo")])
    {
      mParsersCreated = self->mParsersCreated;
      if (mParsersCreated == self->mMaxPermittedParsers)
      {
        v7 = sqrtf(self->mNumberOfUses) * 0.008;
        if (v7 < 1.0)
        {
          v7 = 1.0;
        }

        v8 = v7;
        if (mParsersCreated < v8)
        {
          self->mMaxPermittedParsers = v8;
        }
      }
    }
  }

  while (![(NSMutableArray *)self->mAvailableDateParsers count])
  {
    if (self->mParsersCreated >= self->mMaxPermittedParsers)
    {
      [(NSCondition *)self->mParserLibraryConditionVariable wait];
    }

    else
    {
      v9 = objc_autoreleasePoolPush();
      v10 = [[OITSUDateParser alloc] initWithLocale:self->mLocale];
      [(NSMutableArray *)self->mAvailableDateParsers addObject:v10];

      objc_autoreleasePoolPop(v9);
      ++self->mParsersCreated;
    }
  }

  lastObject = [(NSMutableArray *)self->mAvailableDateParsers lastObject];
  [(NSMutableArray *)self->mAvailableDateParsers removeLastObject];
  [(NSCondition *)self->mParserLibraryConditionVariable unlock];
  return lastObject;
}

- (void)returnDateParser:(id)parser
{
  [(NSCondition *)self->mParserLibraryConditionVariable lock];
  [(NSMutableArray *)self->mAvailableDateParsers addObject:parser];
  [(NSCondition *)self->mParserLibraryConditionVariable signal];
  mParserLibraryConditionVariable = self->mParserLibraryConditionVariable;

  [(NSCondition *)mParserLibraryConditionVariable unlock];
}

- (void)prepareDateParserInBackground
{
  if (!self->mParsersCreated)
  {
    block[7] = v2;
    block[8] = v3;
    global_queue = dispatch_get_global_queue(-2, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__OITSUDateParserLibrary_prepareDateParserInBackground__block_invoke;
    block[3] = &unk_2799C60B0;
    block[4] = self;
    dispatch_async(global_queue, block);
  }
}

uint64_t __55__OITSUDateParserLibrary_prepareDateParserInBackground__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 checkoutDateParser];

  return [v1 returnDateParser:v2];
}

@end