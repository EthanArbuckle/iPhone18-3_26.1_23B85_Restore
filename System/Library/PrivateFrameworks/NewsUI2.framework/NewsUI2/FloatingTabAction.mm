@interface FloatingTabAction
- (_TtC7NewsUI217FloatingTabAction)initWithIdentifier:(id)identifier title:(id)title image:(id)image handler:(id)handler;
@end

@implementation FloatingTabAction

- (_TtC7NewsUI217FloatingTabAction)initWithIdentifier:(id)identifier title:(id)title image:(id)image handler:(id)handler
{
  v7 = _Block_copy(handler);
  v8 = sub_219BF5414();
  v10 = v9;
  v11 = sub_219BF5414();
  v13 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = v7;
  imageCopy = image;
  return sub_2189A6810(v8, v10, v11, v13, image, sub_2189A6A5C, v14);
}

@end