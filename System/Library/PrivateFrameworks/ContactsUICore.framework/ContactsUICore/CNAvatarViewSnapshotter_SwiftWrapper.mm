@interface CNAvatarViewSnapshotter_SwiftWrapper
+ (CGImage)renderImmediateSnapshotWithContact:(id)contact scope:(id)scope;
- (_TtC14ContactsUICore36CNAvatarViewSnapshotter_SwiftWrapper)init;
@end

@implementation CNAvatarViewSnapshotter_SwiftWrapper

+ (CGImage)renderImmediateSnapshotWithContact:(id)contact scope:(id)scope
{
  contactCopy = contact;
  scopeCopy = scope;
  v7 = _s14ContactsUICore36CNAvatarViewSnapshotter_SwiftWrapperC23renderImmediateSnapshot7contact5scopeSo10CGImageRefaSgSo9CNContactC_So26CNUILikenessRenderingScopeCtFZ_0(contactCopy, scopeCopy);

  return v7;
}

- (_TtC14ContactsUICore36CNAvatarViewSnapshotter_SwiftWrapper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CNAvatarViewSnapshotter_SwiftWrapper();
  return [(CNAvatarViewSnapshotter_SwiftWrapper *)&v3 init];
}

@end