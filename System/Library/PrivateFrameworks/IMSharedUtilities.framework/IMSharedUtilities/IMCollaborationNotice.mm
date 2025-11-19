@interface IMCollaborationNotice
+ (id)deduplicateNotices:(id)a3;
+ (id)noticeWithGUIDString:(id)a3 sender:(id)a4 metadata:(id)a5 date:(id)a6 dateViewed:(id)a7;
- (BOOL)isEqual:(id)a3;
- (BOOL)wantsEphemeralDismissal;
- (IMCollaborationNotice)initWithCoder:(id)a3;
- (IMCollaborationNotice)initWithGUIDString:(id)a3 sender:(id)a4 metadata:(id)a5 date:(id)a6 dateViewed:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)deduplicationKey;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IMCollaborationNotice

+ (id)noticeWithGUIDString:(id)a3 sender:(id)a4 metadata:(id)a5 date:(id)a6 dateViewed:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [[IMCollaborationNotice alloc] initWithGUIDString:v15 sender:v14 metadata:v13 date:v12 dateViewed:v11];

  return v16;
}

- (IMCollaborationNotice)initWithGUIDString:(id)a3 sender:(id)a4 metadata:(id)a5 date:(id)a6 dateViewed:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = IMCollaborationNotice;
  v17 = [(IMCollaborationNotice *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_guidString, a3);
    objc_storeStrong(&v18->_senderHandle, a4);
    objc_storeStrong(&v18->_date, a6);
    objc_storeStrong(&v18->_dateViewed, a7);
    objc_storeStrong(&v18->_metadata, a5);
  }

  return v18;
}

- (BOOL)wantsEphemeralDismissal
{
  v2 = [(IMCollaborationNotice *)self metadata];
  v3 = [v2 type];

  return (v3 & 0xFFFFFFFFFFFFFFFELL) != 8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v20 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(IMCollaborationNotice *)self guidString];
      v7 = [(IMCollaborationNotice *)v5 guidString];
      v8 = [v6 isEqual:v7];

      if (v8 && (-[IMCollaborationNotice senderHandle](self, "senderHandle"), v9 = objc_claimAutoreleasedReturnValue(), -[IMCollaborationNotice senderHandle](v5, "senderHandle"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v9 isEqualToString:v10], v10, v9, v11) && (-[IMCollaborationNotice metadata](self, "metadata"), v12 = objc_claimAutoreleasedReturnValue(), -[IMCollaborationNotice metadata](v5, "metadata"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v12, "isEqual:", v13), v13, v12, v14) && (-[IMCollaborationNotice date](self, "date"), v15 = objc_claimAutoreleasedReturnValue(), -[IMCollaborationNotice date](v5, "date"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v15, "isEqualToDate:", v16), v16, v15, v17))
      {
        v18 = [(IMCollaborationNotice *)self dateViewed];
        v19 = [(IMCollaborationNotice *)v5 dateViewed];
        v20 = [v18 isEqualToDate:v19];
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
  v3 = [(IMCollaborationNotice *)self guidString];
  v4 = [v3 hash];
  v5 = [(IMCollaborationNotice *)self senderHandle];
  v6 = [v5 hash] ^ v4;
  v7 = [(IMCollaborationNotice *)self date];
  v8 = [v7 hash];
  v9 = [(IMCollaborationNotice *)self metadata];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(IMCollaborationNotice *)self dateViewed];
  v12 = [v11 hash];

  return v10 ^ v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(IMCollaborationNotice *)self guidString];
  [v4 encodeObject:v5 forKey:@"id"];

  v6 = [(IMCollaborationNotice *)self senderHandle];
  [v4 encodeObject:v6 forKey:@"s"];

  v7 = [(IMCollaborationNotice *)self metadata];
  [v4 encodeObject:v7 forKey:@"m"];

  v8 = [(IMCollaborationNotice *)self date];
  [v4 encodeObject:v8 forKey:@"d"];

  v9 = [(IMCollaborationNotice *)self dateViewed];
  [v4 encodeObject:v9 forKey:@"ds"];
}

- (IMCollaborationNotice)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = IMCollaborationNotice;
  v5 = [(IMCollaborationNotice *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"id"];
    [(IMCollaborationNotice *)v5 setGuidString:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"s"];
    [(IMCollaborationNotice *)v5 setSenderHandle:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"m"];
    [(IMCollaborationNotice *)v5 setMetadata:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"d"];
    [(IMCollaborationNotice *)v5 setDate:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ds"];
    [(IMCollaborationNotice *)v5 setDateViewed:v10];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(IMCollaborationNotice *)self guidString];
  [v4 setGuidString:v5];

  v6 = [(IMCollaborationNotice *)self senderHandle];
  [v4 setSenderHandle:v6];

  v7 = [(IMCollaborationNotice *)self metadata];
  [v4 setMetadata:v7];

  v8 = [(IMCollaborationNotice *)self date];
  [v4 setDate:v8];

  v9 = [(IMCollaborationNotice *)self dateViewed];
  [v4 setDateViewed:v9];

  return v4;
}

- (id)deduplicationKey
{
  v3 = [(IMCollaborationNotice *)self metadata];
  v4 = [v3 type];

  v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
  v6 = MEMORY[0x1E696AEC0];
  if (v5 == 8)
  {
    v20 = [(IMCollaborationNotice *)self metadata];
    v7 = [v20 type];
    v8 = [(IMCollaborationNotice *)self senderHandle];
    v9 = [(IMCollaborationNotice *)self metadata];
    v10 = [v9 bundleIdentifier];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = &stru_1F1BB91F0;
    }

    v13 = [(IMCollaborationNotice *)self metadata];
    v14 = [v13 contentURL];
    v15 = [v14 absoluteString];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = &stru_1F1BB91F0;
    }

    v18 = [v6 stringWithFormat:@"participant_suggestion_notice_%ld_%@_%@_%@", v7, v8, v12, v17];
  }

  else
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"default_notice_%lu", -[IMCollaborationNotice hash](self, "hash")];
  }

  return v18;
}

+ (id)deduplicateNotices:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 count])
  {
    v29 = [MEMORY[0x1E695DF70] array];
    v5 = [MEMORY[0x1E695DF90] dictionary];
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
          v11 = [v10 deduplicationKey];
          if (!v11)
          {
            v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"fallback_notice_%p_%lu", v10, objc_msgSend(v10, "hash")];
          }

          v12 = [v5 objectForKeyedSubscript:v11];
          if (v12)
          {
            v13 = [v10 date];
            v14 = v13;
            if (v13)
            {
              v15 = v13;
            }

            else
            {
              v15 = [MEMORY[0x1E695DF00] distantPast];
            }

            v16 = v15;

            v17 = [v12 date];
            v18 = v17;
            if (v17)
            {
              v19 = v17;
            }

            else
            {
              v19 = [MEMORY[0x1E695DF00] distantPast];
            }

            v20 = v19;

            if ([v16 compare:v20] == 1)
            {
              [v29 addObject:v12];
              [v5 setObject:v10 forKeyedSubscript:v11];
            }

            else
            {
              [v29 addObject:v10];
            }
          }

          else
          {
            [v5 setObject:v10 forKeyedSubscript:v11];
          }
        }

        v7 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v7);
    }

    v21 = [v5 allValues];
    v22 = [v21 mutableCopy];

    [v22 sortUsingComparator:&unk_1F1BA5F88];
    v23 = [v22 copy];
    v24 = [v29 copy];
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