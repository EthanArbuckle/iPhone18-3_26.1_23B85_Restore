@interface MTLDebugDynamicLibrary
- (BOOL)serializeToURL:(id)l error:(id *)error;
- (BOOL)serializeToURL:(id)l options:(unint64_t)options error:(id *)error;
@end

@implementation MTLDebugDynamicLibrary

- (BOOL)serializeToURL:(id)l error:(id *)error
{
  if (!l)
  {
    [MTLDebugDynamicLibrary serializeToURL:error:];
  }

  if (([l isFileURL] & 1) == 0)
  {
    [MTLDebugDynamicLibrary serializeToURL:error:];
  }

  v8.receiver = self;
  v8.super_class = MTLDebugDynamicLibrary;
  return [(MTLToolsDynamicLibrary *)&v8 serializeToURL:l error:error];
}

- (BOOL)serializeToURL:(id)l options:(unint64_t)options error:(id *)error
{
  if (!l)
  {
    [MTLDebugDynamicLibrary serializeToURL:options:error:];
  }

  if (([l isFileURL] & 1) == 0)
  {
    [MTLDebugDynamicLibrary serializeToURL:options:error:];
  }

  v10.receiver = self;
  v10.super_class = MTLDebugDynamicLibrary;
  return [(MTLToolsDynamicLibrary *)&v10 serializeToURL:l options:options error:error];
}

@end