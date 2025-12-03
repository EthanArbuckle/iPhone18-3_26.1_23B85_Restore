@interface FigRemoteRoutingContextFactory
- (int)copySidePlayContextWithAllocator:(__CFAllocator *)allocator options:(__CFDictionary *)options context:(OpaqueFigRoutingContext *)context;
- (int)copySystemMirroringContextWithAllocator:(__CFAllocator *)allocator options:(__CFDictionary *)options context:(OpaqueFigRoutingContext *)context;
@end

@implementation FigRemoteRoutingContextFactory

- (int)copySystemMirroringContextWithAllocator:(__CFAllocator *)allocator options:(__CFDictionary *)options context:(OpaqueFigRoutingContext *)context
{
  if (FigRoutingContextIsSystemContextAllowed_onceToken != -1)
  {
    [FigRemoteRoutingContextFactory copySystemMirroringContextWithAllocator:options:context:];
  }

  if (FigRoutingContextIsSystemContextAllowed_isAllowed)
  {

    return FigRoutingContextRemoteCopySystemMirroringContext(allocator, options, context);
  }

  else
  {
    [FigRemoteRoutingContextFactory copySystemMirroringContextWithAllocator:? options:? context:?];
    return v9;
  }
}

- (int)copySidePlayContextWithAllocator:(__CFAllocator *)allocator options:(__CFDictionary *)options context:(OpaqueFigRoutingContext *)context
{
  if (FigRoutingContextIsSystemContextAllowed_onceToken != -1)
  {
    [FigRemoteRoutingContextFactory copySystemMirroringContextWithAllocator:options:context:];
  }

  if (FigRoutingContextIsSystemContextAllowed_isAllowed)
  {

    return FigRoutingContextRemoteCopySidePlayContext(allocator, options, context);
  }

  else
  {
    [FigRemoteRoutingContextFactory copySidePlayContextWithAllocator:? options:? context:?];
    return v9;
  }
}

- (uint64_t)copySystemMirroringContextWithAllocator:(_DWORD *)a1 options:context:.cold.2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)copySidePlayContextWithAllocator:(_DWORD *)a1 options:context:.cold.2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

@end