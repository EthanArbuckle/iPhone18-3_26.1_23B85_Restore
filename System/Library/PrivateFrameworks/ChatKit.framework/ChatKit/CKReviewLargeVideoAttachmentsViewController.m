@interface CKReviewLargeVideoAttachmentsViewController
- (id)navigationBarTitle;
@end

@implementation CKReviewLargeVideoAttachmentsViewController

- (id)navigationBarTitle
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"VIDEOS" value:&stru_1F04268F8 table:@"General"];

  return v3;
}

@end