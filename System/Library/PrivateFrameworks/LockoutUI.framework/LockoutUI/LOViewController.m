@interface LOViewController
+ (id)lockoutViewControllerWithBundleIdentifier:(id)a3;
+ (id)messageForApplicationName:(id)a3 style:(unint64_t)a4;
+ (id)messageForBundleIdentifier:(id)a3 style:(unint64_t)a4;
- (LOViewController)initWithBundleIdentifier:(id)a3;
@end

@implementation LOViewController

+ (id)lockoutViewControllerWithBundleIdentifier:(id)a3
{
  v3 = MEMORY[0x277D4BDA0];
  v4 = a3;
  v5 = [[v3 alloc] initWithBundleIdentifier:v4];

  return v5;
}

- (LOViewController)initWithBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() lockoutViewControllerWithBundleIdentifier:v4];

  return v5;
}

+ (id)messageForApplicationName:(id)a3 style:(unint64_t)a4
{
  if (a4 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2 * (a4 != 0);
  }

  return [MEMORY[0x277D4BDA0] messageForApplicationName:a3 style:v4];
}

+ (id)messageForBundleIdentifier:(id)a3 style:(unint64_t)a4
{
  if (a4 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2 * (a4 != 0);
  }

  return [MEMORY[0x277D4BDA0] messageForBundleIdentifier:a3 style:v4];
}

@end