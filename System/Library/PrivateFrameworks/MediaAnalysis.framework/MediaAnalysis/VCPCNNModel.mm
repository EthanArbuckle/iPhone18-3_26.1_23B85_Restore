@interface VCPCNNModel
- (VCPCNNModel)init;
- (VCPCNNModel)initWithParameters:(signed __int16)parameters useGPU:(BOOL)u;
- (int)add:(id)add;
- (int)dynamicForward:(id)forward paramFileUrl:(id)url cancel:(id)cancel;
- (int)forward:(id)forward;
- (int)prepareNetworkFromURL:(id)l withInputSize:(id)size;
- (int)size;
@end

@implementation VCPCNNModel

- (VCPCNNModel)init
{
  v6.receiver = self;
  v6.super_class = VCPCNNModel;
  v2 = [(VCPCNNModel *)&v6 init];
  v3 = v2;
  if (v2)
  {
    bzero(v2->_blocks, 0x640uLL);
    v3->_quantFactor = 1;
    v4 = v3;
  }

  return v3;
}

- (VCPCNNModel)initWithParameters:(signed __int16)parameters useGPU:(BOOL)u
{
  uCopy = u;
  v13.receiver = self;
  v13.super_class = VCPCNNModel;
  v6 = [(VCPCNNModel *)&v13 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_4;
  }

  bzero(v6->_blocks, 0x640uLL);
  v7->_quantFactor = parameters;
  v7->_useGPU = uCopy;
  if (!uCopy)
  {
    context = v7->_context;
    v7->_context = 0;

    goto LABEL_6;
  }

  v8 = [[VCPCNNMetalContext alloc] initNewContext:1];
  v9 = v7->_context;
  v7->_context = v8;

  if (v7->_context)
  {
LABEL_6:
    v10 = v7;
    goto LABEL_7;
  }

LABEL_4:
  v10 = 0;
LABEL_7:

  return v10;
}

- (int)size
{
  v3 = 0;
  blocks = self->_blocks;
  do
  {
    if (!blocks[v3])
    {
      break;
    }

    ++v3;
  }

  while (v3 != 200);
  return v3;
}

- (int)add:(id)add
{
  addCopy = add;
  v6 = [(VCPCNNModel *)self size];
  if (v6 <= 199)
  {
    objc_storeStrong(&self->_blocks[v6], add);
    v7 = 0;
  }

  else
  {
    v7 = -50;
  }

  return v7;
}

- (int)prepareNetworkFromURL:(id)l withInputSize:(id)size
{
  sizeCopy = size;
  path = [l path];
  v8 = fopen([path UTF8String], "rb");

  v9 = [(VCPCNNModel *)self size];
  if (v8)
  {
    v10 = v9;
    [*(&self->super.isa + v9) setGenerateOutput:1];
    v11 = self->_blocks[0];
    if ([(VCPCNNBlock *)v11 supportGPU])
    {
      context = self->_context;
    }

    else
    {
      context = 0;
    }

    v13 = [(VCPCNNBlock *)v11 constructBlock:sizeCopy context:context];
    if (!v13)
    {
      v13 = [(VCPCNNBlock *)self->_blocks[0] readFromDisk:v8 quantFactor:self->_quantFactor];
      if (!v13)
      {
        if (v10 < 2)
        {
          v13 = 0;
        }

        else
        {
          v14 = &self->_blocks[1];
          v15 = v10 - 1;
          do
          {
            v16 = *v14;
            outputSize = [*(v14 - 1) outputSize];
            if ([*v14 supportGPU])
            {
              v18 = self->_context;
            }

            else
            {
              v18 = 0;
            }

            v13 = [v16 constructBlock:outputSize context:v18];

            if (v13)
            {
              break;
            }

            v13 = [*v14 readFromDisk:v8 quantFactor:self->_quantFactor];
            if (v13)
            {
              break;
            }

            ++v14;
            --v15;
          }

          while (v15);
        }
      }
    }

    fclose(v8);
  }

  else
  {
    v13 = -23;
  }

  return v13;
}

