@interface CKPersistentMenuButton
- (_TtC7ChatKit22CKPersistentMenuButton)initWithCoder:(id)coder;
- (_TtC7ChatKit22CKPersistentMenuButton)initWithFrame:(CGRect)frame;
@end

@implementation CKPersistentMenuButton

- (_TtC7ChatKit22CKPersistentMenuButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CKPersistentMenuButton();
  return [(CKPersistentMenuButton *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC7ChatKit22CKPersistentMenuButton)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CKPersistentMenuButton();
  coderCopy = coder;
  v5 = [(CKPersistentMenuButton *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end