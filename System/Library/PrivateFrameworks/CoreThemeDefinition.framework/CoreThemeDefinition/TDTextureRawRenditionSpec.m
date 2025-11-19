@interface TDTextureRawRenditionSpec
- (id)createCSIRepresentationWithCompression:(BOOL)a3 colorSpaceID:(unint64_t)a4 document:(id)a5;
- (id)textureWithDocument:(id)a3;
@end

@implementation TDTextureRawRenditionSpec

- (id)textureWithDocument:(id)a3
{
  v11 = 0;
  v6 = -[TDTextureImageRenditionSpec _createImageRefWithURL:andDocument:format:](self, "_createImageRefWithURL:andDocument:format:", [-[TDTextureRawRenditionSpec asset](self "asset")], a3, &v11);
  v7 = [-[TDTextureRawRenditionSpec keySpec](self "keySpec")];
  if (v7 == 2)
  {
    [a3 targetPlatform];
    v8 = CUICreateSDFGradientTextureFromImage();
    if (!v8)
    {
      [(TDTextureRawRenditionSpec *)a2 textureWithDocument:?];
      goto LABEL_8;
    }
  }

  else
  {
    if (v7 != 1)
    {
LABEL_8:
      CGImageRelease(v6);
      [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
      return 0;
    }

    [a3 targetPlatform];
    v8 = CUICreateSDFEdgeTextureFromImage();
    if (!v8)
    {
      [(TDTextureRawRenditionSpec *)a2 textureWithDocument:?];
      goto LABEL_8;
    }
  }

  v9 = v8;
  CGImageRelease(v6);
  return v9;
}

- (id)createCSIRepresentationWithCompression:(BOOL)a3 colorSpaceID:(unint64_t)a4 document:(id)a5
{
  v23 = a3;
  memset(v25, 0, sizeof(v25));
  v7 = [(TDTextureRawRenditionSpec *)self textureWithDocument:a5, a4];
  [v7 dimensions];
  v9 = v8;
  [v7 dimensions];
  v11 = v10;
  v24 = v9;
  v12 = v10;
  v13 = [objc_alloc(MEMORY[0x277D02668]) initWithTextureImageWithSize:objc_msgSend(v7 forPixelFormat:"pixelFormat") cubeMap:objc_msgSend(v7, "cubemap"), v9, v10];
  [v13 setScaleFactor:{objc_msgSend(-[TDTextureRawRenditionSpec asset](self, "asset"), "scaleFactor")}];
  v14 = a5;
  [v13 setTargetPlatform:{objc_msgSend(a5, "targetPlatform")}];
  [v13 setPixelFormat:1095911234];
  [v13 setName:{objc_msgSend(-[TDTextureRawRenditionSpec asset](self, "asset"), "name")}];
  v26 = v9;
  v27 = v12;
  [v13 addMetrics:v25];
  v15 = [objc_msgSend(v7 "mipmapLevels")];
  if ([objc_msgSend(v15 "elements")])
  {
    v16 = 0;
    do
    {
      v17 = [objc_msgSend(objc_msgSend(objc_msgSend(v15 "elements")];
      v18 = [objc_msgSend(v17 "buffer")];
      v19 = [objc_alloc(MEMORY[0x277D02660]) initWithCGImage:0 width:v24 height:v11 texturePixelFormat:objc_msgSend(v7, "pixelFormat")];
      [v19 setSourceAlphaInfo:0];
      [v19 setRowbytes:{objc_msgSend(v17, "bytesPerRow")}];
      [v19 setTargetPlatform:{objc_msgSend(v14, "targetPlatform")}];
      [v19 setPixelFormat:objc_msgSend(v13, "pixelFormat")];
      [v19 setTextureInterpretation:0];
      v20 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:objc_msgSend(v18 length:{"bytes"), objc_msgSend(v17, "bytesPerImage")}];
      [v19 setPixelData:v20];

      [v13 addBitmap:v19];
      ++v16;
    }

    while (v16 < [objc_msgSend(v15 "elements")]);
  }

  [v13 setOptOutOfThinning:{objc_msgSend(-[TDTextureRawRenditionSpec production](self, "production"), "optOutOfThinning")}];
  [v13 setPreserveForArchiveOnly:{-[TDTextureRawRenditionSpec preserveForArchiveOnly](self, "preserveForArchiveOnly")}];
  v21 = [v13 CSIRepresentationWithCompression:v23];

  return v21;
}

@end