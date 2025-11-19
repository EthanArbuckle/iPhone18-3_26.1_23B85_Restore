@interface CPLRemappedRecord
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)a3;
@end

@implementation CPLRemappedRecord

- (id)description
{
  v7.receiver = self;
  v7.super_class = CPLRemappedRecord;
  v3 = [(CPLRemappedRecord *)&v7 description];
  v4 = [(CPLRemappedRecord *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  createdByUserID = self->_createdByUserID;
  if (createdByUserID)
  {
    [v3 setObject:createdByUserID forKey:@"createdByUserID"];
  }

  recordID = self->_recordID;
  if (recordID)
  {
    [v4 setObject:recordID forKey:@"recordID"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_createdByUserID)
  {
    sub_1001985CC();
  }

  v5 = v4;
  PBDataWriterWriteStringField();
  if (!self->_recordID)
  {
    sub_1001985A0();
  }

  PBDataWriterWriteStringField();
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_createdByUserID copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_recordID copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((createdByUserID = self->_createdByUserID, !(createdByUserID | v4[1])) || -[NSString isEqual:](createdByUserID, "isEqual:")))
  {
    recordID = self->_recordID;
    if (recordID | v4[2])
    {
      v7 = [(NSString *)recordID isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end