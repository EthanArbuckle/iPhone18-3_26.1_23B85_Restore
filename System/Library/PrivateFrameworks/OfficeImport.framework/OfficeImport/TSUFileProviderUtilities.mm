@interface TSUFileProviderUtilities
+ (void)bookmarkableStringFromDocumentURL:(id)l completion:(id)completion;
+ (void)didUpdateAlternateContentsDocumentForDocumentAtURL:(id)l completion:(id)completion;
+ (void)fetchAlternateContentsURLForDocumentURL:(id)l completion:(id)completion;
+ (void)initialize;
+ (void)setAlternateContentsURL:(id)l onDocumentURL:(id)rL completion:(id)completion;
- (TSUFileProviderUtilities)init;
@end

@implementation TSUFileProviderUtilities

- (TSUFileProviderUtilities)init
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUFileProviderUtilities init]"];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUFileProviderUtilities.m"];
  [OITSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:22 isFatal:0 description:"Do not call method"];

  +[OITSUAssertionHandler logBacktraceThrottled];
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE658];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: %s", "Do not call method", "-[TSUFileProviderUtilities init]"];
  v7 = [v4 exceptionWithName:v5 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (void)initialize
{
  if (initialize_once != -1)
  {
    +[TSUFileProviderUtilities initialize];
  }
}

void *__38__TSUFileProviderUtilities_initialize__block_invoke()
{
  v1 = 0;
  _FPSetAlternateContentsURLOnDocumentURL = TSUSoftLinkingGetFrameworkFunction(0, @"FileProvider", "FPSetAlternateContentsURLOnDocumentURL", &v1);
  _FPFetchAlternateContentsURLForDocumentURL = TSUSoftLinkingGetFrameworkFunction(0, @"FileProvider", "FPFetchAlternateContentsURLForDocumentURL", &v1);
  _FPDidUpdateAlternateContentsDocumentForDocumentAtURL = TSUSoftLinkingGetFrameworkFunction(0, @"FileProvider", "FPDidUpdateAlternateContentsDocumentForDocumentAtURL", &v1);
  result = TSUSoftLinkingGetFrameworkFunction(0, @"FileProvider", "FPBookmarkableStringFromDocumentURL", &v1);
  _FPBookmarkableStringFromDocumentURL = result;
  return result;
}

+ (void)setAlternateContentsURL:(id)l onDocumentURL:(id)rL completion:(id)completion
{
  lCopy = l;
  rLCopy = rL;
  completionCopy = completion;
  v10 = completionCopy;
  v11 = _FPSetAlternateContentsURLOnDocumentURL;
  if (_FPSetAlternateContentsURLOnDocumentURL)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __77__TSUFileProviderUtilities_setAlternateContentsURL_onDocumentURL_completion___block_invoke;
    v13[3] = &unk_2799C6BC8;
    v14 = completionCopy;
    v11(rLCopy, lCopy, v13);
  }

  else if (completionCopy)
  {
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:3328 userInfo:0];
    (v10)[2](v10, v12);
  }
}

uint64_t __77__TSUFileProviderUtilities_setAlternateContentsURL_onDocumentURL_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (void)fetchAlternateContentsURLForDocumentURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  v7 = completionCopy;
  v8 = _FPFetchAlternateContentsURLForDocumentURL;
  if (_FPFetchAlternateContentsURLForDocumentURL)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __79__TSUFileProviderUtilities_fetchAlternateContentsURLForDocumentURL_completion___block_invoke;
    v10[3] = &unk_2799C6BF0;
    v11 = completionCopy;
    v8(lCopy, v10);
  }

  else if (completionCopy)
  {
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:3328 userInfo:0];
    (v7)[2](v7, 0, v9);
  }
}

uint64_t __79__TSUFileProviderUtilities_fetchAlternateContentsURLForDocumentURL_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (void)didUpdateAlternateContentsDocumentForDocumentAtURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  v7 = completionCopy;
  v8 = _FPDidUpdateAlternateContentsDocumentForDocumentAtURL;
  if (_FPDidUpdateAlternateContentsDocumentForDocumentAtURL)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __90__TSUFileProviderUtilities_didUpdateAlternateContentsDocumentForDocumentAtURL_completion___block_invoke;
    v10[3] = &unk_2799C6BC8;
    v11 = completionCopy;
    v8(lCopy, v10);
  }

  else if (completionCopy)
  {
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:3328 userInfo:0];
    (v7)[2](v7, v9);
  }
}

uint64_t __90__TSUFileProviderUtilities_didUpdateAlternateContentsDocumentForDocumentAtURL_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (void)bookmarkableStringFromDocumentURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  v7 = completionCopy;
  v8 = _FPBookmarkableStringFromDocumentURL;
  if (_FPBookmarkableStringFromDocumentURL)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __73__TSUFileProviderUtilities_bookmarkableStringFromDocumentURL_completion___block_invoke;
    v10[3] = &unk_2799C6C18;
    v11 = completionCopy;
    v8(lCopy, v10);
  }

  else if (completionCopy)
  {
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:3328 userInfo:0];
    (v7)[2](v7, 0, v9);
  }
}

uint64_t __73__TSUFileProviderUtilities_bookmarkableStringFromDocumentURL_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end