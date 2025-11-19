@interface IMItem
+ (Class)classForIMItemType:(int64_t)a3;
+ (Class)classForMessageItemDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isFromMe;
- (BOOL)isOlderThanItem:(id)a3;
- (BOOL)unsentIsFromMeItem;
- (IMItem)initWithCoder:(id)a3;
- (IMItem)initWithDictionary:(id)a3;
- (IMItem)initWithSender:(id)a3 time:(id)a4 guid:(id)a5 type:(int64_t)a6;
- (IMItem)initWithSenderInfo:(id)a3 time:(id)a4 guid:(id)a5 messageID:(int64_t)a6 account:(id)a7 accountID:(id)a8 service:(id)a9 handle:(id)a10 roomName:(id)a11 unformattedID:(id)a12 countryCode:(id)a13 type:(int64_t)a14;
- (_NSRange)associatedMessageRange;
- (id)copyDictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)pluginSessionGUID;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithIMRemoteObjectSerializedDictionary:(id)a3;
- (void)setPersonCentricID:(id)a3;
- (void)setSender:(id)a3;
@end

@implementation IMItem

- (id)copyDictionaryRepresentation
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v4 = objc_autoreleasePoolPush();
  senderInfo = self->_senderInfo;
  if (senderInfo)
  {
    CFDictionarySetValue(Mutable, @"senderInfo", senderInfo);
  }

  unformattedID = self->_unformattedID;
  if (unformattedID)
  {
    CFDictionarySetValue(Mutable, @"unformattedID", unformattedID);
  }

  countryCode = self->_countryCode;
  if (countryCode)
  {
    CFDictionarySetValue(Mutable, @"countryCode", countryCode);
  }

  guid = self->_guid;
  if (guid)
  {
    CFDictionarySetValue(Mutable, @"guid", guid);
  }

  roomName = self->_roomName;
  if (roomName)
  {
    CFDictionarySetValue(Mutable, @"roomName", roomName);
  }

  handle = self->_handle;
  if (handle)
  {
    CFDictionarySetValue(Mutable, @"handle", handle);
  }

  account = self->_account;
  if (account)
  {
    CFDictionarySetValue(Mutable, @"account", account);
  }

  accountID = self->_accountID;
  if (accountID)
  {
    CFDictionarySetValue(Mutable, @"accountID", accountID);
  }

  service = self->_service;
  if (service)
  {
    CFDictionarySetValue(Mutable, @"service", service);
  }

  v14 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_messageID];
  if (v14)
  {
    CFDictionarySetValue(Mutable, @"messageID", v14);
  }

  v15 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_type];
  if (v15)
  {
    CFDictionarySetValue(Mutable, @"type", v15);
  }

  if ([(NSString *)self->_balloonBundleID length])
  {
    v16 = [(IMItem *)self balloonBundleID];
    if (v16)
    {
      CFDictionarySetValue(Mutable, @"balloonBundleID", v16);
    }
  }

  time = self->_time;
  if (time)
  {
    [(NSDate *)time timeIntervalSinceReferenceDate];
    v18 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    if (v18)
    {
      CFDictionarySetValue(Mutable, @"time", v18);
    }
  }

  v19 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_cloudKitSyncState];
  if (v19)
  {
    CFDictionarySetValue(Mutable, @"ckSyncState", v19);
  }

  cloudKitRecordID = self->_cloudKitRecordID;
  if (cloudKitRecordID)
  {
    CFDictionarySetValue(Mutable, @"ckRecordID", cloudKitRecordID);
  }

  cloudKitServerChangeTokenBlob = self->_cloudKitServerChangeTokenBlob;
  if (cloudKitServerChangeTokenBlob)
  {
    CFDictionarySetValue(Mutable, @"ckServerChangeTokenBlob", cloudKitServerChangeTokenBlob);
  }

  cloudKitRecordChangeTag = self->_cloudKitRecordChangeTag;
  if (cloudKitRecordChangeTag)
  {
    CFDictionarySetValue(Mutable, @"ckRecordChangeTag", cloudKitRecordChangeTag);
  }

  destinationCallerID = self->_destinationCallerID;
  if (destinationCallerID)
  {
    CFDictionarySetValue(Mutable, @"destinationCallerID", destinationCallerID);
  }

  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_sortID];
  if (v24)
  {
    CFDictionarySetValue(Mutable, @"sortID", v24);
  }

  replyToGUID = self->_replyToGUID;
  if (replyToGUID)
  {
    CFDictionarySetValue(Mutable, @"replyToGUID", replyToGUID);
  }

  criticalMessagingAppName = self->_criticalMessagingAppName;
  if (criticalMessagingAppName)
  {
    CFDictionarySetValue(Mutable, @"criticalMessagingAppName", criticalMessagingAppName);
  }

  objc_autoreleasePoolPop(v4);
  return Mutable;
}

