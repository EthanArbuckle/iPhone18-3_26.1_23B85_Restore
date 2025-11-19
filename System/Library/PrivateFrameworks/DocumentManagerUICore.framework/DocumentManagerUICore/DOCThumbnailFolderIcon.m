@interface DOCThumbnailFolderIcon
+ (id)_folderIconForSize:(CGSize)a3 scale:(double)a4;
+ (id)_folderIconsForImageNamePattern:(id)a3 documentsBadgeNamePattern:(id)a4 desktopBadgeNamePattern:(id)a5 sharedBadgeNamePattern:(id)a6 downloadsBadgeNamePattern:(id)a7 genericSharepointBadgeNamePattern:(id)a8;
+ (id)folderIconForDescriptor:(id)a3;
+ (id)folderIcons;
+ (id)imageWithStyle:(unint64_t)a3 assetImage:(id)a4;
- (CGSize)badgeSize;
- (CGSize)badgeSizeForFolderType:(unint64_t)a3;
- (DOCThumbnailFolderIcon)initWithImageName:(id)a3 documentsBadgeName:(id)a4 dekstopBadgeName:(id)a5 sharedBadgeName:(id)a6 downloadsBadgeName:(id)a7 genericSharepointBadgeName:(id)a8 imageDimension:(double)a9 badgeDimension:(double)a10 badgeBottomInset:(double)a11 sharedBadgeDimension:(double)a12 sharedBadgeBottomInset:(double)a13;
- (UIImage)desktopBadge;
- (UIImage)documentsBadge;
- (UIImage)downloadsBadge;
- (UIImage)genericSharepointBadge;
- (UIImage)sharedBadge;
- (double)bottomInsetForFolderType:(unint64_t)a3;
- (id)_badgedFolderIconForBadge:(id)a3 badgeSize:(CGSize)a4 bottomInset:(double)a5 style:(unint64_t)a6;
- (id)badgeForFolderType:(unint64_t)a3;
- (id)badgedFolderIconForBadge:(id)a3 style:(unint64_t)a4;
- (id)badgedFolderIconForFolderType:(unint64_t)a3 style:(unint64_t)a4;
- (id)image;
- (id)plainFolderImageWithStyle:(unint64_t)a3;
- (void)resolveImage;
@end

@implementation DOCThumbnailFolderIcon

+ (id)_folderIconsForImageNamePattern:(id)a3 documentsBadgeNamePattern:(id)a4 desktopBadgeNamePattern:(id)a5 sharedBadgeNamePattern:(id)a6 downloadsBadgeNamePattern:(id)a7 genericSharepointBadgeNamePattern:(id)a8
{
  v29 = a3;
  v28 = a4;
  v27 = a5;
  v26 = a6;
  v24 = a7;
  v23 = a8;
  v25 = [MEMORY[0x277CBEB18] arrayWithCapacity:14];
  for (i = 0; i != 14; ++i)
  {
    v14 = *&qword_249D07078[i];
    v15 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v29 validFormatSpecifiers:@"%u" error:0, v14];
    v16 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v28 validFormatSpecifiers:@"%u" error:0, v14];
    v17 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v27 validFormatSpecifiers:@"%u" error:0, v14];
    v18 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v26 validFormatSpecifiers:@"%u" error:0, v14];
    v19 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v24 validFormatSpecifiers:@"%u" error:0, v14];
    v20 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v23 validFormatSpecifiers:@"%u" error:0, v14];
    v21 = [[DOCThumbnailFolderIcon alloc] initWithImageName:v15 documentsBadgeName:v16 dekstopBadgeName:v17 sharedBadgeName:v18 downloadsBadgeName:v19 genericSharepointBadgeName:v20 imageDimension:v14 badgeDimension:*&qword_249D070E8[i] badgeBottomInset:*&qword_249D071C8[i] sharedBadgeDimension:*&qword_249D07158[i] sharedBadgeBottomInset:*&qword_249D07238[i]];
    [v25 addObject:v21];
  }

  return v25;
}

+ (id)folderIcons
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__DOCThumbnailFolderIcon_folderIcons__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (folderIcons_onceToken != -1)
  {
    dispatch_once(&folderIcons_onceToken, block);
  }

  v2 = folderIcons_folderIcons;

  return v2;
}

uint64_t __37__DOCThumbnailFolderIcon_folderIcons__block_invoke(uint64_t a1)
{
  folderIcons_folderIcons = [*(a1 + 32) _folderIconsForImageNamePattern:@"Folder%upt" documentsBadgeNamePattern:@"DocumentsFolder%upt" desktopBadgeNamePattern:@"DesktopFolder%upt" sharedBadgeNamePattern:@"SharedFolder%upt" downloadsBadgeNamePattern:@"DownloadsFolder%upt" genericSharepointBadgeNamePattern:@"GenericSharepointFolder%upt"];

  return MEMORY[0x2821F96F8]();
}

