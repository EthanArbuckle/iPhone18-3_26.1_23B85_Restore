@interface MKBookmark
- (MKBookmark)initWithData:(id)a3;
@end

@implementation MKBookmark

- (MKBookmark)initWithData:(id)a3
{
  v27[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = MKBookmark;
  v5 = [(MKBookmark *)&v23 init];
  if (v5)
  {
    v22 = 0;
    v6 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v4 options:0 error:&v22];
    v7 = v22;
    if (v7)
    {
      v8 = +[MKLog log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(MKBookmark *)v7 initWithData:v8];
      }

LABEL_14:

      v19 = 0;
      goto LABEL_15;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = +[MKLog log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [MKBookmark initWithData:v8];
      }

      goto LABEL_14;
    }

    v9 = v6;
    v10 = [v9 objectForKey:@"id"];
    [(MKBookmark *)v5 setID:v10];

    v11 = [v9 objectForKey:@"title"];
    [(MKBookmark *)v5 setTitle:v11];

    v12 = [v9 objectForKey:@"url"];
    [(MKBookmark *)v5 setUrl:v12];

    if (!v5->_title)
    {
      [(MKBookmark *)v5 setTitle:v5->_url];
    }

    if (v5->_url)
    {
      v27[0] = @"WebBookmarkTypeLeaf";
      v26[0] = @"WebBookmarkType";
      v26[1] = @"WebBookmarkUUID";
      v13 = [MEMORY[0x277CCAD78] UUID];
      v14 = [v13 UUIDString];
      v27[1] = v14;
      v26[2] = @"URIDictionary";
      title = v5->_title;
      v24 = @"title";
      v25 = title;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      v26[3] = @"URLString";
      url = v5->_url;
      v27[2] = v16;
      v27[3] = url;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:4];
      [(MKBookmark *)v5 setData:v18];
    }
  }

  v19 = v5;
LABEL_15:

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

@end