@interface NNNewsDaemonHeadlineSectionWrapper
- (NNNewsDaemonHeadlineSectionWrapper)initWithSection:(id)a3 assetFileURLsByRemoteURL:(id)a4;
- (NSString)sync_colorHexString;
- (NSString)sync_identifier;
- (NSString)sync_name;
@end

@implementation NNNewsDaemonHeadlineSectionWrapper

- (NNNewsDaemonHeadlineSectionWrapper)initWithSection:(id)a3 assetFileURLsByRemoteURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v28.receiver = self;
  v28.super_class = NNNewsDaemonHeadlineSectionWrapper;
  v8 = [(NNNewsDaemonHeadlineSectionWrapper *)&v28 init];
  if (v8)
  {
    v9 = [v6 copy];
    section = v8->_section;
    v8->_section = v9;

    v11 = [v6 items];
    v12 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v11 count]);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v25;
      do
      {
        v17 = 0;
        do
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v24 + 1) + 8 * v17);
          v19 = [NNNewsDaemonHeadlineHeadlineWrapper alloc];
          v20 = [(NNNewsDaemonHeadlineHeadlineWrapper *)v19 initWithHeadline:v18 assetFileURLsByRemoteURL:v7, v24];
          if (v20)
          {
            [v12 addObject:v20];
          }

          v17 = v17 + 1;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v15);
    }

    v21 = [v12 copy];
    headlines = v8->_headlines;
    v8->_headlines = v21;
  }

  return v8;
}

- (NSString)sync_identifier
{
  v2 = [(NNNewsDaemonHeadlineSectionWrapper *)self section];
  v3 = [v2 identifier];

  return v3;
}

- (NSString)sync_name
{
  v2 = [(NNNewsDaemonHeadlineSectionWrapper *)self section];
  v3 = [v2 name];

  return v3;
}

- (NSString)sync_colorHexString
{
  v2 = [(NNNewsDaemonHeadlineSectionWrapper *)self section];
  v3 = [v2 nameColorLight];

  return v3;
}

@end