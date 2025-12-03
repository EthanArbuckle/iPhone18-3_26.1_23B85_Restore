@interface SFSyntheticBookmarkFolder
- (BOOL)isEqual:(id)equal;
- (SFSyntheticBookmarkFolder)initWithBookmarkList:(id)list title:(id)title;
@end

@implementation SFSyntheticBookmarkFolder

- (SFSyntheticBookmarkFolder)initWithBookmarkList:(id)list title:(id)title
{
  listCopy = list;
  titleCopy = title;
  v13.receiver = self;
  v13.super_class = SFSyntheticBookmarkFolder;
  v9 = [(SFSyntheticBookmarkFolder *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bookmarkList, list);
    objc_storeStrong(&v10->_title, title);
    v11 = v10;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    v6 = equalCopy;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([(SFSyntheticBookmarkFolder *)self bookmarkList], (v7 = objc_claimAutoreleasedReturnValue()) != 0) && (v8 = v7, [(SFSyntheticBookmarkFolder *)v6 bookmarkList], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9))
    {
      bookmarkList = [(SFSyntheticBookmarkFolder *)self bookmarkList];
      folderID = [bookmarkList folderID];
      bookmarkList2 = [(SFSyntheticBookmarkFolder *)v6 bookmarkList];
      v13 = folderID == [bookmarkList2 folderID];
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

@end