@interface SFSyntheticBookmarkFolder
- (BOOL)isEqual:(id)a3;
- (SFSyntheticBookmarkFolder)initWithBookmarkList:(id)a3 title:(id)a4;
@end

@implementation SFSyntheticBookmarkFolder

- (SFSyntheticBookmarkFolder)initWithBookmarkList:(id)a3 title:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = SFSyntheticBookmarkFolder;
  v9 = [(SFSyntheticBookmarkFolder *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bookmarkList, a3);
    objc_storeStrong(&v10->_title, a4);
    v11 = v10;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    v6 = v4;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([(SFSyntheticBookmarkFolder *)self bookmarkList], (v7 = objc_claimAutoreleasedReturnValue()) != 0) && (v8 = v7, [(SFSyntheticBookmarkFolder *)v6 bookmarkList], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9))
    {
      v10 = [(SFSyntheticBookmarkFolder *)self bookmarkList];
      v11 = [v10 folderID];
      v12 = [(SFSyntheticBookmarkFolder *)v6 bookmarkList];
      v13 = v11 == [v12 folderID];
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

@end