@interface _CPErrorFeedback
- (BOOL)isEqual:(id)a3;
- (_CPErrorFeedback)init;
- (_CPErrorFeedback)initWithError:(id)a3;
- (_CPErrorFeedback)initWithFacade:(id)a3;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation _CPErrorFeedback

- (unint64_t)hash
{
  v3 = 2654435761u * self->_timestamp;
  v4 = [(_CPError *)self->_error hash];
  v5 = v4 ^ [(_CPError *)self->_underlyingError hash];
  return v5 ^ [(NSString *)self->_relatedStartNetworkSearchFeedbackId hash]^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  timestamp = self->_timestamp;
  if (timestamp != [v4 timestamp])
  {
    goto LABEL_18;
  }

  v6 = [(_CPErrorFeedback *)self error];
  v7 = [v4 error];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_17;
  }

  v8 = [(_CPErrorFeedback *)self error];
  if (v8)
  {
    v9 = v8;
    v10 = [(_CPErrorFeedback *)self error];
    v11 = [v4 error];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v6 = [(_CPErrorFeedback *)self underlyingError];
  v7 = [v4 underlyingError];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_17;
  }

  v13 = [(_CPErrorFeedback *)self underlyingError];
  if (v13)
  {
    v14 = v13;
    v15 = [(_CPErrorFeedback *)self underlyingError];
    v16 = [v4 underlyingError];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v6 = [(_CPErrorFeedback *)self relatedStartNetworkSearchFeedbackId];
  v7 = [v4 relatedStartNetworkSearchFeedbackId];
  if ((v6 != 0) != (v7 == 0))
  {
    v18 = [(_CPErrorFeedback *)self relatedStartNetworkSearchFeedbackId];
    if (!v18)
    {

LABEL_21:
      v23 = 1;
      goto LABEL_19;
    }

    v19 = v18;
    v20 = [(_CPErrorFeedback *)self relatedStartNetworkSearchFeedbackId];
    v21 = [v4 relatedStartNetworkSearchFeedbackId];
    v22 = [v20 isEqual:v21];

    if (v22)
    {
      goto LABEL_21;
    }
  }

  else
  {
LABEL_17:
  }

LABEL_18:
  v23 = 0;
LABEL_19:

  return v23;
}

- (void)writeTo:(id)a3
{
  v12 = a3;
  if ([(_CPErrorFeedback *)self timestamp])
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  v5 = [(_CPErrorFeedback *)self error];

  if (v5)
  {
    v6 = [(_CPErrorFeedback *)self error];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(_CPErrorFeedback *)self underlyingError];

  if (v7)
  {
    v8 = [(_CPErrorFeedback *)self underlyingError];
    PBDataWriterWriteSubmessage();
  }

  v9 = [(_CPErrorFeedback *)self relatedStartNetworkSearchFeedbackId];

  v10 = v12;
  if (v9)
  {
    relatedStartNetworkSearchFeedbackId = self->_relatedStartNetworkSearchFeedbackId;
    PBDataWriterWriteStringField();
    v10 = v12;
  }
}

- (_CPErrorFeedback)init
{
  v5.receiver = self;
  v5.super_class = _CPErrorFeedback;
  v2 = [(_CPErrorFeedback *)&v5 init];
  if (v2)
  {
    [(_CPErrorFeedback *)v2 setTimestamp:mach_absolute_time()];
    v3 = v2;
  }

  return v2;
}

- (_CPErrorFeedback)initWithError:(id)a3
{
  v4 = a3;
  v5 = [(_CPErrorFeedback *)self init];
  if (v5)
  {
    [(_CPErrorFeedback *)v5 setTimestamp:mach_absolute_time()];
    if (v4)
    {
      v6 = [[_CPError alloc] initWithFacade:v4];
      [(_CPErrorFeedback *)v5 setError:v6];
    }

    v7 = [v4 userInfo];
    v8 = [v7 objectForKey:*MEMORY[0x1E696AA08]];

    if (v8)
    {
      v9 = [[_CPError alloc] initWithFacade:v8];
      [(_CPErrorFeedback *)v5 setUnderlyingError:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (_CPErrorFeedback)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [v4 error];
  v6 = [(_CPErrorFeedback *)self initWithError:v5];

  if (v6)
  {
    -[_CPErrorFeedback setTimestamp:](v6, "setTimestamp:", [v4 timestamp]);
    v7 = v6;
  }

  return v6;
}

@end