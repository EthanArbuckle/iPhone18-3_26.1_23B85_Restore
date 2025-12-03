@interface _CPVisibleSectionHeaderFeedback
- (BOOL)isEqual:(id)equal;
- (_CPVisibleSectionHeaderFeedback)init;
- (_CPVisibleSectionHeaderFeedback)initWithFacade:(id)facade;
- (void)writeTo:(id)to;
@end

@implementation _CPVisibleSectionHeaderFeedback

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    timestamp = self->_timestamp;
    if (timestamp == [equalCopy timestamp])
    {
      headerType = self->_headerType;
      if (headerType == [equalCopy headerType])
      {
        sectionId = [(_CPVisibleSectionHeaderFeedback *)self sectionId];
        sectionId2 = [equalCopy sectionId];
        v9 = sectionId2;
        if ((sectionId != 0) != (sectionId2 == 0))
        {
          sectionId3 = [(_CPVisibleSectionHeaderFeedback *)self sectionId];
          if (!sectionId3)
          {

LABEL_12:
            v15 = 1;
            goto LABEL_10;
          }

          v11 = sectionId3;
          sectionId4 = [(_CPVisibleSectionHeaderFeedback *)self sectionId];
          sectionId5 = [equalCopy sectionId];
          v14 = [sectionId4 isEqual:sectionId5];

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

- (void)writeTo:(id)to
{
  toCopy = to;
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

  sectionId = [(_CPVisibleSectionHeaderFeedback *)self sectionId];

  v7 = toCopy;
  if (sectionId)
  {
    sectionId = self->_sectionId;
    PBDataWriterWriteStringField();
    v7 = toCopy;
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

- (_CPVisibleSectionHeaderFeedback)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v10.receiver = self;
  v10.super_class = _CPVisibleSectionHeaderFeedback;
  v5 = [(_CPVisibleSectionHeaderFeedback *)&v10 init];
  if (v5)
  {
    -[_CPVisibleSectionHeaderFeedback setTimestamp:](v5, "setTimestamp:", [facadeCopy timestamp]);
    section = [facadeCopy section];
    identifier = [section identifier];
    [(_CPVisibleSectionHeaderFeedback *)v5 setSectionId:identifier];

    -[_CPVisibleSectionHeaderFeedback setHeaderType:](v5, "setHeaderType:", [facadeCopy headerType]);
    v8 = v5;
  }

  return v5;
}

@end