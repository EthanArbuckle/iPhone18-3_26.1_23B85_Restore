@interface CIHomographyResampler
- (CGRect)hightlightRect;
- (CIHomographyResampler)init;
- (__CVBuffer)ResampleCVPixels:(__CVBuffer *)a3 clipToRect:(CGRect)a4 outputSize:(CGSize)a5 pixelBufferPool:(__CVPixelBufferPool *)a6;
- (signed)ResampleCVPixels:(__CVBuffer *)a3 clipToRect:(CGRect)a4 outputSize:(CGSize)a5 toPixelBuffer:(__CVBuffer *)a6;
- (void)updateBackgroundFill:(CGRect)a3;
@end

@implementation CIHomographyResampler

- (CIHomographyResampler)init
{
  v10[2] = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = CIHomographyResampler;
  v2 = [(ImageHomographyResampler *)&v8 init];
  if (v2)
  {
    v9[0] = *MEMORY[0x277CBF948];
    v3 = [MEMORY[0x277CBEB68] null];
    v9[1] = *MEMORY[0x277CBF918];
    v10[0] = v3;
    v10[1] = MEMORY[0x277CBEC38];
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];

    v5 = [MEMORY[0x277CBF740] contextWithOptions:v4];
    ctx = v2->_ctx;
    v2->_ctx = v5;
  }

  return v2;
}

- (__CVBuffer)ResampleCVPixels:(__CVBuffer *)a3 clipToRect:(CGRect)a4 outputSize:(CGSize)a5 pixelBufferPool:(__CVPixelBufferPool *)a6
{
  height = a5.height;
  width = a5.width;
  v9 = a4.size.height;
  v10 = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v27[1] = *MEMORY[0x277D85DE8];
  v25 = 0;
  v26 = *MEMORY[0x277CC4DE8];
  v27[0] = MEMORY[0x277CBEC10];
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  if (a6)
  {
    PixelBufferAttributes = CVPixelBufferPoolGetPixelBufferAttributes(a6);
    v17 = [(__CFDictionary *)PixelBufferAttributes objectForKeyedSubscript:@"Height"];
    v18 = [v17 unsignedIntValue];

    v19 = [(__CFDictionary *)PixelBufferAttributes objectForKeyedSubscript:@"Width"];
    v20 = [v19 unsignedIntValue];

    if (v18 != height || v20 != width)
    {
      return v25;
    }

    v21 = CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x277CBECE8], a6, &v25);
  }

  else
  {
    v22 = v15;
    PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
    v21 = CVPixelBufferCreate(*MEMORY[0x277CBECE8], width, height, PixelFormatType, v22, &v25);
  }

  if (!v21)
  {
    [(CIHomographyResampler *)self ResampleCVPixels:a3 clipToRect:v25 outputSize:x toPixelBuffer:y, v10, v9, width, height];
  }

  return v25;
}

- (void)updateBackgroundFill:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_lastFillRect = &self->_lastFillRect;
  if (!CGRectEqualToRect(a3, self->_lastFillRect))
  {
    v9 = objc_alloc(MEMORY[0x277CBF758]);
    v10 = [MEMORY[0x277CBF730] grayColor];
    v11 = [v9 initWithColor:v10];
    v12 = [v11 imageByCroppingToRect:{x, y, width, height}];
    fillImage = self->_fillImage;
    self->_fillImage = v12;

    p_lastFillRect->origin.x = x;
    p_lastFillRect->origin.y = y;
    p_lastFillRect->size.width = width;
    p_lastFillRect->size.height = height;
  }
}

