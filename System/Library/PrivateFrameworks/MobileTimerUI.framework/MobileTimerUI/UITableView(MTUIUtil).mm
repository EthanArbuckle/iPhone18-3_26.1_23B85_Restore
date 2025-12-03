@interface UITableView(MTUIUtil)
+ (id)wordWrapParagraphStyle;
- (double)mtui_sectionHeaderHeightWithString:()MTUIUtil;
@end

@implementation UITableView(MTUIUtil)

- (double)mtui_sectionHeaderHeightWithString:()MTUIUtil
{
  v24[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D75B70];
  v5 = a3;
  v6 = [v4 _defaultFontForTableViewStyle:objc_msgSend(self isSectionHeader:{"style"), 1}];
  [self bounds];
  Width = CGRectGetWidth(v25);
  [self _marginWidth];
  v9 = Width + v8 * -2.0;
  v10 = *MEMORY[0x277D74118];
  v23[0] = *MEMORY[0x277D740A8];
  v23[1] = v10;
  v24[0] = v6;
  wordWrapParagraphStyle = [MEMORY[0x277D75B40] wordWrapParagraphStyle];
  v24[1] = wordWrapParagraphStyle;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
  [v5 boundingRectWithSize:1 options:v12 attributes:0 context:{v9, 0.0}];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v26.origin.x = v14;
  v26.origin.y = v16;
  v26.size.width = v18;
  v26.size.height = v20;
  Height = CGRectGetHeight(v26);

  return Height;
}

+ (id)wordWrapParagraphStyle
{
  if (wordWrapParagraphStyle_onceToken != -1)
  {
    +[UITableView(MTUIUtil) wordWrapParagraphStyle];
  }

  v1 = wordWrapParagraphStyle_style;

  return v1;
}

@end