@interface FMAttributedStringRendererOptions
- (FMAttributedStringRendererOptions)initWithLineBreakMode:(int64_t)mode lineFragmentPadding:(double)padding maximumNumberOfLines:(unint64_t)lines hyphenationFactor:(double)factor exclusionPaths:(id)paths;
@end

@implementation FMAttributedStringRendererOptions

- (FMAttributedStringRendererOptions)initWithLineBreakMode:(int64_t)mode lineFragmentPadding:(double)padding maximumNumberOfLines:(unint64_t)lines hyphenationFactor:(double)factor exclusionPaths:(id)paths
{
  pathsCopy = paths;
  v18.receiver = self;
  v18.super_class = FMAttributedStringRendererOptions;
  v13 = [(FMAttributedStringRendererOptions *)&v18 init];
  v14 = v13;
  if (v13)
  {
    v13->_lineBreakMode = mode;
    v13->_lineFragmentPadding = padding;
    v13->_maximumNumberOfLines = lines;
    v13->_hyphenationFactor = factor;
    v15 = [pathsCopy copy];
    exclusionPaths = v14->_exclusionPaths;
    v14->_exclusionPaths = v15;
  }

  return v14;
}

@end