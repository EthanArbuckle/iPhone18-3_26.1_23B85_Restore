@interface CPUIGridViewBaseStyleCondensedOptions
- (CPUIGridViewBaseStyleCondensedOptions)init;
- (CPUIGridViewBaseStyleCondensedOptions)initWithMaximumNumberOfColumns:(unint64_t)columns prefersFillingRows:(BOOL)rows;
@end

@implementation CPUIGridViewBaseStyleCondensedOptions

- (CPUIGridViewBaseStyleCondensedOptions)initWithMaximumNumberOfColumns:(unint64_t)columns prefersFillingRows:(BOOL)rows
{
  *(&self->super.isa + OBJC_IVAR___CPUIGridViewBaseStyleCondensedOptions_maximumNumberOfColumns) = columns;
  *(&self->super.isa + OBJC_IVAR___CPUIGridViewBaseStyleCondensedOptions_prefersFillingRows) = rows;
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