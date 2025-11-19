@interface IDSIncomingNiceMessage
- (BOOL)isEqual:(id)a3;
- (BOOL)isTrustedSender;
- (BOOL)wantsDeliveryStatus;
- (IDSIncomingNiceMessage)initWithMessageDictionary:(id)a3 topic:(id)a4;
- (IDSPushToken)senderPushToken;
- (IDSURI)fromURI;
- (IDSURI)toURI;
- (NSArray)messageList;
- (NSData)certifiedDeliveryRTS;
- (NSData)encryptedPayload;
- (NSData)groupIDData;
- (NSData)payloadMetadataData;
- (NSData)rawBulkedData;
- (NSData)rawUnencryptedPayload;
- (NSData)serverStorageSSM;
- (NSData)updateHash;
- (NSDictionary)deliveryStatusContext;
- (NSNumber)batchNumber;
- (NSNumber)certifiedDeliveryVersion;
- (NSNumber)command;
- (NSNumber)commandContext;
- (NSNumber)desiredProtocol;
- (NSNumber)deviceID;
- (NSNumber)expectsPeerResponse;
- (NSNumber)expirationDate;
- (NSNumber)failureReason;
- (NSNumber)isBulkedPayload;
- (NSNumber)messageChunkNumber;
- (NSNumber)originalCommand;
- (NSNumber)originalTimestamp;
- (NSNumber)pendingMessageCount;
- (NSNumber)pendingMessagePerSenderCount;
- (NSNumber)retryCount;
- (NSNumber)serverTimestamp;
- (NSNumber)snapTrustedUser;
- (NSNumber)storageContext;
- (NSNumber)storageFlags;
- (NSNumber)totalBatchCount;
- (NSNumber)totalChunkCount;
- (NSNumber)wantsAppAck;
- (NSString)encryptionTypeStr;
- (NSString)failureMessageID;
- (NSString)failureReasonMessage;
- (NSString)originalUUID;
- (NSString)peerResponseIdentifier;
- (NSString)pushUUID;
- (NSString)queueOneIdentifier;
- (NSString)receiverShortHandle;
- (NSString)reportID;
- (NSString)samplingUUID;
- (NSString)senderShortHandle;
- (NSString)storageFetchUUID;
- (id)description;
- (unint64_t)ifUnknownAction;
@end

@implementation IDSIncomingNiceMessage

- (IDSIncomingNiceMessage)initWithMessageDictionary:(id)a3 topic:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = IDSIncomingNiceMessage;
  v9 = [(IDSIncomingNiceMessage *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_messageDictionary, a3);
    objc_storeStrong(&v10->_topic, a4);
  }

  return v10;
}

- (id)description
{
  cachedDescription = self->_cachedDescription;
  if (!cachedDescription)
  {
    v4 = sub_1A7C071B0(self->_messageDictionary, self->_topic);
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p %@>", objc_opt_class(), self, v4];
    v6 = self->_cachedDescription;
    self->_cachedDescription = v5;

    cachedDescription = self->_cachedDescription;
  }

  return cachedDescription;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_6;
  }

  if (v4 == self)
  {
LABEL_7:
    v7 = 1;
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_6:
    v7 = 0;
    goto LABEL_8;
  }

  messageDictionary = self->_messageDictionary;
  if (messageDictionary == v5->_messageDictionary)
  {
    goto LABEL_7;
  }

  v7 = [(NSDictionary *)messageDictionary isEqualToDictionary:?];
LABEL_8:

  return v7;
}

- (NSString)pushUUID
{
  v3 = [(NSDictionary *)self->_messageDictionary objectForKey:@"U"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = MEMORY[0x1E695DEF0];
    v5 = [(NSDictionary *)self->_messageDictionary objectForKey:@"U"];
    v6 = [v4 _IDSDataFromBase64String:v5];
LABEL_5:
    v7 = v6;
    v8 = JWUUIDPushObjectToString();

    goto LABEL_7;
  }

  v5 = [(NSDictionary *)self->_messageDictionary objectForKey:@"U"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(NSDictionary *)self->_messageDictionary objectForKey:@"U"];
    goto LABEL_5;
  }

  v8 = JWUUIDPushObjectToString();
LABEL_7:

  return v8;
}

- (NSNumber)expirationDate
{
  v3 = objc_opt_class();
  messageDictionary = self->_messageDictionary;

  return sub_1A7B0A20C(v3, messageDictionary, @"eX");
}

