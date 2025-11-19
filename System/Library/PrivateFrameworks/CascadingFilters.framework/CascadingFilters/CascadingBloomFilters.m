@interface CascadingBloomFilters
- (_TtC16CascadingFilters21CascadingBloomFilters)init;
@end

@implementation CascadingBloomFilters

- (_TtC16CascadingFilters21CascadingBloomFilters)init
{
  *(&self->super.isa + OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_version) = 2;
  *(&self->super.isa + OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_hashAlgorithm) = 2;
  *(&self->super.isa + OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_numberOfLayers) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_invertedLogic) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_salt) = xmmword_24329C870;
  *(&self->super.isa + OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_filters) = MEMORY[0x277D84F90];
  v3.receiver = self;
  v3.super_class = type metadata accessor for CascadingBloomFilters();
  return [(CascadingBloomFilters *)&v3 init];
}

@end