@interface NNNewsDaemonHeadlineSectionWrapper
- (NNNewsDaemonHeadlineSectionWrapper)initWithSection:(id)section assetFileURLsByRemoteURL:(id)l;
- (NSString)sync_colorHexString;
- (NSString)sync_identifier;
- (NSString)sync_name;
@end

@implementation NNNewsDaemonHeadlineSectionWrapper

- (NNNewsDaemonHeadlineSectionWrapper)initWithSection:(id)section assetFileURLsByRemoteURL:(id)l
{
  sectionCopy = section;
  lCopy = l;
  v28.receiver = self;
  v28.super_class = NNNewsDaemonHeadlineSectionWrapper;
  v8 = [(NNNewsDaemonHeadlineSectionWrapper *)&v28 init];
  if (v8)
  {
    v9 = [sectionCopy copy];
    section = v8->_section;
    v8->_section = v9;

    items = [sectionCopy items];
    v12 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [items count]);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v13 = items;
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
          v20 = [(NNNewsDaemonHeadlineHeadlineWrapper *)v19 initWithHeadline:v18 assetFileURLsByRemoteURL:lCopy, v24];
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
  section = [(NNNewsDaemonHeadlineSectionWrapper *)self section];
  identifier = [section identifier];

  return identifier;
}

- (NSString)sync_name
{
  section = [(NNNewsDaemonHeadlineSectionWrapper *)self section];
  name = [section name];

  return name;
}

- (NSString)sync_colorHexString
{
  section = [(NNNewsDaemonHeadlineSectionWrapper *)self section];
  nameColorLight = [section nameColorLight];

  return nameColorLight;
}

@end