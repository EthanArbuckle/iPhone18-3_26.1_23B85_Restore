@interface QuickReplyButtonListConfiguration
- (NSNumber)rowIndex;
- (_TtC7ChatKit33QuickReplyButtonListConfiguration)init;
- (void)setRowIndex:(id)a3;
@end

@implementation QuickReplyButtonListConfiguration

- (NSNumber)rowIndex
{
  v3 = OBJC_IVAR____TtC7ChatKit33QuickReplyButtonListConfiguration_rowIndex;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setRowIndex:(id)a3
{
  v5 = OBJC_IVAR____TtC7ChatKit33QuickReplyButtonListConfiguration_rowIndex;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (_TtC7ChatKit33QuickReplyButtonListConfiguration)init
{
  *(&self->super.isa + OBJC_IVAR____TtC7ChatKit33QuickReplyButtonListConfiguration_rowIndex) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for QuickReplyButtonListConfiguration();
  return [(QuickReplyButtonListConfiguration *)&v3 init];
}

@end