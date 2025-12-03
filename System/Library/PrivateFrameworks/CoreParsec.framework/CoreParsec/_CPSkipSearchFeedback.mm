@interface _CPSkipSearchFeedback
- (BOOL)isEqual:(id)equal;
- (_CPSkipSearchFeedback)init;
- (unint64_t)hash;
- (void)writeTo:(id)to;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  timestamp = self->_timestamp;
  if (timestamp != [equalCopy timestamp])
  {
    goto LABEL_24;
  }

  input = [(_CPSkipSearchFeedback *)self input];
  input2 = [equalCopy input];
  if ((input != 0) == (input2 == 0))
  {
    goto LABEL_23;
  }

  input3 = [(_CPSkipSearchFeedback *)self input];
  if (input3)
  {
    v9 = input3;
    input4 = [(_CPSkipSearchFeedback *)self input];
    input5 = [equalCopy input];
    v12 = [input4 isEqual:input5];

    if (!v12)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  triggerEvent = self->_triggerEvent;
  if (triggerEvent != [equalCopy triggerEvent])
  {
    goto LABEL_24;
  }

  input = [(_CPSkipSearchFeedback *)self experimentId];
  input2 = [equalCopy experimentId];
  if ((input != 0) == (input2 == 0))
  {
    goto LABEL_23;
  }

  experimentId = [(_CPSkipSearchFeedback *)self experimentId];
  if (experimentId)
  {
    v15 = experimentId;
    experimentId2 = [(_CPSkipSearchFeedback *)self experimentId];
    experimentId3 = [equalCopy experimentId];
    v18 = [experimentId2 isEqual:experimentId3];

    if (!v18)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  input = [(_CPSkipSearchFeedback *)self treatmentId];
  input2 = [equalCopy treatmentId];
  if ((input != 0) == (input2 == 0))
  {
    goto LABEL_23;
  }

  treatmentId = [(_CPSkipSearchFeedback *)self treatmentId];
  if (treatmentId)
  {
    v20 = treatmentId;
    treatmentId2 = [(_CPSkipSearchFeedback *)self treatmentId];
    treatmentId3 = [equalCopy treatmentId];
    v23 = [treatmentId2 isEqual:treatmentId3];

    if (!v23)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  input = [(_CPSkipSearchFeedback *)self experimentNamespaceId];
  input2 = [equalCopy experimentNamespaceId];
  if ((input != 0) == (input2 == 0))
  {
LABEL_23:

    goto LABEL_24;
  }

  experimentNamespaceId = [(_CPSkipSearchFeedback *)self experimentNamespaceId];
  if (!experimentNamespaceId)
  {

LABEL_27:
    v29 = 1;
    goto LABEL_25;
  }

  v25 = experimentNamespaceId;
  experimentNamespaceId2 = [(_CPSkipSearchFeedback *)self experimentNamespaceId];
  experimentNamespaceId3 = [equalCopy experimentNamespaceId];
  v28 = [experimentNamespaceId2 isEqual:experimentNamespaceId3];

  if (v28)
  {
    goto LABEL_27;
  }

LABEL_24:
  v29 = 0;
LABEL_25:

  return v29;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_CPSkipSearchFeedback *)self timestamp])
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  input = [(_CPSkipSearchFeedback *)self input];

  if (input)
  {
    input = self->_input;
    PBDataWriterWriteStringField();
  }

  if ([(_CPSkipSearchFeedback *)self triggerEvent])
  {
    triggerEvent = self->_triggerEvent;
    PBDataWriterWriteInt32Field();
  }

  experimentId = [(_CPSkipSearchFeedback *)self experimentId];

  if (experimentId)
  {
    experimentId = self->_experimentId;
    PBDataWriterWriteStringField();
  }

  treatmentId = [(_CPSkipSearchFeedback *)self treatmentId];

  if (treatmentId)
  {
    treatmentId = self->_treatmentId;
    PBDataWriterWriteStringField();
  }

  experimentNamespaceId = [(_CPSkipSearchFeedback *)self experimentNamespaceId];

  v13 = toCopy;
  if (experimentNamespaceId)
  {
    experimentNamespaceId = self->_experimentNamespaceId;
    PBDataWriterWriteStringField();
    v13 = toCopy;
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