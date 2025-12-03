@interface IMUnreadCountReport
+ (BOOL)_dateEquals:(id)equals date2:(id)date2;
+ (BOOL)_stringEquals:(id)equals string:(id)string;
- (BOOL)isEqual:(id)equal;
- (IMUnreadCountReport)initWithCoder:(id)coder;
- (IMUnreadCountReport)initWithDictionary:(id)dictionary;
- (IMUnreadCountReport)initWithGUID:(id)d groupID:(id)iD originalGroupID:(id)groupID lastAddressedHandleID:(id)handleID lastAddressedSIMID:(id)mID isFiltered:(int64_t)filtered isBlackholed:(BOOL)blackholed isArchived:(BOOL)self0 participants:(id)self1 timeSensitiveRefreshDate:(id)self2 timeSensitiveMessageCount:(int64_t)self3 unreadCount:(unint64_t)self4 isPendingReview:(BOOL)self5;
- (NSDictionary)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
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

- (IMUnreadCountReport)initWithGUID:(id)d groupID:(id)iD originalGroupID:(id)groupID lastAddressedHandleID:(id)handleID lastAddressedSIMID:(id)mID isFiltered:(int64_t)filtered isBlackholed:(BOOL)blackholed isArchived:(BOOL)self0 participants:(id)self1 timeSensitiveRefreshDate:(id)self2 timeSensitiveMessageCount:(int64_t)self3 unreadCount:(unint64_t)self4 isPendingReview:(BOOL)self5
{
  dCopy = d;
  iDCopy = iD;
  obj = groupID;
  groupIDCopy = groupID;
  handleIDCopy = handleID;
  mIDCopy = mID;
  mIDCopy2 = mID;
  participantsCopy = participants;
  dateCopy = date;
  v35.receiver = self;
  v35.super_class = IMUnreadCountReport;
  v26 = [(IMUnreadCountReport *)&v35 init];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_guid, d);
    objc_storeStrong(&v27->_groupID, iD);
    objc_storeStrong(&v27->_originalGroupID, obj);
    objc_storeStrong(&v27->_lastAddressedHandleID, handleID);
    objc_storeStrong(&v27->_lastAddressedSIMID, mIDCopy);
    v27->_isFiltered = filtered;
    v27->_blackholed = blackholed;
    v27->_archived = archived;
    if (participantsCopy)
    {
      v28 = participantsCopy;
    }

    else
    {
      v28 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v27->_participants, v28);
    objc_storeStrong(&v27->_timeSensitiveRefreshDate, date);
    v27->_timeSensitiveMessageCount = count;
    v27->_unreadCount = unreadCount;
    v27->_pendingReview = review;
  }

  return v27;
}

- (IMUnreadCountReport)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"g"];
  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"i"];
  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"o"];
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"h"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"s"];
  v17 = [coderCopy decodeIntegerForKey:@"f"];
  v6 = [coderCopy decodeBoolForKey:@"b"];
  v7 = [coderCopy decodeBoolForKey:@"a"];
  v8 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"p"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"d"];
  v10 = [coderCopy decodeIntegerForKey:@"t"];
  v11 = [coderCopy decodeIntegerForKey:@"u"];
  v12 = [coderCopy decodeBoolForKey:@"r"];

  LOBYTE(v16) = v12;
  BYTE1(v15) = v7;
  LOBYTE(v15) = v6;
  v13 = [(IMUnreadCountReport *)self initWithGUID:v20 groupID:v19 originalGroupID:v18 lastAddressedHandleID:v4 lastAddressedSIMID:v5 isFiltered:v17 isBlackholed:v15 isArchived:v8 participants:v9 timeSensitiveRefreshDate:v10 timeSensitiveMessageCount:v11 unreadCount:v16 isPendingReview:?];

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_guid forKey:@"g"];
  groupID = self->_groupID;
  if (groupID)
  {
    [coderCopy encodeObject:groupID forKey:@"i"];
  }

  originalGroupID = self->_originalGroupID;
  if (originalGroupID)
  {
    [coderCopy encodeObject:originalGroupID forKey:@"o"];
  }

  lastAddressedHandleID = self->_lastAddressedHandleID;
  v7 = coderCopy;
  if (lastAddressedHandleID)
  {
    [coderCopy encodeObject:lastAddressedHandleID forKey:@"h"];
    v7 = coderCopy;
  }

  lastAddressedSIMID = self->_lastAddressedSIMID;
  if (lastAddressedSIMID)
  {
    [coderCopy encodeObject:lastAddressedSIMID forKey:@"s"];
    v7 = coderCopy;
  }

  isFiltered = self->_isFiltered;
  if (isFiltered)
  {
    [coderCopy encodeInteger:isFiltered forKey:@"f"];
    v7 = coderCopy;
  }

  if (self->_blackholed)
  {
    [coderCopy encodeBool:1 forKey:@"b"];
    v7 = coderCopy;
  }

  if (self->_archived)
  {
    [coderCopy encodeBool:1 forKey:@"a"];
    v7 = coderCopy;
  }

  [v7 encodeObject:self->_participants forKey:@"p"];
  timeSensitiveRefreshDate = self->_timeSensitiveRefreshDate;
  if (timeSensitiveRefreshDate)
  {
    [coderCopy encodeObject:timeSensitiveRefreshDate forKey:@"d"];
  }

  if (self->_timeSensitiveMessageCount >= 1)
  {
    [coderCopy encodeInteger:? forKey:?];
  }

  [coderCopy encodeInteger:self->_unreadCount forKey:@"u"];
  if (self->_pendingReview)
  {
    [coderCopy encodeBool:1 forKey:@"r"];
  }
}

