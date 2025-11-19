@interface DOCPickerFilenameView
- (DOCPickerContext)pickerContext;
- (NSArray)tags;
- (UIButton)tagButton;
- (_TtC26DocumentManagerExecutables21DOCPickerFilenameView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setPickerContext:(id)a3;
- (void)setTagButton:(id)a3;
- (void)setTags:(id)a3;
- (void)tagEditor:(id)a3 userDidDeselectTag:(id)a4;
- (void)tagEditor:(id)a3 userDidSelectTag:(id)a4;
- (void)textFieldDidBeginEditing:(id)a3;
- (void)textFieldDidChange:(id)a3;
- (void)textFieldDidEndEditing:(id)a3;
- (void)textFieldDidEndEditingOnExit:(id)a3;
@end

@implementation DOCPickerFilenameView

- (DOCPickerContext)pickerContext
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView_pickerContext;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setPickerContext:(id)a3
{
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView_pickerContext;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
  v8 = self;

  DOCPickerFilenameView.updateStackView()();
}

- (NSArray)tags
{
  swift_beginAccess();
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCTag);

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setTags:(id)a3
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCTag);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView_tags;
  swift_beginAccess();
  *(self + v5) = v4;
  v6 = self;

  v7 = DOCPickerFilenameView.tagButton.getter();
  [v7 setNeedsUpdateConfiguration];
}

- (void)textFieldDidBeginEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized DOCPickerFilenameView.textFieldDidBeginEditing(_:)();
}

- (void)textFieldDidEndEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized DOCPickerFilenameView.textFieldDidEndEditing(_:)();
}

- (void)textFieldDidEndEditingOnExit:(id)a3
{
  v4 = a3;
  v5 = self;
  DOCPickerFilenameView.textFieldDidEndEditingOnExit(_:)(v4);
}

- (void)textFieldDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  DOCPickerFilenameView.textFieldDidChange(_:)(v4);
}

- (UIButton)tagButton
{
  v2 = self;
  v3 = DOCPickerFilenameView.tagButton.getter();

  return v3;
}

- (void)setTagButton:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView____lazy_storage___tagButton);
  *(self + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView____lazy_storage___tagButton) = a3;
  v3 = a3;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for DOCPickerFilenameView(0);
  v2 = v5.receiver;
  [(DOCPickerFilenameView *)&v5 layoutSubviews];
  DOCPickerFilenameView.collapseTagButtonTitleIfNeeded()();
  v3 = DOCPickerFilenameView.stackView.getter();
  v4 = [objc_opt_self() clearColor];
  [v3 setBackgroundColor_];
}

- (_TtC26DocumentManagerExecutables21DOCPickerFilenameView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)tagEditor:(id)a3 userDidSelectTag:(id)a4
{
  swift_unknownObjectRetain();
  v6 = a4;
  v7 = self;
  specialized DOCPickerFilenameView.tagEditor(_:userDidSelect:)(v6);
  swift_unknownObjectRelease();
}

- (void)tagEditor:(id)a3 userDidDeselectTag:(id)a4
{
  v6 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView_tags;
  swift_beginAccess();
  v7 = a4;
  v8 = self;
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