@interface TSURemoteDefaults
+ (id)sharedDefaults;
- (TSURemoteDefaults)initWithRemoteURL:(id)a3 localURL:(id)a4;
- (id)initInternal;
- (id)objectForKey:(id)a3;
- (void)processPropertyList:(id)a3;
- (void)registerDefaults;
@end

@implementation TSURemoteDefaults

+ (id)sharedDefaults
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__TSURemoteDefaults_sharedDefaults__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedDefaults_onceToken != -1)
  {
    dispatch_once(&sharedDefaults_onceToken, block);
  }

  v2 = sharedDefaults_sharedDefaults;

  return v2;
}

void __35__TSURemoteDefaults_sharedDefaults__block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) initInternal];
  v2 = sharedDefaults_sharedDefaults;
  sharedDefaults_sharedDefaults = v1;
}

- (TSURemoteDefaults)initWithRemoteURL:(id)a3 localURL:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSURemoteDefaults initWithRemoteURL:localURL:]"];
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSURemoteDefaults.m"];
  [OITSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:314 isFatal:0 description:"Do not call method"];

  +[OITSUAssertionHandler logBacktraceThrottled];
  v9 = MEMORY[0x277CBEAD8];
  v10 = *MEMORY[0x277CBE658];
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: %s", "Do not call method", "-[TSURemoteDefaults initWithRemoteURL:localURL:]"];
  v12 = [v9 exceptionWithName:v10 reason:v11 userInfo:0];
  v13 = v12;

  objc_exception_throw(v12);
}

- (id)initInternal
{
  v3 = [MEMORY[0x277CBEBC0] URLWithString:@"https://configuration.apple.com/configurations/internetservices/iworkapps/RemoteDefaults.plist"];
  v6.receiver = self;
  v6.super_class = TSURemoteDefaults;
  v4 = [(TSURemotePropertyList *)&v6 initWithRemoteURL:v3 localURL:0];

  if (v4)
  {
    [(TSURemoteDefaults *)v4 registerDefaults];
  }

  return v4;
}

- (void)registerDefaults
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v9 = [v2 URLForResource:@"RemoteDefaults" withExtension:@"plist"];

  if (v9)
  {
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:?];
    if (v3)
    {
      v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      [v4 registerDefaults:v3];
    }

    else
    {
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSURemoteDefaults registerDefaults]"];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSURemoteDefaults.m"];
      [OITSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:336 isFatal:0 description:"Can't parse local defaults plist"];

      +[OITSUAssertionHandler logBacktraceThrottled];
    }
  }

  else
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSURemoteDefaults registerDefaults]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSURemoteDefaults.m"];
    [OITSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:345 isFatal:0 description:"Don't have local defaults plist"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v6 = [v5 dictionaryForKey:@"TSURemoteDefaults"];
  v7 = [v6 objectForKey:v4];

  if (!v7)
  {
    v8 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v9 = [v8 volatileDomainForName:*MEMORY[0x277CCA660]];
    v10 = [v9 objectForKey:@"TSURemoteDefaults"];

    v7 = [v10 objectForKey:v4];

    if (!v7)
    {
      v12.receiver = self;
      v12.super_class = TSURemoteDefaults;
      v7 = [(TSURemotePropertyList *)&v12 objectForKey:v4];
    }
  }

  return v7;
}

- (void)processPropertyList:(id)a3
{
  v4 = MEMORY[0x277CBEBD0];
  v5 = a3;
  v6 = [v4 standardUserDefaults];
  [v6 setObject:v5 forKey:@"TSURemoteDefaults"];

  v7.receiver = self;
  v7.super_class = TSURemoteDefaults;
  [(TSURemotePropertyList *)&v7 processPropertyList:v5];
}

@end