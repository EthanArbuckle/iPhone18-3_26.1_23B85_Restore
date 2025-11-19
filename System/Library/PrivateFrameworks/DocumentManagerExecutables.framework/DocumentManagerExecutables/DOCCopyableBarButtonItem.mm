@interface DOCCopyableBarButtonItem
- (_TtC26DocumentManagerExecutables24DOCCopyableBarButtonItem)init;
- (id)copyWithZone:(void *)a3;
@end

@implementation DOCCopyableBarButtonItem

- (id)copyWithZone:(void *)a3
{
  v3 = (self + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCopyableBarButtonItem_creator);
  v4 = *(self + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCopyableBarButtonItem_creator);
  if (v4)
  {
    v5 = self;
    v6 = outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v4);
    v7 = v4(v6);
    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v4);
    v8 = *v3;
    v9 = v3[1];
    outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*v3);

    v10 = &v7[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCopyableBarButtonItem_creator];
    v11 = *&v7[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCopyableBarButtonItem_creator];
    *v10 = v8;
    v10[1] = v9;
    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v11);
    return v7;
  }

  else
  {
    __break(1u);
  }

  return self;
}

- (_TtC26DocumentManagerExecutables24DOCCopyableBarButtonItem)init
{
  v3 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCopyableBarButtonItem_creator);
  v4 = type metadata accessor for DOCCopyableBarButtonItem();
  *v3 = 0;
  v3[1] = 0;
  v6.receiver = self;
  v6.super_class = v4;
  return [(DOCBarButtonItem *)&v6 init];
}

@end