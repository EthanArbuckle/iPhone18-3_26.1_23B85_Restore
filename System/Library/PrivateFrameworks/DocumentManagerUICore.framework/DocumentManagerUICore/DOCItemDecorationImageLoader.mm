@interface DOCItemDecorationImageLoader
+ (id)typeForItemAccessType:(int64_t)type;
+ (id)vendorBadgeDecorationForType:(id)type size:(CGSize)size scale:(double)scale prepare:(BOOL)prepare;
@end

@implementation DOCItemDecorationImageLoader

+ (id)typeForItemAccessType:(int64_t)type
{
  switch(type)
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

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"DOCItemDecorationImageLoader.m" lineNumber:24 description:@"Unhandled case"];

LABEL_9:

  return v4;
}

+ (id)vendorBadgeDecorationForType:(id)type size:(CGSize)size scale:(double)scale prepare:(BOOL)prepare
{
  prepareCopy = prepare;
  height = size.height;
  width = size.width;
  v20[1] = *MEMORY[0x277D85DE8];
  v10 = MEMORY[0x277D1B1C8];
  typeCopy = type;
  v12 = [[v10 alloc] initWithSize:width scale:{height, scale}];
  v13 = [objc_alloc(MEMORY[0x277D1B1B8]) initWithType:typeCopy];

  if (prepareCopy)
  {
    v20[0] = v12;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    [v13 prepareImagesForDescriptors:v14];
  }

  v15 = [v13 imageForDescriptor:v12];
  cGImage = [v15 CGImage];
  v17 = [objc_alloc(MEMORY[0x277D755B8]) initWithCGImage:cGImage];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

@end