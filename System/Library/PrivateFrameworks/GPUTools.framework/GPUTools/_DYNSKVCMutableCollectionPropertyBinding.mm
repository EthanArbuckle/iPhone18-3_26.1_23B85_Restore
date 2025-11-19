@interface _DYNSKVCMutableCollectionPropertyBinding
- (_DYNSKVCMutableCollectionPropertyBinding)initWithKey:(id)a3 underlyingIvarName:(id)a4;
- (id)underlyingIvarValueForObject:(id)a3;
- (void)dealloc;
@end

@implementation _DYNSKVCMutableCollectionPropertyBinding

- (_DYNSKVCMutableCollectionPropertyBinding)initWithKey:(id)a3 underlyingIvarName:(id)a4
{
  v8.receiver = self;
  v8.super_class = _DYNSKVCMutableCollectionPropertyBinding;
  v6 = [(_DYNSKVCMutableCollectionPropertyBinding *)&v8 init];
  if (v6)
  {
    v6->_key = [a3 copy];
    v6->_underlyingIvarName = [a4 copy];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _DYNSKVCMutableCollectionPropertyBinding;
  [(_DYNSKVCMutableCollectionPropertyBinding *)&v3 dealloc];
}

- (id)underlyingIvarValueForObject:(id)a3
{
  outValue = 0;
  if (object_getInstanceVariable(a3, [(NSString *)self->_underlyingIvarName UTF8String], &outValue))
  {
    return outValue;
  }

  else
  {
    return 0;
  }
}

@end