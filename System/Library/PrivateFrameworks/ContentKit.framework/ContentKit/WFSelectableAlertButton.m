@interface WFSelectableAlertButton
+ (id)buttonWithTitle:(id)a3 subtitle:(id)a4 selected:(BOOL)a5 stickySelection:(BOOL)a6 style:(int64_t)a7 contextAwareHandler:(id)a8 image:(id)a9;
+ (id)buttonWithTitle:(id)a3 subtitle:(id)a4 selected:(BOOL)a5 stickySelection:(BOOL)a6 style:(int64_t)a7 handler:(id)a8 image:(id)a9;
+ (id)buttonWithTitle:(id)a3 subtitle:(id)a4 selected:(BOOL)a5 style:(int64_t)a6 handler:(id)a7;
- (void)setSelected:(BOOL)a3;
@end

@implementation WFSelectableAlertButton

+ (id)buttonWithTitle:(id)a3 subtitle:(id)a4 selected:(BOOL)a5 stickySelection:(BOOL)a6 style:(int64_t)a7 handler:(id)a8 image:(id)a9
{
  v10 = a6;
  v11 = a5;
  v15 = a8;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __97__WFSelectableAlertButton_buttonWithTitle_subtitle_selected_stickySelection_style_handler_image___block_invoke;
  v19[3] = &unk_2783494B8;
  v20 = v15;
  v16 = v15;
  v17 = [a1 buttonWithTitle:a3 subtitle:a4 selected:v11 stickySelection:v10 style:a7 contextAwareHandler:v19 image:a9];

  return v17;
}

+ (id)buttonWithTitle:(id)a3 subtitle:(id)a4 selected:(BOOL)a5 style:(int64_t)a6 handler:(id)a7
{
  v8 = a5;
  v12 = a7;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __75__WFSelectableAlertButton_buttonWithTitle_subtitle_selected_style_handler___block_invoke;
  v16[3] = &unk_2783494B8;
  v17 = v12;
  v13 = v12;
  v14 = [a1 buttonWithTitle:a3 subtitle:a4 selected:v8 stickySelection:0 style:a6 contextAwareHandler:v16 image:0];

  return v14;
}

+ (id)buttonWithTitle:(id)a3 subtitle:(id)a4 selected:(BOOL)a5 stickySelection:(BOOL)a6 style:(int64_t)a7 contextAwareHandler:(id)a8 image:(id)a9
{
  v16 = a9;
  v17 = a4;
  v18 = [a1 buttonWithTitle:a3 style:a7 contextAwareHandler:a8];
  v19 = [v17 copy];

  v20 = *(v18 + 64);
  *(v18 + 64) = v19;

  v21 = [v16 copy];
  v22 = *(v18 + 72);
  *(v18 + 72) = v21;

  *(v18 + 56) = a5;
  *(v18 + 57) = a6;

  return v18;
}

- (void)setSelected:(BOOL)a3
{
  if (self->_selected != a3)
  {
    self->_selected = a3;
    v5 = [(WFAlertButton *)self alert];
    v10 = [v5 presenter];

    v6 = [(WFAlertButton *)self alert];
    v7 = [v6 buttons];
    v8 = [v7 indexOfObject:self];

    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = [(WFAlertButton *)self alert];
      [v10 replaceButtonAtIndex:v8 withButton:self forAlert:v9];
    }
  }
}

@end