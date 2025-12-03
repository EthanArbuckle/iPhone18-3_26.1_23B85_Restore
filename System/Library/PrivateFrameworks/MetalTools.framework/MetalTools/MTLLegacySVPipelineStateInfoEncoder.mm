@interface MTLLegacySVPipelineStateInfoEncoder
- (MTLLegacySVPipelineStateInfoEncoder)initWithDevice:(id)device;
- (void)dealloc;
- (void)setArgumentBuffer:(id)buffer offset:(unint64_t)offset;
- (void)setComputePipelineState:(id)state;
- (void)setRenderPipelineState:(id)state;
@end

@implementation MTLLegacySVPipelineStateInfoEncoder

- (MTLLegacySVPipelineStateInfoEncoder)initWithDevice:(id)device
{
  v9.receiver = self;
  v9.super_class = MTLLegacySVPipelineStateInfoEncoder;
  v4 = [(MTLLegacySVPipelineStateInfoEncoder *)&v9 init];
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc_init(MEMORY[0x277CD6C70]);
  [v6 setArrayLength:0];
  [v6 setAccess:1];
  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:11];
  [v6 setIndex:0];
  [v6 setDataType:78];
  [v7 addObject:{objc_msgSend(v6, "copy")}];
  [v6 setIndex:1];
  [v6 setDataType:79];
  [v7 addObject:{objc_msgSend(v6, "copy")}];
  [v6 setIndex:2];
  [v6 setDataType:30];
  [v7 addObject:{objc_msgSend(v6, "copy")}];
  [v6 setIndex:3];
  [v6 setDataType:30];
  [v7 addObject:{objc_msgSend(v6, "copy")}];
  [v6 setIndex:4];
  [v6 setDataType:30];
  [v7 addObject:{objc_msgSend(v6, "copy")}];
  [v6 setIndex:5];
  [v6 setDataType:30];
  [v7 addObject:{objc_msgSend(v6, "copy")}];
  [v6 setIndex:6];
  [v6 setDataType:30];
  [v7 addObject:{objc_msgSend(v6, "copy")}];
  [v6 setIndex:7];
  [v6 setDataType:30];
  [v7 addObject:{objc_msgSend(v6, "copy")}];
  [v6 setIndex:8];
  [v6 setDataType:30];
  [v7 addObject:{objc_msgSend(v6, "copy")}];
  [v6 setIndex:9];
  [v6 setDataType:30];
  [v7 addObject:{objc_msgSend(v6, "copy")}];
  [v6 setIndex:10];
  [v6 setDataType:30];
  [v7 addObject:{objc_msgSend(v6, "copy")}];
  [v6 setIndex:11];
  [v6 setDataType:29];
  [v7 addObject:{objc_msgSend(v6, "copy")}];
  [v6 setIndex:12];
  [v6 setDataType:29];
  [v7 addObject:{objc_msgSend(v6, "copy")}];
  [v6 setIndex:13];
  [v6 setDataType:30];
  [v7 addObject:{objc_msgSend(v6, "copy")}];
  [v6 setIndex:14];
  [v6 setDataType:30];
  [v7 addObject:{objc_msgSend(v6, "copy")}];
  [v6 setIndex:15];
  [v6 setDataType:30];
  [v7 addObject:{objc_msgSend(v6, "copy")}];
  [v6 setIndex:16];
  [v6 setDataType:30];
  [v7 addObject:{objc_msgSend(v6, "copy")}];
  v4->_argumentEncoder = [objc_msgSend(device "baseObject")];
  objc_autoreleasePoolPop(v5);
  return v4;
}

- (void)setArgumentBuffer:(id)buffer offset:(unint64_t)offset
{
  argumentEncoder = self->_argumentEncoder;
  baseObject = [buffer baseObject];
  v8 = [buffer offset] + offset;

  [(MTLArgumentEncoder *)argumentEncoder setArgumentBuffer:baseObject offset:v8];
}

