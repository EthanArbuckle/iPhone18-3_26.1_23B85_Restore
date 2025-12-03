@interface CPUIGridViewBaseStyleImageGridOptions
- (CPUIGridViewBaseStyleImageGridOptions)init;
- (CPUIGridViewBaseStyleImageGridOptions)initWithUseFillDistribution:(BOOL)distribution;
@end

@implementation CPUIGridViewBaseStyleImageGridOptions

- (CPUIGridViewBaseStyleImageGridOptions)initWithUseFillDistribution:(BOOL)distribution
{
  *(&self->super.isa + OBJC_IVAR___CPUIGridViewBaseStyleImageGridOptions_useFillDistribution) = distribution;
  v4.receiver = self;
  v4.super_class = CPUIGridViewBaseStyleImageGridOptions;
  return [(CPUIGridViewBaseStyleImageGridOptions *)&v4 init];
}

- (CPUIGridViewBaseStyleImageGridOptions)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end