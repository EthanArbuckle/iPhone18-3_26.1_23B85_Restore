@interface _CPLookupHintRelevancyFeedback
- (BOOL)isEqual:(id)equal;
- (_CPLookupHintRelevancyFeedback)init;
- (_CPLookupHintRelevancyFeedback)initWithFacade:(id)facade;
- (unint64_t)hash;
- (void)writeTo:(id)to;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  timestamp = self->_timestamp;
  if (timestamp != [equalCopy timestamp])
  {
    goto LABEL_20;
  }

  hintRange = [(_CPLookupHintRelevancyFeedback *)self hintRange];
  hintRange2 = [equalCopy hintRange];
  if ((hintRange != 0) == (hintRange2 == 0))
  {
    goto LABEL_19;
  }

  hintRange3 = [(_CPLookupHintRelevancyFeedback *)self hintRange];
  if (hintRange3)
  {
    v9 = hintRange3;
    hintRange4 = [(_CPLookupHintRelevancyFeedback *)self hintRange];
    hintRange5 = [equalCopy hintRange];
    v12 = [hintRange4 isEqual:hintRange5];

    if (!v12)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  hintRange = [(_CPLookupHintRelevancyFeedback *)self domain];
  hintRange2 = [equalCopy domain];
  if ((hintRange != 0) == (hintRange2 == 0))
  {
    goto LABEL_19;
  }

  domain = [(_CPLookupHintRelevancyFeedback *)self domain];
  if (domain)
  {
    v14 = domain;
    domain2 = [(_CPLookupHintRelevancyFeedback *)self domain];
    domain3 = [equalCopy domain];
    v17 = [domain2 isEqual:domain3];

    if (!v17)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  discarded = self->_discarded;
  if (discarded != [equalCopy discarded])
  {
    goto LABEL_20;
  }

  grade = self->_grade;
  if (grade != [equalCopy grade])
  {
    goto LABEL_20;
  }

  hintRange = [(_CPLookupHintRelevancyFeedback *)self context];
  hintRange2 = [equalCopy context];
  if ((hintRange != 0) != (hintRange2 == 0))
  {
    context = [(_CPLookupHintRelevancyFeedback *)self context];
    if (!context)
    {

LABEL_23:
      v25 = 1;
      goto LABEL_21;
    }

    v21 = context;
    context2 = [(_CPLookupHintRelevancyFeedback *)self context];
    context3 = [equalCopy context];
    v24 = [context2 isEqual:context3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_CPLookupHintRelevancyFeedback *)self timestamp])
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  hintRange = [(_CPLookupHintRelevancyFeedback *)self hintRange];

  if (hintRange)
  {
    hintRange2 = [(_CPLookupHintRelevancyFeedback *)self hintRange];
    PBDataWriterWriteSubmessage();
  }

  domain = [(_CPLookupHintRelevancyFeedback *)self domain];

  if (domain)
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

  context = [(_CPLookupHintRelevancyFeedback *)self context];

  v12 = toCopy;
  if (context)
  {
    context = self->_context;
    PBDataWriterWriteStringField();
    v12 = toCopy;
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

- (_CPLookupHintRelevancyFeedback)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v18.receiver = self;
  v18.super_class = _CPLookupHintRelevancyFeedback;
  v5 = [(_CPLookupHintRelevancyFeedback *)&v18 init];
  if (v5)
  {
    -[_CPLookupHintRelevancyFeedback setTimestamp:](v5, "setTimestamp:", [facadeCopy timestamp]);
    v6 = objc_alloc_init(_CPRange);
    [(_CPLookupHintRelevancyFeedback *)v5 setHintRange:v6];

    hintRange = [facadeCopy hintRange];
    hintRange2 = [(_CPLookupHintRelevancyFeedback *)v5 hintRange];
    [hintRange2 setLocation:hintRange];

    [facadeCopy hintRange];
    v10 = v9;
    hintRange3 = [(_CPLookupHintRelevancyFeedback *)v5 hintRange];
    [hintRange3 setLength:v10];

    domain = [facadeCopy domain];

    if (domain)
    {
      domain2 = [facadeCopy domain];
      [(_CPLookupHintRelevancyFeedback *)v5 setDomain:domain2];
    }

    -[_CPLookupHintRelevancyFeedback setDiscarded:](v5, "setDiscarded:", [facadeCopy discarded]);
    -[_CPLookupHintRelevancyFeedback setGrade:](v5, "setGrade:", [facadeCopy grade]);
    context = [facadeCopy context];

    if (context)
    {
      context2 = [facadeCopy context];
      [(_CPLookupHintRelevancyFeedback *)v5 setContext:context2];
    }

    v16 = v5;
  }

  return v5;
}

@end