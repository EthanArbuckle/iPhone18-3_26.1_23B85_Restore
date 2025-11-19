@interface DDAddToReadingListAction
+ (BOOL)isAvailable;
- (void)performFromView:(id)a3;
@end

@implementation DDAddToReadingListAction

+ (BOOL)isAvailable
{
  v2 = objc_alloc(MEMORY[0x277CC1E98]);
  v3 = [MEMORY[0x277CBEBC0] URLWithString:@"http://"];
  v4 = [v2 initWithURL:v3 error:0];
  v5 = [v4 bundleRecord];
  v6 = [v5 bundleIdentifier];

  if (v6)
  {
    v7 = [v6 isEqualToString:@"com.apple.mobilesafari"];

    return v7;
  }

  else
  {

    return 0;
  }
}

- (void)performFromView:(id)a3
{
  v4 = [MEMORY[0x277CDB710] defaultReadingList];
  [v4 addReadingListItemWithURL:self->super._url title:0 previewText:0 error:0];
}

@end