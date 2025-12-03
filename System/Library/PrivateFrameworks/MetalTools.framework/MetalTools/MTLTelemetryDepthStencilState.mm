@interface MTLTelemetryDepthStencilState
- (MTLTelemetryDepthStencilState)initWithBaseDepthStencilState:(id)state device:(id)device descriptor:(id)descriptor;
@end

@implementation MTLTelemetryDepthStencilState

- (MTLTelemetryDepthStencilState)initWithBaseDepthStencilState:(id)state device:(id)device descriptor:(id)descriptor
{
  v25.receiver = self;
  v25.super_class = MTLTelemetryDepthStencilState;
  v7 = [(MTLToolsObject *)&v25 initWithBaseObject:state parent:?];
  if (v7 && [device enableTelemetry])
  {
    v8 = *(device + 55);
    depthCompareFunction = [descriptor depthCompareFunction];
    ++*(v8 + 4 * depthCompareFunction + 4);
    ++**(device + 55);
    if ([descriptor frontFaceStencil])
    {
      v10 = [objc_msgSend(descriptor "frontFaceStencil")];
      v11 = [objc_msgSend(descriptor "frontFaceStencil")];
      v12 = [objc_msgSend(descriptor "frontFaceStencil")];
      v13 = [objc_msgSend(descriptor "frontFaceStencil")];
      v14 = 32 * v10;
      ++*(*(device + 56) + v14 + 4 * v11);
      v15 = *(device + 56) + v14 + 4 * v12;
      ++*(v15 + 256);
      v16 = *(device + 56) + v14 + 4 * v13;
      ++*(v16 + 512);
    }

    if ([descriptor backFaceStencil])
    {
      v17 = [objc_msgSend(descriptor "backFaceStencil")];
      v18 = [objc_msgSend(descriptor "backFaceStencil")];
      v19 = [objc_msgSend(descriptor "backFaceStencil")];
      v20 = [objc_msgSend(descriptor "backFaceStencil")];
      v21 = 32 * v17;
      ++*(*(device + 57) + v21 + 4 * v18);
      v22 = *(device + 57) + v21 + 4 * v19;
      ++*(v22 + 256);
      v23 = *(device + 57) + v21 + 4 * v20;
      ++*(v23 + 512);
    }
  }

  return v7;
}

@end