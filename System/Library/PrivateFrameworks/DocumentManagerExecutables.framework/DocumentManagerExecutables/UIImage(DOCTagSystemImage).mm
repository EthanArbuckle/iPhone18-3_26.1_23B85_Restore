@interface UIImage(DOCTagSystemImage)
+ (__CFString)_doc_imageOutlineNameForColorType:()DOCTagSystemImage differentiateWithShapes:;
+ (id)_doc_imageFillNameForColorType:()DOCTagSystemImage differentiateWithShapes:;
+ (id)_doc_tagImageForRenderingVariant:()DOCTagSystemImage differentiateWithShapes:tagColorType:;
+ (id)_doc_tagImageForRenderingVariant:()DOCTagSystemImage differentiateWithShapes:tagColorType:renderedColor:;
@end

@implementation UIImage(DOCTagSystemImage)

+ (id)_doc_imageFillNameForColorType:()DOCTagSystemImage differentiateWithShapes:
{
  v1 = [a1 _doc_imageOutlineNameForColorType:? differentiateWithShapes:?];
  v2 = [v1 stringByAppendingString:@".fill"];

  return v2;
}

+ (__CFString)_doc_imageOutlineNameForColorType:()DOCTagSystemImage differentiateWithShapes:
{
  v12[8] = *MEMORY[0x277D85DE8];
  v11[0] = &unk_285CE9EC8;
  v11[1] = &unk_285CE9EE0;
  v6 = @"circle";
  v12[0] = @"circle";
  v12[1] = @"square";
  v11[2] = &unk_285CE9EF8;
  v11[3] = &unk_285CE9F10;
  v12[2] = @"diamond";
  v12[3] = @"hexagon";
  v11[4] = &unk_285CE9F28;
  v11[5] = &unk_285CE9F40;
  v12[4] = @"triangle";
  v12[5] = @"seal";
  v11[6] = &unk_285CE9F58;
  v11[7] = &unk_285CE9F70;
  v12[6] = @"pentagon";
  v12[7] = @"circle";
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:8];
  if (a4)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    v9 = [v7 objectForKeyedSubscript:v8];

    if (v9)
    {
      v6 = v9;
    }

    else
    {
      v6 = @"circle";
    }
  }

  return v6;
}

+ (id)_doc_tagImageForRenderingVariant:()DOCTagSystemImage differentiateWithShapes:tagColorType:
{
  v9 = [MEMORY[0x277D06260] untitledTagForRendering:a5];
  v10 = [v9 tagColorIfNotClear];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [MEMORY[0x277D06260] nonClearNoneTagColor];
  }

  v13 = v12;

  v14 = [a1 _doc_tagImageForRenderingVariant:a3 differentiateWithShapes:a4 tagColorType:a5 renderedColor:v13];

  return v14;
}

+ (id)_doc_tagImageForRenderingVariant:()DOCTagSystemImage differentiateWithShapes:tagColorType:renderedColor:
{
  v9 = a6;
  if (!v9)
  {
    v10 = MEMORY[0x277D062B8];
    v11 = *MEMORY[0x277D062B8];
    if (!*MEMORY[0x277D062B8])
    {
      DOCInitLogging();
      v11 = *v10;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [UIImage(DOCTagSystemImage) _doc_tagImageForRenderingVariant:v11 differentiateWithShapes:? tagColorType:? renderedColor:?];
    }

    v12 = [MEMORY[0x277D06260] untitledTagForRendering:a5];
    v9 = [v12 tagColor];
  }

  v13 = [MEMORY[0x277D06260] untitledTagForRendering:a5];
  v14 = v13;
  if (v9)
  {
    v15 = v9;
  }

  else
  {
    v16 = [v13 tagColorIfNotClear];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = [MEMORY[0x277D06260] nonClearNoneTagColor];
    }

    v15 = v18;
  }

  if (a3 == 1)
  {
    v19 = [MEMORY[0x277D755B8] _doc_imageOutlineNameForColorType:a5 differentiateWithShapes:a4];
    goto LABEL_17;
  }

  if (!a3)
  {
    v19 = [MEMORY[0x277D755B8] _doc_imageFillNameForColorType:a5 differentiateWithShapes:a4];
LABEL_17:
    v20 = v19;
    goto LABEL_19;
  }

  v20 = 0;
LABEL_19:
  v21 = +[DOCTagAppearance renderingAppearance];
  v22 = [v21 imageWeightForVariant:a3];

  v23 = [MEMORY[0x277D755B8] systemImageNamed:v20];
  v24 = [MEMORY[0x277D755D0] configurationWithWeight:v22];
  v25 = [v23 imageWithConfiguration:v24];

  v26 = [v25 imageWithTintColor:v15 renderingMode:1];

  return v26;
}

@end