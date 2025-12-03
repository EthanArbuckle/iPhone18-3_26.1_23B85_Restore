@interface _DYNSKVCMutableCollectionPropertyBinding
- (_DYNSKVCMutableCollectionPropertyBinding)initWithKey:(id)key underlyingIvarName:(id)name;
- (id)underlyingIvarValueForObject:(id)object;
- (void)dealloc;
@end

@implementation _DYNSKVCMutableCollectionPropertyBinding

- (_DYNSKVCMutableCollectionPropertyBinding)initWithKey:(id)key underlyingIvarName:(id)name
{
  v8.receiver = self;
  v8.super_class = _DYNSKVCMutableCollectionPropertyBinding;
  v6 = [(_DYNSKVCMutableCollectionPropertyBinding *)&v8 init];
  if (v6)
  {
    v6->_key = [key copy];
    v6->_underlyingIvarName = [name copy];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _DYNSKVCMutableCollectionPropertyBinding;
  [(_DYNSKVCMutableCollectionPropertyBinding *)&v3 dealloc];
}

- (id)underlyingIvarValueForObject:(id)object
{
  outValue = 0;
  if (object_getInstanceVariable(object, [(NSString *)self->_underlyingIvarName UTF8String], &outValue))
  {
    return outValue;
  }

  else
  {
    return 0;
  }
}

@end