- (NSNumber)command
{
  v3 = objc_opt_class();
  messageDictionary = self->_messageDictionary;

  return sub_1A7B0A20C(v3, messageDictionary, @"c");
}

- (NSNumber)commandContext
{
  v3 = objc_opt_class();
  messageDictionary = self->_messageDictionary;

  return sub_1A7B0A20C(v3, messageDictionary, @"cc");
}

- (IDSURI)toURI
{
  v3 = objc_opt_class();
  v4 = sub_1A7B0A20C(v3, self->_messageDictionary, @"tP");
  if (v4)
  {
    v5 = [IDSURI URIWithPrefixedURI:v4 withServiceLoggingHint:self->_topic];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)reportID
{
  v3 = objc_opt_class();
  messageDictionary = self->_messageDictionary;

  return sub_1A7B0A20C(v3, messageDictionary, @"hI");
}

- (NSData)groupIDData
{
  v3 = objc_opt_class();
  messageDictionary = self->_messageDictionary;

  return sub_1A7B0A20C(v3, messageDictionary, @"gI");
}

- (NSString)peerResponseIdentifier
{
  v3 = [(NSDictionary *)self->_messageDictionary objectForKey:@"rI"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = MEMORY[0x1E695DEF0];
    v5 = [(NSDictionary *)self->_messageDictionary objectForKey:@"rI"];
    v6 = [v4 _IDSDataFromBase64String:v5];
LABEL_5:
    v7 = v6;
    v8 = JWUUIDPushObjectToString();

    goto LABEL_7;
  }

  v5 = [(NSDictionary *)self->_messageDictionary objectForKey:@"rI"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(NSDictionary *)self->_messageDictionary objectForKey:@"rI"];
    goto LABEL_5;
  }

  v8 = JWUUIDPushObjectToString();
LABEL_7:

  return v8;
}

- (NSNumber)wantsAppAck
{
  v3 = objc_opt_class();
  messageDictionary = self->_messageDictionary;

  return sub_1A7B0A20C(v3, messageDictionary, @"wA");
}

- (NSNumber)expectsPeerResponse
{
  v3 = objc_opt_class();
  messageDictionary = self->_messageDictionary;

  return sub_1A7B0A20C(v3, messageDictionary, @"eR");
}

- (NSNumber)certifiedDeliveryVersion
{
  v3 = objc_opt_class();
  messageDictionary = self->_messageDictionary;

  return sub_1A7B0A20C(v3, messageDictionary, @"cdv");
}

