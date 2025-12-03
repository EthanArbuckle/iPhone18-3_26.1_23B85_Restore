@interface ContentConfigurationHostCell
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)didLongPress:(id)press;
- (void)layoutSubviews;
@end

@implementation ContentConfigurationHostCell

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = sub_1BA4A40C8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A40B8();
  selfCopy = self;
  sub_1B9F7D204(v7);

  (*(v5 + 8))(v7, v4);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1B9F898D0();
}

- (void)didLongPress:(id)press
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1BA4A7BF8();
  swift_unknownObjectRelease();
  sub_1BA2B3A88();

  __swift_destroy_boxed_opaque_existential_1(&v5);
}

@end