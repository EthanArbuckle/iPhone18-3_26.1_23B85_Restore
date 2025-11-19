@interface GDVUContext
- (void)setSource:(int64_t)a3;
@end

@implementation GDVUContext

- (void)setSource:(int64_t)a3
{
  v4 = self;
  GDVUContext.source.setter(a3);
}

@end