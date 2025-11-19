@interface NABarButtonItem
- (NABarButtonItem)init;
- (UIEdgeInsets)additionalPageContentInset;
@end

@implementation NABarButtonItem

- (UIEdgeInsets)additionalPageContentInset
{
  v2 = *(&self->super.isa + OBJC_IVAR___NABarButtonItem_additionalPageContentInset);
  v3 = *(&self->barButtonItem + OBJC_IVAR___NABarButtonItem_additionalPageContentInset);
  v4 = *(&self->additionalPageContentInset.top + OBJC_IVAR___NABarButtonItem_additionalPageContentInset);
  v5 = *(&self->additionalPageContentInset.left + OBJC_IVAR___NABarButtonItem_additionalPageContentInset);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (NABarButtonItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end