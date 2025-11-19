@interface _UIDocumentPickerCellFontManager
+ (id)sharedFontManager;
- (_UIDocumentPickerCellFontManager)init;
- (void)cacheFonts;
@end

@implementation _UIDocumentPickerCellFontManager

+ (id)sharedFontManager
{
  v2 = sharedFontManager_sharedInstance;
  if (!sharedFontManager_sharedInstance)
  {
    v3 = objc_alloc_init(_UIDocumentPickerCellFontManager);
    v4 = sharedFontManager_sharedInstance;
    sharedFontManager_sharedInstance = v3;

    v2 = sharedFontManager_sharedInstance;
  }

  return v2;
}

- (_UIDocumentPickerCellFontManager)init
{
  v5.receiver = self;
  v5.super_class = _UIDocumentPickerCellFontManager;
  v2 = [(_UIDocumentPickerCellFontManager *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(_UIDocumentPickerCellFontManager *)v2 cacheFonts];
  }

  return v3;
}

- (void)cacheFonts
{
  v3 = [_UIDocumentPickerCell _titleFontForTable:1];
  [(_UIDocumentPickerCellFontManager *)self setTitleFontForTableLayout:v3];

  v4 = [_UIDocumentPickerCell _subtitleFontForTable:1];
  [(_UIDocumentPickerCellFontManager *)self setSubtitleFontForTableLayout:v4];

  v5 = [_UIDocumentPickerCell _titleFontForTable:0];
  [(_UIDocumentPickerCellFontManager *)self setTitleFontForGridLayout:v5];

  v6 = [_UIDocumentPickerCell _subtitleFontForTable:0];
  [(_UIDocumentPickerCellFontManager *)self setSubtitleFontForGridLayout:v6];
}

@end