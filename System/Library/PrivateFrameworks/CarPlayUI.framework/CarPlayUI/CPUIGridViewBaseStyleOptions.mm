@interface CPUIGridViewBaseStyleOptions
- (CPUIGridViewBaseStyleOptions)init;
- (CPUIGridViewBaseStyleOptions)initWithMaximumNumberOfLines:(unint64_t)a3 condensedOptions:(id)a4 imageGridOptions:(id)a5;
@end

@implementation CPUIGridViewBaseStyleOptions

- (CPUIGridViewBaseStyleOptions)initWithMaximumNumberOfLines:(unint64_t)a3 condensedOptions:(id)a4 imageGridOptions:(id)a5
{
  *(&self->super.isa + OBJC_IVAR___CPUIGridViewBaseStyleOptions_maximumNumberOfLines) = a3;
  *(&self->super.isa + OBJC_IVAR___CPUIGridViewBaseStyleOptions_condensedOptions) = a4;
  *(&self->super.isa + OBJC_IVAR___CPUIGridViewBaseStyleOptions_imageGridOptions) = a5;
  v9.receiver = self;
  v9.super_class = CPUIGridViewBaseStyleOptions;
  v6 = a4;
  v7 = a5;
  return [(CPUIGridViewBaseStyleOptions *)&v9 init];
}

- (CPUIGridViewBaseStyleOptions)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end