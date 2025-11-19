@interface _CPSkipSearchFeedback
- (BOOL)isEqual:(id)a3;
- (_CPSkipSearchFeedback)init;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation _CPSkipSearchFeedback

- (unint64_t)hash
{
  v3 = 2654435761u * self->_timestamp;
  v4 = [(NSString *)self->_input hash]^ v3;
  v5 = 2654435761 * self->_triggerEvent;
  v6 = v4 ^ v5 ^ [(NSString *)self->_experimentId hash];
  v7 = [(NSString *)self->_treatmentId hash];
  return v6 ^ v7 ^ [(NSString *)self->_experimentNamespaceId hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  timestamp = self->_timestamp;
  if (timestamp != [v4 timestamp])
  {
    goto LABEL_24;
  }

  v6 = [(_CPSkipSearchFeedback *)self input];
  v7 = [v4 input];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_23;
  }

  v8 = [(_CPSkipSearchFeedback *)self input];
  if (v8)
  {
    v9 = v8;
    v10 = [(_CPSkipSearchFeedback *)self input];
    v11 = [v4 input];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  triggerEvent = self->_triggerEvent;
  if (triggerEvent != [v4 triggerEvent])
  {
    goto LABEL_24;
  }

  v6 = [(_CPSkipSearchFeedback *)self experimentId];
  v7 = [v4 experimentId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_23;
  }

  v14 = [(_CPSkipSearchFeedback *)self experimentId];
  if (v14)
  {
    v15 = v14;
    v16 = [(_CPSkipSearchFeedback *)self experimentId];
    v17 = [v4 experimentId];
    v18 = [v16 isEqual:v17];

    if (!v18)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  v6 = [(_CPSkipSearchFeedback *)self treatmentId];
  v7 = [v4 treatmentId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_23;
  }

  v19 = [(_CPSkipSearchFeedback *)self treatmentId];
  if (v19)
  {
    v20 = v19;
    v21 = [(_CPSkipSearchFeedback *)self treatmentId];
    v22 = [v4 treatmentId];
    v23 = [v21 isEqual:v22];

    if (!v23)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  v6 = [(_CPSkipSearchFeedback *)self experimentNamespaceId];
  v7 = [v4 experimentNamespaceId];
  if ((v6 != 0) == (v7 == 0))
  {
LABEL_23:

    goto LABEL_24;
  }

  v24 = [(_CPSkipSearchFeedback *)self experimentNamespaceId];
  if (!v24)
  {

LABEL_27:
    v29 = 1;
    goto LABEL_25;
  }

  v25 = v24;
  v26 = [(_CPSkipSearchFeedback *)self experimentNamespaceId];
  v27 = [v4 experimentNamespaceId];
  v28 = [v26 isEqual:v27];

  if (v28)
  {
    goto LABEL_27;
  }

LABEL_24:
  v29 = 0;
LABEL_25:

  return v29;
}

- (void)writeTo:(id)a3
{
  v15 = a3;
  if ([(_CPSkipSearchFeedback *)self timestamp])
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  v5 = [(_CPSkipSearchFeedback *)self input];

  if (v5)
  {
    input = self->_input;
    PBDataWriterWriteStringField();
  }

  if ([(_CPSkipSearchFeedback *)self triggerEvent])
  {
    triggerEvent = self->_triggerEvent;
    PBDataWriterWriteInt32Field();
  }

  v8 = [(_CPSkipSearchFeedback *)self experimentId];

  if (v8)
  {
    experimentId = self->_experimentId;
    PBDataWriterWriteStringField();
  }

  v10 = [(_CPSkipSearchFeedback *)self treatmentId];

  if (v10)
  {
    treatmentId = self->_treatmentId;
    PBDataWriterWriteStringField();
  }

  v12 = [(_CPSkipSearchFeedback *)self experimentNamespaceId];

  v13 = v15;
  if (v12)
  {
    experimentNamespaceId = self->_experimentNamespaceId;
    PBDataWriterWriteStringField();
    v13 = v15;
  }
}

- (_CPSkipSearchFeedback)init
{
  v5.receiver = self;
  v5.super_class = _CPSkipSearchFeedback;
  v2 = [(_CPSkipSearchFeedback *)&v5 init];
  if (v2)
  {
    [(_CPSkipSearchFeedback *)v2 setTimestamp:mach_absolute_time()];
    v3 = v2;
  }

  return v2;
}

@end