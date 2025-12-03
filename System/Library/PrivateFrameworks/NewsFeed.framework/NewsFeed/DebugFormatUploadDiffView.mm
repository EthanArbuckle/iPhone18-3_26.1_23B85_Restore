@interface DebugFormatUploadDiffView
- (_TtC8NewsFeed25DebugFormatUploadDiffView)initWithFrame:(CGRect)frame;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)layoutSubviews;
@end

@implementation DebugFormatUploadDiffView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1D6BBCC18();
}

- (_TtC8NewsFeed25DebugFormatUploadDiffView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  v4 = OBJC_IVAR____TtC8NewsFeed25DebugFormatUploadDiffView_changeSet;
  swift_beginAccess();
  v5 = *(&self->super.super.super.isa + v4);
  if (v5 >> 62)
  {
    return sub_1D7263BFC();
  }

  else
  {
    return *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v6 = OBJC_IVAR____TtC8NewsFeed25DebugFormatUploadDiffView_changeSet;
  result = swift_beginAccess();
  v8 = *(&self->super.super.super.isa + v6);
  if ((v8 & 0xC000000000000001) != 0)
  {
    selfCopy = self;
    v9 = MEMORY[0x1DA6FB460](section, v8);
LABEL_5:
    swift_endAccess();
    v11 = *(v9 + 16);

    if (!(v11 >> 62))
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:

      return v12;
    }

LABEL_10:
    v12 = sub_1D7263BFC();
    goto LABEL_7;
  }

  if (section < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) > section)
  {
    v9 = *(v8 + 8 * section + 32);
    selfCopy2 = self;

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = sub_1D7258DBC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7258D6C();
  viewCopy = view;
  selfCopy = self;
  v13 = sub_1D6BBD004();

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  sub_1D6BBD9D8(section);
  v9 = v8;

  if (v9)
  {
    v10 = sub_1D726203C();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end