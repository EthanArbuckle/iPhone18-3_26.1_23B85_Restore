@interface FeedbackListViewController
+ (id)createWithViewModel:(id)a3;
@end

@implementation FeedbackListViewController

+ (id)createWithViewModel:(id)a3
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](a3);
  swift_getObjCClassMetadata();
  v5 = static FeedbackListViewController.create(viewModel:)(a3);
  MEMORY[0x277D82BD8](a3);

  return v5;
}

@end