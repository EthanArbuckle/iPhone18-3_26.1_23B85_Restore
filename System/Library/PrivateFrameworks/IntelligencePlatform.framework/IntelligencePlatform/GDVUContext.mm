@interface GDVUContext
- (void)setSource:(int64_t)source;
@end

@implementation GDVUContext

- (void)setSource:(int64_t)source
{
  selfCopy = self;
  GDVUContext.source.setter(source);
}

@end