- (_NSRange)associatedMessageRange
{
  v2 = 0;
  v3 = 0;
  result.length = v3;
  result.location = v2;
  return result;
}

+ (Class)classForIMItemType:(int64_t)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = @"type";
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
  v9[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [a1 classForMessageItemDictionary:v5];

  return v6;
}

+ (Class)classForMessageItemDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKey:@"type"];
  v5 = [v4 longLongValue];

  v6 = 0;
  if (v5 <= 3)
  {
    if (v5 <= 1)
    {
      if (v5)
      {
        if (v5 != 1)
        {
          goto LABEL_11;
        }
      }

      else
      {
        [v3 objectForKey:@"associatedMessageGUID"];
      }
    }
  }

  else if (v5 > 8)
  {
    goto LABEL_11;
  }

  v6 = objc_opt_class();
LABEL_11:

  return v6;
}

- (id)description
{
  v15 = MEMORY[0x1E696AEC0];
  v16.receiver = self;
  v16.super_class = IMItem;
  v3 = [(IMItem *)&v16 description];
  v4 = [(IMItem *)self messageID];
  v5 = [(IMItem *)self guid];
  v6 = [(IMItem *)self time];
  v7 = [(IMItem *)self cloudKitSyncState];
  v8 = [(IMItem *)self cloudKitRecordID];
  v9 = [(IMItem *)self destinationCallerID];
  v10 = [(IMItem *)self sortID];
  if ([(IMItem *)self wasDetonated])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v12 = [(IMItem *)self service];
  v13 = [v15 stringWithFormat:@"[%@ messageID: %lld guid: %@ time: %@ ck-sync-state: %ld ck-record-id %@ destinationCallerID: %@ sortID %lu wasDetonated: %@ service: %@]", v3, v4, v5, v6, v7, v8, v9, v10, v11, v12];

  return v13;
}

