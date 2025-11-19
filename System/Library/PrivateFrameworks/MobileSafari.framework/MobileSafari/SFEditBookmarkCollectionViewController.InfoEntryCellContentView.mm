@interface SFEditBookmarkCollectionViewController.InfoEntryCellContentView
- (_TtCC12MobileSafari38SFEditBookmarkCollectionViewController24InfoEntryCellContentView)initWithFrame:(CGRect)a3;
- (void)didBeginEditing;
- (void)returnWasPressed;
- (void)valueChangedIn:(id)a3;
@end

@implementation SFEditBookmarkCollectionViewController.InfoEntryCellContentView

- (void)returnWasPressed
{
  v2 = *(&self->super._gestureRecognizers + OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController24InfoEntryCellContentView_infoEntryConfiguration);
  if (v2)
  {
    v4 = self;
    v3 = sub_18B824D48(v2);
    v2(v3);
    sub_18B7B171C(v2);
  }
}

- (void)valueChangedIn:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_18BC218B8();
  swift_unknownObjectRelease();
  sub_18B9AC5FC(v5);

  __swift_destroy_boxed_opaque_existential_1Tm(v5);
}

- (void)didBeginEditing
{
  v2 = *(&self->super._viewFlags + OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController24InfoEntryCellContentView_infoEntryConfiguration + 16);
  if (v2)
  {
    v4 = self;
    v3 = sub_18B824D48(v2);
    v2(v3);
    sub_18B7B171C(v2);
  }
}

- (_TtCC12MobileSafari38SFEditBookmarkCollectionViewController24InfoEntryCellContentView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end