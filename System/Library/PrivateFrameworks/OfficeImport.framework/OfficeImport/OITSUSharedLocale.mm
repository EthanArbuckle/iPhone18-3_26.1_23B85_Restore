@interface OITSUSharedLocale
+ (id)_singletonAlloc;
+ (id)allocWithZone:(_NSZone *)zone;
+ (id)sharedLocale;
- (OITSUSharedLocale)init;
- (__CFLocale)currentLocale;
- (void)datePreferencesChanged:(id)changed;
- (void)dealloc;
@end

@implementation OITSUSharedLocale

+ (id)_singletonAlloc
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___OITSUSharedLocale;
  return objc_msgSendSuper2(&v3, sel_allocWithZone_, 0);
}

+ (id)sharedLocale
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__OITSUSharedLocale_sharedLocale__block_invoke;
  block[3] = &unk_2799C60B0;
  block[4] = self;
  if (sharedLocale_sOnceToken != -1)
  {
    dispatch_once(&sharedLocale_sOnceToken, block);
  }

  return sharedLocale_sSingletonInstance;
}

uint64_t __33__OITSUSharedLocale_sharedLocale__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "_singletonAlloc")];
  sharedLocale_sSingletonInstance = result;
  if (!result)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[OITSUSharedLocale sharedLocale]_block_invoke"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v3, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSULocale.m"], 1129, 0, "Couldn't create singleton instance of %@", *(a1 + 32));

    return +[OITSUAssertionHandler logBacktraceThrottled];
  }

  return result;
}

+ (id)allocWithZone:(_NSZone *)zone
{
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[OITSUSharedLocale allocWithZone:]"];
  +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v3, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSULocale.m"], 1129, 0, "Don't alloc a singleton");
  +[OITSUAssertionHandler logBacktraceThrottled];
  return 0;
}

- (OITSUSharedLocale)init
{
  v8.receiver = self;
  v8.super_class = OITSUSharedLocale;
  v2 = [(OITSUSharedLocale *)&v8 init];
  if (v2)
  {
    v2->mCurrentLocale = CFLocaleCopyCurrent();
    v3 = [OITSUWeakReference weakReferenceWithObject:v2];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __25__OITSUSharedLocale_init__block_invoke;
    v7[3] = &unk_2799C61E0;
    v7[4] = v3;
    v4 = TSURegisterLocaleChangeObserver(v7);
    v2->mObserverObjects = v4;
    v5 = v4;
  }

  return v2;
}

uint64_t __25__OITSUSharedLocale_init__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) object];

  return [v3 datePreferencesChanged:a2];
}

- (void)dealloc
{
  mCurrentLocale = self->mCurrentLocale;
  if (mCurrentLocale)
  {
    CFRelease(mCurrentLocale);
  }

  v4.receiver = self;
  v4.super_class = OITSUSharedLocale;
  [(OITSUSharedLocale *)&v4 dealloc];
}

- (__CFLocale)currentLocale
{
  result = self->mCurrentLocale;
  if (!result)
  {
    result = CFLocaleCopyCurrent();
    self->mCurrentLocale = result;
  }

  if (!self->mObserverObjects)
  {
    v4 = [OITSUWeakReference weakReferenceWithObject:self];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __34__OITSUSharedLocale_currentLocale__block_invoke;
    v7[3] = &unk_2799C61E0;
    v7[4] = v4;
    v5 = TSURegisterLocaleChangeObserver(v7);
    self->mObserverObjects = v5;
    v6 = v5;
    return self->mCurrentLocale;
  }

  return result;
}

uint64_t __34__OITSUSharedLocale_currentLocale__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) object];

  return [v3 datePreferencesChanged:a2];
}

- (void)datePreferencesChanged:(id)changed
{
  selfCopy = self;
  mCurrentLocale = self->mCurrentLocale;
  selfCopy->mCurrentLocale = 0;
  __dmb(0xBu);
  v6 = selfCopy;
  if (mCurrentLocale)
  {
    CFRelease(mCurrentLocale);
    selfCopy = v6;
  }

  mObserverObjects = selfCopy->mObserverObjects;
  if (mObserverObjects)
  {
    TSURemoveLocaleChangeObserver(mObserverObjects);

    selfCopy = v6;
    v6->mObserverObjects = 0;
  }
}

@end