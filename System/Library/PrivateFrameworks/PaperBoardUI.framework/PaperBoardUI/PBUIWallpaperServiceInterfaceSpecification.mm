@interface PBUIWallpaperServiceInterfaceSpecification
+ (BSServiceInterface)interface;
+ (NSString)identifier;
@end

@implementation PBUIWallpaperServiceInterfaceSpecification

+ (NSString)identifier
{
  interface = [self interface];
  identifier = [interface identifier];

  return identifier;
}

+ (BSServiceInterface)interface
{
  if (interface_onceToken != -1)
  {
    +[PBUIWallpaperServiceInterfaceSpecification interface];
  }

  v3 = interface___interface;

  return v3;
}

void __55__PBUIWallpaperServiceInterfaceSpecification_interface__block_invoke()
{
  v4 = [MEMORY[0x277CF3278] interfaceWithIdentifier:@"com.apple.paperboard.wallpaper-service"];
  v0 = [MEMORY[0x277CF0C90] protocolForProtocol:&unk_283004520];
  [v4 setServer:v0];

  v1 = [MEMORY[0x277CF0C90] protocolForProtocol:&unk_2830146F0];
  [v4 setClient:v1];

  v2 = [v4 copy];
  v3 = interface___interface;
  interface___interface = v2;
}

@end