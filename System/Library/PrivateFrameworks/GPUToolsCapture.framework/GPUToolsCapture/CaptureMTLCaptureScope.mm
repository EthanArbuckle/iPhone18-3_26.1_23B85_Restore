@interface CaptureMTLCaptureScope
- (CaptureMTLCaptureScope)initWithDevice:(id)device commandQueue:(id)queue captureContext:(GTTraceContext *)context;
- (unint64_t)streamReference;
- (void)beginScope;
- (void)dealloc;
- (void)endScope;
- (void)setLabel:(id)label;
@end

@implementation CaptureMTLCaptureScope

- (void)dealloc
{
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  v4 = v15;
  *(v15 + 8) = -16072;
  v5 = BYTE9(v16);
  if (BYTE9(v16) > 0x38uLL)
  {
    v7 = *(*(&v14 + 1) + 24);
    v8 = BYTE10(v16);
    ++BYTE10(v16);
    v6 = GTTraceMemPool_allocateBytes(v7, *(&v15 + 1), v8 | 0x800000000) + 16;
    v5 = v8;
  }

  else
  {
    v6 = (v4 + BYTE9(v16));
    BYTE9(v16) += 8;
  }

  *(v4 + 13) = v5;
  traceStream = [(CaptureMTLCaptureScope *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v6 = var0;
  s();
  *v11 = v12;
  *(v11 + 8) = BYTE8(v16);
  *(v15 + 15) |= 8u;
  GTTraceContext_closeStream(self->_traceContext, &self->_traceStream->var0);
  [GTMTLCaptureScopeInfo removeScope:self];
  v13.receiver = self;
  v13.super_class = CaptureMTLCaptureScope;
  [(CaptureMTLCaptureScope *)&v13 dealloc];
}

- (void)setLabel:(id)label
{
  v3.receiver = self;
  v3.super_class = CaptureMTLCaptureScope;
  [(CaptureMTLCaptureScope *)&v3 setLabel:label];
  +[GTMTLCaptureScopeInfo updateAll];
}

- (void)endScope
{
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v26);
  v4 = v27;
  *(v27 + 8) = -16070;
  v5 = BYTE9(v28);
  if (BYTE9(v28) > 0x38uLL)
  {
    v7 = *(*(&v26 + 1) + 24);
    v8 = BYTE10(v28);
    ++BYTE10(v28);
    v6 = GTTraceMemPool_allocateBytes(v7, *(&v27 + 1), v8 | 0x800000000) + 16;
    v5 = v8;
  }

  else
  {
    v6 = (v4 + BYTE9(v28));
    BYTE9(v28) += 8;
  }

  *(v4 + 13) = v5;
  traceStream = [(CaptureMTLCaptureScope *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v6 = var0;
  s();
  *v11 = v12;
  *(v11 + 8) = BYTE8(v28);
  *(v27 + 15) |= 8u;
  traceStream2 = [(CaptureMTLCaptureScope *)self traceStream];
  if (traceStream2)
  {
    v14 = traceStream2->var0;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(&v27 + 1);
  traceStream3 = [(CaptureMTLCaptureScope *)self traceStream];
  if (traceStream3)
  {
    v17 = traceStream3->var0;
  }

  else
  {
    v17 = 0;
  }

  *&v19 = 0x200000002;
  *(&v19 + 1) = v14;
  v20 = v15;
  v21 = 0;
  v22 = v17;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  GTCaptureBoundaryTracker_handleTrigger(&v19);
  v18.receiver = self;
  v18.super_class = CaptureMTLCaptureScope;
  [(CaptureMTLCaptureScope *)&v18 endScope];
}

- (void)beginScope
{
  v54.receiver = self;
  v54.super_class = CaptureMTLCaptureScope;
  [(CaptureMTLCaptureScope *)&v54 beginScope];
  v52 = 0u;
  v53 = 0u;
  v51 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v51);
  v50.receiver = self;
  v50.super_class = CaptureMTLCaptureScope;
  label = [(CaptureMTLCaptureScope *)&v50 label];

  if (label)
  {
    v5 = v52;
    *(v52 + 15) |= 1u;
    *(v5 + 8) = -16073;
    v6 = BYTE9(v53);
    if (BYTE9(v53) > 0x30uLL)
    {
      v8 = *(*(&v51 + 1) + 24);
      v9 = BYTE10(v53);
      ++BYTE10(v53);
      v7 = GTTraceMemPool_allocateBytes(v8, *(&v52 + 1), v9 | 0x1000000000) + 16;
      v6 = v9;
    }

    else
    {
      v7 = (v5 + BYTE9(v53));
      BYTE9(v53) += 16;
    }

    *(v5 + 13) = v6;
    traceStream = [(CaptureMTLCaptureScope *)self traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    v49.receiver = self;
    v49.super_class = CaptureMTLCaptureScope;
    label2 = [(CaptureMTLCaptureScope *)&v49 label];
    if ([label2 UTF8String])
    {
      v48.receiver = self;
      v48.super_class = CaptureMTLCaptureScope;
      label3 = [(CaptureMTLCaptureScope *)&v48 label];
      uTF8String = [label3 UTF8String];
      v47.receiver = self;
      v47.super_class = CaptureMTLCaptureScope;
      label4 = [(CaptureMTLCaptureScope *)&v47 label];
      v16 = strlen([label4 UTF8String]);
      v17 = GTTraceEncoder_storeBytes(&v51, uTF8String, v16 + 1);
      *v7 = var0;
      v7[8] = v17;
      *(v7 + 9) = 0;
      *(v7 + 3) = 0;
    }

    else
    {
      *v7 = var0;
      *(v7 + 1) = 0;
    }

    s();
    *v18 = v19;
    *(v18 + 8) = BYTE8(v53);
    *(v52 + 15) |= 8u;
    v20 = self->_traceStream;
    GTTraceContext_pushEncoderWithStream(self->_traceContext, &v39);
    v51 = v39;
    v52 = v40;
    v53 = v41;
  }

  v21 = v52;
  *(v52 + 8) = -16071;
  v22 = BYTE9(v53);
  if (BYTE9(v53) > 0x38uLL)
  {
    v24 = *(*(&v51 + 1) + 24);
    v25 = BYTE10(v53);
    ++BYTE10(v53);
    v23 = GTTraceMemPool_allocateBytes(v24, *(&v52 + 1), v25 | 0x800000000) + 16;
    v22 = v25;
  }

  else
  {
    v23 = (v21 + BYTE9(v53));
    BYTE9(v53) += 8;
  }

  *(v21 + 13) = v22;
  traceStream2 = [(CaptureMTLCaptureScope *)self traceStream];
  if (traceStream2)
  {
    v27 = traceStream2->var0;
  }

  else
  {
    v27 = 0;
  }

  *v23 = v27;
  traceStream3 = [(CaptureMTLCaptureScope *)self traceStream];
  if (traceStream3)
  {
    v29 = traceStream3->var0;
  }

  else
  {
    v29 = 0;
  }

  v30 = *(&v52 + 1);
  traceStream4 = [(CaptureMTLCaptureScope *)self traceStream];
  if (traceStream4)
  {
    v32 = traceStream4->var0;
  }

  else
  {
    v32 = 0;
  }

  traceStream5 = [*&self->MTLCaptureScope_opaque[OBJC_IVAR___MTLCaptureScope__device] traceStream];
  if (traceStream5)
  {
    v34 = *traceStream5;
  }

  else
  {
    v34 = 0;
  }

  traceStream6 = [*&self->MTLCaptureScope_opaque[OBJC_IVAR___MTLCaptureScope__commandQueue] traceStream];
  if (traceStream6)
  {
    v36 = *traceStream6;
  }

  else
  {
    v36 = 0;
  }

  *&v39 = 0x100000002;
  *(&v39 + 1) = v29;
  v40 = v30;
  *&v41 = v32;
  *(&v41 + 1) = v34;
  v42 = 0;
  v43 = v36;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  GTCaptureBoundaryTracker_handleTrigger(&v39);
  s();
  *v37 = v38;
  *(v37 + 8) = BYTE8(v53);
  *(v52 + 15) |= 8u;
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

- (CaptureMTLCaptureScope)initWithDevice:(id)device commandQueue:(id)queue captureContext:(GTTraceContext *)context
{
  v10.receiver = self;
  v10.super_class = CaptureMTLCaptureScope;
  v6 = [(CaptureMTLCaptureScope *)&v10 initWithDevice:device commandQueue:queue];
  v7 = v6;
  if (v6)
  {
    v6->_traceContext = context;
    v8 = DEVICEOBJECT(v6);
    v7->_traceStream = GTTraceContext_openStream(context, v8, v7);

    [GTMTLCaptureScopeInfo addScope:v7];
  }

  return v7;
}

@end