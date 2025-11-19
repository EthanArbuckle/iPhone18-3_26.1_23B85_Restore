@interface _SFFolderPickerItem
- (BOOL)isEqual:(id)a3;
- (NSString)title;
- (id)_initWithBookmark:(id)a3 depth:(unint64_t)a4;
- (id)_initWithSyntheticFolder:(id)a3 depth:(unint64_t)a4;
- (unint64_t)hash;
@end

@implementation _SFFolderPickerItem

- (id)_initWithBookmark:(id)a3 depth:(unint64_t)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = _SFFolderPickerItem;
  v8 = [(_SFFolderPickerItem *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_bookmark, a3);
    v9->_depth = a4;
    v9->_isSelectable = 1;
    v10 = v9;
  }

  return v9;
}

- (id)_initWithSyntheticFolder:(id)a3 depth:(unint64_t)a4
{
  v7 = a3;
  v15.receiver = self;
  v15.super_class = _SFFolderPickerItem;
  v8 = [(_SFFolderPickerItem *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_syntheticFolder, a3);
    v9->_depth = a4;
    v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"star.square.on.square"];
    icon = v9->_icon;
    v9->_icon = v10;

    v12 = [v7 bookmarkList];
    v9->_isSelectable = v12 != 0;

    v13 = v9;
  }

  return v9;
}

- (NSString)title
{
  v3 = [(SFSyntheticBookmarkFolder *)self->_syntheticFolder title];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(WebBookmark *)self->_bookmark localizedTitle];
  }

  v6 = v5;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    v6 = v4;
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
  v4 = [(WebBookmark *)self->_bookmark UUID];
  v5 = [v4 hash];
  v6 = depth ^ [(SFSyntheticBookmarkFolder *)self->_syntheticFolder hash];

  return v5 ^ v6;
}

@end