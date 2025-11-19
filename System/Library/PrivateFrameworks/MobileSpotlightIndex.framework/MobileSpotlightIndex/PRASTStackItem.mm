@interface PRASTStackItem
- (void)dealloc;
@end

@implementation PRASTStackItem

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PRASTStackItem;
  [(PRASTStackItem *)&v2 dealloc];
}

@end