@interface SYChange
+ (id)changeWithChangeObject:(id)a3 serializer:(id)a4 encodeUsingVersion:(int64_t)a5;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)changeObjectWithSerializer:(id)a3;
- (id)changeObjectWithSerializer:(id)a3 encodedByVersion:(int64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (id)objectForStore:(id)a3;
- (int)StringAsType:(id)a3;
- (int64_t)changeType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SYChange

- (int)StringAsType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"ObjectAdded"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"ObjectUpdated"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"ObjectDeleted"])
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
  v5 = [(SYChange *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  type = self->_type;
  if (type >= 3)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_type];
  }

  else
  {
    v5 = off_1E86CB4E0[type];
  }

  [v3 setObject:v5 forKey:@"type"];

  objectId = self->_objectId;
  if (objectId)
  {
    [v3 setObject:objectId forKey:@"objectId"];
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_version];
  [v3 setObject:v7 forKey:@"version"];

  changeData = self->_changeData;
  if (changeData)
  {
    [v3 setObject:changeData forKey:@"changeData"];
  }

  sequencer = self->_sequencer;
  if (sequencer)
  {
    [v3 setObject:sequencer forKey:@"sequencer"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  type = self->_type;
  v7 = v4;
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

- (void)copyTo:(id)a3
{
  v5 = a3;
  v5[10] = self->_type;
  [v5 setObjectId:self->_objectId];
  v4 = v5;
  *(v5 + 1) = self->_version;
  if (self->_changeData)
  {
    [v5 setChangeData:?];
    v4 = v5;
  }

  if (self->_sequencer)
  {
    [v5 setSequencer:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 40) = self->_type;
  v6 = [(NSString *)self->_objectId copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  *(v5 + 8) = self->_version;
  v8 = [(NSData *)self->_changeData copyWithZone:a3];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  v10 = [(NSString *)self->_sequencer copyWithZone:a3];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && self->_type == *(v4 + 10) && ((objectId = self->_objectId, !(objectId | v4[3])) || -[NSString isEqual:](objectId, "isEqual:")) && self->_version == v4[1] && ((changeData = self->_changeData, !(changeData | v4[2])) || -[NSData isEqual:](changeData, "isEqual:")))
  {
    sequencer = self->_sequencer;
    if (sequencer | v4[4])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  self->_type = *(v4 + 10);
  v5 = v4;
  if (*(v4 + 3))
  {
    [(SYChange *)self setObjectId:?];
    v4 = v5;
  }

  self->_version = *(v4 + 1);
  if (*(v4 + 2))
  {
    [(SYChange *)self setChangeData:?];
    v4 = v5;
  }

  if (*(v4 + 4))
  {
    [(SYChange *)self setSequencer:?];
    v4 = v5;
  }
}

- (id)objectForStore:(id)a3
{
  v4 = a3;
  v5 = [(SYChange *)self changeData];

  if (v5)
  {
    v6 = [(SYChange *)self changeData];
    v7 = [v4 decodeSYObject:v6];
  }

  else if ([(SYChange *)self type]== 2)
  {
    v8 = [SYDeletedObject alloc];
    v9 = [(SYChange *)self objectId];
    v7 = [(SYDeletedObject *)v8 initWithSyncId:v9];
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

+ (id)changeWithChangeObject:(id)a3 serializer:(id)a4 encodeUsingVersion:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v7;
    goto LABEL_19;
  }

  v10 = [v7 objectIdentifier];

  if (!v10)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v11 = qword_1EDE73440;
    if (os_log_type_enabled(qword_1EDE73440, OS_LOG_TYPE_ERROR))
    {
      [SYChange(SYSessionAdditions) changeWithChangeObject:v11 serializer:v7 encodeUsingVersion:?];
    }

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"SYChange object %@ does not provide the required objectIdentifier!", v7}];
  }

  v9 = objc_alloc_init(SYChange);
  v12 = [v7 objectIdentifier];
  [(SYChange *)v9 setObjectId:v12];

  v13 = [v7 changeType];
  if (v13 == 3)
  {
    v14 = 2;
  }

  else
  {
    v14 = v13 == 2;
  }

  [(SYChange *)v9 setType:v14];
  v15 = [v7 sequencer];
  [(SYChange *)v9 setSequencer:v15];

  if ([(SYChange *)v9 type]!= 3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if (a5 != 1)
    {
      v16 = [v8 dataFromChange:v7];
      goto LABEL_18;
    }

    if (objc_opt_respondsToSelector())
    {
      v16 = [v8 encodeSYChangeForBackwardCompatibility:v7 protocolVersion:1];
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

      v16 = [v8 dataWithSYObject:v7];
      goto LABEL_18;
    }

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"SYChangeSerializer does not implement -encodeSYChangeForBackwardCompatibility:protocolVersion: or -dataWithSYObject:"];
  }

LABEL_19:

  return v9;
}

- (id)changeObjectWithSerializer:(id)a3
{
  v4 = a3;
  v5 = [(SYChange *)self changeData];

  if (v5)
  {
    v6 = [(SYChange *)self changeData];
    v7 = [(SYChange *)self type];
    v8 = 1;
    if (v7 == 1)
    {
      v8 = 2;
    }

    if (v7 == 2)
    {
      v9 = 3;
    }

    else
    {
      v9 = v8;
    }

    v10 = [v4 changeFromData:v6 ofType:v9];
  }

  else if ([(SYChange *)self type]== 2)
  {
    v11 = [SYDeletedObject alloc];
    v12 = [(SYChange *)self objectId];
    v13 = [(SYChange *)self sequencer];
    v10 = [(SYDeletedObject *)v11 initWithObjectID:v12 sequencer:v13];
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

- (id)changeObjectWithSerializer:(id)a3 encodedByVersion:(int64_t)a4
{
  v6 = a3;
  v7 = [(SYChange *)self changeData];

  if (v7)
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = [(SYChange *)self changeData];
      v9 = [(SYChange *)self type];
      v10 = 1;
      if (v9 == 1)
      {
        v10 = 2;
      }

      if (v9 == 2)
      {
        v11 = 3;
      }

      else
      {
        v11 = v10;
      }

      v12 = [v6 decodeChangeData:v8 fromProtocolVersion:a4 ofType:v11];
      goto LABEL_20;
    }

    if (a4 <= 1 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v16 = [_SYObjectCompatibilityWrapper alloc];
      v8 = [(SYChange *)self changeData];
      v14 = [v6 SYObjectWithData:v8];
      v17 = [(SYChange *)self type];
      v18 = 1;
      if (v17 == 1)
      {
        v18 = 2;
      }

      if (v17 == 2)
      {
        v19 = 3;
      }

      else
      {
        v19 = v18;
      }

      v15 = [(_SYObjectCompatibilityWrapper *)v16 initWithSYObject:v14 changeType:v19];
      goto LABEL_19;
    }
  }

  else
  {
    if ([(SYChange *)self type]== 2)
    {
      v13 = [SYDeletedObject alloc];
      v8 = [(SYChange *)self objectId];
      v14 = [(SYChange *)self sequencer];
      v15 = [(SYDeletedObject *)v13 initWithObjectID:v8 sequencer:v14];
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
  v2 = [(SYChange *)self type];
  v3 = 1;
  if (v2 == 1)
  {
    v3 = 2;
  }

  if (v2 == 2)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

@end