@interface MTLDebugDepthStencilState
- (MTLDebugDepthStencilState)initWithDepthStencilState:(id)state descriptor:(id)descriptor device:(id)device;
- (id)formattedDescription:(unint64_t)description;
- (void)dealloc;
@end

@implementation MTLDebugDepthStencilState

- (MTLDebugDepthStencilState)initWithDepthStencilState:(id)state descriptor:(id)descriptor device:(id)device
{
  v28.receiver = self;
  v28.super_class = MTLDebugDepthStencilState;
  v6 = [(MTLToolsDepthStencilState *)&v28 initWithDepthStencilState:state descriptor:descriptor device:device];
  if (v6)
  {
    v7 = [descriptor copy];
    *(v6 + 5) = v7;
    depthCompareFunction = [v7 depthCompareFunction];
    depthCompareFunction2 = [*(v6 + 5) depthCompareFunction];
    isDepthWriteEnabled = [*(v6 + 5) isDepthWriteEnabled];
    if (depthCompareFunction)
    {
      v11 = isDepthWriteEnabled;
    }

    else
    {
      v11 = 0;
    }

    *(v6 + 36) |= v11;
    backFaceStencil = [*(v6 + 5) backFaceStencil];
    stencilCompareFunction = [backFaceStencil stencilCompareFunction];
    stencilCompareFunction2 = [backFaceStencil stencilCompareFunction];
    if (![backFaceStencil writeMask])
    {
      goto LABEL_24;
    }

    if (stencilCompareFunction == 7)
    {
      if (!stencilCompareFunction2)
      {
LABEL_24:
        LOBYTE(v16) = 0;
        goto LABEL_25;
      }
    }

    else
    {
      stencilFailureOperation = [backFaceStencil stencilFailureOperation];
      v16 = stencilFailureOperation != 0;
      if (stencilFailureOperation)
      {
        v17 = 1;
      }

      else
      {
        v17 = stencilCompareFunction2 == 0;
      }

      if (v17)
      {
        goto LABEL_19;
      }
    }

    if (!depthCompareFunction || ((v18 = [backFaceStencil depthStencilPassOperation], v16 = v18 != 0, !v18) ? (v19 = stencilCompareFunction2 == 0) : (v19 = 1), !v19))
    {
      if (depthCompareFunction2 == 7 || ![backFaceStencil depthFailureOperation])
      {
        goto LABEL_24;
      }

LABEL_23:
      LOBYTE(v16) = 2;
      goto LABEL_25;
    }

LABEL_19:
    if (!v16)
    {
LABEL_25:
      *(v6 + 36) |= v16;
      frontFaceStencil = [*(v6 + 5) frontFaceStencil];
      stencilCompareFunction3 = [frontFaceStencil stencilCompareFunction];
      stencilCompareFunction4 = [frontFaceStencil stencilCompareFunction];
      if (![frontFaceStencil writeMask])
      {
LABEL_38:
        LOBYTE(v24) = 0;
LABEL_41:
        *(v6 + 36) |= v24;
        return v6;
      }

      if (stencilCompareFunction3 == 7)
      {
        if (!stencilCompareFunction4)
        {
          goto LABEL_38;
        }
      }

      else
      {
        stencilFailureOperation2 = [frontFaceStencil stencilFailureOperation];
        v24 = stencilFailureOperation2 != 0;
        if (stencilFailureOperation2)
        {
          v25 = 1;
        }

        else
        {
          v25 = stencilCompareFunction4 == 0;
        }

        if (v25)
        {
          goto LABEL_39;
        }
      }

      if (!depthCompareFunction || (v26 = [frontFaceStencil depthStencilPassOperation], v24 = v26 != 0, !v26) && stencilCompareFunction4)
      {
        if (depthCompareFunction2 == 7 || ![frontFaceStencil depthFailureOperation])
        {
          goto LABEL_38;
        }

LABEL_40:
        LOBYTE(v24) = 4;
        goto LABEL_41;
      }

LABEL_39:
      if (!v24)
      {
        goto LABEL_41;
      }

      goto LABEL_40;
    }

    goto LABEL_23;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLDebugDepthStencilState;
  [(MTLToolsDepthStencilState *)&v3 dealloc];
}

- (id)formattedDescription:(unint64_t)description
{
  v4.receiver = self;
  v4.super_class = MTLDebugDepthStencilState;
  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", -[MTLToolsObject description](&v4, sel_description), objc_msgSend(*&self->_attachmentWriteMask, "formattedDescription:", description + 4)];
}

@end