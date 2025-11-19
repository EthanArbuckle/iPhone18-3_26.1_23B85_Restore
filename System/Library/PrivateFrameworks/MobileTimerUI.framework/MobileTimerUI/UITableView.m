@interface UITableView
@end

@implementation UITableView

uint64_t __47__UITableView_MTUIUtil__wordWrapParagraphStyle__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277D74240]);
  v1 = wordWrapParagraphStyle_style;
  wordWrapParagraphStyle_style = v0;

  v2 = wordWrapParagraphStyle_style;

  return [v2 setLineBreakMode:0];
}

@end