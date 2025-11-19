@interface __IOGCFastPathSimpleReader
- (void)dealloc;
@end

@implementation __IOGCFastPathSimpleReader

- (void)dealloc
{
  self->super.readerInterface = 0;
  v2.receiver = self;
  v2.super_class = __IOGCFastPathSimpleReader;
  [(__IOGCFastPathReader *)&v2 dealloc];
}

@end