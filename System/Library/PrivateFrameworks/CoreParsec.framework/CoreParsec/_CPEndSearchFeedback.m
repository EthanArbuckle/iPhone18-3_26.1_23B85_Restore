@interface _CPEndSearchFeedback
- (BOOL)isEqual:(id)a3;
- (_CPEndSearchFeedback)init;
- (_CPEndSearchFeedback)initWithFacade:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _CPEndSearchFeedback

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    timestamp = self->_timestamp;
    if (timestamp == [v4 timestamp])
    {
      v6 = [(_CPEndSearchFeedback *)self uuid];
      v7 = [v4 uuid];
      v8 = v7;
      if ((v6 != 0) != (v7 == 0))
      {
        v9 = [(_CPEndSearchFeedback *)self uuid];
        if (!v9)
        {

LABEL_11:
          v14 = 1;
          goto LABEL_9;
        }

        v10 = v9;
        v11 = [(_CPEndSearchFeedback *)self uuid];
        v12 = [v4 uuid];
        v13 = [v11 isEqual:v12];

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

- (void)writeTo:(id)a3
{
  v7 = a3;
  if ([(_CPEndSearchFeedback *)self timestamp])
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  v5 = [(_CPEndSearchFeedback *)self uuid];

  if (v5)
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

- (_CPEndSearchFeedback)initWithFacade:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _CPEndSearchFeedback;
  v5 = [(_CPEndSearchFeedback *)&v10 init];
  if (v5)
  {
    -[_CPEndSearchFeedback setTimestamp:](v5, "setTimestamp:", [v4 timestamp]);
    v6 = [v4 uuid];

    if (v6)
    {
      v7 = [v4 uuid];
      [(_CPEndSearchFeedback *)v5 setUuid:v7];
    }

    v8 = v5;
  }

  return v5;
}

@end