- (IMItem)initWithDictionary:(id)a3
{
  v4 = a3;
  v33.receiver = self;
  v33.super_class = IMItem;
  v5 = [(IMItem *)&v33 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"senderInfo"];
    [(IMItem *)v5 setSenderInfo:v6];

    v7 = [v4 objectForKey:@"guid"];
    if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v8 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v7]) == 0 || (v9 = v8, objc_msgSend(v8, "UUIDString"), v10 = objc_claimAutoreleasedReturnValue(), v9, !v10))
    {
      v10 = +[IMItem stringGUID];
    }

    [(IMItem *)v5 setGuid:v10];
    v11 = [v4 objectForKey:@"roomName"];
    [(IMItem *)v5 setRoomName:v11];

    v12 = [v4 objectForKey:@"handle"];
    [(IMItem *)v5 setHandle:v12];

    v13 = [v4 objectForKey:@"account"];
    [(IMItem *)v5 setAccount:v13];

    v14 = [v4 objectForKey:@"accountID"];
    [(IMItem *)v5 setAccountID:v14];

    v15 = [v4 objectForKey:@"service"];
    [(IMItem *)v5 setService:v15];

    v16 = [v4 objectForKey:@"unformattedID"];
    [(IMItem *)v5 setUnformattedID:v16];

    v17 = [v4 objectForKey:@"countryCode"];
    [(IMItem *)v5 setCountryCode:v17];

    v18 = [v4 objectForKey:@"balloonBundleID"];
    [(IMItem *)v5 setBalloonBundleID:v18];

    v19 = [v4 objectForKey:@"time"];
    [v19 doubleValue];
    v21 = v20;

    if (v21 > 10.0)
    {
      v22 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v21];
      [(IMItem *)v5 setTime:v22];
    }

    v23 = [v4 objectForKey:@"messageID"];
    v5->_messageID = [v23 longLongValue];

    v24 = [v4 objectForKey:@"type"];
    v5->_type = [v24 longLongValue];

    v25 = [v4 objectForKey:@"ckSyncState"];
    -[IMItem setCloudKitSyncState:](v5, "setCloudKitSyncState:", [v25 integerValue]);

    v26 = [v4 objectForKey:@"ckRecordID"];
    [(IMItem *)v5 setCloudKitRecordID:v26];

    v27 = [v4 objectForKey:@"ckServerChangeTokenBlob"];
    [(IMItem *)v5 setCloudKitServerChangeTokenBlob:v27];

    v28 = [v4 objectForKey:@"ckRecordChangeTag"];
    [(IMItem *)v5 setCloudKitRecordChangeTag:v28];

    v29 = [v4 objectForKey:@"destinationCallerID"];
    [(IMItem *)v5 setDestinationCallerID:v29];

    v30 = [v4 objectForKey:@"sortID"];
    -[IMItem setSortID:](v5, "setSortID:", [v30 unsignedIntegerValue]);

    v31 = [v4 objectForKey:@"replyToGUID"];
    [(IMItem *)v5 setReplyToGUID:v31];
  }

  return v5;
}

- (IMItem)initWithSender:(id)a3 time:(id)a4 guid:(id)a5 type:(int64_t)a6
{
  if (a3)
  {
    v10 = MEMORY[0x1E695DF20];
    v11 = *MEMORY[0x1E69A6310];
    v12 = a5;
    v13 = a4;
    v14 = [v10 dictionaryWithObject:a3 forKey:v11];
    v15 = [(IMItem *)self initWithSenderInfo:v14 time:v13 guid:v12 messageID:0 account:0 accountID:0 service:0 handle:0 roomName:0 unformattedID:0 countryCode:0 type:a6];

    v16 = v15;
  }

  else
  {
    v17 = a5;
    v18 = a4;
    v19 = [(IMItem *)self initWithSenderInfo:0 time:v18 guid:v17 messageID:0 account:0 accountID:0 service:0 handle:0 roomName:0 unformattedID:0 countryCode:0 type:a6];

    v16 = v19;
  }

  return v16;
}

