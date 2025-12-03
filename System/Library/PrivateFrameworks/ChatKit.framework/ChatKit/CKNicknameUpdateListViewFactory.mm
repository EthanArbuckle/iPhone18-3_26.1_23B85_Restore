@interface CKNicknameUpdateListViewFactory
+ (id)listViewWithUpdates:(id)updates delegate:(id)delegate;
- (CKNicknameUpdateListViewFactory)init;
@end

@implementation CKNicknameUpdateListViewFactory

+ (id)listViewWithUpdates:(id)updates delegate:(id)delegate
{
  sub_1902188FC(0, &qword_1EAD59890);
  v5 = sub_190D57180();
  type metadata accessor for NicknameUpdateListViewFactory();
  swift_unknownObjectRetain();
  v6 = sub_1909EF234(v5, delegate);

  v7 = sub_1909EECD4(v6, delegate);

  swift_unknownObjectRelease();

  return v7;
}

- (CKNicknameUpdateListViewFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for NicknameUpdateListViewFactory();
  return [(CKNicknameUpdateListViewFactory *)&v3 init];
}

@end