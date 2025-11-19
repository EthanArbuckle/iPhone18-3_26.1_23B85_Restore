@interface MTLGPUDebugPipelineStateInfoEncoder
- (MTLGPUDebugPipelineStateInfoEncoder)initWithDevice:(id)a3;
- (void)dealloc;
- (void)setArgumentBuffer:(id)a3 offset:(unint64_t)a4;
- (void)setComputePipelineState:(id)a3;
- (void)setRenderPipelineState:(id)a3;
@end

@implementation MTLGPUDebugPipelineStateInfoEncoder

- (MTLGPUDebugPipelineStateInfoEncoder)initWithDevice:(id)a3
{
  v9.receiver = self;
  v9.super_class = MTLGPUDebugPipelineStateInfoEncoder;
  v4 = [(MTLGPUDebugPipelineStateInfoEncoder *)&v9 init];
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
  v4->_argumentEncoder = [objc_msgSend(a3 "baseObject")];
  objc_autoreleasePoolPop(v5);
  return v4;
}

- (void)setArgumentBuffer:(id)a3 offset:(unint64_t)a4
{
  argumentEncoder = self->_argumentEncoder;
  v7 = [a3 baseObject];
  v8 = [a3 offset] + a4;

  [(MTLArgumentEncoder *)argumentEncoder setArgumentBuffer:v7 offset:v8];
}

- (void)setRenderPipelineState:(id)a3
{
  -[MTLArgumentEncoder setRenderPipelineState:atIndex:](self->_argumentEncoder, "setRenderPipelineState:atIndex:", [a3 baseObject], 0);
  *[(MTLArgumentEncoder *)self->_argumentEncoder constantDataAtIndex:2]= a3;
  v5 = [a3 vertexFunctionData];
  *[(MTLArgumentEncoder *)self->_argumentEncoder constantDataAtIndex:3]= v5;
  v6 = [objc_msgSend(a3 "vertexConstantsBuffer")];
  *[(MTLArgumentEncoder *)self->_argumentEncoder constantDataAtIndex:7]= v6;
  v7 = [a3 fragmentFunctionData];
  *[(MTLArgumentEncoder *)self->_argumentEncoder constantDataAtIndex:5]= v7;
  v8 = [objc_msgSend(a3 "fragmentConstantsBuffer")];
  *[(MTLArgumentEncoder *)self->_argumentEncoder constantDataAtIndex:9]= v8;
  v9 = [a3 tileFunctionData];
  *[(MTLArgumentEncoder *)self->_argumentEncoder constantDataAtIndex:6]= v9;
  v10 = [objc_msgSend(a3 "tileConstantsBuffer")];
  *[(MTLArgumentEncoder *)self->_argumentEncoder constantDataAtIndex:10]= v10;
  *[(MTLArgumentEncoder *)self->_argumentEncoder constantDataAtIndex:4]= 0;
  *[(MTLArgumentEncoder *)self->_argumentEncoder constantDataAtIndex:8]= 0;
  *[(MTLArgumentEncoder *)self->_argumentEncoder constantDataAtIndex:11]= 0;
  *[(MTLArgumentEncoder *)self->_argumentEncoder constantDataAtIndex:12]= 0;
  v11 = [a3 meshFunctionData];
  *[(MTLArgumentEncoder *)self->_argumentEncoder constantDataAtIndex:14]= v11;
  v12 = [objc_msgSend(a3 "meshConstantsBuffer")];
  *[(MTLArgumentEncoder *)self->_argumentEncoder constantDataAtIndex:16]= v12;
  v13 = [a3 objectFunctionData];
  *[(MTLArgumentEncoder *)self->_argumentEncoder constantDataAtIndex:13]= v13;
  v14 = [objc_msgSend(a3 "objectConstantsBuffer")];
  *[(MTLArgumentEncoder *)self->_argumentEncoder constantDataAtIndex:15]= v14;
}

- (void)setComputePipelineState:(id)a3
{
  v3 = a3;
  -[MTLArgumentEncoder setComputePipelineState:atIndex:](self->_argumentEncoder, "setComputePipelineState:atIndex:", [a3 baseObject], 1);
  *[(MTLArgumentEncoder *)self->_argumentEncoder constantDataAtIndex:2]= v3;
  *[(MTLArgumentEncoder *)self->_argumentEncoder constantDataAtIndex:3]= 0;
  *[(MTLArgumentEncoder *)self->_argumentEncoder constantDataAtIndex:7]= 0;
  *[(MTLArgumentEncoder *)self->_argumentEncoder constantDataAtIndex:5]= 0;
  *[(MTLArgumentEncoder *)self->_argumentEncoder constantDataAtIndex:9]= 0;
  *[(MTLArgumentEncoder *)self->_argumentEncoder constantDataAtIndex:6]= 0;
  *[(MTLArgumentEncoder *)self->_argumentEncoder constantDataAtIndex:10]= 0;
  v5 = [v3 kernelFunctionData];
  *[(MTLArgumentEncoder *)self->_argumentEncoder constantDataAtIndex:4]= v5;
  v6 = [objc_msgSend(v3 "globalConstantsBuffer")];
  *[(MTLArgumentEncoder *)self->_argumentEncoder constantDataAtIndex:8]= v6;
  LODWORD(v6) = [objc_msgSend(v3 "debugInstrumentationData")];
  *[(MTLArgumentEncoder *)self->_argumentEncoder constantDataAtIndex:11]= v6;
  LODWORD(v3) = [objc_msgSend(v3 "debugInstrumentationData")];
  *[(MTLArgumentEncoder *)self->_argumentEncoder constantDataAtIndex:12]= v3;
  *[(MTLArgumentEncoder *)self->_argumentEncoder constantDataAtIndex:14]= 0;
  *[(MTLArgumentEncoder *)self->_argumentEncoder constantDataAtIndex:16]= 0;
  *[(MTLArgumentEncoder *)self->_argumentEncoder constantDataAtIndex:13]= 0;
  *[(MTLArgumentEncoder *)self->_argumentEncoder constantDataAtIndex:15]= 0;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLGPUDebugPipelineStateInfoEncoder;
  [(MTLGPUDebugPipelineStateInfoEncoder *)&v3 dealloc];
}

@end