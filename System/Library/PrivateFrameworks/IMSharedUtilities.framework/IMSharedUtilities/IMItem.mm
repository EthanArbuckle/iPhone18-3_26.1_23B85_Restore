@interface IMItem
+ (Class)classForIMItemType:(int64_t)type;
+ (Class)classForMessageItemDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (BOOL)isFromMe;
- (BOOL)isOlderThanItem:(id)item;
- (BOOL)unsentIsFromMeItem;
- (IMItem)initWithCoder:(id)coder;
- (IMItem)initWithDictionary:(id)dictionary;
- (IMItem)initWithSender:(id)sender time:(id)time guid:(id)guid type:(int64_t)type;
- (IMItem)initWithSenderInfo:(id)info time:(id)time guid:(id)guid messageID:(int64_t)d account:(id)account accountID:(id)iD service:(id)service handle:(id)self0 roomName:(id)self1 unformattedID:(id)self2 countryCode:(id)self3 type:(int64_t)self4;
- (_NSRange)associatedMessageRange;
- (id)copyDictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)pluginSessionGUID;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithIMRemoteObjectSerializedDictionary:(id)dictionary;
- (void)setPersonCentricID:(id)d;
- (void)setSender:(id)sender;
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
    balloonBundleID = [(IMItem *)self balloonBundleID];
    if (balloonBundleID)
    {
      CFDictionarySetValue(Mutable, @"balloonBundleID", balloonBundleID);
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

+ (Class)classForIMItemType:(int64_t)type
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = @"type";
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:type];
  v9[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [self classForMessageItemDictionary:v5];

  return v6;
}

+ (Class)classForMessageItemDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKey:@"type"];
  longLongValue = [v4 longLongValue];

  v6 = 0;
  if (longLongValue <= 3)
  {
    if (longLongValue <= 1)
    {
      if (longLongValue)
      {
        if (longLongValue != 1)
        {
          goto LABEL_11;
        }
      }

      else
      {
        [dictionaryCopy objectForKey:@"associatedMessageGUID"];
      }
    }
  }

  else if (longLongValue > 8)
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
  messageID = [(IMItem *)self messageID];
  guid = [(IMItem *)self guid];
  time = [(IMItem *)self time];
  cloudKitSyncState = [(IMItem *)self cloudKitSyncState];
  cloudKitRecordID = [(IMItem *)self cloudKitRecordID];
  destinationCallerID = [(IMItem *)self destinationCallerID];
  sortID = [(IMItem *)self sortID];
  if ([(IMItem *)self wasDetonated])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  service = [(IMItem *)self service];
  v13 = [v15 stringWithFormat:@"[%@ messageID: %lld guid: %@ time: %@ ck-sync-state: %ld ck-record-id %@ destinationCallerID: %@ sortID %lu wasDetonated: %@ service: %@]", v3, messageID, guid, time, cloudKitSyncState, cloudKitRecordID, destinationCallerID, sortID, v11, service];

  return v13;
}

