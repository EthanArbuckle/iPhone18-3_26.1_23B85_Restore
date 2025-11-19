@interface UIAction(ITKUtilities)
+ (id)itk_itemWithTitle:()ITKUtilities subtitle:;
@end

@implementation UIAction(ITKUtilities)

+ (id)itk_itemWithTitle:()ITKUtilities subtitle:
{
  v5 = &stru_286711748;
  if (a3)
  {
    v5 = a3;
  }

  v6 = v5;
  v7 = a4;
  v8 = [MEMORY[0x277D750C8] actionWithTitle:v6 image:0 identifier:0 handler:&__block_literal_global_0];

  [v8 setDiscoverabilityTitle:v7];

  return v8;
}

@end