+ (id)folderIconForDescriptor:(id)a3
{
  v4 = a3;
  [v4 size];
  v6 = v5;
  v8 = v7;
  [v4 scale];
  v10 = v9;

  return [a1 _folderIconForSize:v6 scale:{v8, v10}];
}

+ (id)_folderIconForSize:(CGSize)a3 scale:(double)a4
{
  height = a3.height;
  width = a3.width;
  v27 = *MEMORY[0x277D85DE8];
  if (_folderIconForSize_scale__onceToken != -1)
  {
    +[DOCThumbnailFolderIcon _folderIconForSize:scale:];
  }

  v7 = [MEMORY[0x277CCABB0] numberWithDouble:height + width * 100000.0];
  v8 = [_folderIconForSize_scale__folderIconCache objectForKey:v7];
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    [a1 folderIcons];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = v25 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v23;
LABEL_7:
      v14 = 0;
      while (1)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v22 + 1) + 8 * v14);
        [v15 imageDimension];
        if (vabdd_f64(width, v16) < 1.0)
        {
          break;
        }

        if (v12 == ++v14)
        {
          v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
          if (v12)
          {
            goto LABEL_7;
          }

          goto LABEL_13;
        }
      }

      v17 = v15;

      if (v17)
      {
        goto LABEL_19;
      }
    }

    else
    {
LABEL_13:
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __51__DOCThumbnailFolderIcon__folderIconForSize_scale___block_invoke_2;
    v21[3] = &__block_descriptor_48_e39_B32__0__DOCThumbnailFolderIcon_8Q16_B24l;
    *&v21[4] = width;
    *&v21[5] = height;
    v18 = [v10 indexOfObjectPassingTest:v21];
    if (v18 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [v10 lastObject];
    }

    else
    {
      [v10 objectAtIndexedSubscript:v18];
    }
    v17 = ;
LABEL_19:
    [v17 resolveImage];
    [_folderIconForSize_scale__folderIconCache setObject:v17 forKey:v7];
    v9 = v17;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v9;
}

uint64_t __51__DOCThumbnailFolderIcon__folderIconForSize_scale___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEA78]);
  v1 = _folderIconForSize_scale__folderIconCache;
  _folderIconForSize_scale__folderIconCache = v0;

  v2 = _folderIconForSize_scale__folderIconCache;

  return [v2 setCountLimit:10];
}

BOOL __51__DOCThumbnailFolderIcon__folderIconForSize_scale___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  [a2 imageDimension];
  result = v6 >= *(a1 + 32);
  *a4 = result;
  return result;
}

- (DOCThumbnailFolderIcon)initWithImageName:(id)a3 documentsBadgeName:(id)a4 dekstopBadgeName:(id)a5 sharedBadgeName:(id)a6 downloadsBadgeName:(id)a7 genericSharepointBadgeName:(id)a8 imageDimension:(double)a9 badgeDimension:(double)a10 badgeBottomInset:(double)a11 sharedBadgeDimension:(double)a12 sharedBadgeBottomInset:(double)a13
{
  v33 = a3;
  v32 = a4;
  v31 = a5;
  v25 = a6;
  v26 = a7;
  v27 = a8;
  v34.receiver = self;
  v34.super_class = DOCThumbnailFolderIcon;
  v28 = [(DOCThumbnailFolderIcon *)&v34 init];
  v29 = v28;
  if (v28)
  {
    objc_storeStrong(&v28->_imageName, a3);
    v29->_imageDimension = a9;
    objc_storeStrong(&v29->_documentsBadgeName, a4);
    objc_storeStrong(&v29->_desktopBadgeName, a5);
    objc_storeStrong(&v29->_sharedBadgeName, a6);
    objc_storeStrong(&v29->_downloadsBadgeName, a7);
    objc_storeStrong(&v29->_genericSharepointBadgeName, a8);
    v29->_bottomInset = a11;
    v29->_sharedBadgeBottomInset = a13;
    v29->_badgeSize.width = a10;
    v29->_badgeSize.height = a10;
    v29->_sharedBadgeSize.width = a12;
    v29->_sharedBadgeSize.height = a12;
  }

  return v29;
}

- (UIImage)documentsBadge
{
  documentsBadge = self->_documentsBadge;
  if (!documentsBadge)
  {
    v4 = MEMORY[0x277D755B8];
    documentsBadgeName = self->_documentsBadgeName;
    v6 = DOCFrameworkBundle();
    v7 = [v4 imageNamed:documentsBadgeName inBundle:v6];
    v8 = self->_documentsBadge;
    self->_documentsBadge = v7;

    documentsBadge = self->_documentsBadge;
  }

  return documentsBadge;
}

