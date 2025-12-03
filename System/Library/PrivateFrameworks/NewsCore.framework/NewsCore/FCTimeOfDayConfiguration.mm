@interface FCTimeOfDayConfiguration
- (FCTimeOfDayConfiguration)initWithDictionary:(id)dictionary;
- (id)description;
@end

@implementation FCTimeOfDayConfiguration

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[FCTimeOfDayConfiguration start](self, "start")}];
  v5 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[FCTimeOfDayConfiguration end](self, "end")}];
  v6 = [v3 stringWithFormat:@"(Start: %@, End: %@)", v4, v5];

  return v6;
}

- (FCTimeOfDayConfiguration)initWithDictionary:(id)dictionary
{
  v15 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = FCTimeOfDayConfiguration;
  v5 = [(FCTimeOfDayConfiguration *)&v12 init];
  if (v5)
  {
    v6 = FCAppConfigurationNumberValue(dictionaryCopy, @"start", 0);
    v7 = FCAppConfigurationNumberValue(dictionaryCopy, @"end", 0);
    v8 = v7;
    if (v6 && v7)
    {
      v5->_start = [v6 longLongValue];
      v5->_end = [v8 longLongValue];
    }

    else
    {
      v9 = FCDefaultLog;
      if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v14 = dictionaryCopy;
        _os_log_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_DEFAULT, "Invalid time of day configuration %{public}@", buf, 0xCu);
      }

      v5 = 0;
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return v5;
}

@end