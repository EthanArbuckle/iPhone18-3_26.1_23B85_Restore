@interface _UIDocumentPickerContainerContainerItem
- (_UIDocumentPickerContainerContainerItem)initWithContainer:(id)a3;
- (id)_blockingThumbnailWithSize:(CGSize)a3 scale:(double)a4 wantsBorder:(BOOL *)a5;
- (id)modificationDate;
- (id)sortPath;
- (id)title;
- (void)_modelChanged;
@end

@implementation _UIDocumentPickerContainerContainerItem

- (_UIDocumentPickerContainerContainerItem)initWithContainer:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _UIDocumentPickerContainerContainerItem;
  v6 = [(_UIDocumentPickerContainerItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_container, a3);
  }

  return v7;
}

- (id)title
{
  v2 = self->_container;
  v3 = [(BRContainer *)v2 localizedName];

  if (v3)
  {
    v4 = [(BRContainer *)v2 localizedName];
  }

  else
  {
    v5 = [(BRContainer *)v2 identifier];
    v6 = [v5 rangeOfString:@"." options:4];
    v8 = v7;

    v9 = [(BRContainer *)v2 identifier];
    v4 = v9;
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = [v9 substringFromIndex:v6 + v8];

      v4 = v10;
    }
  }

  return v4;
}

- (void)_modelChanged
{
  v7 = [(_UIDocumentPickerContainerItem *)self model];
  v3 = [v7 modelObjects];
  v4 = -[_UIDocumentPickerContainerItem _formattedSubtitleForNumberOfItems:](self, "_formattedSubtitleForNumberOfItems:", [v3 count]);
  v5 = [v4 copy];
  cachedSubtitle = self->_cachedSubtitle;
  self->_cachedSubtitle = v5;
}

- (id)_blockingThumbnailWithSize:(CGSize)a3 scale:(double)a4 wantsBorder:(BOOL *)a5
{
  height = a3.height;
  width = a3.width;
  if (a5)
  {
    *a5 = 0;
  }

  v9 = objc_opt_class();
  v10 = [(BRContainer *)self->_container documentsURL];
  v11 = [v9 _blockingFolderIconForURL:v10 container:self->_container size:width scale:{height, a4}];

  return v11;
}

- (id)modificationDate
{
  v2 = [(_UIDocumentPickerContainerContainerItem *)self container];
  v3 = [v2 lastServerUpdate];

  return v3;
}

- (id)sortPath
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(_UIDocumentPickerContainerContainerItem *)self title];
  v5 = [v4 stringByAppendingString:@"/"];

  objc_autoreleasePoolPop(v3);

  return v5;
}

@end