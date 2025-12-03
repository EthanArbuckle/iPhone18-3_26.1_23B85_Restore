@interface UIImage(ClipUIServicesExtras)
+ (id)cps_imageNamed:()ClipUIServicesExtras;
- (id)cps_averageColorImage;
- (id)cps_imageWithNormalizedOrientation;
- (id)cps_resizedImageWithSize:()ClipUIServicesExtras;
- (void)cps_averageColorImage;
@end

@implementation UIImage(ClipUIServicesExtras)

+ (id)cps_imageNamed:()ClipUIServicesExtras
{
  v3 = MEMORY[0x277D755B8];
  v4 = MEMORY[0x277CCA8D8];
  v5 = a3;
  cps_clipUIServicesBundle = [v4 cps_clipUIServicesBundle];
  v7 = [v3 imageNamed:v5 inBundle:cps_clipUIServicesBundle withConfiguration:0];

  return v7;
}

- (id)cps_resizedImageWithSize:()ClipUIServicesExtras
{
  v6 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:{a2, a3}];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__UIImage_ClipUIServicesExtras__cps_resizedImageWithSize___block_invoke;
  v10[3] = &unk_278DD2968;
  v10[4] = self;
  *&v10[5] = a2;
  *&v10[6] = a3;
  v7 = [v6 imageWithActions:v10];
  v8 = [v7 imageWithRenderingMode:{objc_msgSend(self, "renderingMode")}];

  return v8;
}

- (id)cps_averageColorImage
{
  v48[2] = *MEMORY[0x277D85DE8];
  if (self)
  {
    v42 = 0;
    v43 = &v42;
    v44 = 0x2050000000;
    v2 = getCIImageClass_softClass;
    v45 = getCIImageClass_softClass;
    if (!getCIImageClass_softClass)
    {
      v37 = MEMORY[0x277D85DD0];
      v38 = 3221225472;
      v39 = __getCIImageClass_block_invoke;
      v40 = &unk_278DD24C0;
      v41 = &v42;
      __getCIImageClass_block_invoke(&v37);
      v2 = v43[3];
    }

    v3 = v2;
    _Block_object_dispose(&v42, 8);
    selfCopy = self;
    v5 = [v2 imageWithCGImage:{objc_msgSend(self, "CGImage")}];
    [v5 extent];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v42 = 0;
    v43 = &v42;
    v44 = 0x2050000000;
    v14 = getCIVectorClass_softClass;
    v45 = getCIVectorClass_softClass;
    if (!getCIVectorClass_softClass)
    {
      v37 = MEMORY[0x277D85DD0];
      v38 = 3221225472;
      v39 = __getCIVectorClass_block_invoke;
      v40 = &unk_278DD24C0;
      v41 = &v42;
      __getCIVectorClass_block_invoke(&v37);
      v14 = v43[3];
    }

    v15 = v14;
    _Block_object_dispose(&v42, 8);
    v50.origin.x = v7;
    v50.origin.y = v9;
    v50.size.width = v11;
    v50.size.height = v13;
    MinX = CGRectGetMinX(v50);
    v51.origin.x = v7;
    v51.origin.y = v9;
    v51.size.width = v11;
    v51.size.height = v13;
    MinY = CGRectGetMinY(v51);
    v52.origin.x = v7;
    v52.origin.y = v9;
    v52.size.width = v11;
    v52.size.height = v13;
    Width = CGRectGetWidth(v52);
    v53.origin.x = v7;
    v53.origin.y = v9;
    v53.size.width = v11;
    v53.size.height = v13;
    v19 = [v14 vectorWithX:MinX Y:MinY Z:Width W:CGRectGetHeight(v53)];
    v42 = 0;
    v43 = &v42;
    v44 = 0x2050000000;
    v20 = getCIFilterClass_softClass;
    v45 = getCIFilterClass_softClass;
    if (!getCIFilterClass_softClass)
    {
      v37 = MEMORY[0x277D85DD0];
      v38 = 3221225472;
      v39 = __getCIFilterClass_block_invoke;
      v40 = &unk_278DD24C0;
      v41 = &v42;
      __getCIFilterClass_block_invoke(&v37);
      v20 = v43[3];
    }

    v21 = v20;
    _Block_object_dispose(&v42, 8);
    v42 = 0;
    v43 = &v42;
    v44 = 0x2020000000;
    v22 = getkCIInputImageKeySymbolLoc_ptr;
    v45 = getkCIInputImageKeySymbolLoc_ptr;
    if (!getkCIInputImageKeySymbolLoc_ptr)
    {
      v37 = MEMORY[0x277D85DD0];
      v38 = 3221225472;
      v39 = __getkCIInputImageKeySymbolLoc_block_invoke;
      v40 = &unk_278DD24C0;
      v41 = &v42;
      v23 = CoreImageLibrary();
      v24 = dlsym(v23, "kCIInputImageKey");
      *(v41[1] + 24) = v24;
      getkCIInputImageKeySymbolLoc_ptr = *(v41[1] + 24);
      v22 = v43[3];
    }

    _Block_object_dispose(&v42, 8);
    if (!v22)
    {
      [UIImage(ClipUIServicesExtras) cps_averageColorImage];
    }

    v25 = *v22;
    v48[0] = v5;
    v42 = 0;
    v43 = &v42;
    v44 = 0x2020000000;
    v26 = getkCIInputExtentKeySymbolLoc_ptr;
    v45 = getkCIInputExtentKeySymbolLoc_ptr;
    v46 = v25;
    if (!getkCIInputExtentKeySymbolLoc_ptr)
    {
      v37 = MEMORY[0x277D85DD0];
      v38 = 3221225472;
      v39 = __getkCIInputExtentKeySymbolLoc_block_invoke;
      v40 = &unk_278DD24C0;
      v41 = &v42;
      v27 = CoreImageLibrary();
      v28 = dlsym(v27, "kCIInputExtentKey");
      *(v41[1] + 24) = v28;
      getkCIInputExtentKeySymbolLoc_ptr = *(v41[1] + 24);
      v26 = v43[3];
    }

    _Block_object_dispose(&v42, 8);
    if (!v26)
    {
      [UIImage(ClipUIServicesExtras) cps_averageColorImage];
    }

    v47 = *v26;
    v48[1] = v19;
    v29 = MEMORY[0x277CBEAC0];
    v30 = v47;
    v31 = [v29 dictionaryWithObjects:v48 forKeys:&v46 count:2];
    v32 = [v20 filterWithName:@"CIAreaAverage" withInputParameters:v31];

    v33 = MEMORY[0x277D755B8];
    outputImage = [v32 outputImage];
    v35 = [v33 imageWithCIImage:outputImage];
  }

  else
  {
    v35 = 0;
  }

  return v35;
}

- (id)cps_imageWithNormalizedOrientation
{
  if ([self imageOrientation])
  {
    v2 = objc_alloc_init(MEMORY[0x277D75568]);
    [v2 setScale:1.0];
    v3 = objc_alloc(MEMORY[0x277D75560]);
    [self size];
    v4 = [v3 initWithSize:v2 format:?];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __67__UIImage_ClipUIServicesExtras__cps_imageWithNormalizedOrientation__block_invoke;
    v7[3] = &unk_278DD2990;
    v7[4] = self;
    selfCopy = [v4 imageWithActions:v7];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (void)cps_averageColorImage
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getkCIInputImageKey(void)"];
  [currentHandler handleFailureInFunction:v1 file:@"CPSUIImageExtras.m" lineNumber:12 description:{@"%s", dlerror()}];

  __break(1u);
}

@end