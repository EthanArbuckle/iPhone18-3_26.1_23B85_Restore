@interface VCShaders
- (VCShaders)initWithContext:(id)context;
- (id)objectAtIndexedSubscript:(unint64_t)subscript;
@end

@implementation VCShaders

- (VCShaders)initWithContext:(id)context
{
  contextCopy = context;
  objc_storeStrong(&self->_context, context);
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
      selfCopy = self;
      goto LABEL_6;
    }
  }

  selfCopy = 0;
LABEL_6:

  return selfCopy;
}

- (id)objectAtIndexedSubscript:(unint64_t)subscript
{
  if (subscript <= 2)
  {
    v4 = self->_kernels[subscript];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end