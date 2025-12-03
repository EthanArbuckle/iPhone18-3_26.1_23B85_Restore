@interface IMCollaborationNotice
+ (id)deduplicateNotices:(id)notices;
+ (id)noticeWithGUIDString:(id)string sender:(id)sender metadata:(id)metadata date:(id)date dateViewed:(id)viewed;
- (BOOL)isEqual:(id)equal;
- (BOOL)wantsEphemeralDismissal;
- (IMCollaborationNotice)initWithCoder:(id)coder;
- (IMCollaborationNotice)initWithGUIDString:(id)string sender:(id)sender metadata:(id)metadata date:(id)date dateViewed:(id)viewed;
- (id)copyWithZone:(_NSZone *)zone;
- (id)deduplicationKey;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IMCollaborationNotice

+ (id)noticeWithGUIDString:(id)string sender:(id)sender metadata:(id)metadata date:(id)date dateViewed:(id)viewed
{
  viewedCopy = viewed;
  dateCopy = date;
  metadataCopy = metadata;
  senderCopy = sender;
  stringCopy = string;
  v16 = [[IMCollaborationNotice alloc] initWithGUIDString:stringCopy sender:senderCopy metadata:metadataCopy date:dateCopy dateViewed:viewedCopy];

  return v16;
}

- (IMCollaborationNotice)initWithGUIDString:(id)string sender:(id)sender metadata:(id)metadata date:(id)date dateViewed:(id)viewed
{
  stringCopy = string;
  senderCopy = sender;
  metadataCopy = metadata;
  dateCopy = date;
  viewedCopy = viewed;
  v21.receiver = self;
  v21.super_class = IMCollaborationNotice;
  v17 = [(IMCollaborationNotice *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_guidString, string);
    objc_storeStrong(&v18->_senderHandle, sender);
    objc_storeStrong(&v18->_date, date);
    objc_storeStrong(&v18->_dateViewed, viewed);
    objc_storeStrong(&v18->_metadata, metadata);
  }

  return v18;
}

- (BOOL)wantsEphemeralDismissal
{
  metadata = [(IMCollaborationNotice *)self metadata];
  type = [metadata type];

  return (type & 0xFFFFFFFFFFFFFFFELL) != 8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v20 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      guidString = [(IMCollaborationNotice *)self guidString];
      guidString2 = [(IMCollaborationNotice *)v5 guidString];
      v8 = [guidString isEqual:guidString2];

      if (v8 && (-[IMCollaborationNotice senderHandle](self, "senderHandle"), v9 = objc_claimAutoreleasedReturnValue(), -[IMCollaborationNotice senderHandle](v5, "senderHandle"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v9 isEqualToString:v10], v10, v9, v11) && (-[IMCollaborationNotice metadata](self, "metadata"), v12 = objc_claimAutoreleasedReturnValue(), -[IMCollaborationNotice metadata](v5, "metadata"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v12, "isEqual:", v13), v13, v12, v14) && (-[IMCollaborationNotice date](self, "date"), v15 = objc_claimAutoreleasedReturnValue(), -[IMCollaborationNotice date](v5, "date"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v15, "isEqualToDate:", v16), v16, v15, v17))
      {
        dateViewed = [(IMCollaborationNotice *)self dateViewed];
        dateViewed2 = [(IMCollaborationNotice *)v5 dateViewed];
        v20 = [dateViewed isEqualToDate:dateViewed2];
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }
  }

  return v20;
}

- (unint64_t)hash
{
  guidString = [(IMCollaborationNotice *)self guidString];
  v4 = [guidString hash];
  senderHandle = [(IMCollaborationNotice *)self senderHandle];
  v6 = [senderHandle hash] ^ v4;
  date = [(IMCollaborationNotice *)self date];
  v8 = [date hash];
  metadata = [(IMCollaborationNotice *)self metadata];
  v10 = v6 ^ v8 ^ [metadata hash];
  dateViewed = [(IMCollaborationNotice *)self dateViewed];
  v12 = [dateViewed hash];

  return v10 ^ v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  guidString = [(IMCollaborationNotice *)self guidString];
  [coderCopy encodeObject:guidString forKey:@"id"];

  senderHandle = [(IMCollaborationNotice *)self senderHandle];
  [coderCopy encodeObject:senderHandle forKey:@"s"];

  metadata = [(IMCollaborationNotice *)self metadata];
  [coderCopy encodeObject:metadata forKey:@"m"];

  date = [(IMCollaborationNotice *)self date];
  [coderCopy encodeObject:date forKey:@"d"];

  dateViewed = [(IMCollaborationNotice *)self dateViewed];
  [coderCopy encodeObject:dateViewed forKey:@"ds"];
}

