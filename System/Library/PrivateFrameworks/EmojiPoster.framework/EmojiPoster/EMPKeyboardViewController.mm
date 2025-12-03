@interface EMPKeyboardViewController
+ (id)createKeyboardViewController;
@end

@implementation EMPKeyboardViewController

+ (id)createKeyboardViewController
{
  v2 = [objc_alloc(MEMORY[0x277D756B0]) initWithServiceRole:0];
  traitCollection = [v2 traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    [v2 setResizable:1];
  }

  return v2;
}

@end