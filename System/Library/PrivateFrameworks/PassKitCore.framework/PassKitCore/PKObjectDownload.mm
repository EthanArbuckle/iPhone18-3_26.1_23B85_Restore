@interface PKObjectDownload
- (PKObjectDownload)init;
@end

@implementation PKObjectDownload

- (PKObjectDownload)init
{
  v6.receiver = self;
  v6.super_class = PKObjectDownload;
  v2 = [(PKObjectDownload *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    completionHandlers = v2->_completionHandlers;
    v2->_completionHandlers = v3;
  }

  return v2;
}

@end