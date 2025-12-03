@interface SwiftItem
- (_TtC4Home9SwiftItem)init;
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation SwiftItem

- (id)_subclass_updateWithOptions:(id)options
{
  if (options)
  {
    v4 = sub_20DD64DC4();
  }

  else
  {
    v4 = 0;
  }

  selfCopy = self;
  v6 = sub_20D9C95B4(v4);

  return v6;
}

- (_TtC4Home9SwiftItem)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SwiftItem();
  return [(SwiftItem *)&v3 init];
}

@end