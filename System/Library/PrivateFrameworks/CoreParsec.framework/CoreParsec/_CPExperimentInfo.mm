@interface _CPExperimentInfo
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _CPExperimentInfo

- (unint64_t)hash
{
  v3 = [(NSString *)self->_namespaceId hash];
  v4 = [(NSString *)self->_experimentId hash]^ v3;
  return v4 ^ [(NSString *)self->_treatmentId hash]^ (2654435761 * self->_deploymentId) ^ (2654435761 * self->_version);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  namespaceId = [(_CPExperimentInfo *)self namespaceId];
  namespaceId2 = [equalCopy namespaceId];
  if ((namespaceId != 0) == (namespaceId2 == 0))
  {
    goto LABEL_16;
  }

  namespaceId3 = [(_CPExperimentInfo *)self namespaceId];
  if (namespaceId3)
  {
    v8 = namespaceId3;
    namespaceId4 = [(_CPExperimentInfo *)self namespaceId];
    namespaceId5 = [equalCopy namespaceId];
    v11 = [namespaceId4 isEqual:namespaceId5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  namespaceId = [(_CPExperimentInfo *)self experimentId];
  namespaceId2 = [equalCopy experimentId];
  if ((namespaceId != 0) == (namespaceId2 == 0))
  {
    goto LABEL_16;
  }

  experimentId = [(_CPExperimentInfo *)self experimentId];
  if (experimentId)
  {
    v13 = experimentId;
    experimentId2 = [(_CPExperimentInfo *)self experimentId];
    experimentId3 = [equalCopy experimentId];
    v16 = [experimentId2 isEqual:experimentId3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  namespaceId = [(_CPExperimentInfo *)self treatmentId];
  namespaceId2 = [equalCopy treatmentId];
  if ((namespaceId != 0) == (namespaceId2 == 0))
  {
LABEL_16:

    goto LABEL_17;
  }

  treatmentId = [(_CPExperimentInfo *)self treatmentId];
  if (treatmentId)
  {
    v18 = treatmentId;
    treatmentId2 = [(_CPExperimentInfo *)self treatmentId];
    treatmentId3 = [equalCopy treatmentId];
    v21 = [treatmentId2 isEqual:treatmentId3];

    if (!v21)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  deploymentId = self->_deploymentId;
  if (deploymentId == [equalCopy deploymentId])
  {
    version = self->_version;
    v22 = version == [equalCopy version];
    goto LABEL_18;
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)to
{
  to;
  namespaceId = [(_CPExperimentInfo *)self namespaceId];

  if (namespaceId)
  {
    namespaceId = self->_namespaceId;
    PBDataWriterWriteStringField();
  }

  experimentId = [(_CPExperimentInfo *)self experimentId];

  if (experimentId)
  {
    experimentId = self->_experimentId;
    PBDataWriterWriteStringField();
  }

  treatmentId = [(_CPExperimentInfo *)self treatmentId];

  if (treatmentId)
  {
    treatmentId = self->_treatmentId;
    PBDataWriterWriteStringField();
  }

  if ([(_CPExperimentInfo *)self deploymentId])
  {
    deploymentId = self->_deploymentId;
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPExperimentInfo *)self version])
  {
    version = self->_version;
    PBDataWriterWriteInt32Field();
  }

  MEMORY[0x1EEE66BE0]();
}

@end