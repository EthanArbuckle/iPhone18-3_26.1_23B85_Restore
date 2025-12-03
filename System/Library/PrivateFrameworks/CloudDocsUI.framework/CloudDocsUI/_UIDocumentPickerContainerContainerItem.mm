@interface _UIDocumentPickerContainerContainerItem
- (_UIDocumentPickerContainerContainerItem)initWithContainer:(id)container;
- (id)_blockingThumbnailWithSize:(CGSize)size scale:(double)scale wantsBorder:(BOOL *)border;
- (id)modificationDate;
- (id)sortPath;
- (id)title;
- (void)_modelChanged;
@end

@implementation _UIDocumentPickerContainerContainerItem

- (_UIDocumentPickerContainerContainerItem)initWithContainer:(id)container
{
  containerCopy = container;
  v9.receiver = self;
  v9.super_class = _UIDocumentPickerContainerContainerItem;
  v6 = [(_UIDocumentPickerContainerItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_container, container);
  }

  return v7;
}

- (id)title
{
  v2 = self->_container;
  localizedName = [(BRContainer *)v2 localizedName];

  if (localizedName)
  {
    localizedName2 = [(BRContainer *)v2 localizedName];
  }

  else
  {
    identifier = [(BRContainer *)v2 identifier];
    v6 = [identifier rangeOfString:@"." options:4];
    v8 = v7;

    identifier2 = [(BRContainer *)v2 identifier];
    localizedName2 = identifier2;
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = [identifier2 substringFromIndex:v6 + v8];

      localizedName2 = v10;
    }
  }

  return localizedName2;
}

- (void)_modelChanged
{
  model = [(_UIDocumentPickerContainerItem *)self model];
  modelObjects = [model modelObjects];
  v4 = -[_UIDocumentPickerContainerItem _formattedSubtitleForNumberOfItems:](self, "_formattedSubtitleForNumberOfItems:", [modelObjects count]);
  v5 = [v4 copy];
  cachedSubtitle = self->_cachedSubtitle;
  self->_cachedSubtitle = v5;
}

- (id)_blockingThumbnailWithSize:(CGSize)size scale:(double)scale wantsBorder:(BOOL *)border
{
  height = size.height;
  width = size.width;
  if (border)
  {
    *border = 0;
  }

  v9 = objc_opt_class();
  documentsURL = [(BRContainer *)self->_container documentsURL];
  v11 = [v9 _blockingFolderIconForURL:documentsURL container:self->_container size:width scale:{height, scale}];

  return v11;
}

- (id)modificationDate
{
  container = [(_UIDocumentPickerContainerContainerItem *)self container];
  lastServerUpdate = [container lastServerUpdate];

  return lastServerUpdate;
}

- (id)sortPath
{
  v3 = objc_autoreleasePoolPush();
  title = [(_UIDocumentPickerContainerContainerItem *)self title];
  v5 = [title stringByAppendingString:@"/"];

  objc_autoreleasePoolPop(v3);

  return v5;
}

@end