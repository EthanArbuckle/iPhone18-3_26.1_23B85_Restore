@interface TTRSheetViewFactory
+ (id)ttrSheetView:(id)a3;
- (_TtC7ChatKit19TTRSheetViewFactory)init;
@end

@implementation TTRSheetViewFactory

+ (id)ttrSheetView:(id)a3
{
  v4 = type metadata accessor for TTRSheetView();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = a3;
  sub_190A2B948(v10, v9);
  objc_allocWithZone(type metadata accessor for TTRSheetViewUIHostingController());
  sub_190A2C12C(v9, v6);
  v11 = sub_190D54B60();
  sub_190AD4530(v9);
  v12 = v11;
  [v12 setModalPresentationStyle_];
  [v12 setModalTransitionStyle_];

  return v12;
}

- (_TtC7ChatKit19TTRSheetViewFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TTRSheetViewFactory();
  return [(TTRSheetViewFactory *)&v3 init];
}

@end