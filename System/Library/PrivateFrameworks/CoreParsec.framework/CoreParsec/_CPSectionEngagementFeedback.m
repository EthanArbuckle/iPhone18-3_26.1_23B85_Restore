@interface _CPSectionEngagementFeedback
- (BOOL)isEqual:(id)a3;
- (_CPSectionEngagementFeedback)init;
- (_CPSectionEngagementFeedback)initWithFacade:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _CPSectionEngagementFeedback

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    timestamp = self->_timestamp;
    if (timestamp == [v4 timestamp])
    {
      v6 = [(_CPSectionEngagementFeedback *)self section];
      v7 = [v4 section];
      v8 = v7;
      if ((v6 != 0) != (v7 == 0))
      {
        v9 = [(_CPSectionEngagementFeedback *)self section];
        if (!v9)
        {

LABEL_11:
          triggerEvent = self->_triggerEvent;
          v14 = triggerEvent == [v4 triggerEvent];
          goto LABEL_9;
        }

        v10 = v9;
        v11 = [(_CPSectionEngagementFeedback *)self section];
        v12 = [v4 section];
        v13 = [v11 isEqual:v12];

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

- (void)writeTo:(id)a3
{
  a3;
  if ([(_CPSectionEngagementFeedback *)self timestamp])
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  v5 = [(_CPSectionEngagementFeedback *)self section];

  if (v5)
  {
    v6 = [(_CPSectionEngagementFeedback *)self section];
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

- (_CPSectionEngagementFeedback)initWithFacade:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _CPSectionEngagementFeedback;
  v5 = [(_CPSectionEngagementFeedback *)&v12 init];
  if (v5)
  {
    -[_CPSectionEngagementFeedback setTimestamp:](v5, "setTimestamp:", [v4 timestamp]);
    v6 = [v4 section];

    if (v6)
    {
      v7 = [_CPResultSectionForFeedback alloc];
      v8 = [v4 section];
      v9 = [(_CPResultSectionForFeedback *)v7 initWithFacade:v8];
      [(_CPSectionEngagementFeedback *)v5 setSection:v9];
    }

    -[_CPSectionEngagementFeedback setTriggerEvent:](v5, "setTriggerEvent:", [v4 triggerEvent]);
    v10 = v5;
  }

  return v5;
}

@end