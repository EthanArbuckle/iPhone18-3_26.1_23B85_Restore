@interface DOCPickerFilenameView
- (DOCPickerContext)pickerContext;
- (NSArray)tags;
- (UIButton)tagButton;
- (_TtC26DocumentManagerExecutables21DOCPickerFilenameView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setPickerContext:(id)context;
- (void)setTagButton:(id)button;
- (void)setTags:(id)tags;
- (void)tagEditor:(id)editor userDidDeselectTag:(id)tag;
- (void)tagEditor:(id)editor userDidSelectTag:(id)tag;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidChange:(id)change;
- (void)textFieldDidEndEditing:(id)editing;
- (void)textFieldDidEndEditingOnExit:(id)exit;
@end

@implementation DOCPickerFilenameView

- (DOCPickerContext)pickerContext
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView_pickerContext;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setPickerContext:(id)context
{
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView_pickerContext;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = context;
  contextCopy = context;
  selfCopy = self;

  DOCPickerFilenameView.updateStackView()();
}

- (NSArray)tags
{
  swift_beginAccess();
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCTag);

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setTags:(id)tags
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCTag);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView_tags;
  swift_beginAccess();
  *(self + v5) = v4;
  selfCopy = self;

  v7 = DOCPickerFilenameView.tagButton.getter();
  [v7 setNeedsUpdateConfiguration];
}

- (void)textFieldDidBeginEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  specialized DOCPickerFilenameView.textFieldDidBeginEditing(_:)();
}

- (void)textFieldDidEndEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  specialized DOCPickerFilenameView.textFieldDidEndEditing(_:)();
}

- (void)textFieldDidEndEditingOnExit:(id)exit
{
  exitCopy = exit;
  selfCopy = self;
  DOCPickerFilenameView.textFieldDidEndEditingOnExit(_:)(exitCopy);
}

- (void)textFieldDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  DOCPickerFilenameView.textFieldDidChange(_:)(changeCopy);
}

- (UIButton)tagButton
{
  selfCopy = self;
  v3 = DOCPickerFilenameView.tagButton.getter();

  return v3;
}

- (void)setTagButton:(id)button
{
  v4 = *(self + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView____lazy_storage___tagButton);
  *(self + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView____lazy_storage___tagButton) = button;
  buttonCopy = button;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for DOCPickerFilenameView(0);
  v2 = v5.receiver;
  [(DOCPickerFilenameView *)&v5 layoutSubviews];
  DOCPickerFilenameView.collapseTagButtonTitleIfNeeded()();
  v3 = DOCPickerFilenameView.stackView.getter();
  clearColor = [objc_opt_self() clearColor];
  [v3 setBackgroundColor_];
}

- (_TtC26DocumentManagerExecutables21DOCPickerFilenameView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)tagEditor:(id)editor userDidSelectTag:(id)tag
{
  swift_unknownObjectRetain();
  tagCopy = tag;
  selfCopy = self;
  specialized DOCPickerFilenameView.tagEditor(_:userDidSelect:)(tagCopy);
  swift_unknownObjectRelease();
}

- (void)tagEditor:(id)editor userDidDeselectTag:(id)tag
{
  v6 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView_tags;
  swift_beginAccess();
  tagCopy = tag;
  selfCopy = self;
  v9 = specialized MutableCollection._halfStablePartition(isSuffixElement:)((self + v6));
  v10 = *(self + v6);
  if (v10 >> 62)
  {
    v13 = v9;
    v11 = __CocoaSet.count.getter();
    v9 = v13;
    if (v11 >= v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11 >= v9)
    {
LABEL_3:
      specialized Array.replaceSubrange<A>(_:with:)(v9, v11);
      swift_endAccess();
      v12 = DOCPickerFilenameView.tagButton.getter();
      [v12 setNeedsUpdateConfiguration];

      return;
    }
  }

  __break(1u);
}

@end