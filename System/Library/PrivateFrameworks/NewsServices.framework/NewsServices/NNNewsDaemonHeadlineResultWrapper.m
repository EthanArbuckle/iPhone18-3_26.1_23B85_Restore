@interface NNNewsDaemonHeadlineResultWrapper
- (NNNewsDaemonHeadlineResultWrapper)initWithResult:(id)a3 assetFileURLsByRemoteURL:(id)a4;
@end

@implementation NNNewsDaemonHeadlineResultWrapper

- (NNNewsDaemonHeadlineResultWrapper)initWithResult:(id)a3 assetFileURLsByRemoteURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v34.receiver = self;
  v34.super_class = NNNewsDaemonHeadlineResultWrapper;
  v8 = [(NNNewsDaemonHeadlineResultWrapper *)&v34 init];
  v9 = v8;
  if (v8)
  {
    v27 = v8;
    v28 = v6;
    v10 = [v6 sections];
    v11 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v10 count]);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = v10;
    v12 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v15 = *v31;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v31 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v30 + 1) + 8 * i);
          v18 = [v17 items];
          v19 = [v18 count];

          v20 = [[NNNewsDaemonHeadlineSectionWrapper alloc] initWithSection:v17 assetFileURLsByRemoteURL:v7];
          if (v20)
          {
            [v11 addObject:v20];
          }

          v14 += v19;
        }

        v13 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v13);
    }

    else
    {
      v14 = 0;
    }

    v9 = v27;
    v27->_headlineCount = v14;
    v21 = [v11 copy];
    sections = v27->_sections;
    v27->_sections = v21;

    v6 = v28;
    v23 = [v28 expirationDate];
    v24 = [v23 copy];
    expirationDate = v27->_expirationDate;
    v27->_expirationDate = v24;
  }

  return v9;
}

@end