@interface FMAttributedStringRendererOptions
- (FMAttributedStringRendererOptions)initWithLineBreakMode:(int64_t)a3 lineFragmentPadding:(double)a4 maximumNumberOfLines:(unint64_t)a5 hyphenationFactor:(double)a6 exclusionPaths:(id)a7;
@end

@implementation FMAttributedStringRendererOptions

- (FMAttributedStringRendererOptions)initWithLineBreakMode:(int64_t)a3 lineFragmentPadding:(double)a4 maximumNumberOfLines:(unint64_t)a5 hyphenationFactor:(double)a6 exclusionPaths:(id)a7
{
  v12 = a7;
  v18.receiver = self;
  v18.super_class = FMAttributedStringRendererOptions;
  v13 = [(FMAttributedStringRendererOptions *)&v18 init];
  v14 = v13;
  if (v13)
  {
    v13->_lineBreakMode = a3;
    v13->_lineFragmentPadding = a4;
    v13->_maximumNumberOfLines = a5;
    v13->_hyphenationFactor = a6;
    v15 = [v12 copy];
    exclusionPaths = v14->_exclusionPaths;
    v14->_exclusionPaths = v15;
  }

  return v14;
}

@end