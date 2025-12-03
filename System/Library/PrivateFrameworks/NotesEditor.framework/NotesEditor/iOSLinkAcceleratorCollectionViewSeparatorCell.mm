@interface iOSLinkAcceleratorCollectionViewSeparatorCell
- (_TtC11NotesEditor45iOSLinkAcceleratorCollectionViewSeparatorCell)initWithCoder:(id)coder;
- (_TtC11NotesEditor45iOSLinkAcceleratorCollectionViewSeparatorCell)initWithFrame:(CGRect)frame;
@end

@implementation iOSLinkAcceleratorCollectionViewSeparatorCell

- (_TtC11NotesEditor45iOSLinkAcceleratorCollectionViewSeparatorCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v13.receiver = self;
  v13.super_class = swift_getObjectType();
  height = [(iOSLinkAcceleratorCollectionViewSeparatorCell *)&v13 initWithFrame:x, y, width, height];
  v8 = qword_27CA59960;
  v9 = height;
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

- (_TtC11NotesEditor45iOSLinkAcceleratorCollectionViewSeparatorCell)initWithCoder:(id)coder
{
  result = sub_2154A2EDC();
  __break(1u);
  return result;
}

@end