- (UIImage)desktopBadge
{
  desktopBadge = self->_desktopBadge;
  if (!desktopBadge)
  {
    v4 = MEMORY[0x277D755B8];
    desktopBadgeName = self->_desktopBadgeName;
    v6 = DOCFrameworkBundle();
    v7 = [v4 imageNamed:desktopBadgeName inBundle:v6];
    v8 = self->_desktopBadge;
    self->_desktopBadge = v7;

    desktopBadge = self->_desktopBadge;
  }

  return desktopBadge;
}

- (UIImage)sharedBadge
{
  sharedBadge = self->_sharedBadge;
  if (!sharedBadge)
  {
    v4 = MEMORY[0x277D755B8];
    sharedBadgeName = self->_sharedBadgeName;
    v6 = DOCFrameworkBundle();
    v7 = [v4 imageNamed:sharedBadgeName inBundle:v6];
    v8 = self->_sharedBadge;
    self->_sharedBadge = v7;

    sharedBadge = self->_sharedBadge;
  }

  return sharedBadge;
}

- (UIImage)downloadsBadge
{
  downloadsBadge = self->_downloadsBadge;
  if (!downloadsBadge)
  {
    v4 = MEMORY[0x277D755B8];
    downloadsBadgeName = self->_downloadsBadgeName;
    v6 = DOCFrameworkBundle();
    v7 = [v4 imageNamed:downloadsBadgeName inBundle:v6];
    v8 = self->_downloadsBadge;
    self->_downloadsBadge = v7;

    downloadsBadge = self->_downloadsBadge;
  }

  return downloadsBadge;
}

- (UIImage)genericSharepointBadge
{
  genericSharepointBadge = self->_genericSharepointBadge;
  if (!genericSharepointBadge)
  {
    v4 = MEMORY[0x277D755B8];
    genericSharepointBadgeName = self->_genericSharepointBadgeName;
    v6 = DOCFrameworkBundle();
    v7 = [v4 imageNamed:genericSharepointBadgeName inBundle:v6];
    v8 = self->_genericSharepointBadge;
    self->_genericSharepointBadge = v7;

    genericSharepointBadge = self->_genericSharepointBadge;
  }

  return genericSharepointBadge;
}

- (id)image
{
  [(DOCThumbnailFolderIcon *)self resolveImage];
  plainFolderImage = self->_plainFolderImage;

  return plainFolderImage;
}

- (void)resolveImage
{
  if (!self->_imageName)
  {
    [DOCThumbnailFolderIcon resolveImage];
  }

  if (!self->_plainFolderImage)
  {
    v3 = _UISolariumEnabled();
    v4 = MEMORY[0x277D755B8];
    if (v3)
    {
      v5 = DOCFrameworkBundle();
      v6 = @"FolderFull1024x1024";
      v7 = v4;
    }

    else
    {
      imageName = self->_imageName;
      v5 = DOCFrameworkBundle();
      v7 = v4;
      v6 = imageName;
    }

    v11 = v5;
    v9 = [v7 imageNamed:v6 inBundle:?];
    plainFolderImage = self->_plainFolderImage;
    self->_plainFolderImage = v9;
  }
}

+ (id)imageWithStyle:(unint64_t)a3 assetImage:(id)a4
{
  v7 = a4;
  v8 = [v7 imageAsset];

  if (!v8)
  {
    [DOCThumbnailFolderIcon imageWithStyle:a2 assetImage:a1];
  }

  if (a3)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  v10 = [v7 traitCollection];
  if ([v10 userInterfaceStyle] == v9)
  {
    v11 = v7;
  }

  else
  {
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = objc_opt_new();
    }

    v13 = v12;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __52__DOCThumbnailFolderIcon_imageWithStyle_assetImage___block_invoke;
    v17[3] = &__block_descriptor_40_e27_v16__0___UIMutableTraits__8l;
    v17[4] = v9;
    v14 = [v12 traitCollectionByModifyingTraits:v17];

    v15 = [v7 imageAsset];
    v11 = [v15 imageWithTraitCollection:v14];
  }

  return v11;
}

- (id)plainFolderImageWithStyle:(unint64_t)a3
{
  v5 = objc_opt_class();
  v6 = [(DOCThumbnailFolderIcon *)self plainFolderImage];
  v7 = [v5 imageWithStyle:a3 assetImage:v6];

  return v7;
}

- (id)badgedFolderIconForFolderType:(unint64_t)a3 style:(unint64_t)a4
{
  v7 = [(DOCThumbnailFolderIcon *)self badgeForFolderType:?];
  [(DOCThumbnailFolderIcon *)self badgeSizeForFolderType:a3];
  v9 = v8;
  v11 = v10;
  [(DOCThumbnailFolderIcon *)self bottomInsetForFolderType:a3];
  v13 = [(DOCThumbnailFolderIcon *)self _badgedFolderIconForBadge:v7 badgeSize:a4 bottomInset:v9 style:v11, v12];

  return v13;
}

