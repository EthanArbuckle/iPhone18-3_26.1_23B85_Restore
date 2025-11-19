@interface CRSWidgetLayoutState
+ (id)loadFrom:(id)a3 error:(id *)a4;
+ (id)loadFromURL:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)saveTo:(id)a3 error:(id *)a4;
- (CRSWidgetLayoutState)init;
- (CRSWidgetLayoutState)initWithShowWidgets:(BOOL)a3 showWallpaper:(BOOL)a4 showSuggestions:(BOOL)a5 smartRotate:(BOOL)a6 widgetStackRows:(id)a7;
- (NSArray)widgetStackRows;
- (id)copyWithZone:(void *)a3;
- (id)saveAndReturnError:(id *)a3;
- (int64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRSWidgetLayoutState

- (NSArray)widgetStackRows
{
  v2 = *(self + OBJC_IVAR___CRSWidgetLayoutState_widgetStackRows);
  type metadata accessor for CRSWidgetStackRow();

  v3 = sub_242FCB31C();

  return v3;
}

- (CRSWidgetLayoutState)initWithShowWidgets:(BOOL)a3 showWallpaper:(BOOL)a4 showSuggestions:(BOOL)a5 smartRotate:(BOOL)a6 widgetStackRows:(id)a7
{
  type metadata accessor for CRSWidgetStackRow();
  v12 = sub_242FCB32C();
  *(self + OBJC_IVAR___CRSWidgetLayoutState_showWidgets) = a3;
  *(self + OBJC_IVAR___CRSWidgetLayoutState_showWallpaper) = a4;
  *(self + OBJC_IVAR___CRSWidgetLayoutState_showSuggestions) = a5;
  *(self + OBJC_IVAR___CRSWidgetLayoutState_smartRotate) = a6;
  *(self + OBJC_IVAR___CRSWidgetLayoutState_widgetStackRows) = v12;
  v14.receiver = self;
  v14.super_class = CRSWidgetLayoutState;
  return [(CRSWidgetLayoutState *)&v14 init];
}

+ (id)loadFrom:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = sub_242FCB26C();
  v7 = v6;

  v8 = sub_242FC4244(0, &qword_27ED5DAF8, 0x277CCAAC8);
  type metadata accessor for CRSWidgetLayoutState(v8);
  v9 = sub_242FCB36C();
  if (v9)
  {
    v10 = v9;
    sub_242FC6298(v5, v7);
  }

  else
  {
    v11 = objc_allocWithZone(CRSWidgetLayoutState);
    type metadata accessor for CRSWidgetStackRow();
    v12 = sub_242FCB31C();
    v10 = [v11 initWithShowWidgets:1 showWallpaper:0 showSuggestions:1 smartRotate:1 widgetStackRows:v12];
    sub_242FC6298(v5, v7);
  }

  return v10;
}

+ (id)loadFromURL:(id)a3 error:(id *)a4
{
  v4 = sub_242FCB23C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_242FCB22C();
  v9 = sub_242FC6184();
  (*(v5 + 8))(v8, v4);

  return v9;
}

- (BOOL)saveTo:(id)a3 error:(id *)a4
{
  v5 = sub_242FCB23C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_242FCB22C();
  v10 = self;
  CRSWidgetLayoutState.save(to:)();
  (*(v6 + 8))(v9, v5);

  return 1;
}

- (id)saveAndReturnError:(id *)a3
{
  v3 = self;
  v4 = CRSWidgetLayoutState.save()();
  v6 = v5;

  v7 = sub_242FCB25C();
  sub_242FC6298(v4, v6);

  return v7;
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  sub_242FC4A7C(v6);

  __swift_project_boxed_opaque_existential_0(v6, v6[3]);
  v4 = sub_242FCB46C();
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  CRSWidgetLayoutState.encode(with:)(v4);
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_242FCB3BC();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = CRSWidgetLayoutState.isEqual(_:)(v8);

  sub_242FC3650(v8, &qword_27ED5D990, &qword_242FCCFF0);
  return v6 & 1;
}

- (int64_t)hash
{
  v2 = self;
  v3 = CRSWidgetLayoutState.hash.getter();

  return v3;
}

- (CRSWidgetLayoutState)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end