@interface _CUTStaticPromise
- (_CUTStaticPromise)initWithResult:(id)a3 safe:(BOOL)a4;
- (id)then:(id)a3;
@end

@implementation _CUTStaticPromise

- (_CUTStaticPromise)initWithResult:(id)a3 safe:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = _CUTStaticPromise;
  v8 = [(CUTUnsafePromise *)&v11 _init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 1, a3);
    v9->_safe = a4;
  }

  return v9;
}

- (id)then:(id)a3
{
  if (self->_safe)
  {
    sub_1B232DF68(self, a3);
  }

  else
  {
    sub_1B232DCA8(self, a3);
  }
  v3 = ;

  return v3;
}

@end