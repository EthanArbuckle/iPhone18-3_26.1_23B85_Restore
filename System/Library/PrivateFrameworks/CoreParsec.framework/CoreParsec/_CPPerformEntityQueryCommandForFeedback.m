@interface _CPPerformEntityQueryCommandForFeedback
- (BOOL)isEqual:(id)a3;
- (_CPPerformEntityQueryCommandForFeedback)initWithFacade:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _CPPerformEntityQueryCommandForFeedback

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(_CPPerformEntityQueryCommandForFeedback *)self tokenString];
    v6 = [v4 tokenString];
    v7 = v6;
    if ((v5 != 0) != (v6 == 0))
    {
      v8 = [(_CPPerformEntityQueryCommandForFeedback *)self tokenString];
      if (!v8)
      {

LABEL_10:
        entityType = self->_entityType;
        v13 = entityType == [v4 entityType];
        goto LABEL_8;
      }

      v9 = v8;
      v10 = [(_CPPerformEntityQueryCommandForFeedback *)self tokenString];
      v11 = [v4 tokenString];
      v12 = [v10 isEqual:v11];

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

- (void)writeTo:(id)a3
{
  v7 = a3;
  v4 = [(_CPPerformEntityQueryCommandForFeedback *)self tokenString];

  if (v4)
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

- (_CPPerformEntityQueryCommandForFeedback)initWithFacade:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _CPPerformEntityQueryCommandForFeedback;
  v5 = [(_CPPerformEntityQueryCommandForFeedback *)&v10 init];
  if (v5)
  {
    v6 = [v4 tokenString];

    if (v6)
    {
      v7 = [v4 tokenString];
      [(_CPPerformEntityQueryCommandForFeedback *)v5 setTokenString:v7];
    }

    -[_CPPerformEntityQueryCommandForFeedback setEntityType:](v5, "setEntityType:", [v4 entityType]);
    v8 = v5;
  }

  return v5;
}

@end