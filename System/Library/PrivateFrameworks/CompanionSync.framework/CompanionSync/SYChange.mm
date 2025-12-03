@interface SYChange
+ (id)changeWithChangeObject:(id)object serializer:(id)serializer encodeUsingVersion:(int64_t)version;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)changeObjectWithSerializer:(id)serializer;
- (id)changeObjectWithSerializer:(id)serializer encodedByVersion:(int64_t)version;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (id)objectForStore:(id)store;
- (int)StringAsType:(id)type;
- (int64_t)changeType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SYChange

- (int)StringAsType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"ObjectAdded"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"ObjectUpdated"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"ObjectDeleted"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SYChange;
  v4 = [(SYChange *)&v8 description];
  dictionaryRepresentation = [(SYChange *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  type = self->_type;
  if (type >= 3)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_type];
  }

  else
  {
    v5 = off_1E86CB4E0[type];
  }

  [dictionary setObject:v5 forKey:@"type"];

  objectId = self->_objectId;
  if (objectId)
  {
    [dictionary setObject:objectId forKey:@"objectId"];
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_version];
  [dictionary setObject:v7 forKey:@"version"];

  changeData = self->_changeData;
  if (changeData)
  {
    [dictionary setObject:changeData forKey:@"changeData"];
  }

  sequencer = self->_sequencer;
  if (sequencer)
  {
    [dictionary setObject:sequencer forKey:@"sequencer"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  type = self->_type;
  v7 = toCopy;
  PBDataWriterWriteInt32Field();
  if (!self->_objectId)
  {
    [SYChange writeTo:];
  }

  PBDataWriterWriteStringField();
  version = self->_version;
  PBDataWriterWriteUint64Field();
  if (self->_changeData)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_sequencer)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  toCopy[10] = self->_type;
  [toCopy setObjectId:self->_objectId];
  v4 = toCopy;
  *(toCopy + 1) = self->_version;
  if (self->_changeData)
  {
    [toCopy setChangeData:?];
    v4 = toCopy;
  }

  if (self->_sequencer)
  {
    [toCopy setSequencer:?];
    v4 = toCopy;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 40) = self->_type;
  v6 = [(NSString *)self->_objectId copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  *(v5 + 8) = self->_version;
  v8 = [(NSData *)self->_changeData copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  v10 = [(NSString *)self->_sequencer copyWithZone:zone];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && self->_type == *(equalCopy + 10) && ((objectId = self->_objectId, !(objectId | equalCopy[3])) || -[NSString isEqual:](objectId, "isEqual:")) && self->_version == equalCopy[1] && ((changeData = self->_changeData, !(changeData | equalCopy[2])) || -[NSData isEqual:](changeData, "isEqual:")))
  {
    sequencer = self->_sequencer;
    if (sequencer | equalCopy[4])
    {
      v8 = [(NSString *)sequencer isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = 2654435761 * self->_type;
  v4 = [(NSString *)self->_objectId hash]^ v3;
  v5 = 2654435761u * self->_version;
  v6 = v4 ^ v5 ^ [(NSData *)self->_changeData hash];
  return v6 ^ [(NSString *)self->_sequencer hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  self->_type = *(fromCopy + 10);
  v5 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(SYChange *)self setObjectId:?];
    fromCopy = v5;
  }

  self->_version = *(fromCopy + 1);
  if (*(fromCopy + 2))
  {
    [(SYChange *)self setChangeData:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 4))
  {
    [(SYChange *)self setSequencer:?];
    fromCopy = v5;
  }
}

- (id)objectForStore:(id)store
{
  storeCopy = store;
  changeData = [(SYChange *)self changeData];

  if (changeData)
  {
    changeData2 = [(SYChange *)self changeData];
    v7 = [storeCopy decodeSYObject:changeData2];
  }

  else if ([(SYChange *)self type]== 2)
  {
    v8 = [SYDeletedObject alloc];
    objectId = [(SYChange *)self objectId];
    v7 = [(SYDeletedObject *)v8 initWithSyncId:objectId];
  }

  else
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v10 = qword_1EDE73440;
    if (os_log_type_enabled(qword_1EDE73440, OS_LOG_TYPE_ERROR))
    {
      [(SYChange(Additions) *)v10 objectForStore:v11, v12, v13, v14, v15, v16, v17];
    }

    v7 = 0;
  }

  return v7;
}

+ (id)changeWithChangeObject:(id)object serializer:(id)serializer encodeUsingVersion:(int64_t)version
{
  objectCopy = object;
  serializerCopy = serializer;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objectCopy;
    goto LABEL_19;
  }

  objectIdentifier = [objectCopy objectIdentifier];

  if (!objectIdentifier)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v11 = qword_1EDE73440;
    if (os_log_type_enabled(qword_1EDE73440, OS_LOG_TYPE_ERROR))
    {
      [SYChange(SYSessionAdditions) changeWithChangeObject:v11 serializer:objectCopy encodeUsingVersion:?];
    }

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"SYChange object %@ does not provide the required objectIdentifier!", objectCopy}];
  }

  v9 = objc_alloc_init(SYChange);
  objectIdentifier2 = [objectCopy objectIdentifier];
  [(SYChange *)v9 setObjectId:objectIdentifier2];

  changeType = [objectCopy changeType];
  if (changeType == 3)
  {
    v14 = 2;
  }

  else
  {
    v14 = changeType == 2;
  }

  [(SYChange *)v9 setType:v14];
  sequencer = [objectCopy sequencer];
  [(SYChange *)v9 setSequencer:sequencer];

  if ([(SYChange *)v9 type]!= 3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if (version != 1)
    {
      v16 = [serializerCopy dataFromChange:objectCopy];
      goto LABEL_18;
    }

    if (objc_opt_respondsToSelector())
    {
      v16 = [serializerCopy encodeSYChangeForBackwardCompatibility:objectCopy protocolVersion:1];
LABEL_18:
      v17 = v16;
      [(SYChange *)v9 setChangeData:v16];

      goto LABEL_19;
    }

    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v19 = qword_1EDE73440;
    if (os_log_type_enabled(qword_1EDE73440, OS_LOG_TYPE_ERROR))
    {
      [SYChange(SYSessionAdditions) changeWithChangeObject:v19 serializer:? encodeUsingVersion:?];
    }

    if (objc_opt_respondsToSelector())
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v20 = qword_1EDE73440;
      if (os_log_type_enabled(qword_1EDE73440, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1DF835000, v20, OS_LOG_TYPE_DEFAULT, "Serializing via -dataWithSYObject:, which may fail spectacularly", buf, 2u);
      }

      v16 = [serializerCopy dataWithSYObject:objectCopy];
      goto LABEL_18;
    }

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"SYChangeSerializer does not implement -encodeSYChangeForBackwardCompatibility:protocolVersion: or -dataWithSYObject:"];
  }