- (NSData)updateHash
{
  v3 = [(NSDictionary *)self->_messageDictionary objectForKey:@"qH"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = MEMORY[0x1E695DEF0];
    v5 = [(NSDictionary *)self->_messageDictionary objectForKey:@"qH"];
    v6 = [v4 _IDSDataFromBase64String:v5];
LABEL_5:
    v7 = v6;
    goto LABEL_7;
  }

  v5 = [(NSDictionary *)self->_messageDictionary objectForKey:@"qH"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(NSDictionary *)self->_messageDictionary objectForKey:@"qH"];
    goto LABEL_5;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (NSData)encryptedPayload
{
  v3 = [(NSDictionary *)self->_messageDictionary objectForKey:@"P"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = MEMORY[0x1E695DEF0];
    v5 = [(NSDictionary *)self->_messageDictionary objectForKey:@"P"];
    v6 = [v4 _IDSDataFromBase64String:v5];
LABEL_5:
    v7 = v6;
    goto LABEL_7;
  }

  v5 = [(NSDictionary *)self->_messageDictionary objectForKey:@"P"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(NSDictionary *)self->_messageDictionary objectForKey:@"P"];
    goto LABEL_5;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (NSData)certifiedDeliveryRTS
{
  v3 = [(NSDictionary *)self->_messageDictionary objectForKey:@"cdr"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = MEMORY[0x1E695DEF0];
    v5 = [(NSDictionary *)self->_messageDictionary objectForKey:@"cdr"];
    v6 = [v4 _IDSDataFromBase64String:v5];
LABEL_5:
    v7 = v6;
    goto LABEL_7;
  }

  v5 = [(NSDictionary *)self->_messageDictionary objectForKey:@"cdr"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(NSDictionary *)self->_messageDictionary objectForKey:@"cdr"];
    goto LABEL_5;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (NSNumber)storageContext
{
  v3 = objc_opt_class();
  messageDictionary = self->_messageDictionary;

  return sub_1A7B0A20C(v3, messageDictionary, @"H");
}

- (NSNumber)serverTimestamp
{
  v3 = objc_opt_class();
  messageDictionary = self->_messageDictionary;

  return sub_1A7B0A20C(v3, messageDictionary, @"e");
}

- (NSData)rawBulkedData
{
  v3 = [(NSDictionary *)self->_messageDictionary objectForKey:@"N"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = MEMORY[0x1E695DEF0];
    v5 = [(NSDictionary *)self->_messageDictionary objectForKey:@"N"];
    v6 = [v4 _IDSDataFromBase64String:v5];
LABEL_5:
    v7 = v6;
    goto LABEL_7;
  }

  v5 = [(NSDictionary *)self->_messageDictionary objectForKey:@"N"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(NSDictionary *)self->_messageDictionary objectForKey:@"N"];
    goto LABEL_5;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (NSData)rawUnencryptedPayload
{
  v3 = [(NSDictionary *)self->_messageDictionary objectForKey:@"P"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = MEMORY[0x1E695DEF0];
    v5 = [(NSDictionary *)self->_messageDictionary objectForKey:@"P"];
    v6 = [v4 _IDSDataFromBase64String:v5];
LABEL_5:
    v7 = v6;
    goto LABEL_7;
  }

  v5 = [(NSDictionary *)self->_messageDictionary objectForKey:@"P"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(NSDictionary *)self->_messageDictionary objectForKey:@"P"];
    goto LABEL_5;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (NSNumber)isBulkedPayload
{
  v3 = objc_opt_class();
  messageDictionary = self->_messageDictionary;

  return sub_1A7B0A20C(v3, messageDictionary, @"iB");
}

- (NSNumber)originalCommand
{
  v3 = objc_opt_class();
  messageDictionary = self->_messageDictionary;

  return sub_1A7B0A20C(v3, messageDictionary, @"oC");
}

- (IDSPushToken)senderPushToken
{
  v3 = [(NSDictionary *)self->_messageDictionary objectForKey:@"t"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = MEMORY[0x1E695DEF0];
    v5 = [(NSDictionary *)self->_messageDictionary objectForKey:@"t"];
    v6 = [v4 _IDSDataFromBase64String:v5];
LABEL_5:
    v7 = v6;
    goto LABEL_7;
  }

  v5 = [(NSDictionary *)self->_messageDictionary objectForKey:@"t"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(NSDictionary *)self->_messageDictionary objectForKey:@"t"];
    goto LABEL_5;
  }

  v7 = 0;
LABEL_7:

  if (v7)
  {
    v8 = [IDSPushToken pushTokenWithData:v7 withServiceLoggingHint:self->_topic];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSNumber)originalTimestamp
{
  v3 = objc_opt_class();
  messageDictionary = self->_messageDictionary;

  return sub_1A7B0A20C(v3, messageDictionary, @"oe");
}

- (BOOL)isTrustedSender
{
  v3 = objc_opt_class();
  v4 = sub_1A7B0A20C(v3, self->_messageDictionary, @"htu");
  v5 = objc_opt_class();
  v6 = sub_1A7B0A20C(v5, self->_messageDictionary, @"htu");
  v7 = [v6 BOOLValue];

  return v7;
}

- (unint64_t)ifUnknownAction
{
  v3 = objc_opt_class();
  v4 = sub_1A7B0A20C(v3, self->_messageDictionary, @"siu");
  v5 = [v4 integerValue];

  return v5;
}

- (NSData)payloadMetadataData
{
  v3 = [(NSDictionary *)self->_messageDictionary objectForKey:@"Pm"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = MEMORY[0x1E695DEF0];
    v5 = [(NSDictionary *)self->_messageDictionary objectForKey:@"Pm"];
    v6 = [v4 _IDSDataFromBase64String:v5];
LABEL_5:
    v7 = v6;
    goto LABEL_7;
  }

  v5 = [(NSDictionary *)self->_messageDictionary objectForKey:@"Pm"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(NSDictionary *)self->_messageDictionary objectForKey:@"Pm"];
    goto LABEL_5;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (NSString)encryptionTypeStr
{
  v3 = objc_opt_class();
  messageDictionary = self->_messageDictionary;

  return sub_1A7B0A20C(v3, messageDictionary, @"E");
}

- (NSNumber)failureReason
{
  v3 = objc_opt_class();
  messageDictionary = self->_messageDictionary;

  return sub_1A7B0A20C(v3, messageDictionary, @"fR");
}

- (NSString)failureMessageID
{
  v3 = [(NSDictionary *)self->_messageDictionary objectForKey:@"fU"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = MEMORY[0x1E695DEF0];
    v5 = [(NSDictionary *)self->_messageDictionary objectForKey:@"fU"];
    v6 = [v4 _IDSDataFromBase64String:v5];
LABEL_5:
    v7 = v6;
    v8 = JWUUIDPushObjectToString();

    goto LABEL_7;
  }

  v5 = [(NSDictionary *)self->_messageDictionary objectForKey:@"fU"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(NSDictionary *)self->_messageDictionary objectForKey:@"fU"];
    goto LABEL_5;
  }

  v8 = JWUUIDPushObjectToString();
LABEL_7:

  return v8;
}

- (NSString)failureReasonMessage
{
  v3 = objc_opt_class();
  messageDictionary = self->_messageDictionary;

  return sub_1A7B0A20C(v3, messageDictionary, @"fRM");
}

- (NSNumber)storageFlags
{
  v3 = objc_opt_class();
  messageDictionary = self->_messageDictionary;

  return sub_1A7B0A20C(v3, messageDictionary, @"H");
}

- (NSString)storageFetchUUID
{
  v3 = [(NSDictionary *)self->_messageDictionary objectForKey:@"scU"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = MEMORY[0x1E695DEF0];
    v5 = [(NSDictionary *)self->_messageDictionary objectForKey:@"scU"];
    v6 = [v4 _IDSDataFromBase64String:v5];
LABEL_5:
    v7 = v6;
    v8 = JWUUIDPushObjectToString();

    goto LABEL_7;
  }

  v5 = [(NSDictionary *)self->_messageDictionary objectForKey:@"scU"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(NSDictionary *)self->_messageDictionary objectForKey:@"scU"];
    goto LABEL_5;
  }

  v8 = JWUUIDPushObjectToString();
LABEL_7:

  return v8;
}

- (NSNumber)retryCount
{
  v3 = objc_opt_class();
  messageDictionary = self->_messageDictionary;

  return sub_1A7B0A20C(v3, messageDictionary, @"rc");
}

- (IDSURI)fromURI
{
  v3 = objc_opt_class();
  v4 = sub_1A7B0A20C(v3, self->_messageDictionary, @"sP");
  if (v4)
  {
    v5 = [IDSURI URIWithPrefixedURI:v4 withServiceLoggingHint:self->_topic];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSArray)messageList
{
  v3 = objc_opt_class();
  messageDictionary = self->_messageDictionary;

  return sub_1A7B0A20C(v3, messageDictionary, @"mml");
}

- (NSString)senderShortHandle
{
  v3 = [(NSDictionary *)self->_messageDictionary objectForKey:@"sPs"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = MEMORY[0x1E695DEF0];
    v5 = [(NSDictionary *)self->_messageDictionary objectForKey:@"sPs"];
    v6 = [v4 _IDSDataFromBase64String:v5];
LABEL_5:
    v7 = v6;
    goto LABEL_7;
  }

  v5 = [(NSDictionary *)self->_messageDictionary objectForKey:@"sPs"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(NSDictionary *)self->_messageDictionary objectForKey:@"sPs"];
    goto LABEL_5;
  }

  v7 = 0;
LABEL_7:

  if (v7)
  {
    v8 = [v7 base64EncodedStringWithOptions:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSString)receiverShortHandle
{
  v3 = [(NSDictionary *)self->_messageDictionary objectForKey:@"tPs"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = MEMORY[0x1E695DEF0];
    v5 = [(NSDictionary *)self->_messageDictionary objectForKey:@"tPs"];
    v6 = [v4 _IDSDataFromBase64String:v5];
LABEL_5:
    v7 = v6;
    goto LABEL_7;
  }

  v5 = [(NSDictionary *)self->_messageDictionary objectForKey:@"tPs"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(NSDictionary *)self->_messageDictionary objectForKey:@"tPs"];
    goto LABEL_5;
  }

  v7 = 0;
LABEL_7:

  if (v7)
  {
    v8 = [v7 base64EncodedStringWithOptions:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSNumber)messageChunkNumber
{
  v3 = objc_opt_class();
  messageDictionary = self->_messageDictionary;

  return sub_1A7B0A20C(v3, messageDictionary, @"mcn");
}

- (NSNumber)totalChunkCount
{
  v3 = objc_opt_class();
  messageDictionary = self->_messageDictionary;

  return sub_1A7B0A20C(v3, messageDictionary, @"tcc");
}

- (NSString)originalUUID
{
  v3 = [(NSDictionary *)self->_messageDictionary objectForKey:@"oU"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = MEMORY[0x1E695DEF0];
    v5 = [(NSDictionary *)self->_messageDictionary objectForKey:@"oU"];
    v6 = [v4 _IDSDataFromBase64String:v5];
LABEL_5:
    v7 = v6;
    v8 = JWUUIDPushObjectToString();

    goto LABEL_7;
  }

  v5 = [(NSDictionary *)self->_messageDictionary objectForKey:@"oU"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(NSDictionary *)self->_messageDictionary objectForKey:@"oU"];
    goto LABEL_5;
  }

  v8 = JWUUIDPushObjectToString();
LABEL_7:

  return v8;
}

- (NSNumber)pendingMessageCount
{
  v3 = objc_opt_class();
  messageDictionary = self->_messageDictionary;

  return sub_1A7B0A20C(v3, messageDictionary, @"pmc");
}

- (NSNumber)pendingMessagePerSenderCount
{
  v3 = objc_opt_class();
  messageDictionary = self->_messageDictionary;

  return sub_1A7B0A20C(v3, messageDictionary, @"pms");
}

- (NSNumber)desiredProtocol
{
  v3 = objc_opt_class();
  messageDictionary = self->_messageDictionary;

  return sub_1A7B0A20C(v3, messageDictionary, @"dp");
}

- (NSData)serverStorageSSM
{
  v3 = [(NSDictionary *)self->_messageDictionary objectForKey:@"ssm"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = MEMORY[0x1E695DEF0];
    v5 = [(NSDictionary *)self->_messageDictionary objectForKey:@"ssm"];
    v6 = [v4 _IDSDataFromBase64String:v5];
LABEL_5:
    v7 = v6;
    goto LABEL_7;
  }

  v5 = [(NSDictionary *)self->_messageDictionary objectForKey:@"ssm"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(NSDictionary *)self->_messageDictionary objectForKey:@"ssm"];
    goto LABEL_5;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (BOOL)wantsDeliveryStatus
{
  v3 = objc_opt_class();
  v4 = sub_1A7B0A20C(v3, self->_messageDictionary, @"D");
  v5 = objc_opt_class();
  v6 = sub_1A7B0A20C(v5, self->_messageDictionary, @"D");
  v7 = [v6 BOOLValue];

  return v7;
}

- (NSNumber)snapTrustedUser
{
  v3 = objc_opt_class();
  messageDictionary = self->_messageDictionary;

  return sub_1A7B0A20C(v3, messageDictionary, @"stu");
}

- (NSDictionary)deliveryStatusContext
{
  v3 = objc_opt_class();
  messageDictionary = self->_messageDictionary;

  return sub_1A7B0A20C(v3, messageDictionary, @"Dc");
}

- (NSNumber)batchNumber
{
  v3 = objc_opt_class();
  messageDictionary = self->_messageDictionary;

  return sub_1A7B0A20C(v3, messageDictionary, @"bN");
}

- (NSNumber)totalBatchCount
{
  v3 = objc_opt_class();
  messageDictionary = self->_messageDictionary;

  return sub_1A7B0A20C(v3, messageDictionary, @"tBC");
}

- (NSString)samplingUUID
{
  v3 = [(NSDictionary *)self->_messageDictionary objectForKey:@"skU"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = MEMORY[0x1E695DEF0];
    v5 = [(NSDictionary *)self->_messageDictionary objectForKey:@"skU"];
    v6 = [v4 _IDSDataFromBase64String:v5];
LABEL_5:
    v7 = v6;
    v8 = JWUUIDPushObjectToString();

    goto LABEL_7;
  }

  v5 = [(NSDictionary *)self->_messageDictionary objectForKey:@"skU"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(NSDictionary *)self->_messageDictionary objectForKey:@"skU"];
    goto LABEL_5;
  }

  v8 = JWUUIDPushObjectToString();
LABEL_7:

  return v8;
}

- (NSNumber)deviceID
{
  v3 = objc_opt_class();
  messageDictionary = self->_messageDictionary;

  return sub_1A7B0A20C(v3, messageDictionary, @"di");
}

- (NSString)queueOneIdentifier
{
  v3 = objc_opt_class();
  messageDictionary = self->_messageDictionary;

  return sub_1A7B0A20C(v3, messageDictionary, @"qI");
}

@end