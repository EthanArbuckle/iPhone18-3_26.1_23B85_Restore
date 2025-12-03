@interface CRKMobileGestalt
+ (CRKMobileGestalt)sharedGestalt;
- (CGSize)mainScreenSizeInPixels;
- (NSString)buildVersion;
- (NSString)productVersion;
- (NSString)serialNumber;
- (double)mainScreenScale;
- (id)answerForQuestion:(__CFString *)question;
- (id)answerForQuestion:(__CFString *)question ofClass:(Class)class;
- (unint64_t)availableBytes;
@end

@implementation CRKMobileGestalt

+ (CRKMobileGestalt)sharedGestalt
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__CRKMobileGestalt_sharedGestalt__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedGestalt_onceToken != -1)
  {
    dispatch_once(&sharedGestalt_onceToken, block);
  }

  v2 = sharedGestalt_result;

  return v2;
}

uint64_t __33__CRKMobileGestalt_sharedGestalt__block_invoke()
{
  sharedGestalt_result = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (NSString)serialNumber
{
  v3 = objc_opt_class();

  return [(CRKMobileGestalt *)self answerForQuestion:@"SerialNumber" ofClass:v3];
}

- (double)mainScreenScale
{
  v2 = [(CRKMobileGestalt *)self answerForQuestion:@"main-screen-scale" ofClass:objc_opt_class()];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (CGSize)mainScreenSizeInPixels
{
  v3 = [(CRKMobileGestalt *)self answerForQuestion:@"main-screen-width" ofClass:objc_opt_class()];
  v4 = [(CRKMobileGestalt *)self answerForQuestion:@"main-screen-height" ofClass:objc_opt_class()];
  [v3 doubleValue];
  v6 = v5;
  [v4 doubleValue];
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (unint64_t)availableBytes
{
  v2 = [(CRKMobileGestalt *)self answerForQuestion:@"DiskUsage" ofClass:objc_opt_class()];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D82398]];
  unsignedLongLongValue = [v3 unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (NSString)buildVersion
{
  v3 = objc_opt_class();

  return [(CRKMobileGestalt *)self answerForQuestion:@"BuildVersion" ofClass:v3];
}

- (NSString)productVersion
{
  v3 = objc_opt_class();

  return [(CRKMobileGestalt *)self answerForQuestion:@"ProductVersion" ofClass:v3];
}

- (id)answerForQuestion:(__CFString *)question ofClass:(Class)class
{
  v4 = [(CRKMobileGestalt *)self answerForQuestion:question];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (id)answerForQuestion:(__CFString *)question
{
  v3 = MGCopyAnswer();

  return v3;
}

@end