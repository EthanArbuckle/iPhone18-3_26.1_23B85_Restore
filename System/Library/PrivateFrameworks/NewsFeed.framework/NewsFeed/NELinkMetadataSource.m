@interface NELinkMetadataSource
- (NELinkMetadataSource)initWithTitle:(id)a3 url:(id)a4 image:(id)a5;
- (NELinkMetadataSource)initWithTitle:(id)a3 url:(id)a4 imageProvider:(id)a5 iconProvider:(id)a6 selectedText:(id)a7;
- (id)_linkPresentationImageFromImage:(id)a3;
@end

@implementation NELinkMetadataSource

- (NELinkMetadataSource)initWithTitle:(id)a3 url:(id)a4 image:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = NELinkMetadataSource;
  v11 = [(NELinkMetadataSource *)&v18 init];
  v12 = v11;
  if (v11)
  {
    v13 = [(NELinkMetadataSource *)v11 _linkPresentationImageFromImage:v10];
    v14 = objc_alloc_init(MEMORY[0x1E696ECA0]);
    [(LPLinkMetadata *)v14 setTitle:v8];
    [(LPLinkMetadata *)v14 setOriginalURL:v9];
    [(LPLinkMetadata *)v14 setURL:v9];
    v15 = objc_alloc_init(MEMORY[0x1E696EC10]);
    [(LPLinkMetadata *)v14 setSpecialization:v15];

    if (v13)
    {
      [(LPLinkMetadata *)v14 setImage:v13];
      [(LPLinkMetadata *)v14 setIcon:v13];
    }

    linkMetadata = v12->_linkMetadata;
    v12->_linkMetadata = v14;
  }

  return v12;
}

- (NELinkMetadataSource)initWithTitle:(id)a3 url:(id)a4 imageProvider:(id)a5 iconProvider:(id)a6 selectedText:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v22.receiver = self;
  v22.super_class = NELinkMetadataSource;
  v17 = [(NELinkMetadataSource *)&v22 init];
  if (v17)
  {
    v18 = objc_alloc_init(MEMORY[0x1E696ECA0]);
    [(LPLinkMetadata *)v18 setOriginalURL:v13];
    [(LPLinkMetadata *)v18 setURL:v13];
    [(LPLinkMetadata *)v18 setTitle:v12];
    v19 = objc_alloc_init(MEMORY[0x1E696EC10]);
    [(LPLinkMetadata *)v18 setSpecialization:v19];

    [(LPLinkMetadata *)v18 setSelectedText:v16];
    [(LPLinkMetadata *)v18 setImageProvider:v14];
    [(LPLinkMetadata *)v18 setIconProvider:v15];
    linkMetadata = v17->_linkMetadata;
    v17->_linkMetadata = v18;
  }

  return v17;
}

- (id)_linkPresentationImageFromImage:(id)a3
{
  v3 = a3;
  if ([(UIImage *)v3 isSymbolImage])
  {
    v4 = [objc_alloc(MEMORY[0x1E696EC68]) initWithPlatformImage:v3];
  }

  else if (v3)
  {
    v5 = UIImagePNGRepresentation(v3);
    if (v5)
    {
      v4 = [objc_alloc(MEMORY[0x1E696EC68]) initWithData:v5 MIMEType:@"image/png"];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end