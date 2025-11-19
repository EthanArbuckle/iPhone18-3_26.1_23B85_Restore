@interface CaptureMTL4Archive
- (BOOL)conformsToProtocol:(id)a3;
- (CaptureMTL4Archive)initWithBaseObject:(id)a3 captureContext:(GTTraceContext *)a4;
- (NSString)description;
- (id)newBinaryFunctionWithDescriptor:(id)a3 error:(id *)a4;
- (unint64_t)streamReference;
- (void)dealloc;
- (void)setLabel:(id)a3;
- (void)touch;
@end

@implementation CaptureMTL4Archive

- (id)newBinaryFunctionWithDescriptor:(id)a3 error:(id *)a4
{
  v6 = a3;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTL4Archive_newBinaryFunctionWithDescriptor_error", "Metal 4 Binary Functions", 0, 0);
  v7 = [(MTL4Archive *)self->_baseObject newBinaryFunctionWithDescriptor:v6 error:a4];

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

- (void)setLabel:(id)a3
{
  v4 = a3;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTL4Archive_setLabel", "Metal 4 Archive", 0, 0);
  [(MTL4Archive *)self->_baseObject setLabel:v4];
}

- (BOOL)conformsToProtocol:(id)a3
{
  baseObject = self->_baseObject;
  v4 = a3;
  v5 = [(MTL4Archive *)baseObject conformsToProtocol:v4];

  if (&OBJC_PROTOCOL___CaptureMTLObject == v4)
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

- (CaptureMTL4Archive)initWithBaseObject:(id)a3 captureContext:(GTTraceContext *)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = CaptureMTL4Archive;
  v8 = [(CaptureMTL4Archive *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_baseObject, a3);
    v9->_traceContext = a4;
    v10 = DEVICEOBJECT(v7);
    v9->_traceStream = GTTraceContext_openStream(a4, v10, v9);
  }

  return v9;
}

@end