@interface _CPSuggestionEngagementFeedback
- (BOOL)isEqual:(id)a3;
- (_CPSuggestionEngagementFeedback)init;
- (_CPSuggestionEngagementFeedback)initWithFacade:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _CPSuggestionEngagementFeedback

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    timestamp = self->_timestamp;
    if (timestamp == [v4 timestamp])
    {
      v6 = [(_CPSuggestionEngagementFeedback *)self suggestion];
      v7 = [v4 suggestion];
      v8 = v7;
      if ((v6 != 0) != (v7 == 0))
      {
        v9 = [(_CPSuggestionEngagementFeedback *)self suggestion];
        if (!v9)
        {

LABEL_11:
          v14 = 1;
          goto LABEL_9;
        }

        v10 = v9;
        v11 = [(_CPSuggestionEngagementFeedback *)self suggestion];
        v12 = [v4 suggestion];
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
  v7 = a3;
  if ([(_CPSuggestionEngagementFeedback *)self timestamp])
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  v5 = [(_CPSuggestionEngagementFeedback *)self suggestion];

  if (v5)
  {
    v6 = [(_CPSuggestionEngagementFeedback *)self suggestion];
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

- (_CPSuggestionEngagementFeedback)initWithFacade:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _CPSuggestionEngagementFeedback;
  v5 = [(_CPSuggestionEngagementFeedback *)&v12 init];
  if (v5)
  {
    -[_CPSuggestionEngagementFeedback setTimestamp:](v5, "setTimestamp:", [v4 timestamp]);
    v6 = [v4 suggestion];

    if (v6)
    {
      v7 = [_CPSearchSuggestionForFeedback alloc];
      v8 = [v4 suggestion];
      v9 = [(_CPSearchSuggestionForFeedback *)v7 initWithFacade:v8];
      [(_CPSuggestionEngagementFeedback *)v5 setSuggestion:v9];
    }

    v10 = v5;
  }

  return v5;
}

@end