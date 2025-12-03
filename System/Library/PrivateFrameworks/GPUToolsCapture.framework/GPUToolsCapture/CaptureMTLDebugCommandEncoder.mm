@interface CaptureMTLDebugCommandEncoder
- (BOOL)conformsToProtocol:(id)protocol;
- (CaptureMTLDebugCommandEncoder)initWithBaseObject:(id)object captureCommandBuffer:(id)buffer;
- (NSString)description;
- (unint64_t)streamReference;
- (void)dealloc;
- (void)dumpBuffer:(id)buffer;
- (void)dumpBuffer:(id)buffer name:(const char *)name;
- (void)dumpTexture:(id)texture;
- (void)dumpTexture:(id)texture name:(const char *)name;
- (void)touch;
@end

@implementation CaptureMTLDebugCommandEncoder

- (void)dumpTexture:(id)texture
{
  baseObject = self->_baseObject;
  baseObject = [texture baseObject];
  [(MTLDebugCommandEncoder *)baseObject dumpTexture:baseObject];
}

- (void)dumpTexture:(id)texture name:(const char *)name
{
  baseObject = self->_baseObject;
  baseObject = [texture baseObject];
  [(MTLDebugCommandEncoder *)baseObject dumpTexture:baseObject name:name];
}

- (void)dumpBuffer:(id)buffer
{
  baseObject = self->_baseObject;
  baseObject = [buffer baseObject];
  [(MTLDebugCommandEncoder *)baseObject dumpBuffer:baseObject];
}

- (void)dumpBuffer:(id)buffer name:(const char *)name
{
  baseObject = self->_baseObject;
  baseObject = [buffer baseObject];
  [(MTLDebugCommandEncoder *)baseObject dumpBuffer:baseObject name:name];
}

- (BOOL)conformsToProtocol:(id)protocol
{
  baseObject = self->_baseObject;
  protocolCopy = protocol;
  v5 = [(MTLDebugCommandEncoder *)baseObject conformsToProtocol:protocolCopy];

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

- (CaptureMTLDebugCommandEncoder)initWithBaseObject:(id)object captureCommandBuffer:(id)buffer
{
  objectCopy = object;
  bufferCopy = buffer;
  v18.receiver = self;
  v18.super_class = CaptureMTLDebugCommandEncoder;
  v9 = [(CaptureMTLDebugCommandEncoder *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_baseObject, object);
    device = [bufferCopy device];
    captureDevice = v10->_captureDevice;
    v10->_captureDevice = device;

    objc_storeWeak(&v10->_captureCommandBuffer, bufferCopy);
    retainedObjects = [bufferCopy retainedObjects];
    retainedObjects = v10->_retainedObjects;
    v10->_retainedObjects = retainedObjects;

    v15 = v10->_retainedObjects;
    v16 = DEVICEOBJECT(v10->_baseObject);
    [(NSMutableSet *)v15 addObject:v16];
  }

  return v10;
}

@end