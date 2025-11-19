@interface FigRemoteRoutingContextFactory
- (int)copySidePlayContextWithAllocator:(__CFAllocator *)a3 options:(__CFDictionary *)a4 context:(OpaqueFigRoutingContext *)a5;
- (int)copySystemMirroringContextWithAllocator:(__CFAllocator *)a3 options:(__CFDictionary *)a4 context:(OpaqueFigRoutingContext *)a5;
@end

@implementation FigRemoteRoutingContextFactory

- (int)copySystemMirroringContextWithAllocator:(__CFAllocator *)a3 options:(__CFDictionary *)a4 context:(OpaqueFigRoutingContext *)a5
{
  if (FigRoutingContextIsSystemContextAllowed_onceToken != -1)
  {
    [FigRemoteRoutingContextFactory copySystemMirroringContextWithAllocator:options:context:];
  }

  if (FigRoutingContextIsSystemContextAllowed_isAllowed)
  {

    return FigRoutingContextRemoteCopySystemMirroringContext(a3, a4, a5);
  }

  else
  {
    [FigRemoteRoutingContextFactory copySystemMirroringContextWithAllocator:? options:? context:?];
    return v9;
  }
}

- (int)copySidePlayContextWithAllocator:(__CFAllocator *)a3 options:(__CFDictionary *)a4 context:(OpaqueFigRoutingContext *)a5
{
  if (FigRoutingContextIsSystemContextAllowed_onceToken != -1)
  {
    [FigRemoteRoutingContextFactory copySystemMirroringContextWithAllocator:options:context:];
  }

  if (FigRoutingContextIsSystemContextAllowed_isAllowed)
  {

    return FigRoutingContextRemoteCopySidePlayContext(a3, a4, a5);
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