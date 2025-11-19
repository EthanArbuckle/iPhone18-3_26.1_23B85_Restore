@interface DBOEMIcon
- (_TtC9DashBoard9DBOEMIcon)initWithLeafIdentifier:(id)a3 applicationBundleID:(id)a4;
- (_TtC9DashBoard9DBOEMIcon)initWithSessionConfiguration:(id)a3;
@end

@implementation DBOEMIcon

- (_TtC9DashBoard9DBOEMIcon)initWithSessionConfiguration:(id)a3
{
  v4 = *MEMORY[0x277CF8FD8];
  v14.receiver = self;
  v14.super_class = type metadata accessor for DBOEMIcon();
  v5 = a3;
  v6 = [(SBLeafIcon *)&v14 initWithLeafIdentifier:v4 applicationBundleID:v4];
  type metadata accessor for DBLeafIconDataSource();
  v7 = sub_248383960();
  v9 = v8;
  v10 = v5;
  v11 = v6;
  v12 = DBLeafIconDataSource.__allocating_init(identifier:application:sessionConfiguration:)(v7, v9, 0, a3);
  [(SBLeafIcon *)v11 addIconDataSource:v12, v14.receiver, v14.super_class];

  return v11;
}

- (_TtC9DashBoard9DBOEMIcon)initWithLeafIdentifier:(id)a3 applicationBundleID:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end