- (IMItem)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v33.receiver = self;
  v33.super_class = IMItem;
  v5 = [(IMItem *)&v33 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"senderInfo"];
    [(IMItem *)v5 setSenderInfo:v6];

    v7 = [dictionaryCopy objectForKey:@"guid"];
    if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v8 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v7]) == 0 || (v9 = v8, objc_msgSend(v8, "UUIDString"), v10 = objc_claimAutoreleasedReturnValue(), v9, !v10))
    {
      v10 = +[IMItem stringGUID];
    }

    [(IMItem *)v5 setGuid:v10];
    v11 = [dictionaryCopy objectForKey:@"roomName"];
    [(IMItem *)v5 setRoomName:v11];

    v12 = [dictionaryCopy objectForKey:@"handle"];
    [(IMItem *)v5 setHandle:v12];

    v13 = [dictionaryCopy objectForKey:@"account"];
    [(IMItem *)v5 setAccount:v13];

    v14 = [dictionaryCopy objectForKey:@"accountID"];
    [(IMItem *)v5 setAccountID:v14];

    v15 = [dictionaryCopy objectForKey:@"service"];
    [(IMItem *)v5 setService:v15];

    v16 = [dictionaryCopy objectForKey:@"unformattedID"];
    [(IMItem *)v5 setUnformattedID:v16];

    v17 = [dictionaryCopy objectForKey:@"countryCode"];
    [(IMItem *)v5 setCountryCode:v17];

    v18 = [dictionaryCopy objectForKey:@"balloonBundleID"];
    [(IMItem *)v5 setBalloonBundleID:v18];

    v19 = [dictionaryCopy objectForKey:@"time"];
    [v19 doubleValue];
    v21 = v20;

    if (v21 > 10.0)
    {
      v22 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v21];
      [(IMItem *)v5 setTime:v22];
    }

    v23 = [dictionaryCopy objectForKey:@"messageID"];
    v5->_messageID = [v23 longLongValue];

    v24 = [dictionaryCopy objectForKey:@"type"];
    v5->_type = [v24 longLongValue];

    v25 = [dictionaryCopy objectForKey:@"ckSyncState"];
    -[IMItem setCloudKitSyncState:](v5, "setCloudKitSyncState:", [v25 integerValue]);

    v26 = [dictionaryCopy objectForKey:@"ckRecordID"];
    [(IMItem *)v5 setCloudKitRecordID:v26];

    v27 = [dictionaryCopy objectForKey:@"ckServerChangeTokenBlob"];
    [(IMItem *)v5 setCloudKitServerChangeTokenBlob:v27];

    v28 = [dictionaryCopy objectForKey:@"ckRecordChangeTag"];
    [(IMItem *)v5 setCloudKitRecordChangeTag:v28];

    v29 = [dictionaryCopy objectForKey:@"destinationCallerID"];
    [(IMItem *)v5 setDestinationCallerID:v29];

    v30 = [dictionaryCopy objectForKey:@"sortID"];
    -[IMItem setSortID:](v5, "setSortID:", [v30 unsignedIntegerValue]);

    v31 = [dictionaryCopy objectForKey:@"replyToGUID"];
    [(IMItem *)v5 setReplyToGUID:v31];
  }

  return v5;
}

- (IMItem)initWithSender:(id)sender time:(id)time guid:(id)guid type:(int64_t)type
{
  if (sender)
  {
    v10 = MEMORY[0x1E695DF20];
    v11 = *MEMORY[0x1E69A6310];
    guidCopy = guid;
    timeCopy = time;
    v14 = [v10 dictionaryWithObject:sender forKey:v11];
    v15 = [(IMItem *)self initWithSenderInfo:v14 time:timeCopy guid:guidCopy messageID:0 account:0 accountID:0 service:0 handle:0 roomName:0 unformattedID:0 countryCode:0 type:type];

    v16 = v15;
  }

  else
  {
    guidCopy2 = guid;
    timeCopy2 = time;
    v19 = [(IMItem *)self initWithSenderInfo:0 time:timeCopy2 guid:guidCopy2 messageID:0 account:0 accountID:0 service:0 handle:0 roomName:0 unformattedID:0 countryCode:0 type:type];

    v16 = v19;
  }

  return v16;
}

