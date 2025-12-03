@interface FeedbackListViewController
+ (id)createWithViewModel:(id)model;
@end

@implementation FeedbackListViewController

+ (id)createWithViewModel:(id)model
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](model);
  swift_getObjCClassMetadata();
  v5 = static FeedbackListViewController.create(viewModel:)(model);
  MEMORY[0x277D82BD8](model);

  return v5;
}

@end