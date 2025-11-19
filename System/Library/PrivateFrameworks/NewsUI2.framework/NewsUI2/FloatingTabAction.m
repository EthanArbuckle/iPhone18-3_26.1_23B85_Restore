@interface FloatingTabAction
- (_TtC7NewsUI217FloatingTabAction)initWithIdentifier:(id)a3 title:(id)a4 image:(id)a5 handler:(id)a6;
@end

@implementation FloatingTabAction

- (_TtC7NewsUI217FloatingTabAction)initWithIdentifier:(id)a3 title:(id)a4 image:(id)a5 handler:(id)a6
{
  v7 = _Block_copy(a6);
  v8 = sub_219BF5414();
  v10 = v9;
  v11 = sub_219BF5414();
  v13 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = v7;
  v15 = a5;
  return sub_2189A6810(v8, v10, v11, v13, a5, sub_2189A6A5C, v14);
}

@end