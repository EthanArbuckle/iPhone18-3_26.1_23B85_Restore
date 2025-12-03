@interface _CPCacheHitFeedback
- (BOOL)isEqual:(id)equal;
- (_CPCacheHitFeedback)init;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _CPCacheHitFeedback

- (unint64_t)hash
{
  v3 = 2654435761u * self->_timestamp;
  v4 = [(NSString *)self->_input hash]^ v3;
  v5 = 2654435761 * self->_triggerEvent;
  return v4 ^ v5 ^ [(NSString *)self->_uuid hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  timestamp = self->_timestamp;
  if (timestamp != [equalCopy timestamp])
  {
    goto LABEL_14;
  }

  input = [(_CPCacheHitFeedback *)self input];
  input2 = [equalCopy input];
  if ((input != 0) == (input2 == 0))
  {
    goto LABEL_13;
  }

  input3 = [(_CPCacheHitFeedback *)self input];
  if (input3)
  {
    v9 = input3;
    input4 = [(_CPCacheHitFeedback *)self input];
    input5 = [equalCopy input];
    v12 = [input4 isEqual:input5];

    if (!v12)
    {
      goto LABEL_14;
    }
  }

  else
  {
  }

  triggerEvent = self->_triggerEvent;
  if (triggerEvent != [equalCopy triggerEvent])
  {
    goto LABEL_14;
  }

  input = [(_CPCacheHitFeedback *)self uuid];
  input2 = [equalCopy uuid];
  if ((input != 0) == (input2 == 0))
  {
LABEL_13:

    goto LABEL_14;
  }

  uuid = [(_CPCacheHitFeedback *)self uuid];
  if (!uuid)
  {

LABEL_17:
    v19 = 1;
    goto LABEL_15;
  }

  v15 = uuid;
  uuid2 = [(_CPCacheHitFeedback *)self uuid];
  uuid3 = [equalCopy uuid];
  v18 = [uuid2 isEqual:uuid3];

  if (v18)
  {
    goto LABEL_17;
  }

LABEL_14:
  v19 = 0;
LABEL_15:

  return v19;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_CPCacheHitFeedback *)self timestamp])
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  input = [(_CPCacheHitFeedback *)self input];

  if (input)
  {
    input = self->_input;
    PBDataWriterWriteStringField();
  }

  if ([(_CPCacheHitFeedback *)self triggerEvent])
  {
    triggerEvent = self->_triggerEvent;
    PBDataWriterWriteInt32Field();
  }

  uuid = [(_CPCacheHitFeedback *)self uuid];

  v9 = toCopy;
  if (uuid)
  {
    uuid = self->_uuid;
    PBDataWriterWriteStringField();
    v9 = toCopy;
  }
}

- (_CPCacheHitFeedback)init
{
  v5.receiver = self;
  v5.super_class = _CPCacheHitFeedback;
  v2 = [(_CPCacheHitFeedback *)&v5 init];
  if (v2)
  {
    [(_CPCacheHitFeedback *)v2 setTimestamp:mach_absolute_time()];
    v3 = v2;
  }

  return v2;
}

@end