+ (BOOL)_stringEquals:(id)equals string:(id)string
{
  equalsCopy = equals;
  stringCopy = string;
  if (equalsCopy == stringCopy)
  {
    v8 = 1;
  }

  else
  {
    v7 = [equalsCopy length];
    if (v7 == [stringCopy length])
    {
      v8 = [equalsCopy isEqualToString:stringCopy];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

+ (BOOL)_dateEquals:(id)equals date2:(id)date2
{
  equalsCopy = equals;
  date2Copy = date2;
  v7 = date2Copy;
  if (equalsCopy == date2Copy)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (equalsCopy && date2Copy)
    {
      v8 = [equalsCopy isEqualToDate:date2Copy];
    }
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (equalCopy == self)
    {
      v12 = 1;
    }

    else
    {
      v5 = equalCopy;
      isFiltered = [(IMUnreadCountReport *)v5 isFiltered];
      if (isFiltered == [(IMUnreadCountReport *)self isFiltered]&& (v7 = [(IMUnreadCountReport *)v5 isBlackholed], v7 == [(IMUnreadCountReport *)self isBlackholed]) && (v8 = [(IMUnreadCountReport *)v5 isArchived], v8 == [(IMUnreadCountReport *)self isArchived]) && (v9 = [(IMUnreadCountReport *)v5 unreadCount], v9 == [(IMUnreadCountReport *)self unreadCount]) && (v10 = [(IMUnreadCountReport *)v5 timeSensitiveMessageCount], v10 == [(IMUnreadCountReport *)self timeSensitiveMessageCount]) && (v11 = [(IMUnreadCountReport *)v5 isPendingReview], v11 == [(IMUnreadCountReport *)self isPendingReview]))
      {
        participants = [(IMUnreadCountReport *)v5 participants];
        participants2 = [(IMUnreadCountReport *)self participants];
        if ([participants isEqualToArray:participants2])
        {
          timeSensitiveRefreshDate = [(IMUnreadCountReport *)self timeSensitiveRefreshDate];
          timeSensitiveRefreshDate2 = [(IMUnreadCountReport *)v5 timeSensitiveRefreshDate];
          if ([IMUnreadCountReport _dateEquals:timeSensitiveRefreshDate date2:timeSensitiveRefreshDate2])
          {
            guid = [(IMUnreadCountReport *)self guid];
            guid2 = [(IMUnreadCountReport *)v5 guid];
            v33 = guid;
            if ([IMUnreadCountReport _stringEquals:guid string:guid2])
            {
              groupID = [(IMUnreadCountReport *)self groupID];
              groupID2 = [(IMUnreadCountReport *)v5 groupID];
              v31 = groupID;
              if ([IMUnreadCountReport _stringEquals:groupID string:groupID2])
              {
                originalGroupID = [(IMUnreadCountReport *)self originalGroupID];
                originalGroupID2 = [(IMUnreadCountReport *)v5 originalGroupID];
                v29 = originalGroupID;
                v22 = originalGroupID;
                v23 = originalGroupID2;
                if ([IMUnreadCountReport _stringEquals:v22 string:originalGroupID2])
                {
                  lastAddressedHandleID = [(IMUnreadCountReport *)self lastAddressedHandleID];
                  lastAddressedHandleID2 = [(IMUnreadCountReport *)v5 lastAddressedHandleID];
                  v28 = lastAddressedHandleID;
                  if ([IMUnreadCountReport _stringEquals:lastAddressedHandleID string:?])
                  {
                    lastAddressedSIMID = [(IMUnreadCountReport *)self lastAddressedSIMID];
                    lastAddressedSIMID2 = [(IMUnreadCountReport *)v5 lastAddressedSIMID];
                    v12 = [IMUnreadCountReport _stringEquals:lastAddressedSIMID string:lastAddressedSIMID2];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v20 = [IMUnreadCountReport alloc];
  guid = [(IMUnreadCountReport *)self guid];
  groupID = [(IMUnreadCountReport *)self groupID];
  originalGroupID = [(IMUnreadCountReport *)self originalGroupID];
  lastAddressedHandleID = [(IMUnreadCountReport *)self lastAddressedHandleID];
  lastAddressedSIMID = [(IMUnreadCountReport *)self lastAddressedSIMID];
  isFiltered = [(IMUnreadCountReport *)self isFiltered];
  isBlackholed = [(IMUnreadCountReport *)self isBlackholed];
  isArchived = [(IMUnreadCountReport *)self isArchived];
  participants = [(IMUnreadCountReport *)self participants];
  timeSensitiveRefreshDate = [(IMUnreadCountReport *)self timeSensitiveRefreshDate];
  timeSensitiveMessageCount = [(IMUnreadCountReport *)self timeSensitiveMessageCount];
  unreadCount = [(IMUnreadCountReport *)self unreadCount];
  LOBYTE(v16) = [(IMUnreadCountReport *)self isPendingReview];
  BYTE1(v15) = isArchived;
  LOBYTE(v15) = isBlackholed;
  v13 = [(IMUnreadCountReport *)v20 initWithGUID:guid groupID:groupID originalGroupID:originalGroupID lastAddressedHandleID:lastAddressedHandleID lastAddressedSIMID:lastAddressedSIMID isFiltered:isFiltered isBlackholed:v15 isArchived:participants participants:timeSensitiveRefreshDate timeSensitiveRefreshDate:timeSensitiveMessageCount timeSensitiveMessageCount:unreadCount unreadCount:v16 isPendingReview:?];

  return v13;
}

- (IMUnreadCountReport)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v25 = [dictionaryCopy objectForKeyedSubscript:@"g"];
  v24 = [dictionaryCopy objectForKeyedSubscript:@"i"];
  v23 = [dictionaryCopy objectForKeyedSubscript:@"o"];
  v21 = [dictionaryCopy objectForKeyedSubscript:@"h"];
  v20 = [dictionaryCopy objectForKeyedSubscript:@"s"];
  v26 = [dictionaryCopy objectForKeyedSubscript:@"f"];
  integerValue = [v26 integerValue];
  v22 = [dictionaryCopy objectForKeyedSubscript:@"b"];
  bOOLValue = [v22 BOOLValue];
  v19 = [dictionaryCopy objectForKeyedSubscript:@"a"];
  bOOLValue2 = [v19 BOOLValue];
  v6 = [dictionaryCopy objectForKeyedSubscript:@"p"];
  v7 = [dictionaryCopy objectForKeyedSubscript:@"d"];
  v8 = [dictionaryCopy objectForKeyedSubscript:@"t"];
  integerValue2 = [v8 integerValue];
  v10 = [dictionaryCopy objectForKeyedSubscript:@"u"];
  integerValue3 = [v10 integerValue];
  v12 = [dictionaryCopy objectForKeyedSubscript:@"r"];

  LOBYTE(v15) = [v12 BOOLValue];
  BYTE1(v14) = bOOLValue2;
  LOBYTE(v14) = bOOLValue;
  v18 = [(IMUnreadCountReport *)self initWithGUID:v25 groupID:v24 originalGroupID:v23 lastAddressedHandleID:v21 lastAddressedSIMID:v20 isFiltered:integerValue isBlackholed:v14 isArchived:v6 participants:v7 timeSensitiveRefreshDate:integerValue2 timeSensitiveMessageCount:integerValue3 unreadCount:v15 isPendingReview:?];

  return v18;
}

@end