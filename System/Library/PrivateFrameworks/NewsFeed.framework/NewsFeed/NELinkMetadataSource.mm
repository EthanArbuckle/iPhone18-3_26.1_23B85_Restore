@interface NELinkMetadataSource
- (NELinkMetadataSource)initWithTitle:(id)title url:(id)url image:(id)image;
- (NELinkMetadataSource)initWithTitle:(id)title url:(id)url imageProvider:(id)provider iconProvider:(id)iconProvider selectedText:(id)text;
- (id)_linkPresentationImageFromImage:(id)image;
@end

@implementation NELinkMetadataSource

- (NELinkMetadataSource)initWithTitle:(id)title url:(id)url image:(id)image
{
  titleCopy = title;
  urlCopy = url;
  imageCopy = image;
  v18.receiver = self;
  v18.super_class = NELinkMetadataSource;
  v11 = [(NELinkMetadataSource *)&v18 init];
  v12 = v11;
  if (v11)
  {
    v13 = [(NELinkMetadataSource *)v11 _linkPresentationImageFromImage:imageCopy];
    v14 = objc_alloc_init(MEMORY[0x1E696ECA0]);
    [(LPLinkMetadata *)v14 setTitle:titleCopy];
    [(LPLinkMetadata *)v14 setOriginalURL:urlCopy];
    [(LPLinkMetadata *)v14 setURL:urlCopy];
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

- (NELinkMetadataSource)initWithTitle:(id)title url:(id)url imageProvider:(id)provider iconProvider:(id)iconProvider selectedText:(id)text
{
  titleCopy = title;
  urlCopy = url;
  providerCopy = provider;
  iconProviderCopy = iconProvider;
  textCopy = text;
  v22.receiver = self;
  v22.super_class = NELinkMetadataSource;
  v17 = [(NELinkMetadataSource *)&v22 init];
  if (v17)
  {
    v18 = objc_alloc_init(MEMORY[0x1E696ECA0]);
    [(LPLinkMetadata *)v18 setOriginalURL:urlCopy];
    [(LPLinkMetadata *)v18 setURL:urlCopy];
    [(LPLinkMetadata *)v18 setTitle:titleCopy];
    v19 = objc_alloc_init(MEMORY[0x1E696EC10]);
    [(LPLinkMetadata *)v18 setSpecialization:v19];

    [(LPLinkMetadata *)v18 setSelectedText:textCopy];
    [(LPLinkMetadata *)v18 setImageProvider:providerCopy];
    [(LPLinkMetadata *)v18 setIconProvider:iconProviderCopy];
    linkMetadata = v17->_linkMetadata;
    v17->_linkMetadata = v18;
  }

  return v17;
}

- (id)_linkPresentationImageFromImage:(id)image
{
  imageCopy = image;
  if ([(UIImage *)imageCopy isSymbolImage])
  {
    v4 = [objc_alloc(MEMORY[0x1E696EC68]) initWithPlatformImage:imageCopy];
  }

  else if (imageCopy)
  {
    v5 = UIImagePNGRepresentation(imageCopy);
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