@interface CSUIOpenWithPreparedMenu
- (CSUIBoundBundleInfo)representativeBundle;
- (CSUIOpenWithPreparedMenu)init;
- (CSUIOpenWithPreparedMenu)initWithBoundBundlesWrapper:(id)wrapper;
@end

@implementation CSUIOpenWithPreparedMenu

- (CSUIBoundBundleInfo)representativeBundle
{
  if ((self->boundBundles[OBJC_IVAR___CSUIOpenWithPreparedMenu_representativeBundleIndex] & 1) == 0)
  {
    v4 = *(&self->super.isa + OBJC_IVAR___CSUIOpenWithPreparedMenu_representativeBundleIndex);
    result = type metadata accessor for CSUIBoundBundle();
    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v6 = *(&self->super.isa + OBJC_IVAR___CSUIOpenWithPreparedMenu_boundBundles);
      if (v4 < *(v6 + 16))
      {
        v7 = v6 + 40 * v4;
        v12 = *(v7 + 32);
        v8 = *(v7 + 56);
        v13 = *(v7 + 40);
        v14 = v8;
        v9 = v8;
        v10 = v12;
        v11 = v13;
        v2 = sub_2478C3084(&v12);
        goto LABEL_6;
      }
    }

    __break(1u);
    return result;
  }

  v2 = 0;
LABEL_6:

  return v2;
}

- (CSUIOpenWithPreparedMenu)init
{
  *(&self->super.isa + OBJC_IVAR___CSUIOpenWithPreparedMenu_boundBundles) = MEMORY[0x277D84F90];
  v2 = self + OBJC_IVAR___CSUIOpenWithPreparedMenu_representativeBundleIndex;
  *v2 = 0;
  v2[8] = 1;
  v4.receiver = self;
  v4.super_class = CSUIOpenWithPreparedMenu;
  return [(CSUIOpenWithPreparedMenu *)&v4 init];
}

- (CSUIOpenWithPreparedMenu)initWithBoundBundlesWrapper:(id)wrapper
{
  *(&self->super.isa + OBJC_IVAR___CSUIOpenWithPreparedMenu_boundBundles) = *(wrapper + OBJC_IVAR____TtCE14CoreServicesUICSo24CSUIOpenWithPreparedMenuP33_66079D085FF6FB5157D5A6D61FF9E78423BoundBundlesObjcWrapper_boundBundles);
  v3 = *(wrapper + OBJC_IVAR____TtCE14CoreServicesUICSo24CSUIOpenWithPreparedMenuP33_66079D085FF6FB5157D5A6D61FF9E78423BoundBundlesObjcWrapper_representativeBundleIndex + 8);
  v4 = self + OBJC_IVAR___CSUIOpenWithPreparedMenu_representativeBundleIndex;
  *v4 = *(wrapper + OBJC_IVAR____TtCE14CoreServicesUICSo24CSUIOpenWithPreparedMenuP33_66079D085FF6FB5157D5A6D61FF9E78423BoundBundlesObjcWrapper_representativeBundleIndex);
  v4[8] = v3;
  v6.receiver = self;
  v6.super_class = CSUIOpenWithPreparedMenu;

  return [(CSUIOpenWithPreparedMenu *)&v6 init];
}

@end