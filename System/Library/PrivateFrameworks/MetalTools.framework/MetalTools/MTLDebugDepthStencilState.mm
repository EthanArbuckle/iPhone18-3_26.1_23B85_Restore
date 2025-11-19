@interface MTLDebugDepthStencilState
- (MTLDebugDepthStencilState)initWithDepthStencilState:(id)a3 descriptor:(id)a4 device:(id)a5;
- (id)formattedDescription:(unint64_t)a3;
- (void)dealloc;
@end

@implementation MTLDebugDepthStencilState

- (MTLDebugDepthStencilState)initWithDepthStencilState:(id)a3 descriptor:(id)a4 device:(id)a5
{
  v28.receiver = self;
  v28.super_class = MTLDebugDepthStencilState;
  v6 = [(MTLToolsDepthStencilState *)&v28 initWithDepthStencilState:a3 descriptor:a4 device:a5];
  if (v6)
  {
    v7 = [a4 copy];
    *(v6 + 5) = v7;
    v8 = [v7 depthCompareFunction];
    v9 = [*(v6 + 5) depthCompareFunction];
    v10 = [*(v6 + 5) isDepthWriteEnabled];
    if (v8)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    *(v6 + 36) |= v11;
    v12 = [*(v6 + 5) backFaceStencil];
    v13 = [v12 stencilCompareFunction];
    v14 = [v12 stencilCompareFunction];
    if (![v12 writeMask])
    {
      goto LABEL_24;
    }

    if (v13 == 7)
    {
      if (!v14)
      {
LABEL_24:
        LOBYTE(v16) = 0;
        goto LABEL_25;
      }
    }

    else
    {
      v15 = [v12 stencilFailureOperation];
      v16 = v15 != 0;
      if (v15)
      {
        v17 = 1;
      }

      else
      {
        v17 = v14 == 0;
      }

      if (v17)
      {
        goto LABEL_19;
      }
    }

    if (!v8 || ((v18 = [v12 depthStencilPassOperation], v16 = v18 != 0, !v18) ? (v19 = v14 == 0) : (v19 = 1), !v19))
    {
      if (v9 == 7 || ![v12 depthFailureOperation])
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
      v20 = [*(v6 + 5) frontFaceStencil];
      v21 = [v20 stencilCompareFunction];
      v22 = [v20 stencilCompareFunction];
      if (![v20 writeMask])
      {
LABEL_38:
        LOBYTE(v24) = 0;
LABEL_41:
        *(v6 + 36) |= v24;
        return v6;
      }

      if (v21 == 7)
      {
        if (!v22)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v23 = [v20 stencilFailureOperation];
        v24 = v23 != 0;
        if (v23)
        {
          v25 = 1;
        }

        else
        {
          v25 = v22 == 0;
        }

        if (v25)
        {
          goto LABEL_39;
        }
      }

      if (!v8 || (v26 = [v20 depthStencilPassOperation], v24 = v26 != 0, !v26) && v22)
      {
        if (v9 == 7 || ![v20 depthFailureOperation])
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

- (id)formattedDescription:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = MTLDebugDepthStencilState;
  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", -[MTLToolsObject description](&v4, sel_description), objc_msgSend(*&self->_attachmentWriteMask, "formattedDescription:", a3 + 4)];
}

@end