@interface CKSpellingSubstitutionsDefaults
+ (id)sharedInstance;
@end

@implementation CKSpellingSubstitutionsDefaults

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[CKSpellingSubstitutionsDefaults sharedInstance];
  }

  v3 = sharedInstance_sInstance_0;

  return v3;
}

void __49__CKSpellingSubstitutionsDefaults_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(CKSpellingSubstitutionsDefaults);
  v1 = sharedInstance_sInstance_0;
  sharedInstance_sInstance_0 = v0;
}

@end