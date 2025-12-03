@interface CADFilter
- (CADFilter)initWithCoder:(id)coder;
@end

@implementation CADFilter

- (CADFilter)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = CADFilter;
  return [(CADFilter *)&v4 init];
}

@end