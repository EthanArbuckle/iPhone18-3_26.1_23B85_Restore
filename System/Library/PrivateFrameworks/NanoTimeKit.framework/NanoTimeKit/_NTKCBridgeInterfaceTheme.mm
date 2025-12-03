@interface _NTKCBridgeInterfaceTheme
- (void)configureAlbumListStackViewPhonePhotoDecoration:(id)decoration;
- (void)configureAlbumListSubtitleLabel:(id)label asOpaque:(BOOL)opaque;
- (void)configureAlbumListTitleLabel:(id)label asOpaque:(BOOL)opaque;
- (void)configureAlbumListTitleTextField:(id)field asOpaque:(BOOL)opaque;
@end

@implementation _NTKCBridgeInterfaceTheme

- (void)configureAlbumListTitleTextField:(id)field asOpaque:(BOOL)opaque
{
  opaqueCopy = opaque;
  v8.receiver = self;
  v8.super_class = _NTKCBridgeInterfaceTheme;
  fieldCopy = field;
  [(PUFlatWhiteInterfaceTheme *)&v8 configureAlbumListTitleTextField:fieldCopy asOpaque:opaqueCopy];
  v6 = BPSTextColor();
  [fieldCopy setTextColor:{v6, v8.receiver, v8.super_class}];

  clearColor = [MEMORY[0x277D75348] clearColor];
  [fieldCopy setBackgroundColor:clearColor];
}

- (void)configureAlbumListTitleLabel:(id)label asOpaque:(BOOL)opaque
{
  opaqueCopy = opaque;
  v8.receiver = self;
  v8.super_class = _NTKCBridgeInterfaceTheme;
  labelCopy = label;
  [(PUFlatWhiteInterfaceTheme *)&v8 configureAlbumListTitleLabel:labelCopy asOpaque:opaqueCopy];
  v6 = BPSTextColor();
  [labelCopy setTextColor:{v6, v8.receiver, v8.super_class}];

  clearColor = [MEMORY[0x277D75348] clearColor];
  [labelCopy setBackgroundColor:clearColor];
}

- (void)configureAlbumListSubtitleLabel:(id)label asOpaque:(BOOL)opaque
{
  opaqueCopy = opaque;
  v8.receiver = self;
  v8.super_class = _NTKCBridgeInterfaceTheme;
  labelCopy = label;
  [(PUFlatWhiteInterfaceTheme *)&v8 configureAlbumListSubtitleLabel:labelCopy asOpaque:opaqueCopy];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [labelCopy setBackgroundColor:clearColor];

  v7 = BPSDetailTextColor();
  [labelCopy setTextColor:v7];
}

- (void)configureAlbumListStackViewPhonePhotoDecoration:(id)decoration
{
  v5.receiver = self;
  v5.super_class = _NTKCBridgeInterfaceTheme;
  decorationCopy = decoration;
  [(PUFlatWhiteInterfaceTheme *)&v5 configureAlbumListStackViewPhonePhotoDecoration:decorationCopy];
  v4 = BPSSeparatorColor();
  [decorationCopy setBorderColor:{v4, v5.receiver, v5.super_class}];
}

@end