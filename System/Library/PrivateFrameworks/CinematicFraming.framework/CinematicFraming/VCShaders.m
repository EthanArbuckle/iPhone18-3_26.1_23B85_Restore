@interface VCShaders
- (VCShaders)initWithContext:(id)a3;
- (id)objectAtIndexedSubscript:(unint64_t)a3;
@end

@implementation VCShaders

- (VCShaders)initWithContext:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_context, a3);
  v6 = 0;
  kernels = self->_kernels;
  v8 = 1;
  while (1)
  {
    v9 = v8;
    context = self->_context;
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:VCPKernelNames[v6]];
    v12 = [(FigMetalContext *)context computePipelineStateFor:v11 constants:0];
    v13 = kernels[v6];
    kernels[v6] = v12;

    if (!kernels[v6])
    {
      break;
    }

    v8 = 0;
    v6 = 1;
    if ((v9 & 1) == 0)
    {
      v14 = self;
      goto LABEL_6;
    }
  }

  v14 = 0;
LABEL_6:

  return v14;
}

- (id)objectAtIndexedSubscript:(unint64_t)a3
{
  if (a3 <= 2)
  {
    v4 = self->_kernels[a3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end