@interface _CPCacheHitFeedback
- (BOOL)isEqual:(id)a3;
- (_CPCacheHitFeedback)init;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation _CPCacheHitFeedback

- (unint64_t)hash
{
  v3 = 2654435761u * self->_timestamp;
  v4 = [(NSString *)self->_input hash]^ v3;
  v5 = 2654435761 * self->_triggerEvent;
  return v4 ^ v5 ^ [(NSString *)self->_uuid hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  timestamp = self->_timestamp;
  if (timestamp != [v4 timestamp])
  {
    goto LABEL_14;
  }

  v6 = [(_CPCacheHitFeedback *)self input];
  v7 = [v4 input];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_13;
  }

  v8 = [(_CPCacheHitFeedback *)self input];
  if (v8)
  {
    v9 = v8;
    v10 = [(_CPCacheHitFeedback *)self input];
    v11 = [v4 input];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_14;
    }
  }

  else
  {
  }

  triggerEvent = self->_triggerEvent;
  if (triggerEvent != [v4 triggerEvent])
  {
    goto LABEL_14;
  }

  v6 = [(_CPCacheHitFeedback *)self uuid];
  v7 = [v4 uuid];
  if ((v6 != 0) == (v7 == 0))
  {
LABEL_13:

    goto LABEL_14;
  }

  v14 = [(_CPCacheHitFeedback *)self uuid];
  if (!v14)
  {

LABEL_17:
    v19 = 1;
    goto LABEL_15;
  }

  v15 = v14;
  v16 = [(_CPCacheHitFeedback *)self uuid];
  v17 = [v4 uuid];
  v18 = [v16 isEqual:v17];

  if (v18)
  {
    goto LABEL_17;
  }

LABEL_14:
  v19 = 0;
LABEL_15:

  return v19;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  if ([(_CPCacheHitFeedback *)self timestamp])
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  v5 = [(_CPCacheHitFeedback *)self input];

  if (v5)
  {
    input = self->_input;
    PBDataWriterWriteStringField();
  }

  if ([(_CPCacheHitFeedback *)self triggerEvent])
  {
    triggerEvent = self->_triggerEvent;
    PBDataWriterWriteInt32Field();
  }

  v8 = [(_CPCacheHitFeedback *)self uuid];

  v9 = v11;
  if (v8)
  {
    uuid = self->_uuid;
    PBDataWriterWriteStringField();
    v9 = v11;
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