- (signed)ResampleCVPixels:(__CVBuffer *)a3 clipToRect:(CGRect)a4 outputSize:(CGSize)a5 toPixelBuffer:(__CVBuffer *)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v95 = *MEMORY[0x277D85DE8];
  CleanRect = CVImageBufferGetCleanRect(a3);
  v11 = CleanRect.origin.x;
  v12 = CleanRect.origin.y;
  v78 = CleanRect.size.width;
  v13 = CleanRect.size.height;
  v14 = 0;
  v15 = CleanRect.size.height;
  do
  {
    v16 = self->super.homographyMatrix[v14];
    *(&v86 + v14++) = v16;
  }

  while (v14 != 9);
  v76 = [MEMORY[0x277CBF758] imageWithCVPixelBuffer:a3];
  v17 = [v76 imageByCroppingToRect:{v11, v12, v78, v13}];
  v18 = *(MEMORY[0x277CBF2C0] + 16);
  *&v84.a = *MEMORY[0x277CBF2C0];
  *&v84.c = v18;
  *&v84.tx = *(MEMORY[0x277CBF2C0] + 32);
  CGAffineTransformTranslate(&v85, &v84, -v11, -v12);
  v62 = v17;
  v61 = [v17 imageByApplyingTransform:&v85];
  v72 = [v61 imageByApplyingOrientation:4];
  v65 = x;
  v66 = y;
  v67 = width;
  v68 = height;
  v19 = v86;
  v73 = v87;
  v20 = v87 * v15;
  v82 = v88;
  v21 = v88 + ((v87 * v15) + (v86 * 0.0));
  v22 = v91;
  v70 = v90;
  v23 = v90 * v15;
  v80 = v89;
  v24 = v91 + ((v90 * v15) + (v89 * 0.0));
  v25 = v92;
  v69 = v93;
  v26 = v93 * v15;
  v27 = (v93 * v15) + (v92 * 0.0);
  v28 = v94;
  v75 = [MEMORY[0x277CBF788] vectorWithX:(v21 / (v94 + v27)) Y:(v24 / (v94 + v27))];
  v29 = v78;
  v79 = [MEMORY[0x277CBF788] vectorWithX:((v82 + (v20 + (v19 * v29))) / (v28 + (v26 + (v25 * v29)))) Y:((v22 + (v23 + (v80 * v29))) / (v28 + (v26 + (v25 * v29))))];
  v30 = v73 * 0.0;
  v74 = [MEMORY[0x277CBF788] vectorWithX:((v82 + ((v73 * 0.0) + (v19 * v29))) / (v28 + ((v69 * 0.0) + (v25 * v29)))) Y:((v22 + ((v70 * 0.0) + (v80 * v29))) / (v28 + ((v69 * 0.0) + (v25 * v29))))];
  v83 = [MEMORY[0x277CBF788] vectorWithX:((v82 + (v30 + (v19 * 0.0))) / (v28 + ((v69 * 0.0) + (v25 * 0.0)))) Y:((v22 + ((v70 * 0.0) + (v80 * 0.0))) / (v28 + ((v69 * 0.0) + (v25 * 0.0))))];
  v31 = [MEMORY[0x277CBF750] filterWithName:@"CIPerspectiveTransform"];
  v32 = [MEMORY[0x277CBF750] filterWithName:@"CICrop"];
  [v31 setValue:v75 forKey:@"inputTopLeft"];
  [v31 setValue:v79 forKey:@"inputTopRight"];
  [v31 setValue:v74 forKey:@"inputBottomRight"];
  [v31 setValue:v83 forKey:@"inputBottomLeft"];
  [v31 setValue:v72 forKey:@"inputImage"];
  v81 = [v31 outputImage];
  [(CIHomographyResampler *)self updateBackgroundFill:v65, v66, v67, v68];
  v71 = [v81 imageByCompositingOverImage:self->_fillImage];
  v33 = [MEMORY[0x277CBF788] vectorWithCGRect:{v65, v66, ((v67 + v65) - v65), ((v68 + v66) - v66)}];
  [v32 setValue:v33 forKey:@"inputRectangle"];

  [v32 setValue:v71 forKey:@"inputImage"];
  v34 = [v32 outputImage];
  if (!CGRectIsEmpty(self->hightlightRect))
  {
    [v34 extent];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v43 = [MEMORY[0x277CBF750] filterWithName:@"CICrop"];
    v44 = [MEMORY[0x277CBF788] vectorWithCGRect:{self->hightlightRect.origin.x, self->hightlightRect.origin.y, self->hightlightRect.size.width, self->hightlightRect.size.height}];
    [v43 setValue:v44 forKey:@"inputRectangle"];

    [v43 setValue:v34 forKey:@"inputImage"];
    v45 = [v43 outputImage];
    v46 = [MEMORY[0x277CBF750] filterWithName:@"CIColorControls"];
    LODWORD(v47) = 1050253722;
    v48 = [MEMORY[0x277CCABB0] numberWithFloat:v47];
    [v46 setValue:v48 forKey:@"inputContrast"];

    [v46 setValue:v34 forKey:@"inputImage"];
    v49 = [v46 outputImage];
    v50 = [v45 imageByCompositingOverImage:v49];

    v51 = [v50 imageByCroppingToRect:{v36, v38, v40, v42}];

    v34 = v51;
  }

  v52 = v65;
  v53 = v66;
  CGAffineTransformMakeTranslation(&v85, -v52, -v53);
  v54 = [v34 imageByApplyingTransform:&v85];
  v55 = v54;
  memset(&v85, 0, sizeof(v85));
  if (v54)
  {
    [v54 imageTransformForOrientation:4];
  }

  else
  {
    memset(&v84, 0, sizeof(v84));
  }

  CGAffineTransformInvert(&v85, &v84);
  v84 = v85;
  v56 = [v55 imageByApplyingTransform:&v84];
  v57 = a5.width / v67;
  v58 = a5.height / v68;
  CGAffineTransformMakeScale(&v84, v57, v58);
  v59 = [v56 imageByApplyingTransform:&v84];
  CVBufferPropagateAttachments(a3, a6);
  CVBufferRemoveAttachment(a6, *MEMORY[0x277CC4BE8]);
  [(CIContext *)self->_ctx render:v59 toCVPixelBuffer:a6];

  return 0;
}

- (CGRect)hightlightRect
{
  objc_copyStruct(v6, &self->hightlightRect, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end