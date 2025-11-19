@interface IMUnreadCountReport
+ (BOOL)_dateEquals:(id)a3 date2:(id)a4;
+ (BOOL)_stringEquals:(id)a3 string:(id)a4;
- (BOOL)isEqual:(id)a3;
- (IMUnreadCountReport)initWithCoder:(id)a3;
- (IMUnreadCountReport)initWithDictionary:(id)a3;
- (IMUnreadCountReport)initWithGUID:(id)a3 groupID:(id)a4 originalGroupID:(id)a5 lastAddressedHandleID:(id)a6 lastAddressedSIMID:(id)a7 isFiltered:(int64_t)a8 isBlackholed:(BOOL)a9 isArchived:(BOOL)a10 participants:(id)a11 timeSensitiveRefreshDate:(id)a12 timeSensitiveMessageCount:(int64_t)a13 unreadCount:(unint64_t)a14 isPendingReview:(BOOL)a15;
- (NSDictionary)dictionary;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IMUnreadCountReport

- (NSDictionary)dictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:self->_guid forKeyedSubscript:@"g"];
  groupID = self->_groupID;
  if (groupID)
  {
    [v3 setObject:groupID forKeyedSubscript:@"i"];
  }

  originalGroupID = self->_originalGroupID;
  if (originalGroupID)
  {
    [v3 setObject:originalGroupID forKeyedSubscript:@"o"];
  }

  lastAddressedHandleID = self->_lastAddressedHandleID;
  if (lastAddressedHandleID)
  {
    [v3 setObject:lastAddressedHandleID forKeyedSubscript:@"h"];
  }

  lastAddressedSIMID = self->_lastAddressedSIMID;
  if (lastAddressedSIMID)
  {
    [v3 setObject:lastAddressedSIMID forKeyedSubscript:@"s"];
  }

  if (self->_isFiltered)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    [v3 setObject:v8 forKeyedSubscript:@"f"];
  }

  if (self->_blackholed)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v3 setObject:v9 forKeyedSubscript:@"b"];
  }

  if (self->_archived)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v3 setObject:v10 forKeyedSubscript:@"a"];
  }

  [v3 setObject:self->_participants forKeyedSubscript:@"p"];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_unreadCount];
  [v3 setObject:v11 forKeyedSubscript:@"u"];

  timeSensitiveRefreshDate = self->_timeSensitiveRefreshDate;
  if (timeSensitiveRefreshDate)
  {
    [v3 setObject:timeSensitiveRefreshDate forKeyedSubscript:@"d"];
  }

  if (self->_timeSensitiveMessageCount >= 1)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    [v3 setObject:v13 forKeyedSubscript:@"t"];
  }

  if (self->_pendingReview)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v3 setObject:v14 forKeyedSubscript:@"r"];
  }

  return v3;
}

- (IMUnreadCountReport)initWithGUID:(id)a3 groupID:(id)a4 originalGroupID:(id)a5 lastAddressedHandleID:(id)a6 lastAddressedSIMID:(id)a7 isFiltered:(int64_t)a8 isBlackholed:(BOOL)a9 isArchived:(BOOL)a10 participants:(id)a11 timeSensitiveRefreshDate:(id)a12 timeSensitiveMessageCount:(int64_t)a13 unreadCount:(unint64_t)a14 isPendingReview:(BOOL)a15
{
  v21 = a3;
  v22 = a4;
  obj = a5;
  v23 = a5;
  v34 = a6;
  v31 = a7;
  v33 = a7;
  v24 = a11;
  v25 = a12;
  v35.receiver = self;
  v35.super_class = IMUnreadCountReport;
  v26 = [(IMUnreadCountReport *)&v35 init];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_guid, a3);
    objc_storeStrong(&v27->_groupID, a4);
    objc_storeStrong(&v27->_originalGroupID, obj);
    objc_storeStrong(&v27->_lastAddressedHandleID, a6);
    objc_storeStrong(&v27->_lastAddressedSIMID, v31);
    v27->_isFiltered = a8;
    v27->_blackholed = a9;
    v27->_archived = a10;
    if (v24)
    {
      v28 = v24;
    }

    else
    {
      v28 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v27->_participants, v28);
    objc_storeStrong(&v27->_timeSensitiveRefreshDate, a12);
    v27->_timeSensitiveMessageCount = a13;
    v27->_unreadCount = a14;
    v27->_pendingReview = a15;
  }

  return v27;
}