- (IMItem)initWithSenderInfo:(id)info time:(id)time guid:(id)guid messageID:(int64_t)d account:(id)account accountID:(id)iD service:(id)service handle:(id)self0 roomName:(id)self1 unformattedID:(id)self2 countryCode:(id)self3 type:(int64_t)self4
{
  infoCopy = info;
  timeCopy = time;
  guidCopy = guid;
  accountCopy = account;
  iDCopy = iD;
  v22 = accountCopy;
  serviceCopy = service;
  v24 = iDCopy;
  handleCopy = handle;
  nameCopy = name;
  unformattedIDCopy = unformattedID;
  codeCopy = code;
  v40.receiver = self;
  v40.super_class = IMItem;
  v29 = [(IMItem *)&v40 init];
  v30 = v29;
  if (v29)
  {
    [(IMItem *)v29 setSenderInfo:infoCopy];
    [(IMItem *)v30 setRoomName:nameCopy];
    [(IMItem *)v30 setHandle:handleCopy];
    [(IMItem *)v30 setAccount:v22];
    [(IMItem *)v30 setAccountID:v24];
    v38 = serviceCopy;
    [(IMItem *)v30 setService:serviceCopy];
    if (timeCopy)
    {
      [(IMItem *)v30 setTime:timeCopy];
    }

    else
    {
      [MEMORY[0x1E695DF00] date];
      v32 = v31 = infoCopy;
      [(IMItem *)v30 setTime:v32];

      infoCopy = v31;
    }

    [(IMItem *)v30 setCountryCode:codeCopy];
    [(IMItem *)v30 setUnformattedID:unformattedIDCopy];
    if (guidCopy)
    {
      [(IMItem *)v30 setGuid:guidCopy];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringGUID];
      v34 = v33 = infoCopy;
      [(IMItem *)v30 setGuid:v34];

      infoCopy = v33;
    }

    [(IMItem *)v30 setCloudKitSyncState:0];
    [(IMItem *)v30 setCloudKitRecordID:0];
    [(IMItem *)v30 setCloudKitServerChangeTokenBlob:0];
    [(IMItem *)v30 setCloudKitRecordChangeTag:0];
    [(IMItem *)v30 setSortID:0];
    serviceCopy = v38;
    v30->_messageID = d;
    v30->_type = type;
  }

  return v30;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  senderInfo = [(IMItem *)self senderInfo];
  [v4 setSenderInfo:senderInfo];

  time = [(IMItem *)self time];
  [v4 setTime:time];

  guid = [(IMItem *)self guid];
  [v4 setGuid:guid];

  roomName = [(IMItem *)self roomName];
  [v4 setRoomName:roomName];

  handle = [(IMItem *)self handle];
  [v4 setHandle:handle];

  account = [(IMItem *)self account];
  [v4 setAccount:account];

  accountID = [(IMItem *)self accountID];
  [v4 setAccountID:accountID];

  service = [(IMItem *)self service];
  [v4 setService:service];

  destinationCallerID = [(IMItem *)self destinationCallerID];
  [v4 setDestinationCallerID:destinationCallerID];

  countryCode = [(IMItem *)self countryCode];
  [v4 setCountryCode:countryCode];

  unformattedID = [(IMItem *)self unformattedID];
  [v4 setUnformattedID:unformattedID];

  [v4 setType:{-[IMItem type](self, "type")}];
  context = [(IMItem *)self context];
  [v4 setContext:context];

  balloonBundleID = [(IMItem *)self balloonBundleID];
  [v4 setBalloonBundleID:balloonBundleID];

  clientSendTime = [(IMItem *)self clientSendTime];
  [v4 setClientSendTime:clientSendTime];

  [v4 setSortID:{-[IMItem sortID](self, "sortID")}];
  return v4;
}