LABEL_19:

  return v9;
}

- (id)changeObjectWithSerializer:(id)serializer
{
  serializerCopy = serializer;
  changeData = [(SYChange *)self changeData];

  if (changeData)
  {
    changeData2 = [(SYChange *)self changeData];
    type = [(SYChange *)self type];
    v8 = 1;
    if (type == 1)
    {
      v8 = 2;
    }

    if (type == 2)
    {
      v9 = 3;
    }

    else
    {
      v9 = v8;
    }

    v10 = [serializerCopy changeFromData:changeData2 ofType:v9];
  }

  else if ([(SYChange *)self type]== 2)
  {
    v11 = [SYDeletedObject alloc];
    objectId = [(SYChange *)self objectId];
    sequencer = [(SYChange *)self sequencer];
    v10 = [(SYDeletedObject *)v11 initWithObjectID:objectId sequencer:sequencer];
  }

  else
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v14 = qword_1EDE73440;
    if (os_log_type_enabled(qword_1EDE73440, OS_LOG_TYPE_ERROR))
    {
      [(SYChange(SYSessionAdditions) *)v14 changeObjectWithSerializer:v15, v16, v17, v18, v19, v20, v21];
    }

    v10 = 0;
  }

  return v10;
}

- (id)changeObjectWithSerializer:(id)serializer encodedByVersion:(int64_t)version
{
  serializerCopy = serializer;
  changeData = [(SYChange *)self changeData];

  if (changeData)
  {
    if (objc_opt_respondsToSelector())
    {
      changeData2 = [(SYChange *)self changeData];
      type = [(SYChange *)self type];
      v10 = 1;
      if (type == 1)
      {
        v10 = 2;
      }

      if (type == 2)
      {
        v11 = 3;
      }

      else
      {
        v11 = v10;
      }

      v12 = [serializerCopy decodeChangeData:changeData2 fromProtocolVersion:version ofType:v11];
      goto LABEL_20;
    }

    if (version <= 1 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v16 = [_SYObjectCompatibilityWrapper alloc];
      changeData2 = [(SYChange *)self changeData];
      sequencer = [serializerCopy SYObjectWithData:changeData2];
      type2 = [(SYChange *)self type];
      v18 = 1;
      if (type2 == 1)
      {
        v18 = 2;
      }

      if (type2 == 2)
      {
        v19 = 3;
      }

      else
      {
        v19 = v18;
      }

      v15 = [(_SYObjectCompatibilityWrapper *)v16 initWithSYObject:sequencer changeType:v19];
      goto LABEL_19;
    }
  }

  else
  {
    if ([(SYChange *)self type]== 2)
    {
      v13 = [SYDeletedObject alloc];
      changeData2 = [(SYChange *)self objectId];
      sequencer = [(SYChange *)self sequencer];
      v15 = [(SYDeletedObject *)v13 initWithObjectID:changeData2 sequencer:sequencer];
LABEL_19:
      v12 = v15;

LABEL_20:
      goto LABEL_26;
    }

    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v20 = qword_1EDE73440;
    if (os_log_type_enabled(qword_1EDE73440, OS_LOG_TYPE_ERROR))
    {
      [(SYChange(SYSessionAdditions) *)v20 changeObjectWithSerializer:v21, v22, v23, v24, v25, v26, v27];
    }
  }

  v12 = 0;
LABEL_26:

  return v12;
}

- (int64_t)changeType
{
  type = [(SYChange *)self type];
  v3 = 1;
  if (type == 1)
  {
    v3 = 2;
  }

  if (type == 2)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

@end