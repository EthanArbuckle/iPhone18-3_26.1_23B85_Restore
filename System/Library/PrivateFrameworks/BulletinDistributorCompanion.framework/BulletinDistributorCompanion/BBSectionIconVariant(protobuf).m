@interface BBSectionIconVariant(protobuf)
+ (id)sectionIconVariantFromProtobuf:()protobuf;
- (id)blt_ProtobufWithScale:()protobuf;
@end

@implementation BBSectionIconVariant(protobuf)

+ (id)sectionIconVariantFromProtobuf:()protobuf
{
  v3 = MEMORY[0x277CF3560];
  v4 = a3;
  v5 = [v4 format];
  v6 = [v4 imageData];
  v7 = [v3 variantWithFormat:v5 imageData:v6];

  v8 = [v4 systemImageName];
  [v7 setSystemImageName:v8];

  v9 = [v4 uti];
  [v7 setUti:v9];

  v10 = [v4 precomposed];
  [v7 setPrecomposed:v10];

  return v7;
}

- (id)blt_ProtobufWithScale:()protobuf
{
  v4 = objc_opt_new();
  [v4 setPrecomposed:{objc_msgSend(a1, "isPrecomposed")}];
  [v4 setFormat:objc_msgSend(a1, "format")];
  v5 = [a1 uti];

  if (v5)
  {
    v6 = [a1 uti];
    [v4 setUti:v6];
LABEL_8:

    goto LABEL_9;
  }

  v7 = [a1 imageData];

  if (v7)
  {
    v8 = [a1 imageData];
LABEL_5:
    v6 = v8;
    [v4 setImageData:v8];
    goto LABEL_8;
  }

  v9 = [a1 systemImageName];

  if (v9)
  {
    v6 = [a1 systemImageName];
    [v4 setSystemImageName:v6];
    goto LABEL_8;
  }

  v11 = [a1 bundlePath];
  if (v11)
  {
    v12 = v11;
    v13 = [a1 imageName];

    if (v13)
    {
      v8 = BLTPBDataForSectionIconVariant(a1, a2);
      goto LABEL_5;
    }
  }

  v14 = [a1 imagePath];

  if (v14)
  {
    v15 = MEMORY[0x277CBEA90];
    v6 = [a1 imagePath];
    v16 = [v15 dataWithContentsOfFile:v6];
    [v4 setImageData:v16];

    goto LABEL_8;
  }

LABEL_9:

  return v4;
}

@end