- (IMUnreadCountReport)initWithCoder:(id)a3
{
  v3 = a3;
  v20 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"g"];
  v19 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"i"];
  v18 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"o"];
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"h"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"s"];
  v17 = [v3 decodeIntegerForKey:@"f"];
  v6 = [v3 decodeBoolForKey:@"b"];
  v7 = [v3 decodeBoolForKey:@"a"];
  v8 = [v3 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"p"];
  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"d"];
  v10 = [v3 decodeIntegerForKey:@"t"];
  v11 = [v3 decodeIntegerForKey:@"u"];
  v12 = [v3 decodeBoolForKey:@"r"];

  LOBYTE(v16) = v12;
  BYTE1(v15) = v7;
  LOBYTE(v15) = v6;
  v13 = [(IMUnreadCountReport *)self initWithGUID:v20 groupID:v19 originalGroupID:v18 lastAddressedHandleID:v4 lastAddressedSIMID:v5 isFiltered:v17 isBlackholed:v15 isArchived:v8 participants:v9 timeSensitiveRefreshDate:v10 timeSensitiveMessageCount:v11 unreadCount:v16 isPendingReview:?];

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v11 = a3;
  [v11 encodeObject:self->_guid forKey:@"g"];
  groupID = self->_groupID;
  if (groupID)
  {
    [v11 encodeObject:groupID forKey:@"i"];
  }

  originalGroupID = self->_originalGroupID;
  if (originalGroupID)
  {
    [v11 encodeObject:originalGroupID forKey:@"o"];
  }

  lastAddressedHandleID = self->_lastAddressedHandleID;
  v7 = v11;
  if (lastAddressedHandleID)
  {
    [v11 encodeObject:lastAddressedHandleID forKey:@"h"];
    v7 = v11;
  }

  lastAddressedSIMID = self->_lastAddressedSIMID;
  if (lastAddressedSIMID)
  {
    [v11 encodeObject:lastAddressedSIMID forKey:@"s"];
    v7 = v11;
  }

  isFiltered = self->_isFiltered;
  if (isFiltered)
  {
    [v11 encodeInteger:isFiltered forKey:@"f"];
    v7 = v11;
  }

  if (self->_blackholed)
  {
    [v11 encodeBool:1 forKey:@"b"];
    v7 = v11;
  }

  if (self->_archived)
  {
    [v11 encodeBool:1 forKey:@"a"];
    v7 = v11;
  }

  [v7 encodeObject:self->_participants forKey:@"p"];
  timeSensitiveRefreshDate = self->_timeSensitiveRefreshDate;
  if (timeSensitiveRefreshDate)
  {
    [v11 encodeObject:timeSensitiveRefreshDate forKey:@"d"];
  }

  if (self->_timeSensitiveMessageCount >= 1)
  {
    [v11 encodeInteger:? forKey:?];
  }

  [v11 encodeInteger:self->_unreadCount forKey:@"u"];
  if (self->_pendingReview)
  {
    [v11 encodeBool:1 forKey:@"r"];
  }
}

