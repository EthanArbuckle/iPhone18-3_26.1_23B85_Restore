@interface WFAttributedAlertButton
+ (id)buttonWithAttributedTitle:(id)title label:(id)label selected:(BOOL)selected style:(int64_t)style handler:(id)handler;
@end

@implementation WFAttributedAlertButton

+ (id)buttonWithAttributedTitle:(id)title label:(id)label selected:(BOOL)selected style:(int64_t)style handler:(id)handler
{
  selectedCopy = selected;
  titleCopy = title;
  labelCopy = label;
  v14 = [self buttonWithTitle:labelCopy subtitle:0 selected:selectedCopy style:style handler:handler];
  if (v14)
  {
    v15 = [titleCopy copy];
    v16 = v14[10];
    v14[10] = v15;

    v17 = [labelCopy copy];
    v18 = v14[11];
    v14[11] = v17;

    v19 = v14;
  }

  return v14;
}

@end