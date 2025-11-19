@interface FCGroupConfig
- (FCGroupConfig)initWithDictionary:(id)a3;
- (NSString)articleListID;
- (NSString)channelID;
- (NSString)feedID;
- (NSString)groupActionTitle;
- (NSString)groupActionURLString;
- (NSString)groupName;
- (NSString)groupSubtitle;
- (NSString)groupTitleFontName;
- (NSString)sectionID;
- (double)groupTitleFontSize;
- (double)groupTitleFontSizeiPad;
- (double)groupTitleFontTracking;
- (double)groupTitleFontTrackingiPad;
- (double)groupTitleOffsetHeight;
- (double)groupTitleOffsetHeightiPad;
- (double)groupTitleOffsetY;
- (double)groupTitleOffsetYiPad;
@end

@implementation FCGroupConfig

- (FCGroupConfig)initWithDictionary:(id)a3
{
  v57 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v55.receiver = self;
  v55.super_class = FCGroupConfig;
  v5 = [(FCGroupConfig *)&v55 init];
  if (v5)
  {
    v6 = v4;
    v7 = [v6 objectForKeyedSubscript:@"scheduledContent"];
    v8 = [v7 objectForKeyedSubscript:@"scheduledLocalDate"];
    if (v7)
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 1;
    }

    v48 = v4;
    v44 = v8;
    v45 = v7;
    if (!v9)
    {
      v10 = v8;
      v11 = [MEMORY[0x1E696AB78] dateFormatterWithFormat:@"yyyy-MM-dd'T'HH:mm:ss" forReuse:0];
      v12 = [v11 dateFromString:v10];

      if (v12)
      {
        v13 = [MEMORY[0x1E695DF00] date];
        v14 = [v13 fc_isLaterThan:v12];

        if (v14)
        {
          v15 = [MEMORY[0x1E695DF20] fc_dictionaryByAddingEntriesFromDictionary:v7 toDictionary:v6];

          v6 = v15;
        }
      }
    }

    v46 = v6;
    v16 = [v6 copy];
    dictionary = v5->_dictionary;
    v5->_dictionary = v16;

    v18 = [(FCGroupConfig *)v5 dictionary];
    v19 = [v18 objectForKeyedSubscript:@"groupTitleColor"];
    v20 = [FCColor colorWithHexString:v19];
    groupTitleColor = v5->_groupTitleColor;
    v5->_groupTitleColor = v20;

    v22 = [(FCGroupConfig *)v5 dictionary];
    v23 = [v22 objectForKeyedSubscript:@"groupAlternateTitleColor"];
    v24 = [FCColor colorWithHexString:v23];
    groupDarkStyleTitleColor = v5->_groupDarkStyleTitleColor;
    v5->_groupDarkStyleTitleColor = v24;

    v26 = [(FCGroupConfig *)v5 dictionary];
    v27 = [v26 objectForKeyedSubscript:@"cutoffTimeSecs"];
    v5->_cutoffTimeSecs = [v27 unsignedIntegerValue];

    v28 = [(FCGroupConfig *)v5 dictionary];
    v29 = [v28 objectForKeyedSubscript:@"cutoffCount"];
    v5->_cutoffCount = [v29 unsignedIntegerValue];

    v50 = [MEMORY[0x1E695DF70] array];
    v47 = v5;
    v30 = [(FCGroupConfig *)v5 dictionary];
    v31 = [v30 objectForKeyedSubscript:@"groupFonts"];

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    obj = v31;
    v32 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v52;
      do
      {
        v35 = 0;
        do
        {
          if (*v52 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v36 = *(*(&v51 + 1) + 8 * v35);
          v37 = [FCGroupFont alloc];
          v38 = [v36 objectForKeyedSubscript:@"name"];
          v39 = [v36 objectForKeyedSubscript:@"url"];
          v40 = [(FCGroupFont *)v37 initWithName:v38 urlString:v39];

          if (v40)
          {
            [(NSArray *)v50 addObject:v40];
          }

          ++v35;
        }

        while (v33 != v35);
        v33 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
      }

      while (v33);
    }

    v5 = v47;
    groupFonts = v47->_groupFonts;
    v47->_groupFonts = v50;

    v4 = v48;
  }

  v42 = *MEMORY[0x1E69E9840];
  return v5;
}

