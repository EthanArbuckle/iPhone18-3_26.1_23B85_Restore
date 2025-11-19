@interface MTLDebugDynamicLibrary
- (BOOL)serializeToURL:(id)a3 error:(id *)a4;
- (BOOL)serializeToURL:(id)a3 options:(unint64_t)a4 error:(id *)a5;
@end

@implementation MTLDebugDynamicLibrary

- (BOOL)serializeToURL:(id)a3 error:(id *)a4
{
  if (!a3)
  {
    [MTLDebugDynamicLibrary serializeToURL:error:];
  }

  if (([a3 isFileURL] & 1) == 0)
  {
    [MTLDebugDynamicLibrary serializeToURL:error:];
  }

  v8.receiver = self;
  v8.super_class = MTLDebugDynamicLibrary;
  return [(MTLToolsDynamicLibrary *)&v8 serializeToURL:a3 error:a4];
}

- (BOOL)serializeToURL:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  if (!a3)
  {
    [MTLDebugDynamicLibrary serializeToURL:options:error:];
  }

  if (([a3 isFileURL] & 1) == 0)
  {
    [MTLDebugDynamicLibrary serializeToURL:options:error:];
  }

  v10.receiver = self;
  v10.super_class = MTLDebugDynamicLibrary;
  return [(MTLToolsDynamicLibrary *)&v10 serializeToURL:a3 options:a4 error:a5];
}

@end