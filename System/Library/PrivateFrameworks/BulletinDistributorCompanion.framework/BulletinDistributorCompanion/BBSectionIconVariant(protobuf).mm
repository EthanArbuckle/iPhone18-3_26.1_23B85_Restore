@interface BBSectionIconVariant(protobuf)
+ (id)sectionIconVariantFromProtobuf:()protobuf;
- (id)blt_ProtobufWithScale:()protobuf;
@end

@implementation BBSectionIconVariant(protobuf)

+ (id)sectionIconVariantFromProtobuf:()protobuf
{
  v3 = MEMORY[0x277CF3560];
  v4 = a3;
  format = [v4 format];
  imageData = [v4 imageData];
  v7 = [v3 variantWithFormat:format imageData:imageData];

  systemImageName = [v4 systemImageName];
  [v7 setSystemImageName:systemImageName];

  v9 = [v4 uti];
  [v7 setUti:v9];

  precomposed = [v4 precomposed];
  [v7 setPrecomposed:precomposed];

  return v7;
}

- (id)blt_ProtobufWithScale:()protobuf
{
  v4 = objc_opt_new();
  [v4 setPrecomposed:{objc_msgSend(self, "isPrecomposed")}];
  [v4 setFormat:objc_msgSend(self, "format")];
  v5 = [self uti];

  if (v5)
  {
    systemImageName2 = [self uti];
    [v4 setUti:systemImageName2];
LABEL_8:

    goto LABEL_9;
  }

  imageData = [self imageData];

  if (imageData)
  {
    imageData2 = [self imageData];
LABEL_5:
    systemImageName2 = imageData2;
    [v4 setImageData:imageData2];
    goto LABEL_8;
  }

  systemImageName = [self systemImageName];

  if (systemImageName)
  {
    systemImageName2 = [self systemImageName];
    [v4 setSystemImageName:systemImageName2];
    goto LABEL_8;
  }

  bundlePath = [self bundlePath];
  if (bundlePath)
  {
    v12 = bundlePath;
    imageName = [self imageName];

    if (imageName)
    {
      imageData2 = BLTPBDataForSectionIconVariant(self, a2);
      goto LABEL_5;
    }
  }

  imagePath = [self imagePath];

  if (imagePath)
  {
    v15 = MEMORY[0x277CBEA90];
    systemImageName2 = [self imagePath];
    v16 = [v15 dataWithContentsOfFile:systemImageName2];
    [v4 setImageData:v16];

    goto LABEL_8;
  }

LABEL_9:

  return v4;
}

@end