@interface _CPErrorFeedback
- (BOOL)isEqual:(id)equal;
- (_CPErrorFeedback)init;
- (_CPErrorFeedback)initWithError:(id)error;
- (_CPErrorFeedback)initWithFacade:(id)facade;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _CPErrorFeedback

- (unint64_t)hash
{
  v3 = 2654435761u * self->_timestamp;
  v4 = [(_CPError *)self->_error hash];
  v5 = v4 ^ [(_CPError *)self->_underlyingError hash];
  return v5 ^ [(NSString *)self->_relatedStartNetworkSearchFeedbackId hash]^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  timestamp = self->_timestamp;
  if (timestamp != [equalCopy timestamp])
  {
    goto LABEL_18;
  }

  error = [(_CPErrorFeedback *)self error];
  error2 = [equalCopy error];
  if ((error != 0) == (error2 == 0))
  {
    goto LABEL_17;
  }

  error3 = [(_CPErrorFeedback *)self error];
  if (error3)
  {
    v9 = error3;
    error4 = [(_CPErrorFeedback *)self error];
    error5 = [equalCopy error];
    v12 = [error4 isEqual:error5];

    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  error = [(_CPErrorFeedback *)self underlyingError];
  error2 = [equalCopy underlyingError];
  if ((error != 0) == (error2 == 0))
  {
    goto LABEL_17;
  }

  underlyingError = [(_CPErrorFeedback *)self underlyingError];
  if (underlyingError)
  {
    v14 = underlyingError;
    underlyingError2 = [(_CPErrorFeedback *)self underlyingError];
    underlyingError3 = [equalCopy underlyingError];
    v17 = [underlyingError2 isEqual:underlyingError3];

    if (!v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  error = [(_CPErrorFeedback *)self relatedStartNetworkSearchFeedbackId];
  error2 = [equalCopy relatedStartNetworkSearchFeedbackId];
  if ((error != 0) != (error2 == 0))
  {
    relatedStartNetworkSearchFeedbackId = [(_CPErrorFeedback *)self relatedStartNetworkSearchFeedbackId];
    if (!relatedStartNetworkSearchFeedbackId)
    {

LABEL_21:
      v23 = 1;
      goto LABEL_19;
    }

    v19 = relatedStartNetworkSearchFeedbackId;
    relatedStartNetworkSearchFeedbackId2 = [(_CPErrorFeedback *)self relatedStartNetworkSearchFeedbackId];
    relatedStartNetworkSearchFeedbackId3 = [equalCopy relatedStartNetworkSearchFeedbackId];
    v22 = [relatedStartNetworkSearchFeedbackId2 isEqual:relatedStartNetworkSearchFeedbackId3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_CPErrorFeedback *)self timestamp])
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  error = [(_CPErrorFeedback *)self error];

  if (error)
  {
    error2 = [(_CPErrorFeedback *)self error];
    PBDataWriterWriteSubmessage();
  }

  underlyingError = [(_CPErrorFeedback *)self underlyingError];

  if (underlyingError)
  {
    underlyingError2 = [(_CPErrorFeedback *)self underlyingError];
    PBDataWriterWriteSubmessage();
  }

  relatedStartNetworkSearchFeedbackId = [(_CPErrorFeedback *)self relatedStartNetworkSearchFeedbackId];

  v10 = toCopy;
  if (relatedStartNetworkSearchFeedbackId)
  {
    relatedStartNetworkSearchFeedbackId = self->_relatedStartNetworkSearchFeedbackId;
    PBDataWriterWriteStringField();
    v10 = toCopy;
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

- (_CPErrorFeedback)initWithError:(id)error
{
  errorCopy = error;
  v5 = [(_CPErrorFeedback *)self init];
  if (v5)
  {
    [(_CPErrorFeedback *)v5 setTimestamp:mach_absolute_time()];
    if (errorCopy)
    {
      v6 = [[_CPError alloc] initWithFacade:errorCopy];
      [(_CPErrorFeedback *)v5 setError:v6];
    }

    userInfo = [errorCopy userInfo];
    v8 = [userInfo objectForKey:*MEMORY[0x1E696AA08]];

    if (v8)
    {
      v9 = [[_CPError alloc] initWithFacade:v8];
      [(_CPErrorFeedback *)v5 setUnderlyingError:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (_CPErrorFeedback)initWithFacade:(id)facade
{
  facadeCopy = facade;
  error = [facadeCopy error];
  v6 = [(_CPErrorFeedback *)self initWithError:error];

  if (v6)
  {
    -[_CPErrorFeedback setTimestamp:](v6, "setTimestamp:", [facadeCopy timestamp]);
    v7 = v6;
  }

  return v6;
}

@end