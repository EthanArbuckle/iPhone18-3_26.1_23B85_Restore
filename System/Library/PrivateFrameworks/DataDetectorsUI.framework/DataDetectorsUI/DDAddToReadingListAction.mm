@interface DDAddToReadingListAction
+ (BOOL)isAvailable;
- (void)performFromView:(id)view;
@end

@implementation DDAddToReadingListAction

+ (BOOL)isAvailable
{
  v2 = objc_alloc(MEMORY[0x277CC1E98]);
  v3 = [MEMORY[0x277CBEBC0] URLWithString:@"http://"];
  v4 = [v2 initWithURL:v3 error:0];
  bundleRecord = [v4 bundleRecord];
  bundleIdentifier = [bundleRecord bundleIdentifier];

  if (bundleIdentifier)
  {
    v7 = [bundleIdentifier isEqualToString:@"com.apple.mobilesafari"];

    return v7;
  }

  else
  {

    return 0;
  }
}

- (void)performFromView:(id)view
{
  defaultReadingList = [MEMORY[0x277CDB710] defaultReadingList];
  [defaultReadingList addReadingListItemWithURL:self->super._url title:0 previewText:0 error:0];
}

@end