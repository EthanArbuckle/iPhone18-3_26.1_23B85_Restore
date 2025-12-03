@interface MTLToolsIntersectionFunctionTable
- (MTLResourceID)gpuResourceID;
- (unint64_t)bufferAddressAtIndex:(unint64_t)index;
- (unint64_t)globalBufferOffset;
- (unint64_t)gpuHandle;
- (unint64_t)resourceIndex;
- (unint64_t)uniqueIdentifier;
- (void)dealloc;
- (void)setBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range;
- (void)setFunction:(id)function atIndex:(unint64_t)index;
- (void)setFunctions:(const void *)functions withRange:(_NSRange)range;
- (void)setGlobalBuffer:(id)buffer;
- (void)setGlobalBufferOffset:(unint64_t)offset;
- (void)setOpaqueCurveIntersectionFunctionWithSignature:(unint64_t)signature atIndex:(unint64_t)index;
- (void)setOpaqueCurveIntersectionFunctionWithSignature:(unint64_t)signature withRange:(_NSRange)range;
- (void)setOpaqueTriangleIntersectionFunctionWithSignature:(unint64_t)signature atIndex:(unint64_t)index;
- (void)setOpaqueTriangleIntersectionFunctionWithSignature:(unint64_t)signature withRange:(_NSRange)range;
- (void)setVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
@end

@implementation MTLToolsIntersectionFunctionTable

- (unint64_t)resourceIndex
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject resourceIndex];
}

- (unint64_t)uniqueIdentifier
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject uniqueIdentifier];
}

- (unint64_t)gpuHandle
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject gpuHandle];
}

- (MTLResourceID)gpuResourceID
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject gpuResourceID];
}

- (void)setGlobalBuffer:(id)buffer
{
  self->_globalBuffer = buffer;
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];

  [baseObject setGlobalBuffer:baseObject2];
}

- (unint64_t)globalBufferOffset
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject globalBufferOffset];
}

- (void)setGlobalBufferOffset:(unint64_t)offset
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setGlobalBufferOffset:offset];
}

- (void)setBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];

  [baseObject setBuffer:baseObject2 offset:offset atIndex:index];
}

- (void)setBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  std::vector<objc_object  {objcproto9MTLBuffer}*>::vector[abi:ne200100](__p, range.length);
  if (length)
  {
    for (i = 0; i != length; ++i)
    {
      baseObject = [buffers[i] baseObject];
      *(__p[0] + i) = baseObject;
    }
  }

  baseObject2 = [(MTLToolsObject *)self baseObject];
  [baseObject2 setBuffers:__p[0] offsets:offsets withRange:{location, length}];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)setFunction:(id)function atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [function baseObject];

  [baseObject setFunction:baseObject2 atIndex:index];
}

- (void)setFunctions:(const void *)functions withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  std::vector<objc_object  {objcproto17MTLFunctionHandle}*>::vector[abi:ne200100](__p, range.length);
  if (length)
  {
    for (i = 0; i != length; ++i)
    {
      baseObject = [functions[i] baseObject];
      *(__p[0] + i) = baseObject;
    }
  }

  baseObject2 = [(MTLToolsObject *)self baseObject];
  [baseObject2 setFunctions:__p[0] withRange:{location, length}];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)setOpaqueTriangleIntersectionFunctionWithSignature:(unint64_t)signature atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setOpaqueTriangleIntersectionFunctionWithSignature:signature atIndex:index];
}

- (void)setOpaqueTriangleIntersectionFunctionWithSignature:(unint64_t)signature withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setOpaqueTriangleIntersectionFunctionWithSignature:signature withRange:{location, length}];
}

- (void)setOpaqueCurveIntersectionFunctionWithSignature:(unint64_t)signature atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setOpaqueCurveIntersectionFunctionWithSignature:signature atIndex:index];
}

- (void)setOpaqueCurveIntersectionFunctionWithSignature:(unint64_t)signature withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setOpaqueCurveIntersectionFunctionWithSignature:signature withRange:{location, length}];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLToolsIntersectionFunctionTable;
  [(MTLToolsResource *)&v3 dealloc];
}

- (void)setVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [table baseObject];

  [baseObject setVisibleFunctionTable:baseObject2 atBufferIndex:index];
}

- (void)setVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  std::vector<objc_object  {objcproto23MTLVisibleFunctionTable}*>::vector[abi:ne200100](__p, range.length);
  if (length)
  {
    for (i = 0; i != length; ++i)
    {
      baseObject = [tables[i] baseObject];
      *(__p[0] + i) = baseObject;
    }
  }

  baseObject2 = [(MTLToolsObject *)self baseObject];
  [baseObject2 setVisibleFunctionTables:__p[0] withBufferRange:{location, length}];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (unint64_t)bufferAddressAtIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject bufferAddressAtIndex:index];
}

@end