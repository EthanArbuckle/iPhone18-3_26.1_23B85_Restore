@interface _CPCBAEngagementFeedback
- (BOOL)isEqual:(id)equal;
- (_CPCBAEngagementFeedback)init;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _CPCBAEngagementFeedback

- (unint64_t)hash
{
  v2 = (2654435761u * self->_queryId) ^ (2654435761u * self->_timestamp);
  v3 = 2654435761 * self->_cbaType;
  return v2 ^ v3 ^ [(NSString *)self->_url hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    timestamp = self->_timestamp;
    if (timestamp == [equalCopy timestamp])
    {
      queryId = self->_queryId;
      if (queryId == [equalCopy queryId])
      {
        cbaType = self->_cbaType;
        if (cbaType == [equalCopy cbaType])
        {
          v8 = [(_CPCBAEngagementFeedback *)self url];
          v9 = [equalCopy url];
          v10 = v9;
          if ((v8 != 0) != (v9 == 0))
          {
            v11 = [(_CPCBAEngagementFeedback *)self url];
            if (!v11)
            {

LABEL_13:
              v16 = 1;
              goto LABEL_11;
            }

            v12 = v11;
            v13 = [(_CPCBAEngagementFeedback *)self url];
            v14 = [equalCopy url];
            v15 = [v13 isEqual:v14];

            if (v15)
            {
              goto LABEL_13;
            }
          }

          else
          {
          }
        }
      }
    }
  }

  v16 = 0;
LABEL_11:

  return v16;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_CPCBAEngagementFeedback *)self timestamp])
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if ([(_CPCBAEngagementFeedback *)self queryId])
  {
    queryId = self->_queryId;
    PBDataWriterWriteUint64Field();
  }

  if ([(_CPCBAEngagementFeedback *)self cbaType])
  {
    cbaType = self->_cbaType;
    PBDataWriterWriteInt32Field();
  }

  v7 = [(_CPCBAEngagementFeedback *)self url];

  v8 = toCopy;
  if (v7)
  {
    url = self->_url;
    PBDataWriterWriteStringField();
    v8 = toCopy;
  }
}

- (_CPCBAEngagementFeedback)init
{
  v5.receiver = self;
  v5.super_class = _CPCBAEngagementFeedback;
  v2 = [(_CPCBAEngagementFeedback *)&v5 init];
  if (v2)
  {
    [(_CPCBAEngagementFeedback *)v2 setTimestamp:mach_absolute_time()];
    v3 = v2;
  }

  return v2;
}

@end