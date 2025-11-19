@interface _CPExperimentInfo
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation _CPExperimentInfo

- (unint64_t)hash
{
  v3 = [(NSString *)self->_namespaceId hash];
  v4 = [(NSString *)self->_experimentId hash]^ v3;
  return v4 ^ [(NSString *)self->_treatmentId hash]^ (2654435761 * self->_deploymentId) ^ (2654435761 * self->_version);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(_CPExperimentInfo *)self namespaceId];
  v6 = [v4 namespaceId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(_CPExperimentInfo *)self namespaceId];
  if (v7)
  {
    v8 = v7;
    v9 = [(_CPExperimentInfo *)self namespaceId];
    v10 = [v4 namespaceId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_CPExperimentInfo *)self experimentId];
  v6 = [v4 experimentId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(_CPExperimentInfo *)self experimentId];
  if (v12)
  {
    v13 = v12;
    v14 = [(_CPExperimentInfo *)self experimentId];
    v15 = [v4 experimentId];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_CPExperimentInfo *)self treatmentId];
  v6 = [v4 treatmentId];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_16:

    goto LABEL_17;
  }

  v17 = [(_CPExperimentInfo *)self treatmentId];
  if (v17)
  {
    v18 = v17;
    v19 = [(_CPExperimentInfo *)self treatmentId];
    v20 = [v4 treatmentId];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  deploymentId = self->_deploymentId;
  if (deploymentId == [v4 deploymentId])
  {
    version = self->_version;
    v22 = version == [v4 version];
    goto LABEL_18;
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)a3
{
  a3;
  v4 = [(_CPExperimentInfo *)self namespaceId];

  if (v4)
  {
    namespaceId = self->_namespaceId;
    PBDataWriterWriteStringField();
  }

  v6 = [(_CPExperimentInfo *)self experimentId];

  if (v6)
  {
    experimentId = self->_experimentId;
    PBDataWriterWriteStringField();
  }

  v8 = [(_CPExperimentInfo *)self treatmentId];

  if (v8)
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