@interface EMPKeyboardViewController
+ (id)createKeyboardViewController;
@end

@implementation EMPKeyboardViewController

+ (id)createKeyboardViewController
{
  v2 = [objc_alloc(MEMORY[0x277D756B0]) initWithServiceRole:0];
  v3 = [v2 traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 1)
  {
    [v2 setResizable:1];
  }

  return v2;
}

@end