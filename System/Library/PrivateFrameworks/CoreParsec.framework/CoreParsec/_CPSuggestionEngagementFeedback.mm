@interface _CPSuggestionEngagementFeedback
- (BOOL)isEqual:(id)equal;
- (_CPSuggestionEngagementFeedback)init;
- (_CPSuggestionEngagementFeedback)initWithFacade:(id)facade;
- (void)writeTo:(id)to;
@end

@implementation _CPSuggestionEngagementFeedback

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    timestamp = self->_timestamp;
    if (timestamp == [equalCopy timestamp])
    {
      suggestion = [(_CPSuggestionEngagementFeedback *)self suggestion];
      suggestion2 = [equalCopy suggestion];
      v8 = suggestion2;
      if ((suggestion != 0) != (suggestion2 == 0))
      {
        suggestion3 = [(_CPSuggestionEngagementFeedback *)self suggestion];
        if (!suggestion3)
        {

LABEL_11:
          v14 = 1;
          goto LABEL_9;
        }

        v10 = suggestion3;
        suggestion4 = [(_CPSuggestionEngagementFeedback *)self suggestion];
        suggestion5 = [equalCopy suggestion];
        v13 = [suggestion4 isEqual:suggestion5];

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
  toCopy = to;
  if ([(_CPSuggestionEngagementFeedback *)self timestamp])
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  suggestion = [(_CPSuggestionEngagementFeedback *)self suggestion];

  if (suggestion)
  {
    suggestion2 = [(_CPSuggestionEngagementFeedback *)self suggestion];
    PBDataWriterWriteSubmessage();
  }
}

- (_CPSuggestionEngagementFeedback)init
{
  v5.receiver = self;
  v5.super_class = _CPSuggestionEngagementFeedback;
  v2 = [(_CPSuggestionEngagementFeedback *)&v5 init];
  if (v2)
  {
    [(_CPSuggestionEngagementFeedback *)v2 setTimestamp:mach_absolute_time()];
    v3 = v2;
  }

  return v2;
}

- (_CPSuggestionEngagementFeedback)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v12.receiver = self;
  v12.super_class = _CPSuggestionEngagementFeedback;
  v5 = [(_CPSuggestionEngagementFeedback *)&v12 init];
  if (v5)
  {
    -[_CPSuggestionEngagementFeedback setTimestamp:](v5, "setTimestamp:", [facadeCopy timestamp]);
    suggestion = [facadeCopy suggestion];

    if (suggestion)
    {
      v7 = [_CPSearchSuggestionForFeedback alloc];
      suggestion2 = [facadeCopy suggestion];
      v9 = [(_CPSearchSuggestionForFeedback *)v7 initWithFacade:suggestion2];
      [(_CPSuggestionEngagementFeedback *)v5 setSuggestion:v9];
    }

    v10 = v5;
  }

  return v5;
}

@end