- (IMItem)initWithSenderInfo:(id)a3 time:(id)a4 guid:(id)a5 messageID:(int64_t)a6 account:(id)a7 accountID:(id)a8 service:(id)a9 handle:(id)a10 roomName:(id)a11 unformattedID:(id)a12 countryCode:(id)a13 type:(int64_t)a14
{
  v18 = a3;
  v39 = a4;
  v19 = a5;
  v20 = a7;
  v21 = a8;
  v22 = v20;
  v23 = a9;
  v24 = v21;
  v25 = a10;
  v26 = a11;
  v27 = a12;
  v28 = a13;
  v40.receiver = self;
  v40.super_class = IMItem;
  v29 = [(IMItem *)&v40 init];
  v30 = v29;
  if (v29)
  {
    [(IMItem *)v29 setSenderInfo:v18];
    [(IMItem *)v30 setRoomName:v26];
    [(IMItem *)v30 setHandle:v25];
    [(IMItem *)v30 setAccount:v22];
    [(IMItem *)v30 setAccountID:v24];
    v38 = v23;
    [(IMItem *)v30 setService:v23];
    if (v39)
    {
      [(IMItem *)v30 setTime:v39];
    }

    else
    {
      [MEMORY[0x1E695DF00] date];
      v32 = v31 = v18;
      [(IMItem *)v30 setTime:v32];

      v18 = v31;
    }

    [(IMItem *)v30 setCountryCode:v28];
    [(IMItem *)v30 setUnformattedID:v27];
    if (v19)
    {
      [(IMItem *)v30 setGuid:v19];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringGUID];
      v34 = v33 = v18;
      [(IMItem *)v30 setGuid:v34];

      v18 = v33;
    }

    [(IMItem *)v30 setCloudKitSyncState:0];
    [(IMItem *)v30 setCloudKitRecordID:0];
    [(IMItem *)v30 setCloudKitServerChangeTokenBlob:0];
    [(IMItem *)v30 setCloudKitRecordChangeTag:0];
    [(IMItem *)v30 setSortID:0];
    v23 = v38;
    v30->_messageID = a6;
    v30->_type = a14;
  }

  return v30;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(IMItem *)self senderInfo];
  [v4 setSenderInfo:v5];

  v6 = [(IMItem *)self time];
  [v4 setTime:v6];

  v7 = [(IMItem *)self guid];
  [v4 setGuid:v7];

  v8 = [(IMItem *)self roomName];
  [v4 setRoomName:v8];

  v9 = [(IMItem *)self handle];
  [v4 setHandle:v9];

  v10 = [(IMItem *)self account];
  [v4 setAccount:v10];

  v11 = [(IMItem *)self accountID];
  [v4 setAccountID:v11];

  v12 = [(IMItem *)self service];
  [v4 setService:v12];

  v13 = [(IMItem *)self destinationCallerID];
  [v4 setDestinationCallerID:v13];

  v14 = [(IMItem *)self countryCode];
  [v4 setCountryCode:v14];

  v15 = [(IMItem *)self unformattedID];
  [v4 setUnformattedID:v15];

  [v4 setType:{-[IMItem type](self, "type")}];
  v16 = [(IMItem *)self context];
  [v4 setContext:v16];

  v17 = [(IMItem *)self balloonBundleID];
  [v4 setBalloonBundleID:v17];

  v18 = [(IMItem *)self clientSendTime];
  [v4 setClientSendTime:v18];

  [v4 setSortID:{-[IMItem sortID](self, "sortID")}];
  return v4;
}

