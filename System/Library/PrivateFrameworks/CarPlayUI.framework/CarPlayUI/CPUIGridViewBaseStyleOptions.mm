@interface CPUIGridViewBaseStyleOptions
- (CPUIGridViewBaseStyleOptions)init;
- (CPUIGridViewBaseStyleOptions)initWithMaximumNumberOfLines:(unint64_t)lines condensedOptions:(id)options imageGridOptions:(id)gridOptions;
@end

@implementation CPUIGridViewBaseStyleOptions

- (CPUIGridViewBaseStyleOptions)initWithMaximumNumberOfLines:(unint64_t)lines condensedOptions:(id)options imageGridOptions:(id)gridOptions
{
  *(&self->super.isa + OBJC_IVAR___CPUIGridViewBaseStyleOptions_maximumNumberOfLines) = lines;
  *(&self->super.isa + OBJC_IVAR___CPUIGridViewBaseStyleOptions_condensedOptions) = options;
  *(&self->super.isa + OBJC_IVAR___CPUIGridViewBaseStyleOptions_imageGridOptions) = gridOptions;
  v9.receiver = self;
  v9.super_class = CPUIGridViewBaseStyleOptions;
  optionsCopy = options;
  gridOptionsCopy = gridOptions;
  return [(CPUIGridViewBaseStyleOptions *)&v9 init];
}

- (CPUIGridViewBaseStyleOptions)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end