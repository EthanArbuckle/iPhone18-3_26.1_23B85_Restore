@interface CPUITableCellAccessory
+ (id)accessoryWithCloudIcon;
+ (id)accessoryWithDisclosureIndicator;
+ (id)accessoryWithImage:(id)a3;
+ (id)accessoryWithiCloudIcon;
@end

@implementation CPUITableCellAccessory

+ (id)accessoryWithCloudIcon
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__CPUITableCellAccessory_accessoryWithCloudIcon__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (accessoryWithCloudIcon_onceToken != -1)
  {
    dispatch_once(&accessoryWithCloudIcon_onceToken, block);
  }

  v2 = accessoryWithCloudIcon__accessory;

  return v2;
}

uint64_t __48__CPUITableCellAccessory_accessoryWithCloudIcon__block_invoke()
{
  accessoryWithCloudIcon__accessory = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

+ (id)accessoryWithiCloudIcon
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__CPUITableCellAccessory_accessoryWithiCloudIcon__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (accessoryWithiCloudIcon_onceToken != -1)
  {
    dispatch_once(&accessoryWithiCloudIcon_onceToken, block);
  }

  v2 = accessoryWithiCloudIcon__accessory;

  return v2;
}

uint64_t __49__CPUITableCellAccessory_accessoryWithiCloudIcon__block_invoke()
{
  accessoryWithiCloudIcon__accessory = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

+ (id)accessoryWithDisclosureIndicator
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__CPUITableCellAccessory_accessoryWithDisclosureIndicator__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (accessoryWithDisclosureIndicator_onceToken != -1)
  {
    dispatch_once(&accessoryWithDisclosureIndicator_onceToken, block);
  }

  v2 = accessoryWithDisclosureIndicator__accessory;

  return v2;
}

uint64_t __58__CPUITableCellAccessory_accessoryWithDisclosureIndicator__block_invoke()
{
  accessoryWithDisclosureIndicator__accessory = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

+ (id)accessoryWithImage:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setImage:v3];

  return v4;
}

@end