- (int)forward:(id)forward
{
  forwardCopy = forward;
  v5 = [forwardCopy size];
  v6 = [v5 count];

  if (v6 == 3)
  {
    if (self->_useGPU && (forward = [forwardCopy convertCPUData2GPU]) != 0)
    {
      v8 = 0;
      v9 = 0;
    }

    else
    {
      [(VCPCNNBlock *)self->_blocks[0] setInput:forwardCopy];
      v10 = 0;
      v11 = 0;
      v9 = 0;
LABEL_7:
      v8 = v11;
      while (v10 < [(VCPCNNModel *)self size])
      {
        v11 = self->_blocks[v10];

        forward = [(VCPCNNBlock *)v11 forward];
        if (forward)
        {
          v8 = v11;
          goto LABEL_17;
        }

        ++v10;
        v8 = v11;
        if ([(VCPCNNModel *)self size]> v10)
        {
          v12 = self->_blocks[v10];

          output = [(VCPCNNBlock *)v11 output];
          [(VCPCNNBlock *)v12 setInput:output];

          v9 = v12;
          goto LABEL_7;
        }
      }

      if (!self->_useGPU || (forward = -[VCPCNNMetalContext execute](self->_context, "execute")) == 0 && ([*(&self->super.isa + -[VCPCNNModel size](self "size"))], v14 = objc_claimAutoreleasedReturnValue(), forward = objc_msgSend(v14, "convertGPUData2CPU"), v14, !forward))
      {
        v15 = [*(&self->super.isa + -[VCPCNNModel size](self "size"))];
        output = self->_output;
        self->_output = v15;

        forward = 0;
      }
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
    forward = -50;
  }

LABEL_17:

  return forward;
}

- (int)dynamicForward:(id)forward paramFileUrl:(id)url cancel:(id)cancel
{
  forwardCopy = forward;
  cancelCopy = cancel;
  path = [url path];
  v11 = fopen([path UTF8String], "rb");

  v12 = [(VCPCNNModel *)self size];
  if (v11)
  {
    v13 = v12;
    blocks = self->_blocks;
    v15 = v12 - 1;
    [(VCPCNNBlock *)self->_blocks[v15] setGenerateOutput:1];
    v16 = [forwardCopy size];
    v17 = [v16 count];

    if (v17 != 3)
    {
      convertCPUData2GPU = -50;
      goto LABEL_39;
    }

    if (self->_useGPU)
    {
      convertCPUData2GPU = [forwardCopy convertCPUData2GPU];
      if (convertCPUData2GPU)
      {
        goto LABEL_39;
      }
    }

    v19 = *blocks;
    if (*blocks)
    {
      v20 = [forwardCopy size];
      convertCPUData2GPU = [v19 constructBlock:v20 context:self->_context];

      if (convertCPUData2GPU)
      {
        goto LABEL_39;
      }

      convertCPUData2GPU = [(VCPCNNBlock *)self->_blocks[0] readFromDisk:v11 quantFactor:self->_quantFactor];
      if (convertCPUData2GPU)
      {
        goto LABEL_39;
      }

      [*blocks setInput:forwardCopy];
      convertCPUData2GPU = [*blocks forward];
      if (convertCPUData2GPU)
      {
        goto LABEL_39;
      }

      if (v13 < 2)
      {
        v21 = 0;
      }

      else
      {
        if (cancelCopy[2](cancelCopy))
        {
          convertCPUData2GPU = -128;
LABEL_39:
          fclose(v11);
          goto LABEL_40;
        }

        output = [*blocks output];
        [(VCPCNNBlock *)self->_blocks[1] setInput:output];

        v26 = 0;
        v39 = 0;
        v38 = v13 - 1;
        do
        {
          v27 = objc_autoreleasePoolPush();
          v28 = (&self->super.isa + v26);
          v29 = v28[2];
          if (v29)
          {
            context = v27;
            outputSize = [v28[1] outputSize];
            v31 = [v29 constructBlock:outputSize context:self->_context];

            if (v31)
            {
              v32 = 0;
              v39 = v31;
            }

            else
            {
              v33 = [v28[2] readFromDisk:v11 quantFactor:self->_quantFactor];
              if (v33 || (v33 = [v28[2] forward]) != 0)
              {
                v32 = 0;
                v39 = v33;
              }

              else
              {
                if (v26 + 1 < v15)
                {
                  output2 = [v28[2] output];
                  [v28[3] setInput:output2];
                }

                v35 = v28[1];
                v28[1] = 0;

                v32 = 1;
              }
            }

            v27 = context;
          }

          else
          {
            v32 = 0;
            v39 = -18;
          }

          objc_autoreleasePoolPop(v27);
          if ((v32 & 1) == 0)
          {
            convertCPUData2GPU = v39;
            goto LABEL_39;
          }

          ++v26;
        }

        while (v38 != v26);
        if (!*blocks)
        {
          objc_storeStrong(self->_blocks, blocks[v15]);
          v36 = blocks[v15];
          blocks[v15] = 0;
        }

        v21 = v39;
        if ([(VCPCNNModel *)self size]!= 1)
        {
          goto LABEL_38;
        }
      }

      if (!self->_useGPU || (convertCPUData2GPU = -[VCPCNNMetalContext execute](self->_context, "execute")) == 0 && ([*blocks output], v22 = objc_claimAutoreleasedReturnValue(), convertCPUData2GPU = objc_msgSend(v22, "convertGPUData2CPU"), v22, !convertCPUData2GPU))
      {
        output3 = [*blocks output];
        output = self->_output;
        self->_output = output3;

        convertCPUData2GPU = v21;
      }

      goto LABEL_39;
    }

LABEL_38:
    convertCPUData2GPU = -18;
    goto LABEL_39;
  }

  convertCPUData2GPU = -23;
LABEL_40:

  return convertCPUData2GPU;
}

@end