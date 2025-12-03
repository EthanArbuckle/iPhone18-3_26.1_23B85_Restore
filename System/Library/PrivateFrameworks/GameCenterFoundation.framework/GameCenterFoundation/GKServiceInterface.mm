@interface GKServiceInterface
+ (id)interface;
+ (id)interfaceProtocol;
+ (id)plistClasses;
@end

@implementation GKServiceInterface

+ (id)interface
{
  interfaceProtocol = [self interfaceProtocol];
  if (interfaceProtocol)
  {
    v4 = [MEMORY[0x277CCAE90] interfaceWithProtocol:interfaceProtocol];
    [self configureInterface:v4];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)plistClasses
{
  if (plistClasses_onceToken != -1)
  {
    +[GKServiceInterface plistClasses];
  }

  v3 = plistClasses_sPlistClasses;

  return v3;
}

uint64_t __34__GKServiceInterface_plistClasses__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEB98]);
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  plistClasses_sPlistClasses = [v0 initWithObjects:{v1, v2, v3, v4, v5, v6, v7, v8, objc_opt_class(), 0}];

  return MEMORY[0x2821F96F8]();
}

+ (id)interfaceProtocol
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Concrete subclasses must override +[GKServer interfaceProtocol]."];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterFoundation/gamed/GKServiceInterface.m"];
  lastPathComponent = [v4 lastPathComponent];
  v6 = [v2 stringWithFormat:@"%@ (NO)\n[%s (%s:%d)]", v3, "+[GKServiceInterface interfaceProtocol]", objc_msgSend(lastPathComponent, "UTF8String"), 48];

  [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v6}];
  return 0;
}

@end