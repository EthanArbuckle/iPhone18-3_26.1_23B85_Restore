@interface CaptureMTLDebugCommandEncoder
- (BOOL)conformsToProtocol:(id)a3;
- (CaptureMTLDebugCommandEncoder)initWithBaseObject:(id)a3 captureCommandBuffer:(id)a4;
- (NSString)description;
- (unint64_t)streamReference;
- (void)dealloc;
- (void)dumpBuffer:(id)a3;
- (void)dumpBuffer:(id)a3 name:(const char *)a4;
- (void)dumpTexture:(id)a3;
- (void)dumpTexture:(id)a3 name:(const char *)a4;
- (void)touch;
@end

@implementation CaptureMTLDebugCommandEncoder

- (void)dumpTexture:(id)a3
{
  baseObject = self->_baseObject;
  v4 = [a3 baseObject];
  [(MTLDebugCommandEncoder *)baseObject dumpTexture:v4];
}

- (void)dumpTexture:(id)a3 name:(const char *)a4
{
  baseObject = self->_baseObject;
  v6 = [a3 baseObject];
  [(MTLDebugCommandEncoder *)baseObject dumpTexture:v6 name:a4];
}

- (void)dumpBuffer:(id)a3
{
  baseObject = self->_baseObject;
  v4 = [a3 baseObject];
  [(MTLDebugCommandEncoder *)baseObject dumpBuffer:v4];
}

- (void)dumpBuffer:(id)a3 name:(const char *)a4
{
  baseObject = self->_baseObject;
  v6 = [a3 baseObject];
  [(MTLDebugCommandEncoder *)baseObject dumpBuffer:v6 name:a4];
}

- (BOOL)conformsToProtocol:(id)a3
{
  baseObject = self->_baseObject;
  v4 = a3;
  v5 = [(MTLDebugCommandEncoder *)baseObject conformsToProtocol:v4];

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
  v7.super_class = CaptureMTLDebugCommandEncoder;
  v3 = [(CaptureMTLDebugCommandEncoder *)&v7 description];
  v4 = [(MTLDebugCommandEncoder *)self->_baseObject description];
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

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_captureCommandBuffer);
  [WeakRetained unionRetainSet:self->_retainedObjects];

  v4.receiver = self;
  v4.super_class = CaptureMTLDebugCommandEncoder;
  [(CaptureMTLDebugCommandEncoder *)&v4 dealloc];
}

- (CaptureMTLDebugCommandEncoder)initWithBaseObject:(id)a3 captureCommandBuffer:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = CaptureMTLDebugCommandEncoder;
  v9 = [(CaptureMTLDebugCommandEncoder *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_baseObject, a3);
    v11 = [v8 device];
    captureDevice = v10->_captureDevice;
    v10->_captureDevice = v11;

    objc_storeWeak(&v10->_captureCommandBuffer, v8);
    v13 = [v8 retainedObjects];
    retainedObjects = v10->_retainedObjects;
    v10->_retainedObjects = v13;

    v15 = v10->_retainedObjects;
    v16 = DEVICEOBJECT(v10->_baseObject);
    [(NSMutableSet *)v15 addObject:v16];
  }

  return v10;
}

@end