- (NSString)articleListID
{
  v2 = [(FCGroupConfig *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"articleListID"];

  return v3;
}

- (NSString)groupName
{
  v2 = [(FCGroupConfig *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"groupName"];

  return v3;
}

- (NSString)groupSubtitle
{
  v2 = [(FCGroupConfig *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"groupSubtitle"];

  return v3;
}

- (NSString)groupTitleFontName
{
  v2 = [(FCGroupConfig *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"groupTitleFontName"];

  return v3;
}

- (double)groupTitleFontSize
{
  v3 = [(FCGroupConfig *)self dictionary];
  v4 = [v3 objectForKeyedSubscript:@"groupTitleFontSize"];

  if (!v4)
  {
    return 1.79769313e308;
  }

  v5 = [(FCGroupConfig *)self dictionary];
  v6 = [v5 objectForKeyedSubscript:@"groupTitleFontSize"];
  [v6 floatValue];
  v8 = v7;

  return v8;
}

- (double)groupTitleOffsetY
{
  v2 = [(FCGroupConfig *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"groupTitleOffsetY"];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (double)groupTitleOffsetYiPad
{
  v2 = [(FCGroupConfig *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"groupTitleOffsetYiPad"];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (double)groupTitleOffsetHeight
{
  v2 = [(FCGroupConfig *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"groupTitleOffsetHeight"];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (double)groupTitleOffsetHeightiPad
{
  v2 = [(FCGroupConfig *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"groupTitleOffsetHeightiPad"];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (double)groupTitleFontSizeiPad
{
  v3 = [(FCGroupConfig *)self dictionary];
  v4 = [v3 objectForKeyedSubscript:@"groupTitleFontSizeiPad"];

  if (!v4)
  {
    return 1.79769313e308;
  }

  v5 = [(FCGroupConfig *)self dictionary];
  v6 = [v5 objectForKeyedSubscript:@"groupTitleFontSizeiPad"];
  [v6 floatValue];
  v8 = v7;

  return v8;
}

- (double)groupTitleFontTracking
{
  v3 = [(FCGroupConfig *)self dictionary];
  v4 = [v3 objectForKeyedSubscript:@"groupTitleFontTracking"];

  if (!v4)
  {
    return 1.79769313e308;
  }

  v5 = [(FCGroupConfig *)self dictionary];
  v6 = [v5 objectForKeyedSubscript:@"groupTitleFontTracking"];
  [v6 floatValue];
  v8 = v7;

  return v8;
}

- (double)groupTitleFontTrackingiPad
{
  v3 = [(FCGroupConfig *)self dictionary];
  v4 = [v3 objectForKeyedSubscript:@"groupTitleFontTrackingiPad"];

  if (!v4)
  {
    return 1.79769313e308;
  }

  v5 = [(FCGroupConfig *)self dictionary];
  v6 = [v5 objectForKeyedSubscript:@"groupTitleFontTrackingiPad"];
  [v6 floatValue];
  v8 = v7;

  return v8;
}

- (NSString)groupActionTitle
{
  v2 = [(FCGroupConfig *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"groupActionTitle"];

  return v3;
}

- (NSString)groupActionURLString
{
  v2 = [(FCGroupConfig *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"groupActionUrl"];

  return v3;
}

- (NSString)sectionID
{
  v2 = [(FCGroupConfig *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"sectionID"];

  return v3;
}

- (NSString)channelID
{
  v2 = [(FCGroupConfig *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"channelID"];

  return v3;
}

- (NSString)feedID
{
  v2 = [(FCGroupConfig *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"feedID"];

  return v3;
}

@end