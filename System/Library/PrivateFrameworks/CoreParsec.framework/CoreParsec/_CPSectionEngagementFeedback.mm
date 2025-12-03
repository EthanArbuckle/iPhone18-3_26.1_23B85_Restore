@interface _CPSectionEngagementFeedback
- (BOOL)isEqual:(id)equal;
- (_CPSectionEngagementFeedback)init;
- (_CPSectionEngagementFeedback)initWithFacade:(id)facade;
- (void)writeTo:(id)to;
@end

@implementation _CPSectionEngagementFeedback

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    timestamp = self->_timestamp;
    if (timestamp == [equalCopy timestamp])
    {
      section = [(_CPSectionEngagementFeedback *)self section];
      section2 = [equalCopy section];
      v8 = section2;
      if ((section != 0) != (section2 == 0))
      {
        section3 = [(_CPSectionEngagementFeedback *)self section];
        if (!section3)
        {

LABEL_11:
          triggerEvent = self->_triggerEvent;
          v14 = triggerEvent == [equalCopy triggerEvent];
          goto LABEL_9;
        }

        v10 = section3;
        section4 = [(_CPSectionEngagementFeedback *)self section];
        section5 = [equalCopy section];
        v13 = [section4 isEqual:section5];

        if (v13)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }
    }
  }

  v14 = 0;
LABEL_9:

  return v14;
}

- (void)writeTo:(id)to
{
  to;
  if ([(_CPSectionEngagementFeedback *)self timestamp])
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  section = [(_CPSectionEngagementFeedback *)self section];

  if (section)
  {
    section2 = [(_CPSectionEngagementFeedback *)self section];
    PBDataWriterWriteSubmessage();
  }

  if ([(_CPSectionEngagementFeedback *)self triggerEvent])
  {
    triggerEvent = self->_triggerEvent;
    PBDataWriterWriteInt32Field();
  }

  MEMORY[0x1EEE66BE0]();
}

- (_CPSectionEngagementFeedback)init
{
  v5.receiver = self;
  v5.super_class = _CPSectionEngagementFeedback;
  v2 = [(_CPSectionEngagementFeedback *)&v5 init];
  if (v2)
  {
    [(_CPSectionEngagementFeedback *)v2 setTimestamp:mach_absolute_time()];
    v3 = v2;
  }

  return v2;
}

- (_CPSectionEngagementFeedback)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v12.receiver = self;
  v12.super_class = _CPSectionEngagementFeedback;
  v5 = [(_CPSectionEngagementFeedback *)&v12 init];
  if (v5)
  {
    -[_CPSectionEngagementFeedback setTimestamp:](v5, "setTimestamp:", [facadeCopy timestamp]);
    section = [facadeCopy section];

    if (section)
    {
      v7 = [_CPResultSectionForFeedback alloc];
      section2 = [facadeCopy section];
      v9 = [(_CPResultSectionForFeedback *)v7 initWithFacade:section2];
      [(_CPSectionEngagementFeedback *)v5 setSection:v9];
    }

    -[_CPSectionEngagementFeedback setTriggerEvent:](v5, "setTriggerEvent:", [facadeCopy triggerEvent]);
    v10 = v5;
  }

  return v5;
}

@end