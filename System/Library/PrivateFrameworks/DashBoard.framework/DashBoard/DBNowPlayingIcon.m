@interface DBNowPlayingIcon
- (_TtC9DashBoard16DBNowPlayingIcon)init;
- (_TtC9DashBoard16DBNowPlayingIcon)initWithLeafIdentifier:(id)a3 applicationBundleID:(id)a4;
@end

@implementation DBNowPlayingIcon

- (_TtC9DashBoard16DBNowPlayingIcon)init
{
  v2 = [(DBNowPlayingIcon *)self initWithLeafIdentifier:*MEMORY[0x277CF8FC8] applicationBundleID:*MEMORY[0x277CF8FC8]];
  type metadata accessor for DBLeafIconDataSource();
  v3 = sub_248383960();
  v5 = v4;
  v6 = v2;
  v7 = DBLeafIconDataSource.__allocating_init(identifier:application:sessionConfiguration:)(v3, v5, 0, 0);
  [(SBLeafIcon *)v6 addIconDataSource:v7];

  return v6;
}

- (_TtC9DashBoard16DBNowPlayingIcon)initWithLeafIdentifier:(id)a3 applicationBundleID:(id)a4
{
  if (a4)
  {
    sub_248383960();
    v6 = a3;
    v7 = sub_248383930();
  }

  else
  {
    v8 = a3;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for DBNowPlayingIcon();
  v9 = [(SBLeafIcon *)&v11 initWithLeafIdentifier:a3 applicationBundleID:v7];

  return v9;
}

@end