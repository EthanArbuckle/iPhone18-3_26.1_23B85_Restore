@interface _CPExperimentTriggeredFeedback
- (BOOL)isEqual:(id)a3;
- (_CPExperimentTriggeredFeedback)init;
- (_CPExperimentTriggeredFeedback)initWithFacade:(id)a3;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation _CPExperimentTriggeredFeedback

- (unint64_t)hash
{
  v3 = (2654435761u * self->_timestamp) ^ (2654435761u * self->_queryID);
  v4 = [(_CPCounterfactualInfo *)self->_counterfactual hash];
  return v3 ^ v4 ^ [(NSString *)self->_codepathId hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  queryID = self->_queryID;
  if (queryID != [v4 queryID])
  {
    goto LABEL_14;
  }

  timestamp = self->_timestamp;
  if (timestamp != [v4 timestamp])
  {
    goto LABEL_14;
  }

  v7 = [(_CPExperimentTriggeredFeedback *)self counterfactual];
  v8 = [v4 counterfactual];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_13;
  }

  v9 = [(_CPExperimentTriggeredFeedback *)self counterfactual];
  if (v9)
  {
    v10 = v9;
    v11 = [(_CPExperimentTriggeredFeedback *)self counterfactual];
    v12 = [v4 counterfactual];
    v13 = [v11 isEqual:v12];

    if (!v13)
    {
      goto LABEL_14;
    }
  }

  else
  {
  }

  v7 = [(_CPExperimentTriggeredFeedback *)self codepathId];
  v8 = [v4 codepathId];
  if ((v7 != 0) != (v8 == 0))
  {
    v14 = [(_CPExperimentTriggeredFeedback *)self codepathId];
    if (!v14)
    {

LABEL_17:
      v19 = 1;
      goto LABEL_15;
    }

    v15 = v14;
    v16 = [(_CPExperimentTriggeredFeedback *)self codepathId];
    v17 = [v4 codepathId];
    v18 = [v16 isEqual:v17];

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

- (void)writeTo:(id)a3
{
  v11 = a3;
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

  v6 = [(_CPExperimentTriggeredFeedback *)self counterfactual];

  if (v6)
  {
    v7 = [(_CPExperimentTriggeredFeedback *)self counterfactual];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(_CPExperimentTriggeredFeedback *)self codepathId];

  v9 = v11;
  if (v8)
  {
    codepathId = self->_codepathId;
    PBDataWriterWriteStringField();
    v9 = v11;
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

- (_CPExperimentTriggeredFeedback)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_CPExperimentTriggeredFeedback *)self init];
  if (v5)
  {
    -[_CPExperimentTriggeredFeedback setTimestamp:](v5, "setTimestamp:", [v4 timestamp]);
    v6 = [v4 counterfactual];

    if (v6)
    {
      v7 = objc_alloc_init(_CPCounterfactualInfo);
      v8 = [v4 counterfactual];
      -[_CPCounterfactualInfo setCfDiffered:](v7, "setCfDiffered:", [v8 cfDiffered]);

      v9 = [v4 counterfactual];
      -[_CPCounterfactualInfo setCfUsed:](v7, "setCfUsed:", [v9 cfUsed]);

      v10 = [v4 counterfactual];
      -[_CPCounterfactualInfo setCfError:](v7, "setCfError:", [v10 cfError]);

      [(_CPExperimentTriggeredFeedback *)v5 setCounterfactual:v7];
    }

    v11 = [v4 codepathId];
    v12 = [v11 UUIDString];
    [(_CPExperimentTriggeredFeedback *)v5 setCodepathId:v12];

    v13 = v5;
  }

  return v5;
}

@end