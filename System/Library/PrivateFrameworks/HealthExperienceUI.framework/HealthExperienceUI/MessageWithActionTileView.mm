@interface MessageWithActionTileView
- (void)didTapAction:(id)a3;
- (void)updateConstraints;
@end

@implementation MessageWithActionTileView

- (void)updateConstraints
{
  v2 = self;
  sub_1BA43073C();
}

- (void)didTapAction:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1BA4A7BF8();
  swift_unknownObjectRelease();
  sub_1BA43131C();

  __swift_destroy_boxed_opaque_existential_1(&v5);
}

@end