+ (BOOL)_stringEquals:(id)a3 string:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v7 = [v5 length];
    if (v7 == [v6 length])
    {
      v8 = [v5 isEqualToString:v6];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

+ (BOOL)_dateEquals:(id)a3 date2:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (v5 && v6)
    {
      v8 = [v5 isEqualToDate:v6];
    }
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v4 == self)
    {
      v12 = 1;
    }

    else
    {
      v5 = v4;
      v6 = [(IMUnreadCountReport *)v5 isFiltered];
      if (v6 == [(IMUnreadCountReport *)self isFiltered]&& (v7 = [(IMUnreadCountReport *)v5 isBlackholed], v7 == [(IMUnreadCountReport *)self isBlackholed]) && (v8 = [(IMUnreadCountReport *)v5 isArchived], v8 == [(IMUnreadCountReport *)self isArchived]) && (v9 = [(IMUnreadCountReport *)v5 unreadCount], v9 == [(IMUnreadCountReport *)self unreadCount]) && (v10 = [(IMUnreadCountReport *)v5 timeSensitiveMessageCount], v10 == [(IMUnreadCountReport *)self timeSensitiveMessageCount]) && (v11 = [(IMUnreadCountReport *)v5 isPendingReview], v11 == [(IMUnreadCountReport *)self isPendingReview]))
      {
        v14 = [(IMUnreadCountReport *)v5 participants];
        v15 = [(IMUnreadCountReport *)self participants];
        if ([v14 isEqualToArray:v15])
        {
          v16 = [(IMUnreadCountReport *)self timeSensitiveRefreshDate];
          v17 = [(IMUnreadCountReport *)v5 timeSensitiveRefreshDate];
          if ([IMUnreadCountReport _dateEquals:v16 date2:v17])
          {
            v18 = [(IMUnreadCountReport *)self guid];
            v32 = [(IMUnreadCountReport *)v5 guid];
            v33 = v18;
            if ([IMUnreadCountReport _stringEquals:v18 string:v32])
            {
              v19 = [(IMUnreadCountReport *)self groupID];
              v30 = [(IMUnreadCountReport *)v5 groupID];
              v31 = v19;
              if ([IMUnreadCountReport _stringEquals:v19 string:v30])
              {
                v20 = [(IMUnreadCountReport *)self originalGroupID];
                v21 = [(IMUnreadCountReport *)v5 originalGroupID];
                v29 = v20;
                v22 = v20;
                v23 = v21;
                if ([IMUnreadCountReport _stringEquals:v22 string:v21])
                {
                  v24 = [(IMUnreadCountReport *)self lastAddressedHandleID];
                  v27 = [(IMUnreadCountReport *)v5 lastAddressedHandleID];
                  v28 = v24;
                  if ([IMUnreadCountReport _stringEquals:v24 string:?])
                  {
                    v25 = [(IMUnreadCountReport *)self lastAddressedSIMID];
                    v26 = [(IMUnreadCountReport *)v5 lastAddressedSIMID];
                    v12 = [IMUnreadCountReport _stringEquals:v25 string:v26];
                  }

                  else
                  {
                    v12 = 0;
                  }
                }

                else
                {
                  v12 = 0;
                }
              }

              else
              {
                v12 = 0;
              }
            }

            else
            {
              v12 = 0;
            }
          }

          else
          {
            v12 = 0;
          }
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v20 = [IMUnreadCountReport alloc];
  v19 = [(IMUnreadCountReport *)self guid];
  v18 = [(IMUnreadCountReport *)self groupID];
  v4 = [(IMUnreadCountReport *)self originalGroupID];
  v5 = [(IMUnreadCountReport *)self lastAddressedHandleID];
  v6 = [(IMUnreadCountReport *)self lastAddressedSIMID];
  v17 = [(IMUnreadCountReport *)self isFiltered];
  v7 = [(IMUnreadCountReport *)self isBlackholed];
  v8 = [(IMUnreadCountReport *)self isArchived];
  v9 = [(IMUnreadCountReport *)self participants];
  v10 = [(IMUnreadCountReport *)self timeSensitiveRefreshDate];
  v11 = [(IMUnreadCountReport *)self timeSensitiveMessageCount];
  v12 = [(IMUnreadCountReport *)self unreadCount];
  LOBYTE(v16) = [(IMUnreadCountReport *)self isPendingReview];
  BYTE1(v15) = v8;
  LOBYTE(v15) = v7;
  v13 = [(IMUnreadCountReport *)v20 initWithGUID:v19 groupID:v18 originalGroupID:v4 lastAddressedHandleID:v5 lastAddressedSIMID:v6 isFiltered:v17 isBlackholed:v15 isArchived:v9 participants:v10 timeSensitiveRefreshDate:v11 timeSensitiveMessageCount:v12 unreadCount:v16 isPendingReview:?];

  return v13;
}

- (IMUnreadCountReport)initWithDictionary:(id)a3
{
  v4 = a3;
  v25 = [v4 objectForKeyedSubscript:@"g"];
  v24 = [v4 objectForKeyedSubscript:@"i"];
  v23 = [v4 objectForKeyedSubscript:@"o"];
  v21 = [v4 objectForKeyedSubscript:@"h"];
  v20 = [v4 objectForKeyedSubscript:@"s"];
  v26 = [v4 objectForKeyedSubscript:@"f"];
  v17 = [v26 integerValue];
  v22 = [v4 objectForKeyedSubscript:@"b"];
  v16 = [v22 BOOLValue];
  v19 = [v4 objectForKeyedSubscript:@"a"];
  v5 = [v19 BOOLValue];
  v6 = [v4 objectForKeyedSubscript:@"p"];
  v7 = [v4 objectForKeyedSubscript:@"d"];
  v8 = [v4 objectForKeyedSubscript:@"t"];
  v9 = [v8 integerValue];
  v10 = [v4 objectForKeyedSubscript:@"u"];
  v11 = [v10 integerValue];
  v12 = [v4 objectForKeyedSubscript:@"r"];

  LOBYTE(v15) = [v12 BOOLValue];
  BYTE1(v14) = v5;
  LOBYTE(v14) = v16;
  v18 = [(IMUnreadCountReport *)self initWithGUID:v25 groupID:v24 originalGroupID:v23 lastAddressedHandleID:v21 lastAddressedSIMID:v20 isFiltered:v17 isBlackholed:v14 isArchived:v6 participants:v7 timeSensitiveRefreshDate:v9 timeSensitiveMessageCount:v11 unreadCount:v15 isPendingReview:?];

  return v18;
}

@end