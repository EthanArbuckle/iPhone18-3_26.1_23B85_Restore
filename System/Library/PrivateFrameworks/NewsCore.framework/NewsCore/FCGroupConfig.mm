@interface FCGroupConfig
- (FCGroupConfig)initWithDictionary:(id)dictionary;
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

- (FCGroupConfig)initWithDictionary:(id)dictionary
{
  v57 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v55.receiver = self;
  v55.super_class = FCGroupConfig;
  v5 = [(FCGroupConfig *)&v55 init];
  if (v5)
  {
    v6 = dictionaryCopy;
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

    v48 = dictionaryCopy;
    v44 = v8;
    v45 = v7;
    if (!v9)
    {
      v10 = v8;
      v11 = [MEMORY[0x1E696AB78] dateFormatterWithFormat:@"yyyy-MM-dd'T'HH:mm:ss" forReuse:0];
      v12 = [v11 dateFromString:v10];

      if (v12)
      {
        date = [MEMORY[0x1E695DF00] date];
        v14 = [date fc_isLaterThan:v12];

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

    dictionary = [(FCGroupConfig *)v5 dictionary];
    v19 = [dictionary objectForKeyedSubscript:@"groupTitleColor"];
    v20 = [FCColor colorWithHexString:v19];
    groupTitleColor = v5->_groupTitleColor;
    v5->_groupTitleColor = v20;

    dictionary2 = [(FCGroupConfig *)v5 dictionary];
    v23 = [dictionary2 objectForKeyedSubscript:@"groupAlternateTitleColor"];
    v24 = [FCColor colorWithHexString:v23];
    groupDarkStyleTitleColor = v5->_groupDarkStyleTitleColor;
    v5->_groupDarkStyleTitleColor = v24;

    dictionary3 = [(FCGroupConfig *)v5 dictionary];
    v27 = [dictionary3 objectForKeyedSubscript:@"cutoffTimeSecs"];
    v5->_cutoffTimeSecs = [v27 unsignedIntegerValue];

    dictionary4 = [(FCGroupConfig *)v5 dictionary];
    v29 = [dictionary4 objectForKeyedSubscript:@"cutoffCount"];
    v5->_cutoffCount = [v29 unsignedIntegerValue];

    array = [MEMORY[0x1E695DF70] array];
    v47 = v5;
    dictionary5 = [(FCGroupConfig *)v5 dictionary];
    v31 = [dictionary5 objectForKeyedSubscript:@"groupFonts"];

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
            [(NSArray *)array addObject:v40];
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
    v47->_groupFonts = array;

    dictionaryCopy = v48;
  }

  v42 = *MEMORY[0x1E69E9840];
  return v5;
}

- (NSString)articleListID
{
  dictionary = [(FCGroupConfig *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"articleListID"];

  return v3;
}

- (NSString)groupName
{
  dictionary = [(FCGroupConfig *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"groupName"];

  return v3;
}

- (NSString)groupSubtitle
{
  dictionary = [(FCGroupConfig *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"groupSubtitle"];

  return v3;
}

- (NSString)groupTitleFontName
{
  dictionary = [(FCGroupConfig *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"groupTitleFontName"];

  return v3;
}

- (double)groupTitleFontSize
{
  dictionary = [(FCGroupConfig *)self dictionary];
  v4 = [dictionary objectForKeyedSubscript:@"groupTitleFontSize"];

  if (!v4)
  {
    return 1.79769313e308;
  }

  dictionary2 = [(FCGroupConfig *)self dictionary];
  v6 = [dictionary2 objectForKeyedSubscript:@"groupTitleFontSize"];
  [v6 floatValue];
  v8 = v7;

  return v8;
}

- (double)groupTitleOffsetY
{
  dictionary = [(FCGroupConfig *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"groupTitleOffsetY"];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (double)groupTitleOffsetYiPad
{
  dictionary = [(FCGroupConfig *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"groupTitleOffsetYiPad"];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (double)groupTitleOffsetHeight
{
  dictionary = [(FCGroupConfig *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"groupTitleOffsetHeight"];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (double)groupTitleOffsetHeightiPad
{
  dictionary = [(FCGroupConfig *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"groupTitleOffsetHeightiPad"];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (double)groupTitleFontSizeiPad
{
  dictionary = [(FCGroupConfig *)self dictionary];
  v4 = [dictionary objectForKeyedSubscript:@"groupTitleFontSizeiPad"];

  if (!v4)
  {
    return 1.79769313e308;
  }

  dictionary2 = [(FCGroupConfig *)self dictionary];
  v6 = [dictionary2 objectForKeyedSubscript:@"groupTitleFontSizeiPad"];
  [v6 floatValue];
  v8 = v7;

  return v8;
}

- (double)groupTitleFontTracking
{
  dictionary = [(FCGroupConfig *)self dictionary];
  v4 = [dictionary objectForKeyedSubscript:@"groupTitleFontTracking"];

  if (!v4)
  {
    return 1.79769313e308;
  }

  dictionary2 = [(FCGroupConfig *)self dictionary];
  v6 = [dictionary2 objectForKeyedSubscript:@"groupTitleFontTracking"];
  [v6 floatValue];
  v8 = v7;

  return v8;
}

- (double)groupTitleFontTrackingiPad
{
  dictionary = [(FCGroupConfig *)self dictionary];
  v4 = [dictionary objectForKeyedSubscript:@"groupTitleFontTrackingiPad"];

  if (!v4)
  {
    return 1.79769313e308;
  }

  dictionary2 = [(FCGroupConfig *)self dictionary];
  v6 = [dictionary2 objectForKeyedSubscript:@"groupTitleFontTrackingiPad"];
  [v6 floatValue];
  v8 = v7;

  return v8;
}

- (NSString)groupActionTitle
{
  dictionary = [(FCGroupConfig *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"groupActionTitle"];

  return v3;
}

- (NSString)groupActionURLString
{
  dictionary = [(FCGroupConfig *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"groupActionUrl"];

  return v3;
}

- (NSString)sectionID
{
  dictionary = [(FCGroupConfig *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"sectionID"];

  return v3;
}

- (NSString)channelID
{
  dictionary = [(FCGroupConfig *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"channelID"];

  return v3;
}

- (NSString)feedID
{
  dictionary = [(FCGroupConfig *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"feedID"];

  return v3;
}

@end