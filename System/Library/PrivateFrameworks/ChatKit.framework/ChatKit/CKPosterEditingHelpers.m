@interface CKPosterEditingHelpers
+ (id)makeEditingViewControllerConfigurationForPosterContents:(id)a3 conversation:(id)a4;
+ (int64_t)preferredEditorModalPresentationStyleForTraitCollection:(id)a3;
- (_TtC7ChatKit22CKPosterEditingHelpers)init;
@end

@implementation CKPosterEditingHelpers

+ (int64_t)preferredEditorModalPresentationStyleForTraitCollection:(id)a3
{
  v3 = [a3 userInterfaceIdiom];
  if ((v3 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return qword_190DE6BF0[(v3 - 1)];
  }
}

+ (id)makeEditingViewControllerConfigurationForPosterContents:(id)a3 conversation:(id)a4
{
  swift_getObjCClassMetadata();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v6 = a4;
  v8 = sub_190A01CA0(a3, v6, v7);
  swift_unknownObjectRelease();

  return v8;
}

- (_TtC7ChatKit22CKPosterEditingHelpers)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CKPosterEditingHelpers();
  return [(CKPosterEditingHelpers *)&v3 init];
}

@end