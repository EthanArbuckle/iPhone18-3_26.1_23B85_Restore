@interface MTLToolsVisibleFunctionTable
- (MTLResourceID)gpuResourceID;
- (unint64_t)bufferAddressAtIndex:(unint64_t)a3;
- (unint64_t)gpuAddress;
- (unint64_t)gpuHandle;
- (unint64_t)resourceIndex;
- (unint64_t)uniqueIdentifier;
- (void)setBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5;
- (void)setFunction:(id)a3 atIndex:(unint64_t)a4;
- (void)setFunctions:(const void *)a3 withRange:(_NSRange)a4;
- (void)setValue:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setValue:(unint64_t)a3 withRange:(_NSRange)a4;
- (void)setVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
@end

@implementation MTLToolsVisibleFunctionTable

- (unint64_t)resourceIndex
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 resourceIndex];
}

- (unint64_t)uniqueIdentifier
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 uniqueIdentifier];
}

- (unint64_t)gpuHandle
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 gpuHandle];
}

- (MTLResourceID)gpuResourceID
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 gpuResourceID];
}

- (unint64_t)gpuAddress
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 gpuAddress];
}

- (void)setFunction:(id)a3 atIndex:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];
  v7 = [a3 baseObject];

  [v6 setFunction:v7 atIndex:a4];
}

- (void)setFunctions:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  std::vector<objc_object  {objcproto17MTLFunctionHandle}*>::vector[abi:ne200100](__p, a4.length);
  if (length)
  {
    for (i = 0; i != length; ++i)
    {
      v9 = [a3[i] baseObject];
      *(__p[0] + i) = v9;
    }
  }

  v10 = [(MTLToolsObject *)self baseObject];
  [v10 setFunctions:__p[0] withRange:{location, length}];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)setBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v8 = [(MTLToolsObject *)self baseObject];
  v9 = [a3 baseObject];

  [v8 setBuffer:v9 offset:a4 atIndex:a5];
}

- (void)setBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  std::vector<objc_object  {objcproto9MTLBuffer}*>::vector[abi:ne200100](__p, a5.length);
  if (length)
  {
    for (i = 0; i != length; ++i)
    {
      v11 = [a3[i] baseObject];
      *(__p[0] + i) = v11;
    }
  }

  v12 = [(MTLToolsObject *)self baseObject];
  [v12 setBuffers:__p[0] offsets:a4 withRange:{location, length}];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)setValue:(unint64_t)a3 atIndex:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  [v6 setValue:a3 atIndex:a4];
}

- (void)setValue:(unint64_t)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = [(MTLToolsObject *)self baseObject];

  [v7 setValue:a3 withRange:{location, length}];
}

- (void)setVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];
  v7 = [a3 baseObject];

  [v6 setVisibleFunctionTable:v7 atBufferIndex:a4];
}

- (void)setVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  std::vector<objc_object  {objcproto23MTLVisibleFunctionTable}*>::vector[abi:ne200100](__p, a4.length);
  if (length)
  {
    for (i = 0; i != length; ++i)
    {
      v9 = [a3[i] baseObject];
      *(__p[0] + i) = v9;
    }
  }

  v10 = [(MTLToolsObject *)self baseObject];
  [v10 setVisibleFunctionTables:__p[0] withBufferRange:{location, length}];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (unint64_t)bufferAddressAtIndex:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 bufferAddressAtIndex:a3];
}

@end