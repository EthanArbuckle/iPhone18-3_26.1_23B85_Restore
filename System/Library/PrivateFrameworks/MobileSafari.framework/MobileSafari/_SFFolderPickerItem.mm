@interface _SFFolderPickerItem
- (BOOL)isEqual:(id)equal;
- (NSString)title;
- (id)_initWithBookmark:(id)bookmark depth:(unint64_t)depth;
- (id)_initWithSyntheticFolder:(id)folder depth:(unint64_t)depth;
- (unint64_t)hash;
@end

@implementation _SFFolderPickerItem

- (id)_initWithBookmark:(id)bookmark depth:(unint64_t)depth
{
  bookmarkCopy = bookmark;
  v12.receiver = self;
  v12.super_class = _SFFolderPickerItem;
  v8 = [(_SFFolderPickerItem *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_bookmark, bookmark);
    v9->_depth = depth;
    v9->_isSelectable = 1;
    v10 = v9;
  }

  return v9;
}

- (id)_initWithSyntheticFolder:(id)folder depth:(unint64_t)depth
{
  folderCopy = folder;
  v15.receiver = self;
  v15.super_class = _SFFolderPickerItem;
  v8 = [(_SFFolderPickerItem *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_syntheticFolder, folder);
    v9->_depth = depth;
    v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"star.square.on.square"];
    icon = v9->_icon;
    v9->_icon = v10;

    bookmarkList = [folderCopy bookmarkList];
    v9->_isSelectable = bookmarkList != 0;

    v13 = v9;
  }

  return v9;
}

- (NSString)title
{
  title = [(SFSyntheticBookmarkFolder *)self->_syntheticFolder title];
  v4 = title;
  if (title)
  {
    localizedTitle = title;
  }

  else
  {
    localizedTitle = [(WebBookmark *)self->_bookmark localizedTitle];
  }

  v6 = localizedTitle;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    v6 = equalCopy;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && self->_depth == v6->_depth && WBSIsEqual())
    {
      v7 = WBSIsEqual();
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  depth = self->_depth;
  uUID = [(WebBookmark *)self->_bookmark UUID];
  v5 = [uUID hash];
  v6 = depth ^ [(SFSyntheticBookmarkFolder *)self->_syntheticFolder hash];

  return v5 ^ v6;
}

@end