- (IMItem)initWithCoder:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = IMItem;
  v5 = [(IMItem *)&v32 init];
  if (v5)
  {
    v5->_type = [v4 decodeInt64ForKey:@"type"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [v6 setWithObjects:{v7, v8, v9, v10, v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"senderInfo"];
    [(IMItem *)v5 setSenderInfo:v13];

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"guid"];
    [(IMItem *)v5 setGuid:v14];

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"roomName"];
    [(IMItem *)v5 setRoomName:v15];

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"handle"];
    [(IMItem *)v5 setHandle:v16];

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"account"];
    [(IMItem *)v5 setAccount:v17];

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountID"];
    [(IMItem *)v5 setAccountID:v18];

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"service"];
    [(IMItem *)v5 setService:v19];

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"destinationCallerID"];
    [(IMItem *)v5 setDestinationCallerID:v20];

    [v4 decodeDoubleForKey:@"time"];
    if (v21 > 10.0)
    {
      v22 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
      [(IMItem *)v5 setTime:v22];
    }

    v5->_messageID = [v4 decodeInt64ForKey:@"messageID"];
    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"countryCode"];
    [(IMItem *)v5 setCountryCode:v23];

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"unformattedID"];
    [(IMItem *)v5 setUnformattedID:v24];

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"balloonBundleID"];
    [(IMItem *)v5 setBalloonBundleID:v25];

    v5->_cloudKitSyncState = [v4 decodeInt64ForKey:@"ckSyncState"];
    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ckRecordID"];
    [(IMItem *)v5 setCloudKitRecordID:v26];

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ckServerChangeTokenBlob"];
    [(IMItem *)v5 setCloudKitServerChangeTokenBlob:v27];

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ckRecordChangeTag"];
    [(IMItem *)v5 setCloudKitRecordChangeTag:v28];

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sortID"];
    -[IMItem setSortID:](v5, "setSortID:", [v29 unsignedIntegerValue]);

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"replyToGUID"];
    [(IMItem *)v5 setReplyToGUID:v30];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  [v5 encodeInt64:type forKey:@"type"];
  v6 = [(IMItem *)self senderInfo];
  [v5 encodeObject:v6 forKey:@"senderInfo"];

  v7 = [(IMItem *)self guid];
  [v5 encodeObject:v7 forKey:@"guid"];

  v8 = [(IMItem *)self roomName];
  [v5 encodeObject:v8 forKey:@"roomName"];

  v9 = [(IMItem *)self handle];
  [v5 encodeObject:v9 forKey:@"handle"];

  v10 = [(IMItem *)self account];
  [v5 encodeObject:v10 forKey:@"account"];

  v11 = [(IMItem *)self accountID];
  [v5 encodeObject:v11 forKey:@"accountID"];

  v12 = [(IMItem *)self service];
  [v5 encodeObject:v12 forKey:@"service"];

  v13 = [(IMItem *)self destinationCallerID];
  [v5 encodeObject:v13 forKey:@"destinationCallerID"];

  v14 = [(IMItem *)self time];
  [v14 timeIntervalSinceReferenceDate];
  v16 = v15;

  [v5 encodeDouble:@"time" forKey:v16];
  [v5 encodeInt64:self->_messageID forKey:@"messageID"];
  v17 = [(IMItem *)self countryCode];
  [v5 encodeObject:v17 forKey:@"countryCode"];

  v18 = [(IMItem *)self unformattedID];
  [v5 encodeObject:v18 forKey:@"unformattedID"];

  v19 = [(IMItem *)self balloonBundleID];
  [v5 encodeObject:v19 forKey:@"balloonBundleID"];

  [v5 encodeInt64:self->_cloudKitSyncState forKey:@"ckSyncState"];
  v20 = [(IMItem *)self cloudKitRecordID];
  [v5 encodeObject:v20 forKey:@"ckRecordID"];

  v21 = [(IMItem *)self cloudKitServerChangeTokenBlob];
  [v5 encodeObject:v21 forKey:@"ckServerChangeTokenBlob"];

  v22 = [(IMItem *)self cloudKitRecordChangeTag];
  [v5 encodeObject:v22 forKey:@"ckRecordChangeTag"];

  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[IMItem sortID](self, "sortID")}];
  [v5 encodeObject:v23 forKey:@"sortID"];

  v24 = [(IMItem *)self replyToGUID];
  [v5 encodeObject:v24 forKey:@"replyToGUID"];

  v25 = [(IMItem *)self criticalMessagingAppName];
  [v5 encodeObject:v25 forKey:@"criticalMessagingAppName"];
}

- (void)encodeWithIMRemoteObjectSerializedDictionary:(id)a3
{
  v5 = a3;
  v4 = [(IMItem *)self copyDictionaryRepresentation];
  if (v4)
  {
    [v5 addEntriesFromDictionary:v4];
  }
}

- (id)dictionaryRepresentation
{
  v2 = [(IMItem *)self copyDictionaryRepresentation];

  return v2;
}

- (BOOL)isFromMe
{
  v2 = [(IMItem *)self sender];
  v3 = v2 == 0;

  return v3;
}

