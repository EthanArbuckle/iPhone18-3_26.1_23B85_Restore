@interface UIColor
@end

@implementation UIColor

void __51__UIColor_DOCTag___doc_underlyingColorForTagColor___block_invoke()
{
  v11[8] = *MEMORY[0x277D85DE8];
  v0 = +[DOCTagAppearance renderingAppearance];
  v1 = [v0 underlyingColorForNoneTag];
  v11[0] = v1;
  v2 = [MEMORY[0x277D75348] systemGrayColor];
  v11[1] = v2;
  v3 = [MEMORY[0x277D75348] systemGreenColor];
  v11[2] = v3;
  v4 = [MEMORY[0x277D75348] systemPurpleColor];
  v11[3] = v4;
  v5 = [MEMORY[0x277D75348] systemBlueColor];
  v11[4] = v5;
  v6 = [MEMORY[0x277D75348] systemYellowColor];
  v11[5] = v6;
  v7 = [MEMORY[0x277D75348] systemRedColor];
  v11[6] = v7;
  v8 = [MEMORY[0x277D75348] systemOrangeColor];
  v11[7] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:8];
  v10 = _doc_underlyingColorForTagColor__colors;
  _doc_underlyingColorForTagColor__colors = v9;
}

@end