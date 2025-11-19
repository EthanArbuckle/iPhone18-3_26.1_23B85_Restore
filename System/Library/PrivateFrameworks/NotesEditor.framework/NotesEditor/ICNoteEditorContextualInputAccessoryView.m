@interface ICNoteEditorContextualInputAccessoryView
+ (double)height;
- (CGSize)intrinsicContentSize;
- (void)callBouncedSelectionHandler;
- (void)layoutSubviews;
- (void)reset;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)updateFromSelectionInTextView:(id)a3;
- (void)updateFromTextViewDidChange:(id)a3;
- (void)updateItemsWithStandardScope:(id)a3 characterScope:(id)a4 paragraphScope:(id)a5;
- (void)updateSingleGroupItems:(id)a3;
- (void)willMoveToWindow:(id)a3;
@end

@implementation ICNoteEditorContextualInputAccessoryView

+ (double)height
{
  if (qword_281199BD0 != -1)
  {
    swift_once();
  }

  return *&qword_281199BE0;
}

- (void)reset
{
  v2 = self;
  sub_21542B9FC();
}

- (void)updateSingleGroupItems:(id)a3
{
  sub_2151A6C9C(0, &qword_281199620);
  v4 = sub_2154A1F4C();
  v5 = self;
  ICNoteEditorContextualInputAccessoryView.updateItemsWithScope(standardItems:characterItems:paragraphItems:)(v4, MEMORY[0x277D84F90], MEMORY[0x277D84F90]);
}

- (void)updateItemsWithStandardScope:(id)a3 characterScope:(id)a4 paragraphScope:(id)a5
{
  sub_2151A6C9C(0, &qword_281199620);
  v6 = sub_2154A1F4C();
  v7 = sub_2154A1F4C();
  v8 = sub_2154A1F4C();
  v9 = self;
  ICNoteEditorContextualInputAccessoryView.updateItemsWithScope(standardItems:characterItems:paragraphItems:)(v6, v7, v8);
}

- (void)willMoveToWindow:(id)a3
{
  v5 = a3;
  v6 = self;
  ICNoteEditorContextualInputAccessoryView.willMove(toWindow:)(a3);
}

- (void)updateFromSelectionInTextView:(id)a3
{
  v4 = a3;
  v5 = self;
  ICNoteEditorContextualInputAccessoryView.updateFromSelection(in:)(v4);
}

- (void)updateFromTextViewDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  ICNoteEditorContextualInputAccessoryView.updateFromTextViewDidChange(_:)(v4);
}

- (void)callBouncedSelectionHandler
{
  v2 = (self + OBJC_IVAR___ICNoteEditorContextualInputAccessoryView_bouncedSelectionHandler);
  v3 = *(&self->super.super.super.isa + OBJC_IVAR___ICNoteEditorContextualInputAccessoryView_bouncedSelectionHandler);
  v4 = self;
  if (v3)
  {
    sub_2151BD748(v3);
    v3(1);
    sub_2151AF750(v3);
    v5 = *v2;
  }

  else
  {
    v5 = 0;
  }

  *v2 = 0;
  v2[1] = 0;
  sub_2151AF750(v5);
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(ICNoteEditorContextualInputAccessoryView *)&v3 layoutSubviews];
  [v2 bounds];
  ICNoteEditorContextualInputAccessoryView.updateLayout(with:)(v4);
}

- (CGSize)intrinsicContentSize
{
  v2 = self;
  v3 = sub_21542BBEC();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR___ICNoteEditorContextualInputAccessoryView_toolbarController);
  v4 = self;
  *(v3 + 89) = sub_21542B050();
  *(v3 + 90) = sub_21542B050();
}

- (void)scrollViewDidScroll:(id)a3
{
  v3 = self;
  sub_21542C4A8();
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  x = a4.x;
  v7 = self;
  sub_21542C8CC(a5, x);
}

@end