- (void)setRenderPipelineState:(id)state
{
  -[MTLArgumentEncoder setRenderPipelineState:atIndex:](self->_argumentEncoder, "setRenderPipelineState:atIndex:", [state baseObject], 0);
  *[(MTLArgumentEncoder *)self->_argumentEncoder constantDataAtIndex:2]= state;
  vertexFunctionData = [state vertexFunctionData];
  *[(MTLArgumentEncoder *)self->_argumentEncoder constantDataAtIndex:3]= vertexFunctionData;
  v6 = [objc_msgSend(state "vertexConstantsBuffer")];
  *[(MTLArgumentEncoder *)self->_argumentEncoder constantDataAtIndex:7]= v6;
  fragmentFunctionData = [state fragmentFunctionData];
  *[(MTLArgumentEncoder *)self->_argumentEncoder constantDataAtIndex:5]= fragmentFunctionData;
  v8 = [objc_msgSend(state "fragmentConstantsBuffer")];
  *[(MTLArgumentEncoder *)self->_argumentEncoder constantDataAtIndex:9]= v8;
  tileFunctionData = [state tileFunctionData];
  *[(MTLArgumentEncoder *)self->_argumentEncoder constantDataAtIndex:6]= tileFunctionData;
  v10 = [objc_msgSend(state "tileConstantsBuffer")];
  *[(MTLArgumentEncoder *)self->_argumentEncoder constantDataAtIndex:10]= v10;
  *[(MTLArgumentEncoder *)self->_argumentEncoder constantDataAtIndex:4]= 0;
  *[(MTLArgumentEncoder *)self->_argumentEncoder constantDataAtIndex:8]= 0;
  *[(MTLArgumentEncoder *)self->_argumentEncoder constantDataAtIndex:11]= 0;
  *[(MTLArgumentEncoder *)self->_argumentEncoder constantDataAtIndex:12]= 0;
  meshFunctionData = [state meshFunctionData];
  *[(MTLArgumentEncoder *)self->_argumentEncoder constantDataAtIndex:14]= meshFunctionData;
  v12 = [objc_msgSend(state "meshConstantsBuffer")];
  *[(MTLArgumentEncoder *)self->_argumentEncoder constantDataAtIndex:16]= v12;
  objectFunctionData = [state objectFunctionData];
  *[(MTLArgumentEncoder *)self->_argumentEncoder constantDataAtIndex:13]= objectFunctionData;
  v14 = [objc_msgSend(state "objectConstantsBuffer")];
  *[(MTLArgumentEncoder *)self->_argumentEncoder constantDataAtIndex:15]= v14;
}

- (void)setComputePipelineState:(id)state
{
  stateCopy = state;
  -[MTLArgumentEncoder setComputePipelineState:atIndex:](self->_argumentEncoder, "setComputePipelineState:atIndex:", [state baseObject], 1);
  *[(MTLArgumentEncoder *)self->_argumentEncoder constantDataAtIndex:2]= stateCopy;
  *[(MTLArgumentEncoder *)self->_argumentEncoder constantDataAtIndex:3]= 0;
  *[(MTLArgumentEncoder *)self->_argumentEncoder constantDataAtIndex:7]= 0;
  *[(MTLArgumentEncoder *)self->_argumentEncoder constantDataAtIndex:5]= 0;
  *[(MTLArgumentEncoder *)self->_argumentEncoder constantDataAtIndex:9]= 0;
  *[(MTLArgumentEncoder *)self->_argumentEncoder constantDataAtIndex:6]= 0;
  *[(MTLArgumentEncoder *)self->_argumentEncoder constantDataAtIndex:10]= 0;
  kernelFunctionData = [stateCopy kernelFunctionData];
  *[(MTLArgumentEncoder *)self->_argumentEncoder constantDataAtIndex:4]= kernelFunctionData;
  v6 = [objc_msgSend(stateCopy "globalConstantsBuffer")];
  *[(MTLArgumentEncoder *)self->_argumentEncoder constantDataAtIndex:8]= v6;
  LODWORD(v6) = [objc_msgSend(stateCopy "debugInstrumentationData")];
  *[(MTLArgumentEncoder *)self->_argumentEncoder constantDataAtIndex:11]= v6;
  LODWORD(stateCopy) = [objc_msgSend(stateCopy "debugInstrumentationData")];
  *[(MTLArgumentEncoder *)self->_argumentEncoder constantDataAtIndex:12]= stateCopy;
  *[(MTLArgumentEncoder *)self->_argumentEncoder constantDataAtIndex:14]= 0;
  *[(MTLArgumentEncoder *)self->_argumentEncoder constantDataAtIndex:16]= 0;
  *[(MTLArgumentEncoder *)self->_argumentEncoder constantDataAtIndex:13]= 0;
  *[(MTLArgumentEncoder *)self->_argumentEncoder constantDataAtIndex:15]= 0;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLLegacySVPipelineStateInfoEncoder;
  [(MTLLegacySVPipelineStateInfoEncoder *)&v3 dealloc];
}

@end