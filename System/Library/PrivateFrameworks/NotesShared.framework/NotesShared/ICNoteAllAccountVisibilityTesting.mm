@interface ICNoteAllAccountVisibilityTesting
+ (id)sharedInstance;
- (BOOL)supportsVisibilityTestingType:(int64_t)type;
@end

@implementation ICNoteAllAccountVisibilityTesting

+ (id)sharedInstance
{
  if (sharedInstance_once_0 != -1)
  {
    +[ICNoteAllAccountVisibilityTesting sharedInstance];
  }

  v3 = sharedInstance_instance;

  return v3;
}

void __51__ICNoteAllAccountVisibilityTesting_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(ICNoteAllAccountVisibilityTesting);
  v1 = sharedInstance_instance;
  sharedInstance_instance = v0;
}

- (BOOL)supportsVisibilityTestingType:(int64_t)type
{
  if (!type)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"visibilityTestingType != ICNoteVisibilityTestingTypeInvalid" functionName:"-[ICNoteAllAccountVisibilityTesting supportsVisibilityTestingType:]" simulateCrash:1 showAlert:0 format:@"Invalid visibilityTestingType"];
  }

  return type != 0;
}

@end