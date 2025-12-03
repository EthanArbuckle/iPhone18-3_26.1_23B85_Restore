@interface RemoteInjectionAgent
- (RemoteInjectionAgent)initWithTask:(unsigned int)task;
- (id)injectLibrary:(id)library withFunctionPayload:(id)payload sandboxExtensions:(id)extensions callingFunction:(id)function arguments:(id)arguments;
- (void)dealloc;
@end

@implementation RemoteInjectionAgent

- (RemoteInjectionAgent)initWithTask:(unsigned int)task
{
  v5.receiver = self;
  v5.super_class = RemoteInjectionAgent;
  result = [(RemoteInjectionAgent *)&v5 init];
  if (result)
  {
    result->_targetTask = task;
  }

  return result;
}

- (void)dealloc
{
  targetTask = self->_targetTask;
  if (targetTask + 1 >= 2)
  {
    mach_port_deallocate(mach_task_self_, targetTask);
    self->_targetTask = 0;
  }

  v4.receiver = self;
  v4.super_class = RemoteInjectionAgent;
  [(RemoteInjectionAgent *)&v4 dealloc];
}

- (id)injectLibrary:(id)library withFunctionPayload:(id)payload sandboxExtensions:(id)extensions callingFunction:(id)function arguments:(id)arguments
{
  libraryCopy = library;
  payloadCopy = payload;
  extensionsCopy = extensions;
  functionCopy = function;
  argumentsCopy = arguments;
  if (self->_targetTask + 1 <= 1)
  {
    v29 = __stderrp;
    v30 = getprogname();
    v31 = [NSString stringWithFormat:@"Failed to get task for pid."];
    fprintf(v29, "%s (%d-bit): %s\n", v30, 64, [v31 UTF8String]);

    exit(4);
  }

  v16 = argumentsCopy;
  bytes = [payloadCopy bytes];
  v17 = objc_opt_new();
  v18 = v17;
  if (extensionsCopy)
  {
    [v17 addObjectsFromArray:extensionsCopy];
  }

  v35 = payloadCopy;
  if (v16)
  {
    [v18 addObjectsFromArray:v16];
  }

  v33 = v16;
  v19 = [v18 count];
  v20 = v19;
  v21 = malloc_type_malloc(8 * v19, 0x10040436913F5uLL);
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100001218;
  v39[3] = &unk_100008320;
  v39[4] = v21;
  [v18 enumerateObjectsUsingBlock:v39];
  v22 = objc_opt_new();
  targetTask = self->_targetTask;
  uTF8String = [libraryCopy UTF8String];
  v34 = functionCopy;
  uTF8String2 = [functionCopy UTF8String];
  v26 = [extensionsCopy count];
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_100001260;
  v37[3] = &unk_100008348;
  v27 = v22;
  v38 = v27;
  LOBYTE(targetTask) = sub_100001A00(targetTask, bytes, uTF8String, uTF8String2, v20, v21, v26, v37);
  free(v21);
  if ((targetTask & 1) == 0)
  {
    [v27 invokeCompletionWithReturnValue:&__kCFBooleanFalse error:0];
  }

  return v27;
}

@end