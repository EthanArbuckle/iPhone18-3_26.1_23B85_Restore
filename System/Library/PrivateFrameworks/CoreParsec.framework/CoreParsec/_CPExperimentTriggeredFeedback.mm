@interface _CPExperimentTriggeredFeedback
- (BOOL)isEqual:(id)equal;
- (_CPExperimentTriggeredFeedback)init;
- (_CPExperimentTriggeredFeedback)initWithFacade:(id)facade;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _CPExperimentTriggeredFeedback

- (unint64_t)hash
{
  v3 = (2654435761u * self->_timestamp) ^ (2654435761u * self->_queryID);
  v4 = [(_CPCounterfactualInfo *)self->_counterfactual hash];
  return v3 ^ v4 ^ [(NSString *)self->_codepathId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  queryID = self->_queryID;
  if (queryID != [equalCopy queryID])
  {
    goto LABEL_14;
  }

  timestamp = self->_timestamp;
  if (timestamp != [equalCopy timestamp])
  {
    goto LABEL_14;
  }

  counterfactual = [(_CPExperimentTriggeredFeedback *)self counterfactual];
  counterfactual2 = [equalCopy counterfactual];
  if ((counterfactual != 0) == (counterfactual2 == 0))
  {
    goto LABEL_13;
  }

  counterfactual3 = [(_CPExperimentTriggeredFeedback *)self counterfactual];
  if (counterfactual3)
  {
    v10 = counterfactual3;
    counterfactual4 = [(_CPExperimentTriggeredFeedback *)self counterfactual];
    counterfactual5 = [equalCopy counterfactual];
    v13 = [counterfactual4 isEqual:counterfactual5];

    if (!v13)
    {
      goto LABEL_14;
    }
  }

  else
  {
  }

  counterfactual = [(_CPExperimentTriggeredFeedback *)self codepathId];
  counterfactual2 = [equalCopy codepathId];
  if ((counterfactual != 0) != (counterfactual2 == 0))
  {
    codepathId = [(_CPExperimentTriggeredFeedback *)self codepathId];
    if (!codepathId)
    {

LABEL_17:
      v19 = 1;
      goto LABEL_15;
    }

    v15 = codepathId;
    codepathId2 = [(_CPExperimentTriggeredFeedback *)self codepathId];
    codepathId3 = [equalCopy codepathId];
    v18 = [codepathId2 isEqual:codepathId3];

    if (v18)
    {
      goto LABEL_17;
    }
  }

  else
  {
LABEL_13:
  }

LABEL_14:
  v19 = 0;
LABEL_15:

  return v19;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_CPExperimentTriggeredFeedback *)self queryID])
  {
    queryID = self->_queryID;
    PBDataWriterWriteUint64Field();
  }

  if ([(_CPExperimentTriggeredFeedback *)self timestamp])
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  counterfactual = [(_CPExperimentTriggeredFeedback *)self counterfactual];

  if (counterfactual)
  {
    counterfactual2 = [(_CPExperimentTriggeredFeedback *)self counterfactual];
    PBDataWriterWriteSubmessage();
  }

  codepathId = [(_CPExperimentTriggeredFeedback *)self codepathId];

  v9 = toCopy;
  if (codepathId)
  {
    codepathId = self->_codepathId;
    PBDataWriterWriteStringField();
    v9 = toCopy;
  }
}

- (_CPExperimentTriggeredFeedback)init
{
  v5.receiver = self;
  v5.super_class = _CPExperimentTriggeredFeedback;
  v2 = [(_CPExperimentTriggeredFeedback *)&v5 init];
  if (v2)
  {
    [(_CPExperimentTriggeredFeedback *)v2 setTimestamp:mach_absolute_time()];
    v3 = v2;
  }

  return v2;
}

- (_CPExperimentTriggeredFeedback)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_CPExperimentTriggeredFeedback *)self init];
  if (v5)
  {
    -[_CPExperimentTriggeredFeedback setTimestamp:](v5, "setTimestamp:", [facadeCopy timestamp]);
    counterfactual = [facadeCopy counterfactual];

    if (counterfactual)
    {
      v7 = objc_alloc_init(_CPCounterfactualInfo);
      counterfactual2 = [facadeCopy counterfactual];
      -[_CPCounterfactualInfo setCfDiffered:](v7, "setCfDiffered:", [counterfactual2 cfDiffered]);

      counterfactual3 = [facadeCopy counterfactual];
      -[_CPCounterfactualInfo setCfUsed:](v7, "setCfUsed:", [counterfactual3 cfUsed]);

      counterfactual4 = [facadeCopy counterfactual];
      -[_CPCounterfactualInfo setCfError:](v7, "setCfError:", [counterfactual4 cfError]);

      [(_CPExperimentTriggeredFeedback *)v5 setCounterfactual:v7];
    }

    codepathId = [facadeCopy codepathId];
    uUIDString = [codepathId UUIDString];
    [(_CPExperimentTriggeredFeedback *)v5 setCodepathId:uUIDString];

    v13 = v5;
  }

  return v5;
}

@end