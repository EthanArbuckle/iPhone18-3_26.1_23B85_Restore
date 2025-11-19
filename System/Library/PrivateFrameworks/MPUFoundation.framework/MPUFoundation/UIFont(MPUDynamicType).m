@interface UIFont(MPUDynamicType)
- (double)MPU_scaledValueForValue:()MPUDynamicType;
@end

@implementation UIFont(MPUDynamicType)

- (double)MPU_scaledValueForValue:()MPUDynamicType
{
  v4 = [a1 fontDescriptor];
  v5 = [v4 objectForKey:*MEMORY[0x277D74378]];

  if (!v5)
  {
    goto LABEL_12;
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v6 = getkCTFontDescriptorTextStyleRegularSymbolLoc_ptr;
  v18 = getkCTFontDescriptorTextStyleRegularSymbolLoc_ptr;
  if (!getkCTFontDescriptorTextStyleRegularSymbolLoc_ptr)
  {
    v7 = CoreTextLibrary();
    v16[3] = dlsym(v7, "kCTFontDescriptorTextStyleRegular");
    getkCTFontDescriptorTextStyleRegularSymbolLoc_ptr = v16[3];
    v6 = v16[3];
  }

  _Block_object_dispose(&v15, 8);
  if (!v6)
  {
    [UIFont(MPUDynamicType) MPU_scaledValueForValue:];
    goto LABEL_14;
  }

  v8 = *v6;
  if ([v5 isEqualToString:v8])
  {

    goto LABEL_12;
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v9 = getkCTFontDescriptorTextStyleEmphasizedSymbolLoc_ptr;
  v18 = getkCTFontDescriptorTextStyleEmphasizedSymbolLoc_ptr;
  if (!getkCTFontDescriptorTextStyleEmphasizedSymbolLoc_ptr)
  {
    v10 = CoreTextLibrary();
    v16[3] = dlsym(v10, "kCTFontDescriptorTextStyleEmphasized");
    getkCTFontDescriptorTextStyleEmphasizedSymbolLoc_ptr = v16[3];
    v9 = v16[3];
  }

  _Block_object_dispose(&v15, 8);
  if (!v9)
  {
LABEL_14:
    v14 = [UIFont(MPUDynamicType) MPU_scaledValueForValue:];
    _Block_object_dispose(&v15, 8);
    _Unwind_Resume(v14);
  }

  v11 = [v5 isEqualToString:*v9];

  if ((v11 & 1) == 0)
  {
    [a1 _scaledValueForValue:a2];
    a2 = v12;
  }

LABEL_12:

  return a2;
}

- (uint64_t)MPU_scaledValueForValue:()MPUDynamicType .cold.1()
{
  dlerror();
  v0 = abort_report_np();
  return +[(MPUFontDescriptorCache *)v0];
}

@end