- (void)setSender:(id)a3
{
  v8 = a3;
  v4 = [(IMItem *)self senderInfo];
  Mutable = [v4 mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v6 = *MEMORY[0x1E69A6310];
  if (v8)
  {
    [(__CFDictionary *)Mutable setObject:v8 forKey:v6];
  }

  else
  {
    [(__CFDictionary *)Mutable removeObjectForKey:v6];
  }

  if ([(__CFDictionary *)Mutable count])
  {
    v7 = Mutable;
  }

  else
  {
    v7 = 0;
  }

  [(IMItem *)self setSenderInfo:v7];
}

- (void)setPersonCentricID:(id)a3
{
  v8 = a3;
  v4 = [(IMItem *)self senderInfo];
  Mutable = [v4 mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v6 = *MEMORY[0x1E69A6350];
  if (v8)
  {
    [(__CFDictionary *)Mutable setObject:v8 forKey:v6];
  }

  else
  {
    [(__CFDictionary *)Mutable removeObjectForKey:v6];
  }

  if ([(__CFDictionary *)Mutable count])
  {
    v7 = Mutable;
  }

  else
  {
    v7 = 0;
  }

  [(IMItem *)self setSenderInfo:v7];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      type = self->_type;
      if (type != [(IMItem *)v5 type]|| (messageID = self->_messageID, messageID != [(IMItem *)v5 messageID]))
      {
        v12 = 0;
LABEL_63:

        goto LABEL_64;
      }

      guid = self->_guid;
      v9 = [(IMItem *)v5 guid];
      if (guid != v9)
      {
        v10 = self->_guid;
        v11 = [(IMItem *)v5 guid];
        if (![(NSString *)v10 isEqualToString:v11])
        {
          v12 = 0;
          goto LABEL_61;
        }

        v78 = v11;
      }

      handle = self->_handle;
      v14 = [(IMItem *)v5 handle];
      if (handle != v14)
      {
        v15 = self->_handle;
        v16 = [(IMItem *)v5 handle];
        v17 = v15;
        v18 = v16;
        if (![(NSString *)v17 isEqualToString:v16])
        {
          v12 = 0;
LABEL_59:

LABEL_60:
          v11 = v78;
          if (guid == v9)
          {
LABEL_62:

            goto LABEL_63;
          }

LABEL_61:

          goto LABEL_62;
        }

        v76 = v18;
      }

      senderInfo = self->_senderInfo;
      v20 = [(IMItem *)v5 senderInfo];
      v77 = senderInfo;
      if (senderInfo != v20)
      {
        v21 = self->_senderInfo;
        v22 = [(IMItem *)v5 senderInfo];
        v23 = v21;
        v24 = v22;
        if (![(NSDictionary *)v23 isEqualToDictionary:v22])
        {
          v12 = 0;
LABEL_57:

LABEL_58:
          v18 = v76;
          if (handle == v14)
          {
            goto LABEL_60;
          }

          goto LABEL_59;
        }

        v74 = v24;
      }

      time = self->_time;
      v26 = [(IMItem *)v5 time];
      v75 = time;
      if (time != v26)
      {
        v27 = self->_time;
        v72 = [(IMItem *)v5 time];
        if (![(NSDate *)v27 isEqualToDate:?])
        {
          v12 = 0;
LABEL_55:

LABEL_56:
          v24 = v74;
          if (v77 == v20)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        }
      }

      v28 = self->_handle;
      v73 = [(IMItem *)v5 handle];
      v71 = v28;
      if (v28 != v73)
      {
        v29 = self->_handle;
        v68 = [(IMItem *)v5 handle];
        if (![(NSString *)v29 isEqualToString:?])
        {
          v12 = 0;
          v30 = v73;
LABEL_53:

LABEL_54:
          if (v75 == v26)
          {
            goto LABEL_56;
          }

          goto LABEL_55;
        }
      }

      roomName = self->_roomName;
      [(IMItem *)v5 roomName];
      v70 = v69 = v26;
      v67 = roomName;
      if (roomName != v70)
      {
        v32 = self->_roomName;
        v65 = [(IMItem *)v5 roomName];
        if (![(NSString *)v32 isEqualToString:?])
        {
          v12 = 0;
          v30 = v73;
          v33 = v70;
LABEL_51:

LABEL_52:
          v26 = v69;
          if (v71 == v30)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        }
      }

      service = self->_service;
      v66 = [(IMItem *)v5 service];
      v64 = service;
      if (service != v66)
      {
        v35 = self->_service;
        v62 = [(IMItem *)v5 service];
        if (![(NSString *)v35 isEqualToString:?])
        {
          v12 = 0;
          v30 = v73;
          v36 = v66;
LABEL_49:

LABEL_50:
          v33 = v70;
          if (v67 == v70)
          {
            goto LABEL_52;
          }

          goto LABEL_51;
        }
      }

      accountID = self->_accountID;
      v38 = [(IMItem *)v5 accountID];
      v61 = accountID;
      v63 = handle;
      if (accountID != v38)
      {
        v39 = v38;
        v40 = self->_accountID;
        v58 = [(IMItem *)v5 accountID];
        if (![(NSString *)v40 isEqualToString:?])
        {
          v12 = 0;
          v30 = v73;
LABEL_47:

LABEL_48:
          v36 = v66;
          handle = v63;
          if (v64 == v66)
          {
            goto LABEL_50;
          }

          goto LABEL_49;
        }

        v38 = v39;
      }

      v60 = v38;
      account = self->_account;
      v59 = [(IMItem *)v5 account];
      v57 = account;
      if (account == v59 || (v42 = self->_account, [(IMItem *)v5 account], v56 = objc_claimAutoreleasedReturnValue(), [(NSString *)v42 isEqualToString:?]))
      {
        destinationCallerID = self->_destinationCallerID;
        v45 = [(IMItem *)v5 destinationCallerID];
        v46 = destinationCallerID == v45;
        v47 = v45;
        if (v46)
        {
          sortID = self->_sortID;
          v12 = sortID == [(IMItem *)v5 sortID];
        }

        else
        {
          v55 = v45;
          v48 = self->_destinationCallerID;
          v49 = [(IMItem *)v5 destinationCallerID];
          v50 = v48;
          v51 = v49;
          if ([(NSString *)v50 isEqualToString:v49])
          {
            v52 = self->_sortID;
            v12 = v52 == [(IMItem *)v5 sortID];
          }

          else
          {

            v12 = 0;
          }
        }

        v43 = v59;
        v30 = v73;
        if (v57 == v59)
        {
LABEL_46:

          v39 = v60;
          if (v61 == v60)
          {
            goto LABEL_48;
          }

          goto LABEL_47;
        }
      }

      else
      {
        v12 = 0;
        v30 = v73;
        v43 = v59;
      }

      goto LABEL_46;
    }

    v79.receiver = self;
    v79.super_class = IMItem;
    v12 = [(IMItem *)&v79 isEqual:v4];
  }

LABEL_64:

  return v12;
}