- (id)badgedFolderIconForBadge:(id)a3 style:(unint64_t)a4
{
  v6 = a3;
  [(DOCThumbnailFolderIcon *)self badgeSize];
  v8 = v7;
  v10 = v9;
  [(DOCThumbnailFolderIcon *)self bottomInset];
  v12 = [(DOCThumbnailFolderIcon *)self _badgedFolderIconForBadge:v6 badgeSize:a4 bottomInset:v8 style:v10, v11];

  return v12;
}

- (id)_badgedFolderIconForBadge:(id)a3 badgeSize:(CGSize)a4 bottomInset:(double)a5 style:(unint64_t)a6
{
  height = a4.height;
  width = a4.width;
  v11 = a3;
  v12 = objc_opt_class();
  v13 = [(DOCThumbnailFolderIcon *)self plainFolderImage];
  v14 = [v12 imageWithStyle:a6 assetImage:v13];

  v15 = [objc_opt_class() imageWithStyle:a6 assetImage:v11];

  v16 = objc_alloc_init(MEMORY[0x277D75568]);
  [v14 scale];
  [v16 setScale:?];
  v17 = objc_alloc(MEMORY[0x277D75560]);
  [v14 size];
  v18 = [v17 initWithSize:v16 format:?];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __80__DOCThumbnailFolderIcon__badgedFolderIconForBadge_badgeSize_bottomInset_style___block_invoke;
  v23[3] = &unk_278FB39C8;
  v26 = width;
  v27 = height;
  v28 = a5;
  v24 = v14;
  v25 = v15;
  v19 = v15;
  v20 = v14;
  v21 = [v18 imageWithActions:v23];

  return v21;
}

void __80__DOCThumbnailFolderIcon__badgedFolderIconForBadge_badgeSize_bottomInset_style___block_invoke(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x277CBF348];
  v4 = *(MEMORY[0x277CBF348] + 8);
  v5 = *(a1 + 32);
  v6 = a2;
  [v5 size];
  [*(a1 + 32) drawInRect:{v3, v4, v7, v8}];
  v9 = [v6 CGContext];

  CGContextSaveGState(v9);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  [*(a1 + 32) size];
  UIRectCenteredXInRect();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [*(a1 + 32) size];
  [*(a1 + 40) drawInRect:{v13, v18 - *(a1 + 64) - *(a1 + 56), v15, v17}];

  CGContextRestoreGState(v9);
}

- (id)badgeForFolderType:(unint64_t)a3
{
  v4 = 0;
  if (a3 <= 3)
  {
    if (a3 == 2)
    {
      v4 = [(DOCThumbnailFolderIcon *)self desktopBadge];
    }

    else if (a3 == 3)
    {
      v4 = [(DOCThumbnailFolderIcon *)self documentsBadge];
    }
  }

  else
  {
    switch(a3)
    {
      case 4uLL:
        v4 = [(DOCThumbnailFolderIcon *)self downloadsBadge];
        break;
      case 5uLL:
        v4 = [(DOCThumbnailFolderIcon *)self sharedBadge];
        break;
      case 6uLL:
        v4 = [(DOCThumbnailFolderIcon *)self genericSharepointBadge];
        break;
    }
  }

  return v4;
}

- (CGSize)badgeSize
{
  [(DOCThumbnailFolderIcon *)self badgeSizeForFolderType:1];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)badgeSizeForFolderType:(unint64_t)a3
{
  p_width = MEMORY[0x277CBF3A8];
  v4 = (MEMORY[0x277CBF3A8] + 8);
  p_badgeSize = &self->_badgeSize;
  p_height = &self->_badgeSize.height;
  if (a3 == 5)
  {
    p_badgeSize = &self->_sharedBadgeSize;
    p_height = &self->_sharedBadgeSize.height;
  }

  if (a3)
  {
    p_width = &p_badgeSize->width;
    v4 = p_height;
  }

  v7 = *v4;
  v8 = *p_width;
  result.height = v7;
  result.width = v8;
  return result;
}

- (double)bottomInsetForFolderType:(unint64_t)a3
{
  if (!a3)
  {
    return 0.0;
  }

  v3 = 16;
  if (a3 != 5)
  {
    v3 = 8;
  }

  return *(&self->super.isa + v3);
}

+ (void)imageWithStyle:(uint64_t)a1 assetImage:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DOCThumbnailFolderIcon.m" lineNumber:273 description:@"Image has to load from xcasset."];
}

@end