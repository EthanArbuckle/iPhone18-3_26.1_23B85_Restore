@interface MUPlaceNotesSectionController
- (BOOL)hasContent;
- (BOOL)hasContentBeforePersonalizedSuggestionArbitration;
- (MULibraryAccessProviding)libraryAccessProvider;
- (NSArray)sectionViews;
- (_TtC6MapsUI29MUPlaceNotesSectionController)initWithMapItem:(id)a3;
- (_TtC6MapsUI29MUPlaceNotesSectionController)initWithMapItem:(id)a3 userInfoProvider:(id)a4 libraryAccessProvider:(id)a5;
- (void)dealloc;
- (void)libraryAccessProvider:(id)a3 placeNoteDidChange:(id)a4;
- (void)libraryAccessProvider:(id)a3 savedStateOfPlaceDidChange:(BOOL)a4;
- (void)setLibraryAccessProvider:(id)a3;
@end

@implementation MUPlaceNotesSectionController

- (MULibraryAccessProviding)libraryAccessProvider
{
  v3 = OBJC_IVAR____TtC6MapsUI29MUPlaceNotesSectionController_libraryAccessProvider;
  swift_beginAccess();
  v4 = *(self + v3);
  v5 = swift_unknownObjectRetain();

  return v5;
}

- (void)setLibraryAccessProvider:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1C5667F98(a3);

  swift_unknownObjectRelease();
}

- (_TtC6MapsUI29MUPlaceNotesSectionController)initWithMapItem:(id)a3 userInfoProvider:(id)a4 libraryAccessProvider:(id)a5
{
  v7 = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v8 = sub_1C5668038(v7, a4, a5);

  swift_unknownObjectRelease();
  return v8;
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC6MapsUI29MUPlaceNotesSectionController_libraryAccessProvider;
  swift_beginAccess();
  v5 = *(self + v4);
  if (v5)
  {
    [v5 unregisterObserver_];
  }

  else
  {
    v6 = self;
  }

  v7.receiver = self;
  v7.super_class = ObjectType;
  [(MUPlaceNotesSectionController *)&v7 dealloc];
}

- (NSArray)sectionViews
{
  v2 = *(self + OBJC_IVAR____TtC6MapsUI29MUPlaceNotesSectionController__sectionViews);
  sub_1C5626E40(0, &qword_1ED77E800, 0x1E69DD250);

  v3 = sub_1C584F750();

  return v3;
}

- (BOOL)hasContentBeforePersonalizedSuggestionArbitration
{
  v2 = *(self + OBJC_IVAR____TtC6MapsUI29MUPlaceNotesSectionController__sectionViews);
  if (v2 >> 62)
  {
    v3 = sub_1C584FB90();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v3 != 0;
}

- (BOOL)hasContent
{
  v2 = self;
  v3 = [(MUPlaceSectionController *)v2 personalizedSuggestionsArbiterDelegate];
  if (v3)
  {
    v4 = [(MUPersonalizedSuggestionSectionArbiterDelegate *)v3 shouldShowPlaceNotesSection];
    swift_unknownObjectRelease();

    return v4;
  }

  else
  {
    v6 = *(v2 + OBJC_IVAR____TtC6MapsUI29MUPlaceNotesSectionController__sectionViews);
    if (v6 >> 62)
    {
      if (v6 < 0)
      {
        v8 = *(v2 + OBJC_IVAR____TtC6MapsUI29MUPlaceNotesSectionController__sectionViews);
      }

      v7 = sub_1C584FB90();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return v7 != 0;
  }
}

- (void)libraryAccessProvider:(id)a3 placeNoteDidChange:(id)a4
{
  if (a4)
  {
    v5 = sub_1C584F660();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  swift_unknownObjectRetain();
  v8 = self;
  sub_1C56681C4(v5, v7);
  swift_unknownObjectRelease();
}

- (void)libraryAccessProvider:(id)a3 savedStateOfPlaceDidChange:(BOOL)a4
{
  swift_unknownObjectRetain();
  v5 = self;
  _s6MapsUI29MUPlaceNotesSectionControllerC21libraryAccessProvider_26savedStateOfPlaceDidChangeySo09MULibraryH9Providing_p_SbtF_0();
  swift_unknownObjectRelease();
}

- (_TtC6MapsUI29MUPlaceNotesSectionController)initWithMapItem:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end