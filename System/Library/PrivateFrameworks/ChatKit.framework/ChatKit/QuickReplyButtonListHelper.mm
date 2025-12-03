@interface QuickReplyButtonListHelper
+ (id)makeListView:(id)view delegate:(id)delegate configurationObject:(id)object;
- (_TtC7ChatKit26QuickReplyButtonListHelper)init;
@end

@implementation QuickReplyButtonListHelper

+ (id)makeListView:(id)view delegate:(id)delegate configurationObject:(id)object
{
  v7 = sub_190D57180();
  swift_unknownObjectRetain();
  objectCopy = object;
  v9 = _s7ChatKit26QuickReplyButtonListHelperC04makeF4View_8delegate19configurationObjectSo6UIViewCSaySSG_AA0cdeF8Delegate_pAA0cdeF13ConfigurationCtFZ_0(v7, delegate, objectCopy);
  swift_unknownObjectRelease();

  return v9;
}

- (_TtC7ChatKit26QuickReplyButtonListHelper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for QuickReplyButtonListHelper();
  return [(QuickReplyButtonListHelper *)&v3 init];
}

@end