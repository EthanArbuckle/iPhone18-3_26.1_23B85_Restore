@interface ICNoteEditorContextualInputAccessoryView
+ (double)height;
- (CGSize)intrinsicContentSize;
- (void)callBouncedSelectionHandler;
- (void)layoutSubviews;
- (void)reset;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)updateFromSelectionInTextView:(id)view;
- (void)updateFromTextViewDidChange:(id)change;
- (void)updateItemsWithStandardScope:(id)scope characterScope:(id)characterScope paragraphScope:(id)paragraphScope;
- (void)updateSingleGroupItems:(id)items;
- (void)willMoveToWindow:(id)window;
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
  selfCopy = self;
  sub_21542B9FC();
}

- (void)updateSingleGroupItems:(id)items
{
  sub_2151A6C9C(0, &qword_281199620);
  v4 = sub_2154A1F4C();
  selfCopy = self;
  ICNoteEditorContextualInputAccessoryView.updateItemsWithScope(standardItems:characterItems:paragraphItems:)(v4, MEMORY[0x277D84F90], MEMORY[0x277D84F90]);
}

- (void)updateItemsWithStandardScope:(id)scope characterScope:(id)characterScope paragraphScope:(id)paragraphScope
{
  sub_2151A6C9C(0, &qword_281199620);
  v6 = sub_2154A1F4C();
  v7 = sub_2154A1F4C();
  v8 = sub_2154A1F4C();
  selfCopy = self;
  ICNoteEditorContextualInputAccessoryView.updateItemsWithScope(standardItems:characterItems:paragraphItems:)(v6, v7, v8);
}

- (void)willMoveToWindow:(id)window
{
  windowCopy = window;
  selfCopy = self;
  ICNoteEditorContextualInputAccessoryView.willMove(toWindow:)(window);
}

- (void)updateFromSelectionInTextView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  ICNoteEditorContextualInputAccessoryView.updateFromSelection(in:)(viewCopy);
}

- (void)updateFromTextViewDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  ICNoteEditorContextualInputAccessoryView.updateFromTextViewDidChange(_:)(changeCopy);
}

- (void)callBouncedSelectionHandler
{
  v2 = (self + OBJC_IVAR___ICNoteEditorContextualInputAccessoryView_bouncedSelectionHandler);
  v3 = *(&self->super.super.super.isa + OBJC_IVAR___ICNoteEditorContextualInputAccessoryView_bouncedSelectionHandler);
  selfCopy = self;
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
  selfCopy = self;
  v3 = sub_21542BBEC();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR___ICNoteEditorContextualInputAccessoryView_toolbarController);
  selfCopy = self;
  *(v3 + 89) = sub_21542B050();
  *(v3 + 90) = sub_21542B050();
}

- (void)scrollViewDidScroll:(id)scroll
{
  selfCopy = self;
  sub_21542C4A8();
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  x = velocity.x;
  selfCopy = self;
  sub_21542C8CC(offset, x);
}

@end