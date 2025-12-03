@interface CKPosterEditingHelpers
+ (id)makeEditingViewControllerConfigurationForPosterContents:(id)contents conversation:(id)conversation;
+ (int64_t)preferredEditorModalPresentationStyleForTraitCollection:(id)collection;
- (_TtC7ChatKit22CKPosterEditingHelpers)init;
@end

@implementation CKPosterEditingHelpers

+ (int64_t)preferredEditorModalPresentationStyleForTraitCollection:(id)collection
{
  userInterfaceIdiom = [collection userInterfaceIdiom];
  if ((userInterfaceIdiom - 1) > 5)
  {
    return 0;
  }

  else
  {
    return qword_190DE6BF0[(userInterfaceIdiom - 1)];
  }
}

+ (id)makeEditingViewControllerConfigurationForPosterContents:(id)contents conversation:(id)conversation
{
  swift_getObjCClassMetadata();
  swift_getObjectType();
  swift_unknownObjectRetain();
  conversationCopy = conversation;
  v8 = sub_190A01CA0(contents, conversationCopy, v7);
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