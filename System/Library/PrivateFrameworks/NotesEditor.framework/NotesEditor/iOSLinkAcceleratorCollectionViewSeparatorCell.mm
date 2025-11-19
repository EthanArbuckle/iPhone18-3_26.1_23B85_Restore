@interface iOSLinkAcceleratorCollectionViewSeparatorCell
- (_TtC11NotesEditor45iOSLinkAcceleratorCollectionViewSeparatorCell)initWithCoder:(id)a3;
- (_TtC11NotesEditor45iOSLinkAcceleratorCollectionViewSeparatorCell)initWithFrame:(CGRect)a3;
@end

@implementation iOSLinkAcceleratorCollectionViewSeparatorCell

- (_TtC11NotesEditor45iOSLinkAcceleratorCollectionViewSeparatorCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13.receiver = self;
  v13.super_class = swift_getObjectType();
  v7 = [(iOSLinkAcceleratorCollectionViewSeparatorCell *)&v13 initWithFrame:x, y, width, height];
  v8 = qword_27CA59960;
  v9 = v7;
  if (v8 != -1)
  {
    v12 = v9;
    swift_once();
    v9 = v12;
  }

  v10 = v9;
  [(iOSLinkAcceleratorCollectionViewSeparatorCell *)v9 setBackgroundColor:qword_27CA5EC20];

  return v10;
}

- (_TtC11NotesEditor45iOSLinkAcceleratorCollectionViewSeparatorCell)initWithCoder:(id)a3
{
  result = sub_2154A2EDC();
  __break(1u);
  return result;
}

@end