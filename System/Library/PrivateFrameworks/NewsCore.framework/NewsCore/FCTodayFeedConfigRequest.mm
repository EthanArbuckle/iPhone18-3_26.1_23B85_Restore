@interface FCTodayFeedConfigRequest
- (BOOL)isEqual:(id)equal;
- (FCTodayFeedConfigRequest)initWithCoder:(id)coder;
- (FCTodayFeedConfigRequest)initWithFeedType:(unint64_t)type forYouConfigID:(id)d formatVersion:(id)version additionalRecordIDs:(id)ds;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FCTodayFeedConfigRequest

- (FCTodayFeedConfigRequest)initWithFeedType:(unint64_t)type forYouConfigID:(id)d formatVersion:(id)version additionalRecordIDs:(id)ds
{
  dCopy = d;
  versionCopy = version;
  dsCopy = ds;
  v22.receiver = self;
  v22.super_class = FCTodayFeedConfigRequest;
  v13 = [(FCTodayFeedConfigRequest *)&v22 init];
  v14 = v13;
  if (v13)
  {
    v13->_feedType = type;
    v15 = [dCopy copy];
    forYouConfigID = v14->_forYouConfigID;
    v14->_forYouConfigID = v15;

    v17 = [versionCopy copy];
    formatVersion = v14->_formatVersion;
    v14->_formatVersion = v17;

    v19 = [dsCopy copy];
    additionalRecordIDs = v14->_additionalRecordIDs;
    v14->_additionalRecordIDs = v19;
  }

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (equalCopy)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6 && (v7 = -[FCTodayFeedConfigRequest feedType](self, "feedType"), v7 == [v6 feedType]))
  {
    forYouConfigID = [(FCTodayFeedConfigRequest *)self forYouConfigID];
    forYouConfigID2 = [v6 forYouConfigID];
    if ([forYouConfigID isEqualToString:forYouConfigID2])
    {
      formatVersion = [(FCTodayFeedConfigRequest *)self formatVersion];
      formatVersion2 = [v6 formatVersion];
      if ([formatVersion isEqualToString:formatVersion2])
      {
        v12 = MEMORY[0x1E695DFD8];
        additionalRecordIDs = [(FCTodayFeedConfigRequest *)self additionalRecordIDs];
        v14 = [v12 setWithArray:additionalRecordIDs];
        v15 = MEMORY[0x1E695DFD8];
        additionalRecordIDs2 = [v6 additionalRecordIDs];
        v17 = [v15 setWithArray:additionalRecordIDs2];
        v18 = [v14 isEqualToSet:v17];
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[FCTodayFeedConfigRequest feedType](self, "feedType")}];
  v4 = [v3 hash];
  forYouConfigID = [(FCTodayFeedConfigRequest *)self forYouConfigID];
  v6 = [forYouConfigID hash];
  formatVersion = [(FCTodayFeedConfigRequest *)self formatVersion];
  v8 = v6 ^ [formatVersion hash];
  additionalRecordIDs = [(FCTodayFeedConfigRequest *)self additionalRecordIDs];
  v10 = v8 ^ [additionalRecordIDs hash];

  return v10 ^ v4;
}

- (id)description
{
  v3 = [[FCDescription alloc] initWithObject:self];
  feedType = [(FCTodayFeedConfigRequest *)self feedType];
  v5 = @"regular";
  if (feedType == 1)
  {
    v5 = @"premium";
  }

  if (feedType == 2)
  {
    v6 = @"premium_lite";
  }

  else
  {
    v6 = v5;
  }

  [(FCDescription *)v3 addField:@"feedType" object:v6];
  forYouConfigID = [(FCTodayFeedConfigRequest *)self forYouConfigID];
  [(FCDescription *)v3 addField:@"forYouConfigID" object:forYouConfigID];

  formatVersion = [(FCTodayFeedConfigRequest *)self formatVersion];
  [(FCDescription *)v3 addField:@"formatVersion" object:formatVersion];

  additionalRecordIDs = [(FCTodayFeedConfigRequest *)self additionalRecordIDs];
  [(FCDescription *)v3 addField:@"additionalRecordIDs" object:additionalRecordIDs];

  descriptionString = [(FCDescription *)v3 descriptionString];

  return descriptionString;
}

__CFString *__39__FCTodayFeedConfigRequest_description__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) feedType];
  v2 = @"regular";
  if (v1 == 1)
  {
    v2 = @"premium";
  }

  if (v1 == 2)
  {
    return @"premium_lite";
  }

  else
  {
    return v2;
  }
}

- (FCTodayFeedConfigRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy decodeIntegerForKey:@"version"] == 1)
  {
    v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"feedType"];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
      v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"forYouConfigID"];
      v9 = v8;
      if (v8)
      {
        v10 = v8;
        v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"formatVersion"];
        if (v11)
        {
          v12 = MEMORY[0x1E695DFD8];
          v13 = objc_opt_class();
          v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
          v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"additionalRecordIDs"];
          if (v15)
          {
            self = -[FCTodayFeedConfigRequest initWithFeedType:forYouConfigID:formatVersion:additionalRecordIDs:](self, "initWithFeedType:forYouConfigID:formatVersion:additionalRecordIDs:", [v7 unsignedIntegerValue], v10, v11, v15);
            selfCopy = self;
          }

          else
          {
            selfCopy = 0;
          }
        }

        else
        {
          selfCopy = 0;
        }
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:1 forKey:@"version"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[FCTodayFeedConfigRequest feedType](self, "feedType")}];
  [coderCopy encodeObject:v5 forKey:@"feedType"];

  forYouConfigID = [(FCTodayFeedConfigRequest *)self forYouConfigID];
  [coderCopy encodeObject:forYouConfigID forKey:@"forYouConfigID"];

  formatVersion = [(FCTodayFeedConfigRequest *)self formatVersion];
  [coderCopy encodeObject:formatVersion forKey:@"formatVersion"];

  additionalRecordIDs = [(FCTodayFeedConfigRequest *)self additionalRecordIDs];
  [coderCopy encodeObject:additionalRecordIDs forKey:@"additionalRecordIDs"];
}

@end