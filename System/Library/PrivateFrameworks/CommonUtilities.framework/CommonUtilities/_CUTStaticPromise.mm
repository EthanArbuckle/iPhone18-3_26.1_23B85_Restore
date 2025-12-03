@interface _CUTStaticPromise
- (_CUTStaticPromise)initWithResult:(id)result safe:(BOOL)safe;
- (id)then:(id)then;
@end

@implementation _CUTStaticPromise

- (_CUTStaticPromise)initWithResult:(id)result safe:(BOOL)safe
{
  resultCopy = result;
  v11.receiver = self;
  v11.super_class = _CUTStaticPromise;
  _init = [(CUTUnsafePromise *)&v11 _init];
  v9 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 1, result);
    v9->_safe = safe;
  }

  return v9;
}

- (id)then:(id)then
{
  if (self->_safe)
  {
    sub_1B232DF68(self, then);
  }

  else
  {
    sub_1B232DCA8(self, then);
  }
  v3 = ;

  return v3;
}

@end