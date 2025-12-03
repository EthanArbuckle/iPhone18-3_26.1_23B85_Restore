@interface _CPPerformEntityQueryCommandForFeedback
- (BOOL)isEqual:(id)equal;
- (_CPPerformEntityQueryCommandForFeedback)initWithFacade:(id)facade;
- (void)writeTo:(id)to;
@end

@implementation _CPPerformEntityQueryCommandForFeedback

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    tokenString = [(_CPPerformEntityQueryCommandForFeedback *)self tokenString];
    tokenString2 = [equalCopy tokenString];
    v7 = tokenString2;
    if ((tokenString != 0) != (tokenString2 == 0))
    {
      tokenString3 = [(_CPPerformEntityQueryCommandForFeedback *)self tokenString];
      if (!tokenString3)
      {

LABEL_10:
        entityType = self->_entityType;
        v13 = entityType == [equalCopy entityType];
        goto LABEL_8;
      }

      v9 = tokenString3;
      tokenString4 = [(_CPPerformEntityQueryCommandForFeedback *)self tokenString];
      tokenString5 = [equalCopy tokenString];
      v12 = [tokenString4 isEqual:tokenString5];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  tokenString = [(_CPPerformEntityQueryCommandForFeedback *)self tokenString];

  if (tokenString)
  {
    tokenString = self->_tokenString;
    PBDataWriterWriteStringField();
  }

  if ([(_CPPerformEntityQueryCommandForFeedback *)self entityType])
  {
    entityType = self->_entityType;
    PBDataWriterWriteInt32Field();
  }
}

- (_CPPerformEntityQueryCommandForFeedback)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v10.receiver = self;
  v10.super_class = _CPPerformEntityQueryCommandForFeedback;
  v5 = [(_CPPerformEntityQueryCommandForFeedback *)&v10 init];
  if (v5)
  {
    tokenString = [facadeCopy tokenString];

    if (tokenString)
    {
      tokenString2 = [facadeCopy tokenString];
      [(_CPPerformEntityQueryCommandForFeedback *)v5 setTokenString:tokenString2];
    }

    -[_CPPerformEntityQueryCommandForFeedback setEntityType:](v5, "setEntityType:", [facadeCopy entityType]);
    v8 = v5;
  }

  return v5;
}

@end