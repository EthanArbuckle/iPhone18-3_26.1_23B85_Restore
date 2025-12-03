@interface _CUIPSDSublayerInfo
+ (id)newWithSublayerCount:(unsigned int)count indexSet:(id)set;
- (unsigned)sublayerAtIndex:(unsigned int)index isValid:(BOOL *)valid;
@end

@implementation _CUIPSDSublayerInfo

+ (id)newWithSublayerCount:(unsigned int)count indexSet:(id)set
{
  v6 = objc_opt_self();
  v7 = NSAllocateObject(v6, 4 * count, 0);
  v8 = v7;
  if (v7)
  {
    v7[2] = count;
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x2020000000;
    v11[3] = 0;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = __53___CUIPSDSublayerInfo_newWithSublayerCount_indexSet___block_invoke;
    v10[3] = &unk_1E724A570;
    v10[4] = v11;
    v10[5] = object_getIndexedIvars(v7);
    [set enumerateIndexesUsingBlock:v10];
    _Block_object_dispose(v11, 8);
  }

  return v8;
}

- (unsigned)sublayerAtIndex:(unsigned int)index isValid:(BOOL *)valid
{
  if (self->_numOfSublayers <= index)
  {
    result = 0;
    if (valid)
    {
      *valid = 0;
    }
  }

  else
  {
    if (valid)
    {
      *valid = 1;
    }

    return *(object_getIndexedIvars(self) + index);
  }

  return result;
}

@end