- (BOOL)isOlderThanItem:(id)a3
{
  v4 = a3;
  v5 = [(IMItem *)self time];
  v6 = [v4 time];
  v7 = [v5 compare:v6];

  if (v7 == 1)
  {
    v8 = 0;
  }

  else if (v7 == -1)
  {
    v8 = 1;
  }

  else
  {
    v9 = [v4 messageID];
    v8 = v9 >= [(IMItem *)self messageID];
  }

  return v8;
}

- (BOOL)unsentIsFromMeItem
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_4;
  }

  v3 = [(IMItem *)self isFromMe];
  if (v3)
  {
    if (([(IMItem *)self isSent]& 1) != 0)
    {
LABEL_4:
      LOBYTE(v3) = 0;
      return v3;
    }

    LOBYTE(v3) = [(IMItem *)self errorCode]== 0;
  }

  return v3;
}

- (unint64_t)hash
{
  if (self->_guid)
  {
    guid = self->_guid;

    return [(NSString *)guid hash];
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = IMItem;
    return [(IMItem *)&v6 hash];
  }
}

- (id)pluginSessionGUID
{
  v3 = [(IMItem *)self balloonBundleID];
  v4 = [v3 length];

  if (v4 && [(IMItem *)self isBreadcrumb])
  {
    v5 = [(IMItem *)self associatedMessageGUID];
  }

  else
  {
    v5 = [(IMItem *)self guid];
  }

  return v5;
}

@end