- (IMItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v32.receiver = self;
  v32.super_class = IMItem;
  v5 = [(IMItem *)&v32 init];
  if (v5)
  {
    v5->_type = [coderCopy decodeInt64ForKey:@"type"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [v6 setWithObjects:{v7, v8, v9, v10, v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"senderInfo"];
    [(IMItem *)v5 setSenderInfo:v13];

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"guid"];
    [(IMItem *)v5 setGuid:v14];

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"roomName"];
    [(IMItem *)v5 setRoomName:v15];

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"handle"];
    [(IMItem *)v5 setHandle:v16];

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"account"];
    [(IMItem *)v5 setAccount:v17];

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountID"];
    [(IMItem *)v5 setAccountID:v18];

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"service"];
    [(IMItem *)v5 setService:v19];

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"destinationCallerID"];
    [(IMItem *)v5 setDestinationCallerID:v20];

    [coderCopy decodeDoubleForKey:@"time"];
    if (v21 > 10.0)
    {
      v22 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
      [(IMItem *)v5 setTime:v22];
    }

    v5->_messageID = [coderCopy decodeInt64ForKey:@"messageID"];
    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"countryCode"];
    [(IMItem *)v5 setCountryCode:v23];

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"unformattedID"];
    [(IMItem *)v5 setUnformattedID:v24];

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"balloonBundleID"];
    [(IMItem *)v5 setBalloonBundleID:v25];

    v5->_cloudKitSyncState = [coderCopy decodeInt64ForKey:@"ckSyncState"];
    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ckRecordID"];
    [(IMItem *)v5 setCloudKitRecordID:v26];

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ckServerChangeTokenBlob"];
    [(IMItem *)v5 setCloudKitServerChangeTokenBlob:v27];

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ckRecordChangeTag"];
    [(IMItem *)v5 setCloudKitRecordChangeTag:v28];

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sortID"];
    -[IMItem setSortID:](v5, "setSortID:", [v29 unsignedIntegerValue]);

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"replyToGUID"];
    [(IMItem *)v5 setReplyToGUID:v30];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInt64:type forKey:@"type"];
  senderInfo = [(IMItem *)self senderInfo];
  [coderCopy encodeObject:senderInfo forKey:@"senderInfo"];

  guid = [(IMItem *)self guid];
  [coderCopy encodeObject:guid forKey:@"guid"];

  roomName = [(IMItem *)self roomName];
  [coderCopy encodeObject:roomName forKey:@"roomName"];

  handle = [(IMItem *)self handle];
  [coderCopy encodeObject:handle forKey:@"handle"];

  account = [(IMItem *)self account];
  [coderCopy encodeObject:account forKey:@"account"];

  accountID = [(IMItem *)self accountID];
  [coderCopy encodeObject:accountID forKey:@"accountID"];

  service = [(IMItem *)self service];
  [coderCopy encodeObject:service forKey:@"service"];

  destinationCallerID = [(IMItem *)self destinationCallerID];
  [coderCopy encodeObject:destinationCallerID forKey:@"destinationCallerID"];

  time = [(IMItem *)self time];
  [time timeIntervalSinceReferenceDate];
  v16 = v15;

  [coderCopy encodeDouble:@"time" forKey:v16];
  [coderCopy encodeInt64:self->_messageID forKey:@"messageID"];
  countryCode = [(IMItem *)self countryCode];
  [coderCopy encodeObject:countryCode forKey:@"countryCode"];

  unformattedID = [(IMItem *)self unformattedID];
  [coderCopy encodeObject:unformattedID forKey:@"unformattedID"];

  balloonBundleID = [(IMItem *)self balloonBundleID];
  [coderCopy encodeObject:balloonBundleID forKey:@"balloonBundleID"];

  [coderCopy encodeInt64:self->_cloudKitSyncState forKey:@"ckSyncState"];
  cloudKitRecordID = [(IMItem *)self cloudKitRecordID];
  [coderCopy encodeObject:cloudKitRecordID forKey:@"ckRecordID"];

  cloudKitServerChangeTokenBlob = [(IMItem *)self cloudKitServerChangeTokenBlob];
  [coderCopy encodeObject:cloudKitServerChangeTokenBlob forKey:@"ckServerChangeTokenBlob"];

  cloudKitRecordChangeTag = [(IMItem *)self cloudKitRecordChangeTag];
  [coderCopy encodeObject:cloudKitRecordChangeTag forKey:@"ckRecordChangeTag"];

  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[IMItem sortID](self, "sortID")}];
  [coderCopy encodeObject:v23 forKey:@"sortID"];

  replyToGUID = [(IMItem *)self replyToGUID];
  [coderCopy encodeObject:replyToGUID forKey:@"replyToGUID"];

  criticalMessagingAppName = [(IMItem *)self criticalMessagingAppName];
  [coderCopy encodeObject:criticalMessagingAppName forKey:@"criticalMessagingAppName"];
}

