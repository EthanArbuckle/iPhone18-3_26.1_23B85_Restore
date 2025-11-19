@interface CPUIGridViewBaseStyleCondensedOptions
- (CPUIGridViewBaseStyleCondensedOptions)init;
- (CPUIGridViewBaseStyleCondensedOptions)initWithMaximumNumberOfColumns:(unint64_t)a3 prefersFillingRows:(BOOL)a4;
@end

@implementation CPUIGridViewBaseStyleCondensedOptions

- (CPUIGridViewBaseStyleCondensedOptions)initWithMaximumNumberOfColumns:(unint64_t)a3 prefersFillingRows:(BOOL)a4
{
  *(&self->super.isa + OBJC_IVAR___CPUIGridViewBaseStyleCondensedOptions_maximumNumberOfColumns) = a3;
  *(&self->super.isa + OBJC_IVAR___CPUIGridViewBaseStyleCondensedOptions_prefersFillingRows) = a4;
  v5.receiver = self;
  v5.super_class = CPUIGridViewBaseStyleCondensedOptions;
  return [(CPUIGridViewBaseStyleCondensedOptions *)&v5 init];
}

- (CPUIGridViewBaseStyleCondensedOptions)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end