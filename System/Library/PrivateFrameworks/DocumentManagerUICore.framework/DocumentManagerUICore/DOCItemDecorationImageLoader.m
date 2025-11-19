@interface DOCItemDecorationImageLoader
+ (id)typeForItemAccessType:(int64_t)a3;
+ (id)vendorBadgeDecorationForType:(id)a3 size:(CGSize)a4 scale:(double)a5 prepare:(BOOL)a6;
@end

@implementation DOCItemDecorationImageLoader

+ (id)typeForItemAccessType:(int64_t)a3
{
  switch(a3)
  {
    case 2:
      v3 = MEMORY[0x277D1B1F0];
      goto LABEL_7;
    case 1:
      v3 = MEMORY[0x277D1B1E0];
      goto LABEL_7;
    case 0:
      v3 = MEMORY[0x277D1B1E8];
LABEL_7:
      v4 = *v3;
      goto LABEL_9;
  }

  v7 = [MEMORY[0x277CCA890] currentHandler];
  [v7 handleFailureInMethod:a2 object:a1 file:@"DOCItemDecorationImageLoader.m" lineNumber:24 description:@"Unhandled case"];

LABEL_9:

  return v4;
}

+ (id)vendorBadgeDecorationForType:(id)a3 size:(CGSize)a4 scale:(double)a5 prepare:(BOOL)a6
{
  v6 = a6;
  height = a4.height;
  width = a4.width;
  v20[1] = *MEMORY[0x277D85DE8];
  v10 = MEMORY[0x277D1B1C8];
  v11 = a3;
  v12 = [[v10 alloc] initWithSize:width scale:{height, a5}];
  v13 = [objc_alloc(MEMORY[0x277D1B1B8]) initWithType:v11];

  if (v6)
  {
    v20[0] = v12;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    [v13 prepareImagesForDescriptors:v14];
  }

  v15 = [v13 imageForDescriptor:v12];
  v16 = [v15 CGImage];
  v17 = [objc_alloc(MEMORY[0x277D755B8]) initWithCGImage:v16];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

@end