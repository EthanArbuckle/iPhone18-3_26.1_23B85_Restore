@interface CNAvatarViewSnapshotter_SwiftWrapper
+ (CGImage)renderImmediateSnapshotWithContact:(id)a3 scope:(id)a4;
- (_TtC14ContactsUICore36CNAvatarViewSnapshotter_SwiftWrapper)init;
@end

@implementation CNAvatarViewSnapshotter_SwiftWrapper

+ (CGImage)renderImmediateSnapshotWithContact:(id)a3 scope:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = _s14ContactsUICore36CNAvatarViewSnapshotter_SwiftWrapperC23renderImmediateSnapshot7contact5scopeSo10CGImageRefaSgSo9CNContactC_So26CNUILikenessRenderingScopeCtFZ_0(v5, v6);

  return v7;
}

- (_TtC14ContactsUICore36CNAvatarViewSnapshotter_SwiftWrapper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CNAvatarViewSnapshotter_SwiftWrapper();
  return [(CNAvatarViewSnapshotter_SwiftWrapper *)&v3 init];
}

@end