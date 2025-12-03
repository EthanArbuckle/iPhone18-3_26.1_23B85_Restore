@interface CaptureMTL4CompilerTask
- (BOOL)conformsToProtocol:(id)protocol;
- (CaptureMTL4CompilerTask)initWithBaseObject:(id)object captureContext:(GTTraceContext *)context captureCompiler:(id)compiler;
- (NSString)description;
- (unint64_t)streamReference;
- (void)dealloc;
- (void)touch;
@end

@implementation CaptureMTL4CompilerTask

- (void)dealloc
{
  GTTraceContext_closeStream(self->_traceContext, &self->_traceStream->var0);
  v3.receiver = self;
  v3.super_class = CaptureMTL4CompilerTask;
  [(CaptureMTL4CompilerTask *)&v3 dealloc];
}

- (BOOL)conformsToProtocol:(id)protocol
{
  baseObject = self->_baseObject;
  protocolCopy = protocol;
  v5 = [(MTL4CompilerTask *)baseObject conformsToProtocol:protocolCopy];

  if (&OBJC_PROTOCOL___CaptureMTLObject == protocolCopy)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

- (NSString)description
{
  v7.receiver = self;
  v7.super_class = CaptureMTL4CompilerTask;
  v3 = [(CaptureMTL4CompilerTask *)&v7 description];
  v4 = [(MTL4CompilerTask *)self->_baseObject description];
  v5 = [NSString stringWithFormat:@"%@ -> %@", v3, v4];

  return v5;
}

- (unint64_t)streamReference
{
  traceStream = self->_traceStream;
  if (traceStream)
  {
    return traceStream->var0;
  }

  else
  {
    return 0;
  }
}

- (void)touch
{
  traceStream = self->_traceStream;
  v3 = mach_absolute_time();
  if (traceStream)
  {
    v4 = atomic_load(&traceStream[1].var1);
    v5 = v4;
    do
    {
      atomic_compare_exchange_strong(&traceStream[1].var1, &v5, v4 & 0x3F | v3 & 0xFFFFFFFFFFFFFFC0);
      v6 = v5 == v4;
      v4 = v5;
    }

    while (!v6);
  }
}

- (CaptureMTL4CompilerTask)initWithBaseObject:(id)object captureContext:(GTTraceContext *)context captureCompiler:(id)compiler
{
  objectCopy = object;
  compilerCopy = compiler;
  v15.receiver = self;
  v15.super_class = CaptureMTL4CompilerTask;
  v11 = [(CaptureMTL4CompilerTask *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_baseObject, object);
    objc_storeStrong(&v12->_captureCompiler, compiler);
    v12->_traceContext = context;
    v13 = DEVICEOBJECT(objectCopy);
    v12->_traceStream = GTTraceContext_openStream(context, v13, v12);
  }

  return v12;
}

@end