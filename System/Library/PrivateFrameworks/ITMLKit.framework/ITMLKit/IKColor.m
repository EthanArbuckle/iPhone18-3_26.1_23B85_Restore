@interface IKColor
+ (id)colorMap;
@end

@implementation IKColor

+ (id)colorMap
{
  if (colorMap_onceToken != -1)
  {
    +[IKColor colorMap];
  }

  v3 = colorMap_sCSSColorNameMap;

  return v3;
}

void __19__IKColor_colorMap__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v1 = colorMap_sCSSColorNameMap;
  colorMap_sCSSColorNameMap = v0;

  v23 = colorMap_sCSSColorNameMap;
  v22 = MEMORY[0x277CBEAC0];
  v56 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  v55 = [MEMORY[0x277D75348] colorWithRed:0.75 green:0.75 blue:0.75 alpha:1.0];
  v21 = [MEMORY[0x277D75348] colorWithRed:0.5 green:0.5 blue:0.5 alpha:1.0];
  v54 = [MEMORY[0x277D75348] colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  v20 = [MEMORY[0x277D75348] colorWithRed:0.5 green:0.0 blue:0.0 alpha:1.0];
  v53 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.0 blue:0.0 alpha:1.0];
  v19 = [MEMORY[0x277D75348] colorWithRed:0.5 green:0.0 blue:0.5 alpha:1.0];
  v52 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.0 blue:1.0 alpha:1.0];
  v18 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.5 blue:0.0 alpha:1.0];
  v51 = [MEMORY[0x277D75348] colorWithRed:0.0 green:1.0 blue:0.0 alpha:1.0];
  v17 = [MEMORY[0x277D75348] colorWithRed:0.5 green:0.5 blue:0.0 alpha:1.0];
  v50 = [MEMORY[0x277D75348] colorWithRed:1.0 green:1.0 blue:0.0 alpha:1.0];
  v49 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.5 alpha:1.0];
  v48 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:1.0 alpha:1.0];
  v47 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.5 blue:0.5 alpha:1.0];
  v46 = [MEMORY[0x277D75348] colorWithRed:0.0 green:1.0 blue:1.0 alpha:1.0];
  v45 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
  v16 = [MEMORY[0x277D75348] systemRedColor];
  v44 = [MEMORY[0x277D75348] systemGreenColor];
  v43 = [MEMORY[0x277D75348] systemBlueColor];
  v42 = [MEMORY[0x277D75348] systemOrangeColor];
  v41 = [MEMORY[0x277D75348] systemYellowColor];
  v40 = [MEMORY[0x277D75348] systemPinkColor];
  v39 = [MEMORY[0x277D75348] systemPurpleColor];
  v38 = [MEMORY[0x277D75348] systemGrayColor];
  v37 = [MEMORY[0x277D75348] systemBrownColor];
  v36 = [MEMORY[0x277D75348] systemTealColor];
  v35 = [MEMORY[0x277D75348] systemIndigoColor];
  v34 = [MEMORY[0x277D75348] labelColor];
  v33 = [MEMORY[0x277D75348] secondaryLabelColor];
  v31 = [MEMORY[0x277D75348] tertiaryLabelColor];
  v29 = [MEMORY[0x277D75348] quaternaryLabelColor];
  v27 = [MEMORY[0x277D75348] linkColor];
  v13 = [MEMORY[0x277D75348] placeholderTextColor];
  v32 = [MEMORY[0x277D75348] separatorColor];
  v11 = [MEMORY[0x277D75348] opaqueSeparatorColor];
  v30 = [MEMORY[0x277D75348] systemBackgroundColor];
  v10 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
  v28 = [MEMORY[0x277D75348] tertiarySystemBackgroundColor];
  v26 = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  v25 = [MEMORY[0x277D75348] secondarySystemGroupedBackgroundColor];
  v24 = [MEMORY[0x277D75348] tertiarySystemGroupedBackgroundColor];
  v9 = [MEMORY[0x277D75348] systemFillColor];
  v8 = [MEMORY[0x277D75348] secondarySystemFillColor];
  v7 = [MEMORY[0x277D75348] tertiarySystemFillColor];
  v6 = [MEMORY[0x277D75348] quaternarySystemFillColor];
  v4 = [MEMORY[0x277D75348] systemGrayColor];
  v5 = [MEMORY[0x277D75348] systemGray2Color];
  v15 = [MEMORY[0x277D75348] systemGray3Color];
  v14 = [MEMORY[0x277D75348] systemGray4Color];
  v12 = [MEMORY[0x277D75348] systemGray5Color];
  v3 = [MEMORY[0x277D75348] systemGray6Color];
  v2 = [v22 dictionaryWithObjectsAndKeys:{v56, @"black", v55, @"silver", v21, @"gray", v54, @"white", v20, @"maroon", v53, @"red", v19, @"purple", v52, @"fuchsia", v18, @"green", v51, @"lime", v17, @"olive", v50, @"yellow", v49, @"navy", v48, @"blue", v47, @"teal", v46, @"aqua", v45, @"transparent", v16, @"systemred", v44, @"systemgreen", v43, @"systemblue", v42, @"systemorange", v41, @"systemyellow", v40, @"systempink", v39, @"systempurple", v38, @"systemgray", v37, @"systembrown", v36, @"systemteal", v35, @"systemindigo", v34, @"label", v33, @"secondarylabel", v31}];
  [v23 addEntriesFromDictionary:v2];
}

@end