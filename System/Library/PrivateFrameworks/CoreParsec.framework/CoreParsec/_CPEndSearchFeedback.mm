@interface _CPEndSearchFeedback
- (BOOL)isEqual:(id)equal;
- (_CPEndSearchFeedback)init;
- (_CPEndSearchFeedback)initWithFacade:(id)facade;
- (void)writeTo:(id)to;
@end

@implementation _CPEndSearchFeedback

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    timestamp = self->_timestamp;
    if (timestamp == [equalCopy timestamp])
    {
      uuid = [(_CPEndSearchFeedback *)self uuid];
      uuid2 = [equalCopy uuid];
      v8 = uuid2;
      if ((uuid != 0) != (uuid2 == 0))
      {
        uuid3 = [(_CPEndSearchFeedback *)self uuid];
        if (!uuid3)
        {

LABEL_11:
          v14 = 1;
          goto LABEL_9;
        }

        v10 = uuid3;
        uuid4 = [(_CPEndSearchFeedback *)self uuid];
        uuid5 = [equalCopy uuid];
        v13 = [uuid4 isEqual:uuid5];

        if (v13)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }
    }
  }

  v14 = 0;
LABEL_9:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_CPEndSearchFeedback *)self timestamp])
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  uuid = [(_CPEndSearchFeedback *)self uuid];

  if (uuid)
  {
    uuid = self->_uuid;
    PBDataWriterWriteStringField();
  }
}

- (_CPEndSearchFeedback)init
{
  v5.receiver = self;
  v5.super_class = _CPEndSearchFeedback;
  v2 = [(_CPEndSearchFeedback *)&v5 init];
  if (v2)
  {
    [(_CPEndSearchFeedback *)v2 setTimestamp:mach_absolute_time()];
    v3 = v2;
  }

  return v2;
}

- (_CPEndSearchFeedback)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v10.receiver = self;
  v10.super_class = _CPEndSearchFeedback;
  v5 = [(_CPEndSearchFeedback *)&v10 init];
  if (v5)
  {
    -[_CPEndSearchFeedback setTimestamp:](v5, "setTimestamp:", [facadeCopy timestamp]);
    uuid = [facadeCopy uuid];

    if (uuid)
    {
      uuid2 = [facadeCopy uuid];
      [(_CPEndSearchFeedback *)v5 setUuid:uuid2];
    }

    v8 = v5;
  }

  return v5;
}

@end