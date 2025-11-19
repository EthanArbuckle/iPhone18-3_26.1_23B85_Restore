@interface LAUITextField
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (CGRect)caretRectForPosition:(id)a3;
- (id)inputAssistantItem;
- (id)selectionRectsForRange:(id)a3;
@end

@implementation LAUITextField

- (CGRect)caretRectForPosition:(id)a3
{
  v4 = a3;
  if ([(LAUITextField *)self shouldHideSelectionRects])
  {
    v5 = *MEMORY[0x277CBF3A0];
    v6 = *(MEMORY[0x277CBF3A0] + 8);
    v7 = *(MEMORY[0x277CBF3A0] + 16);
    v8 = *(MEMORY[0x277CBF3A0] + 24);
  }

  else
  {
    v17.receiver = self;
    v17.super_class = LAUITextField;
    [(LAUITextField *)&v17 caretRectForPosition:v4];
    v5 = v9;
    v6 = v10;
    v7 = v11;
    v8 = v12;
  }

  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (id)selectionRectsForRange:(id)a3
{
  v4 = a3;
  if ([(LAUITextField *)self shouldHideSelectionRects])
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = LAUITextField;
    v5 = [(LAUITextField *)&v7 selectionRectsForRange:v4];
  }

  return v5;
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if ([(LAUITextField *)self shouldHideEditMenu])
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = LAUITextField;
    v7 = [(LAUITextField *)&v9 canPerformAction:a3 withSender:v6];
  }

  return v7;
}

- (id)inputAssistantItem
{
  v4.receiver = self;
  v4.super_class = LAUITextField;
  v2 = [(LAUITextField *)&v4 inputAssistantItem];
  [v2 setLeadingBarButtonGroups:MEMORY[0x277CBEBF8]];

  return v2;
}

@end