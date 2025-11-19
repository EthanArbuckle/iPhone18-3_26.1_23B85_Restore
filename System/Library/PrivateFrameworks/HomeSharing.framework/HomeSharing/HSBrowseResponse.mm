@interface HSBrowseResponse
- (void)dealloc;
@end

@implementation HSBrowseResponse

- (void)dealloc
{
  [(HSBrowseResponse *)self setCollections:0];
  v3.receiver = self;
  v3.super_class = HSBrowseResponse;
  [(HSBrowseResponse *)&v3 dealloc];
}

@end