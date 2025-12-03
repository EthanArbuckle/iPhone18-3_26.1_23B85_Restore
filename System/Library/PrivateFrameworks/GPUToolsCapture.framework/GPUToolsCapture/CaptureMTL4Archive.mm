@interface CaptureMTL4Archive
- (BOOL)conformsToProtocol:(id)protocol;
- (CaptureMTL4Archive)initWithBaseObject:(id)object captureContext:(GTTraceContext *)context;
- (NSString)description;
- (id)newBinaryFunctionWithDescriptor:(id)descriptor error:(id *)error;
- (unint64_t)streamReference;
- (void)dealloc;
- (void)setLabel:(id)label;
- (void)touch;
@end

@implementation CaptureMTL4Archive

- (id)newBinaryFunctionWithDescriptor:(id)descriptor error:(id *)error
{
  descriptorCopy = descriptor;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTL4Archive_newBinaryFunctionWithDescriptor_error", "Metal 4 Binary Functions", 0, 0);
  v7 = [(MTL4Archive *)self->_baseObject newBinaryFunctionWithDescriptor:descriptorCopy error:error];

  if (v7)
  {
    v8 = [[CaptureMTL4BinaryFunction alloc] initWithBaseObject:v7 captureContext:self->_traceContext];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)dealloc
{
  GTTraceContext_closeStream(self->_traceContext, &self->_traceStream->var0);
  v3.receiver = self;
  v3.super_class = CaptureMTL4Archive;
  [(CaptureMTL4Archive *)&v3 dealloc];
}

- (void)setLabel:(id)label
{
  labelCopy = label;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTL4Archive_setLabel", "Metal 4 Archive", 0, 0);
  [(MTL4Archive *)self->_baseObject setLabel:labelCopy];
}

- (BOOL)conformsToProtocol:(id)protocol
{
  baseObject = self->_baseObject;
  protocolCopy = protocol;
  v5 = [(MTL4Archive *)baseObject conformsToProtocol:protocolCopy];

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
  v7.super_class = CaptureMTL4Archive;
  v3 = [(CaptureMTL4Archive *)&v7 description];
  v4 = [(MTL4Archive *)self->_baseObject description];
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

- (CaptureMTL4Archive)initWithBaseObject:(id)object captureContext:(GTTraceContext *)context
{
  objectCopy = object;
  v12.receiver = self;
  v12.super_class = CaptureMTL4Archive;
  v8 = [(CaptureMTL4Archive *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_baseObject, object);
    v9->_traceContext = context;
    v10 = DEVICEOBJECT(objectCopy);
    v9->_traceStream = GTTraceContext_openStream(context, v10, v9);
  }

  return v9;
}

@end