- (void)encodeWithIMRemoteObjectSerializedDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  copyDictionaryRepresentation = [(IMItem *)self copyDictionaryRepresentation];
  if (copyDictionaryRepresentation)
  {
    [dictionaryCopy addEntriesFromDictionary:copyDictionaryRepresentation];
  }
}

- (id)dictionaryRepresentation
{
  copyDictionaryRepresentation = [(IMItem *)self copyDictionaryRepresentation];

  return copyDictionaryRepresentation;
}

- (BOOL)isFromMe
{
  sender = [(IMItem *)self sender];
  v3 = sender == 0;

  return v3;
}

- (void)setSender:(id)sender
{
  senderCopy = sender;
  senderInfo = [(IMItem *)self senderInfo];
  Mutable = [senderInfo mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v6 = *MEMORY[0x1E69A6310];
  if (senderCopy)
  {
    [(__CFDictionary *)Mutable setObject:senderCopy forKey:v6];
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

- (void)setPersonCentricID:(id)d
{
  dCopy = d;
  senderInfo = [(IMItem *)self senderInfo];
  Mutable = [senderInfo mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v6 = *MEMORY[0x1E69A6350];
  if (dCopy)
  {
    [(__CFDictionary *)Mutable setObject:dCopy forKey:v6];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      type = self->_type;
      if (type != [(IMItem *)v5 type]|| (messageID = self->_messageID, messageID != [(IMItem *)v5 messageID]))
      {
        v12 = 0;
LABEL_63:

        goto LABEL_64;
      }

      guid = self->_guid;
      guid = [(IMItem *)v5 guid];
      if (guid != guid)
      {
        v10 = self->_guid;
        guid2 = [(IMItem *)v5 guid];
        if (![(NSString *)v10 isEqualToString:guid2])
        {
          v12 = 0;
          goto LABEL_61;
        }

        v78 = guid2;
      }

      handle = self->_handle;
      handle = [(IMItem *)v5 handle];
      if (handle != handle)
      {
        v15 = self->_handle;
        handle2 = [(IMItem *)v5 handle];
        v17 = v15;
        v18 = handle2;
        if (![(NSString *)v17 isEqualToString:handle2])
        {
          v12 = 0;
LABEL_59:

LABEL_60:
          guid2 = v78;
          if (guid == guid)
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
      senderInfo = [(IMItem *)v5 senderInfo];
      v77 = senderInfo;
      if (senderInfo != senderInfo)
      {
        v21 = self->_senderInfo;
        senderInfo2 = [(IMItem *)v5 senderInfo];
        v23 = v21;
        v24 = senderInfo2;
        if (![(NSDictionary *)v23 isEqualToDictionary:senderInfo2])
        {
          v12 = 0;
LABEL_57:

LABEL_58:
          v18 = v76;
          if (handle == handle)
          {
            goto LABEL_60;
          }

          goto LABEL_59;
        }

        v74 = v24;
      }

      time = self->_time;
      time = [(IMItem *)v5 time];
      v75 = time;
      if (time != time)
      {
        v27 = self->_time;
        time2 = [(IMItem *)v5 time];
        if (![(NSDate *)v27 isEqualToDate:?])
        {
          v12 = 0;
LABEL_55:

LABEL_56:
          v24 = v74;
          if (v77 == senderInfo)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        }
      }

      v28 = self->_handle;
      handle3 = [(IMItem *)v5 handle];
      v71 = v28;
      if (v28 != handle3)
      {
        v29 = self->_handle;
        handle4 = [(IMItem *)v5 handle];
        if (![(NSString *)v29 isEqualToString:?])
        {
          v12 = 0;
          v30 = handle3;
LABEL_53:

LABEL_54:
          if (v75 == time)
          {
            goto LABEL_56;
          }

          goto LABEL_55;
        }
      }

      roomName = self->_roomName;
      [(IMItem *)v5 roomName];
      v70 = v69 = time;
      v67 = roomName;
      if (roomName != v70)
      {
        v32 = self->_roomName;
        roomName = [(IMItem *)v5 roomName];
        if (![(NSString *)v32 isEqualToString:?])
        {
          v12 = 0;
          v30 = handle3;
          v33 = v70;
LABEL_51:

LABEL_52:
          time = v69;
          if (v71 == v30)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        }
      }

      service = self->_service;
      service = [(IMItem *)v5 service];
      v64 = service;
      if (service != service)
      {
        v35 = self->_service;
        service2 = [(IMItem *)v5 service];
        if (![(NSString *)v35 isEqualToString:?])
        {
          v12 = 0;
          v30 = handle3;
          v36 = service;
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
      accountID = [(IMItem *)v5 accountID];
      v61 = accountID;
      v63 = handle;
      if (accountID != accountID)
      {
        v39 = accountID;
        v40 = self->_accountID;
        accountID2 = [(IMItem *)v5 accountID];
        if (![(NSString *)v40 isEqualToString:?])
        {
          v12 = 0;
          v30 = handle3;
LABEL_47:

LABEL_48:
          v36 = service;
          handle = v63;
          if (v64 == service)
          {
            goto LABEL_50;
          }

          goto LABEL_49;
        }

        accountID = v39;
      }

      v60 = accountID;
      account = self->_account;
      account = [(IMItem *)v5 account];
      v57 = account;
      if (account == account || (v42 = self->_account, [(IMItem *)v5 account], v56 = objc_claimAutoreleasedReturnValue(), [(NSString *)v42 isEqualToString:?]))
      {
        destinationCallerID = self->_destinationCallerID;
        destinationCallerID = [(IMItem *)v5 destinationCallerID];
        v46 = destinationCallerID == destinationCallerID;
        v47 = destinationCallerID;
        if (v46)
        {
          sortID = self->_sortID;
          v12 = sortID == [(IMItem *)v5 sortID];
        }

        else
        {
          v55 = destinationCallerID;
          v48 = self->_destinationCallerID;
          destinationCallerID2 = [(IMItem *)v5 destinationCallerID];
          v50 = v48;
          v51 = destinationCallerID2;
          if ([(NSString *)v50 isEqualToString:destinationCallerID2])
          {
            v52 = self->_sortID;
            v12 = v52 == [(IMItem *)v5 sortID];
          }

          else
          {

            v12 = 0;
          }
        }

        v43 = account;
        v30 = handle3;
        if (v57 == account)
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
        v30 = handle3;
        v43 = account;
      }

      goto LABEL_46;
    }

    v79.receiver = self;
    v79.super_class = IMItem;
    v12 = [(IMItem *)&v79 isEqual:equalCopy];
  }

LABEL_64:

  return v12;
}

- (BOOL)isOlderThanItem:(id)item
{
  itemCopy = item;
  time = [(IMItem *)self time];
  time2 = [itemCopy time];
  v7 = [time compare:time2];

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
    messageID = [itemCopy messageID];
    v8 = messageID >= [(IMItem *)self messageID];
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

  isFromMe = [(IMItem *)self isFromMe];
  if (isFromMe)
  {
    if (([(IMItem *)self isSent]& 1) != 0)
    {
LABEL_4:
      LOBYTE(isFromMe) = 0;
      return isFromMe;
    }

    LOBYTE(isFromMe) = [(IMItem *)self errorCode]== 0;
  }

  return isFromMe;
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
  balloonBundleID = [(IMItem *)self balloonBundleID];
  v4 = [balloonBundleID length];

  if (v4 && [(IMItem *)self isBreadcrumb])
  {
    associatedMessageGUID = [(IMItem *)self associatedMessageGUID];
  }

  else
  {
    associatedMessageGUID = [(IMItem *)self guid];
  }

  return associatedMessageGUID;
}

@end