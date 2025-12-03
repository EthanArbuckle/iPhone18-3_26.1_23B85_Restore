@interface CIImage(Blur)
- (id)bluredImageWithFlippedXAxis:()Blur;
@end

@implementation CIImage(Blur)

- (id)bluredImageWithFlippedXAxis:()Blur
{
  v35[2] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  [selfCopy extent];
  v6 = v5;
  v8 = v7;
  v9 = *(MEMORY[0x277CBF2C0] + 16);
  *&v31.a = *MEMORY[0x277CBF2C0];
  *&v31.c = v9;
  *&v31.tx = *(MEMORY[0x277CBF2C0] + 32);
  if (a3)
  {
    CGAffineTransformMakeTranslation(&v31, v5, 0.0);
    v29 = v31;
    CGAffineTransformScale(&v30, &v29, -1.0, 1.0);
    v31 = v30;
  }

  v10 = [MEMORY[0x277CCAE60] value:&v31 withObjCType:"{CGAffineTransform=dddddd}"];
  v11 = v10;
  v12 = 0;
  if (selfCopy && v10)
  {
    v13 = MEMORY[0x277CBF750];
    v14 = *MEMORY[0x277CBFAF0];
    v15 = *MEMORY[0x277CBFB38];
    v34[0] = *MEMORY[0x277CBFAF0];
    v34[1] = v15;
    v35[0] = selfCopy;
    v35[1] = v10;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];
    v17 = [v13 filterWithName:@"CIAffineTransform" withInputParameters:v16];

    outputImage = [v17 outputImage];
    v12 = outputImage;
    if (outputImage)
    {
      v19 = MEMORY[0x277CBF750];
      v20 = *MEMORY[0x277CBFB08];
      v32[0] = v14;
      v32[1] = v20;
      v33[0] = outputImage;
      v33[1] = &unk_28556D0B0;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
      v22 = [v19 filterWithName:@"CIGaussianBlur" withInputParameters:v21];

      outputImage2 = [v22 outputImage];

      v24 = *MEMORY[0x277CBF3A0];
      v25 = *(MEMORY[0x277CBF3A0] + 8);
      context = [MEMORY[0x277CBF740] context];
      v27 = [context createCGImage:outputImage2 fromRect:{v24, v25, v6, v8}];

      v12 = [MEMORY[0x277D755B8] imageWithCGImage:v27];
      CGImageRelease(v27);

      v17 = v22;
    }
  }

  return v12;
}

@end