@interface UIMenu(ITKUtilities)
+ (id)itk_menuWithItems:()ITKUtilities title:subtitle:image:;
- (id)itk_addItems:()ITKUtilities;
- (id)itk_addNonNilItems:()ITKUtilities;
- (void)itk_addNonNilItem:()ITKUtilities;
@end

@implementation UIMenu(ITKUtilities)

+ (id)itk_menuWithItems:()ITKUtilities title:subtitle:image:
{
  v9 = a5;
  v10 = &stru_286711748;
  if (a4)
  {
    v10 = a4;
  }

  v11 = v10;
  v12 = a6;
  v13 = a3;
  v14 = [MEMORY[0x277D75710] menuWithTitle:v11 image:v12 identifier:0 options:0 children:v13];

  if (objc_opt_respondsToSelector())
  {
    [v14 setSubtitle:v9];
  }

  return v14;
}

- (id)itk_addNonNilItems:()ITKUtilities
{
  v4 = a1;
  v5 = v4;
  if (a3)
  {
    v6 = [v4 itk_addItems:a3];

    v5 = v6;
  }

  return v5;
}

- (void)itk_addNonNilItem:()ITKUtilities
{
  v10 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v9 = a3;
    v4 = MEMORY[0x277CBEA60];
    v5 = a3;
    v6 = [v4 arrayWithObjects:&v9 count:1];

    v7 = [a1 itk_addItems:{v6, v9, v10}];
  }

  return a1;
}

- (id)itk_addItems:()ITKUtilities
{
  v4 = a1;
  v5 = a3;
  v6 = [v4 children];
  v7 = v6;
  v8 = MEMORY[0x277CBEBF8];
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  v10 = [v9 itk_arrayByAddingObjectsFromNonNilArray:v5];

  v11 = [v4 menuByReplacingChildren:v10];

  return v11;
}

@end