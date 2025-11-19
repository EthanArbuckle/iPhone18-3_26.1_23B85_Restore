@interface _CPLookupHintRelevancyFeedback
- (BOOL)isEqual:(id)a3;
- (_CPLookupHintRelevancyFeedback)init;
- (_CPLookupHintRelevancyFeedback)initWithFacade:(id)a3;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation _CPLookupHintRelevancyFeedback

- (unint64_t)hash
{
  v3 = 2654435761u * self->_timestamp;
  v4 = [(_CPRange *)self->_hintRange hash];
  v5 = v4 ^ [(NSString *)self->_domain hash]^ (2654435761 * self->_discarded) ^ v3;
  v6 = 2654435761 * self->_grade;
  return v5 ^ v6 ^ [(NSString *)self->_context hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  timestamp = self->_timestamp;
  if (timestamp != [v4 timestamp])
  {
    goto LABEL_20;
  }

  v6 = [(_CPLookupHintRelevancyFeedback *)self hintRange];
  v7 = [v4 hintRange];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_19;
  }

  v8 = [(_CPLookupHintRelevancyFeedback *)self hintRange];
  if (v8)
  {
    v9 = v8;
    v10 = [(_CPLookupHintRelevancyFeedback *)self hintRange];
    v11 = [v4 hintRange];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  v6 = [(_CPLookupHintRelevancyFeedback *)self domain];
  v7 = [v4 domain];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_19;
  }

  v13 = [(_CPLookupHintRelevancyFeedback *)self domain];
  if (v13)
  {
    v14 = v13;
    v15 = [(_CPLookupHintRelevancyFeedback *)self domain];
    v16 = [v4 domain];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  discarded = self->_discarded;
  if (discarded != [v4 discarded])
  {
    goto LABEL_20;
  }

  grade = self->_grade;
  if (grade != [v4 grade])
  {
    goto LABEL_20;
  }

  v6 = [(_CPLookupHintRelevancyFeedback *)self context];
  v7 = [v4 context];
  if ((v6 != 0) != (v7 == 0))
  {
    v20 = [(_CPLookupHintRelevancyFeedback *)self context];
    if (!v20)
    {

LABEL_23:
      v25 = 1;
      goto LABEL_21;
    }

    v21 = v20;
    v22 = [(_CPLookupHintRelevancyFeedback *)self context];
    v23 = [v4 context];
    v24 = [v22 isEqual:v23];

    if (v24)
    {
      goto LABEL_23;
    }
  }

  else
  {
LABEL_19:
  }

LABEL_20:
  v25 = 0;
LABEL_21:

  return v25;
}

- (void)writeTo:(id)a3
{
  v14 = a3;
  if ([(_CPLookupHintRelevancyFeedback *)self timestamp])
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  v5 = [(_CPLookupHintRelevancyFeedback *)self hintRange];

  if (v5)
  {
    v6 = [(_CPLookupHintRelevancyFeedback *)self hintRange];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(_CPLookupHintRelevancyFeedback *)self domain];

  if (v7)
  {
    domain = self->_domain;
    PBDataWriterWriteStringField();
  }

  if ([(_CPLookupHintRelevancyFeedback *)self discarded])
  {
    discarded = self->_discarded;
    PBDataWriterWriteBOOLField();
  }

  if ([(_CPLookupHintRelevancyFeedback *)self grade])
  {
    grade = self->_grade;
    PBDataWriterWriteInt32Field();
  }

  v11 = [(_CPLookupHintRelevancyFeedback *)self context];

  v12 = v14;
  if (v11)
  {
    context = self->_context;
    PBDataWriterWriteStringField();
    v12 = v14;
  }
}

- (_CPLookupHintRelevancyFeedback)init
{
  v5.receiver = self;
  v5.super_class = _CPLookupHintRelevancyFeedback;
  v2 = [(_CPLookupHintRelevancyFeedback *)&v5 init];
  if (v2)
  {
    [(_CPLookupHintRelevancyFeedback *)v2 setTimestamp:mach_absolute_time()];
    v3 = v2;
  }

  return v2;
}

- (_CPLookupHintRelevancyFeedback)initWithFacade:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = _CPLookupHintRelevancyFeedback;
  v5 = [(_CPLookupHintRelevancyFeedback *)&v18 init];
  if (v5)
  {
    -[_CPLookupHintRelevancyFeedback setTimestamp:](v5, "setTimestamp:", [v4 timestamp]);
    v6 = objc_alloc_init(_CPRange);
    [(_CPLookupHintRelevancyFeedback *)v5 setHintRange:v6];

    v7 = [v4 hintRange];
    v8 = [(_CPLookupHintRelevancyFeedback *)v5 hintRange];
    [v8 setLocation:v7];

    [v4 hintRange];
    v10 = v9;
    v11 = [(_CPLookupHintRelevancyFeedback *)v5 hintRange];
    [v11 setLength:v10];

    v12 = [v4 domain];

    if (v12)
    {
      v13 = [v4 domain];
      [(_CPLookupHintRelevancyFeedback *)v5 setDomain:v13];
    }

    -[_CPLookupHintRelevancyFeedback setDiscarded:](v5, "setDiscarded:", [v4 discarded]);
    -[_CPLookupHintRelevancyFeedback setGrade:](v5, "setGrade:", [v4 grade]);
    v14 = [v4 context];

    if (v14)
    {
      v15 = [v4 context];
      [(_CPLookupHintRelevancyFeedback *)v5 setContext:v15];
    }

    v16 = v5;
  }

  return v5;
}

@end