@interface WhiteboardFilter
- (id)outputImage;
- (id)whiteboardFilterKernel;
@end

@implementation WhiteboardFilter

- (id)whiteboardFilterKernel
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__WhiteboardFilter_whiteboardFilterKernel__block_invoke;
  block[3] = &unk_278F92C70;
  block[4] = self;
  if (whiteboardFilterKernel_once != -1)
  {
    dispatch_once(&whiteboardFilterKernel_once, block);
  }

  return whiteboardFilterKernel_kernel;
}

void __42__WhiteboardFilter_whiteboardFilterKernel__block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v1 = [v0 pathForResource:@"WhiteboardFilter" ofType:@"cikernel"];
  v6 = 0;
  v2 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:v1 encoding:4 error:&v6];
  v3 = v6;
  v4 = [MEMORY[0x277CBF760] kernelWithString:v2];
  v5 = whiteboardFilterKernel_kernel;
  whiteboardFilterKernel_kernel = v4;
}

- (id)outputImage
{
  v20[2] = *MEMORY[0x277D85DE8];
  inputImage = [(WhiteboardFilter *)self inputImage];
  [inputImage extent];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __31__WhiteboardFilter_outputImage__block_invoke;
  v19[3] = &unk_278F93970;
  v19[4] = self;
  v12 = _Block_copy(v19);
  whiteboardFilterKernel = [(WhiteboardFilter *)self whiteboardFilterKernel];
  inputImage2 = [(WhiteboardFilter *)self inputImage];
  v20[0] = inputImage2;
  stride = [(WhiteboardFilter *)self stride];
  v20[1] = stride;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v17 = [whiteboardFilterKernel applyWithExtent:v12 roiCallback:v16 arguments:{v5, v7, v9, v11}];

  return v17;
}

double __31__WhiteboardFilter_outputImage__block_invoke(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = [*(a1 + 32) stride];
  [v10 floatValue];
  v12 = -v11;
  v13 = [*(a1 + 32) stride];
  [v13 floatValue];
  v15 = -v14;
  v18.origin.x = a2;
  v18.origin.y = a3;
  v18.size.width = a4;
  v18.size.height = a5;
  *&v16 = CGRectInset(v18, v12, v15);

  return v16;
}

@end