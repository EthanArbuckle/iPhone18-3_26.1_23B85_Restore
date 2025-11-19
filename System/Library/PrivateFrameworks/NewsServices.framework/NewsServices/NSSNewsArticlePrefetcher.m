@interface NSSNewsArticlePrefetcher
- (NSSNewsArticlePrefetcher)init;
@end

@implementation NSSNewsArticlePrefetcher

- (NSSNewsArticlePrefetcher)init
{
  v3.receiver = self;
  v3.super_class = NSSNewsArticlePrefetcher;
  return [(NSSNewsArticlePrefetcher *)&v3 init];
}

@end