- (IMCollaborationNotice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = IMCollaborationNotice;
  v5 = [(IMCollaborationNotice *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"id"];
    [(IMCollaborationNotice *)v5 setGuidString:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"s"];
    [(IMCollaborationNotice *)v5 setSenderHandle:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"m"];
    [(IMCollaborationNotice *)v5 setMetadata:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"d"];
    [(IMCollaborationNotice *)v5 setDate:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ds"];
    [(IMCollaborationNotice *)v5 setDateViewed:v10];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  guidString = [(IMCollaborationNotice *)self guidString];
  [v4 setGuidString:guidString];

  senderHandle = [(IMCollaborationNotice *)self senderHandle];
  [v4 setSenderHandle:senderHandle];

  metadata = [(IMCollaborationNotice *)self metadata];
  [v4 setMetadata:metadata];

  date = [(IMCollaborationNotice *)self date];
  [v4 setDate:date];

  dateViewed = [(IMCollaborationNotice *)self dateViewed];
  [v4 setDateViewed:dateViewed];

  return v4;
}

- (id)deduplicationKey
{
  metadata = [(IMCollaborationNotice *)self metadata];
  type = [metadata type];

  v5 = type & 0xFFFFFFFFFFFFFFFELL;
  v6 = MEMORY[0x1E696AEC0];
  if (v5 == 8)
  {
    metadata2 = [(IMCollaborationNotice *)self metadata];
    type2 = [metadata2 type];
    senderHandle = [(IMCollaborationNotice *)self senderHandle];
    metadata3 = [(IMCollaborationNotice *)self metadata];
    bundleIdentifier = [metadata3 bundleIdentifier];
    v11 = bundleIdentifier;
    if (bundleIdentifier)
    {
      v12 = bundleIdentifier;
    }

    else
    {
      v12 = &stru_1F1BB91F0;
    }

    metadata4 = [(IMCollaborationNotice *)self metadata];
    contentURL = [metadata4 contentURL];
    absoluteString = [contentURL absoluteString];
    v16 = absoluteString;
    if (absoluteString)
    {
      v17 = absoluteString;
    }

    else
    {
      v17 = &stru_1F1BB91F0;
    }

    v18 = [v6 stringWithFormat:@"participant_suggestion_notice_%ld_%@_%@_%@", type2, senderHandle, v12, v17];
  }

  else
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"default_notice_%lu", -[IMCollaborationNotice hash](self, "hash")];
  }

  return v18;
}

+ (id)deduplicateNotices:(id)notices
{
  v35 = *MEMORY[0x1E69E9840];
  noticesCopy = notices;
  v4 = noticesCopy;
  if (noticesCopy && [noticesCopy count])
  {
    array = [MEMORY[0x1E695DF70] array];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v27 = v4;
    obj = v4;
    v6 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v31;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v31 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v30 + 1) + 8 * i);
          deduplicationKey = [v10 deduplicationKey];
          if (!deduplicationKey)
          {
            deduplicationKey = [MEMORY[0x1E696AEC0] stringWithFormat:@"fallback_notice_%p_%lu", v10, objc_msgSend(v10, "hash")];
          }

          v12 = [dictionary objectForKeyedSubscript:deduplicationKey];
          if (v12)
          {
            date = [v10 date];
            v14 = date;
            if (date)
            {
              distantPast = date;
            }

            else
            {
              distantPast = [MEMORY[0x1E695DF00] distantPast];
            }

            v16 = distantPast;

            date2 = [v12 date];
            v18 = date2;
            if (date2)
            {
              distantPast2 = date2;
            }

            else
            {
              distantPast2 = [MEMORY[0x1E695DF00] distantPast];
            }

            v20 = distantPast2;

            if ([v16 compare:v20] == 1)
            {
              [array addObject:v12];
              [dictionary setObject:v10 forKeyedSubscript:deduplicationKey];
            }

            else
            {
              [array addObject:v10];
            }
          }

          else
          {
            [dictionary setObject:v10 forKeyedSubscript:deduplicationKey];
          }
        }

        v7 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v7);
    }

    allValues = [dictionary allValues];
    v22 = [allValues mutableCopy];

    [v22 sortUsingComparator:&unk_1F1BA5F88];
    v23 = [v22 copy];
    v24 = [array copy];
    v25 = [IMCollaborationNoticeDeduplicationResult resultWithDeduplicated:v23 duplicates:v24];

    v4 = v27;
  }

  else
  {
    v25 = [IMCollaborationNoticeDeduplicationResult resultWithDeduplicated:MEMORY[0x1E695E0F0] duplicates:MEMORY[0x1E695E0F0]];
  }

  return v25;
}

@end