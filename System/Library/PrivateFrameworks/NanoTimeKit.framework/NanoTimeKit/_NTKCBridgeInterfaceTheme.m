@interface _NTKCBridgeInterfaceTheme
- (void)configureAlbumListStackViewPhonePhotoDecoration:(id)a3;
- (void)configureAlbumListSubtitleLabel:(id)a3 asOpaque:(BOOL)a4;
- (void)configureAlbumListTitleLabel:(id)a3 asOpaque:(BOOL)a4;
- (void)configureAlbumListTitleTextField:(id)a3 asOpaque:(BOOL)a4;
@end

@implementation _NTKCBridgeInterfaceTheme

- (void)configureAlbumListTitleTextField:(id)a3 asOpaque:(BOOL)a4
{
  v4 = a4;
  v8.receiver = self;
  v8.super_class = _NTKCBridgeInterfaceTheme;
  v5 = a3;
  [(PUFlatWhiteInterfaceTheme *)&v8 configureAlbumListTitleTextField:v5 asOpaque:v4];
  v6 = BPSTextColor();
  [v5 setTextColor:{v6, v8.receiver, v8.super_class}];

  v7 = [MEMORY[0x277D75348] clearColor];
  [v5 setBackgroundColor:v7];
}

- (void)configureAlbumListTitleLabel:(id)a3 asOpaque:(BOOL)a4
{
  v4 = a4;
  v8.receiver = self;
  v8.super_class = _NTKCBridgeInterfaceTheme;
  v5 = a3;
  [(PUFlatWhiteInterfaceTheme *)&v8 configureAlbumListTitleLabel:v5 asOpaque:v4];
  v6 = BPSTextColor();
  [v5 setTextColor:{v6, v8.receiver, v8.super_class}];

  v7 = [MEMORY[0x277D75348] clearColor];
  [v5 setBackgroundColor:v7];
}

- (void)configureAlbumListSubtitleLabel:(id)a3 asOpaque:(BOOL)a4
{
  v4 = a4;
  v8.receiver = self;
  v8.super_class = _NTKCBridgeInterfaceTheme;
  v5 = a3;
  [(PUFlatWhiteInterfaceTheme *)&v8 configureAlbumListSubtitleLabel:v5 asOpaque:v4];
  v6 = [MEMORY[0x277D75348] clearColor];
  [v5 setBackgroundColor:v6];

  v7 = BPSDetailTextColor();
  [v5 setTextColor:v7];
}

- (void)configureAlbumListStackViewPhonePhotoDecoration:(id)a3
{
  v5.receiver = self;
  v5.super_class = _NTKCBridgeInterfaceTheme;
  v3 = a3;
  [(PUFlatWhiteInterfaceTheme *)&v5 configureAlbumListStackViewPhonePhotoDecoration:v3];
  v4 = BPSSeparatorColor();
  [v3 setBorderColor:{v4, v5.receiver, v5.super_class}];
}

@end