@interface _CPVisibleSectionHeaderFeedback
- (BOOL)isEqual:(id)a3;
- (_CPVisibleSectionHeaderFeedback)init;
- (_CPVisibleSectionHeaderFeedback)initWithFacade:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _CPVisibleSectionHeaderFeedback

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    timestamp = self->_timestamp;
    if (timestamp == [v4 timestamp])
    {
      headerType = self->_headerType;
      if (headerType == [v4 headerType])
      {
        v7 = [(_CPVisibleSectionHeaderFeedback *)self sectionId];
        v8 = [v4 sectionId];
        v9 = v8;
        if ((v7 != 0) != (v8 == 0))
        {
          v10 = [(_CPVisibleSectionHeaderFeedback *)self sectionId];
          if (!v10)
          {

LABEL_12:
            v15 = 1;
            goto LABEL_10;
          }

          v11 = v10;
          v12 = [(_CPVisibleSectionHeaderFeedback *)self sectionId];
          v13 = [v4 sectionId];
          v14 = [v12 isEqual:v13];

          if (v14)
          {
            goto LABEL_12;
          }
        }

        else
        {
        }
      }
    }
  }

  v15 = 0;
LABEL_10:

  return v15;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
  if ([(_CPVisibleSectionHeaderFeedback *)self timestamp])
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if ([(_CPVisibleSectionHeaderFeedback *)self headerType])
  {
    headerType = self->_headerType;
    PBDataWriterWriteInt32Field();
  }

  v6 = [(_CPVisibleSectionHeaderFeedback *)self sectionId];

  v7 = v9;
  if (v6)
  {
    sectionId = self->_sectionId;
    PBDataWriterWriteStringField();
    v7 = v9;
  }
}

- (_CPVisibleSectionHeaderFeedback)init
{
  v5.receiver = self;
  v5.super_class = _CPVisibleSectionHeaderFeedback;
  v2 = [(_CPVisibleSectionHeaderFeedback *)&v5 init];
  if (v2)
  {
    [(_CPVisibleSectionHeaderFeedback *)v2 setTimestamp:mach_absolute_time()];
    v3 = v2;
  }

  return v2;
}

- (_CPVisibleSectionHeaderFeedback)initWithFacade:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _CPVisibleSectionHeaderFeedback;
  v5 = [(_CPVisibleSectionHeaderFeedback *)&v10 init];
  if (v5)
  {
    -[_CPVisibleSectionHeaderFeedback setTimestamp:](v5, "setTimestamp:", [v4 timestamp]);
    v6 = [v4 section];
    v7 = [v6 identifier];
    [(_CPVisibleSectionHeaderFeedback *)v5 setSectionId:v7];

    -[_CPVisibleSectionHeaderFeedback setHeaderType:](v5, "setHeaderType:", [v4 headerType]);
    v8 = v5;
  }

  return v5;
}

@end