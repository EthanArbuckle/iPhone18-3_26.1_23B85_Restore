@interface LOViewController
+ (id)lockoutViewControllerWithBundleIdentifier:(id)identifier;
+ (id)messageForApplicationName:(id)name style:(unint64_t)style;
+ (id)messageForBundleIdentifier:(id)identifier style:(unint64_t)style;
- (LOViewController)initWithBundleIdentifier:(id)identifier;
@end

@implementation LOViewController

+ (id)lockoutViewControllerWithBundleIdentifier:(id)identifier
{
  v3 = MEMORY[0x277D4BDA0];
  identifierCopy = identifier;
  v5 = [[v3 alloc] initWithBundleIdentifier:identifierCopy];

  return v5;
}

- (LOViewController)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [objc_opt_class() lockoutViewControllerWithBundleIdentifier:identifierCopy];

  return v5;
}

+ (id)messageForApplicationName:(id)name style:(unint64_t)style
{
  if (style == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2 * (style != 0);
  }

  return [MEMORY[0x277D4BDA0] messageForApplicationName:name style:v4];
}

+ (id)messageForBundleIdentifier:(id)identifier style:(unint64_t)style
{
  if (style == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2 * (style != 0);
  }

  return [MEMORY[0x277D4BDA0] messageForBundleIdentifier:identifier style:v4];
}

@end