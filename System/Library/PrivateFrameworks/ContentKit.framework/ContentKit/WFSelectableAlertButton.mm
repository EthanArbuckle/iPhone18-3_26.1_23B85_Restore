@interface WFSelectableAlertButton
+ (id)buttonWithTitle:(id)title subtitle:(id)subtitle selected:(BOOL)selected stickySelection:(BOOL)selection style:(int64_t)style contextAwareHandler:(id)handler image:(id)image;
+ (id)buttonWithTitle:(id)title subtitle:(id)subtitle selected:(BOOL)selected stickySelection:(BOOL)selection style:(int64_t)style handler:(id)handler image:(id)image;
+ (id)buttonWithTitle:(id)title subtitle:(id)subtitle selected:(BOOL)selected style:(int64_t)style handler:(id)handler;
- (void)setSelected:(BOOL)selected;
@end

@implementation WFSelectableAlertButton

+ (id)buttonWithTitle:(id)title subtitle:(id)subtitle selected:(BOOL)selected stickySelection:(BOOL)selection style:(int64_t)style handler:(id)handler image:(id)image
{
  selectionCopy = selection;
  selectedCopy = selected;
  handlerCopy = handler;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __97__WFSelectableAlertButton_buttonWithTitle_subtitle_selected_stickySelection_style_handler_image___block_invoke;
  v19[3] = &unk_2783494B8;
  v20 = handlerCopy;
  v16 = handlerCopy;
  v17 = [self buttonWithTitle:title subtitle:subtitle selected:selectedCopy stickySelection:selectionCopy style:style contextAwareHandler:v19 image:image];

  return v17;
}

+ (id)buttonWithTitle:(id)title subtitle:(id)subtitle selected:(BOOL)selected style:(int64_t)style handler:(id)handler
{
  selectedCopy = selected;
  handlerCopy = handler;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __75__WFSelectableAlertButton_buttonWithTitle_subtitle_selected_style_handler___block_invoke;
  v16[3] = &unk_2783494B8;
  v17 = handlerCopy;
  v13 = handlerCopy;
  v14 = [self buttonWithTitle:title subtitle:subtitle selected:selectedCopy stickySelection:0 style:style contextAwareHandler:v16 image:0];

  return v14;
}

+ (id)buttonWithTitle:(id)title subtitle:(id)subtitle selected:(BOOL)selected stickySelection:(BOOL)selection style:(int64_t)style contextAwareHandler:(id)handler image:(id)image
{
  imageCopy = image;
  subtitleCopy = subtitle;
  v18 = [self buttonWithTitle:title style:style contextAwareHandler:handler];
  v19 = [subtitleCopy copy];

  v20 = *(v18 + 64);
  *(v18 + 64) = v19;

  v21 = [imageCopy copy];
  v22 = *(v18 + 72);
  *(v18 + 72) = v21;

  *(v18 + 56) = selected;
  *(v18 + 57) = selection;

  return v18;
}

- (void)setSelected:(BOOL)selected
{
  if (self->_selected != selected)
  {
    self->_selected = selected;
    alert = [(WFAlertButton *)self alert];
    presenter = [alert presenter];

    alert2 = [(WFAlertButton *)self alert];
    buttons = [alert2 buttons];
    v8 = [buttons indexOfObject:self];

    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      alert3 = [(WFAlertButton *)self alert];
      [presenter replaceButtonAtIndex:v8 withButton:self forAlert:alert3];
    }
  }
}

@end