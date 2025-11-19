@interface MTLTelemetryDepthStencilState
- (MTLTelemetryDepthStencilState)initWithBaseDepthStencilState:(id)a3 device:(id)a4 descriptor:(id)a5;
@end

@implementation MTLTelemetryDepthStencilState

- (MTLTelemetryDepthStencilState)initWithBaseDepthStencilState:(id)a3 device:(id)a4 descriptor:(id)a5
{
  v25.receiver = self;
  v25.super_class = MTLTelemetryDepthStencilState;
  v7 = [(MTLToolsObject *)&v25 initWithBaseObject:a3 parent:?];
  if (v7 && [a4 enableTelemetry])
  {
    v8 = *(a4 + 55);
    v9 = [a5 depthCompareFunction];
    ++*(v8 + 4 * v9 + 4);
    ++**(a4 + 55);
    if ([a5 frontFaceStencil])
    {
      v10 = [objc_msgSend(a5 "frontFaceStencil")];
      v11 = [objc_msgSend(a5 "frontFaceStencil")];
      v12 = [objc_msgSend(a5 "frontFaceStencil")];
      v13 = [objc_msgSend(a5 "frontFaceStencil")];
      v14 = 32 * v10;
      ++*(*(a4 + 56) + v14 + 4 * v11);
      v15 = *(a4 + 56) + v14 + 4 * v12;
      ++*(v15 + 256);
      v16 = *(a4 + 56) + v14 + 4 * v13;
      ++*(v16 + 512);
    }

    if ([a5 backFaceStencil])
    {
      v17 = [objc_msgSend(a5 "backFaceStencil")];
      v18 = [objc_msgSend(a5 "backFaceStencil")];
      v19 = [objc_msgSend(a5 "backFaceStencil")];
      v20 = [objc_msgSend(a5 "backFaceStencil")];
      v21 = 32 * v17;
      ++*(*(a4 + 57) + v21 + 4 * v18);
      v22 = *(a4 + 57) + v21 + 4 * v19;
      ++*(v22 + 256);
      v23 = *(a4 + 57) + v21 + 4 * v20;
      ++*(v23 + 512);
    }
  }

  return v7;
}

@end