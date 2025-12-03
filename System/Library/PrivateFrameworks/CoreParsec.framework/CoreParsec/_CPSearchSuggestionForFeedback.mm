@interface _CPSearchSuggestionForFeedback
- (BOOL)isEqual:(id)equal;
- (_CPSearchSuggestionForFeedback)initWithFacade:(id)facade;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _CPSearchSuggestionForFeedback

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  v4 = [(NSString *)self->_suggestion hash]^ v3;
  v5 = [(NSString *)self->_query hash];
  score = self->_score;
  if (score < 0.0)
  {
    score = -score;
  }

  *v6.i64 = round(score);
  *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  v10 = v4 ^ v5;
  v11 = (*vbslq_s8(vnegq_f64(v9), v7, v6).i64 * 2654435760.0) + vcvtd_n_u64_f64(score - *v6.i64, 0x40uLL);
  v12 = 2654435761 * self->_type;
  v13 = [(NSString *)self->_fbr hash];
  return v10 ^ v13 ^ v12 ^ [(NSString *)self->_topicIdentifier hash]^ v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_29;
  }

  identifier = [(_CPSearchSuggestionForFeedback *)self identifier];
  identifier2 = [equalCopy identifier];
  if ((identifier != 0) == (identifier2 == 0))
  {
    goto LABEL_28;
  }

  identifier3 = [(_CPSearchSuggestionForFeedback *)self identifier];
  if (identifier3)
  {
    v8 = identifier3;
    identifier4 = [(_CPSearchSuggestionForFeedback *)self identifier];
    identifier5 = [equalCopy identifier];
    v11 = [identifier4 isEqual:identifier5];

    if (!v11)
    {
      goto LABEL_29;
    }
  }

  else
  {
  }

  identifier = [(_CPSearchSuggestionForFeedback *)self suggestion];
  identifier2 = [equalCopy suggestion];
  if ((identifier != 0) == (identifier2 == 0))
  {
    goto LABEL_28;
  }

  suggestion = [(_CPSearchSuggestionForFeedback *)self suggestion];
  if (suggestion)
  {
    v13 = suggestion;
    suggestion2 = [(_CPSearchSuggestionForFeedback *)self suggestion];
    suggestion3 = [equalCopy suggestion];
    v16 = [suggestion2 isEqual:suggestion3];

    if (!v16)
    {
      goto LABEL_29;
    }
  }

  else
  {
  }

  identifier = [(_CPSearchSuggestionForFeedback *)self query];
  identifier2 = [equalCopy query];
  if ((identifier != 0) == (identifier2 == 0))
  {
    goto LABEL_28;
  }

  query = [(_CPSearchSuggestionForFeedback *)self query];
  if (query)
  {
    v18 = query;
    query2 = [(_CPSearchSuggestionForFeedback *)self query];
    query3 = [equalCopy query];
    v21 = [query2 isEqual:query3];

    if (!v21)
    {
      goto LABEL_29;
    }
  }

  else
  {
  }

  score = self->_score;
  [equalCopy score];
  if (score != v23)
  {
    goto LABEL_29;
  }

  type = self->_type;
  if (type != [equalCopy type])
  {
    goto LABEL_29;
  }

  identifier = [(_CPSearchSuggestionForFeedback *)self fbr];
  identifier2 = [equalCopy fbr];
  if ((identifier != 0) == (identifier2 == 0))
  {
    goto LABEL_28;
  }

  v25 = [(_CPSearchSuggestionForFeedback *)self fbr];
  if (v25)
  {
    v26 = v25;
    v27 = [(_CPSearchSuggestionForFeedback *)self fbr];
    v28 = [equalCopy fbr];
    v29 = [v27 isEqual:v28];

    if (!v29)
    {
      goto LABEL_29;
    }
  }

  else
  {
  }

  identifier = [(_CPSearchSuggestionForFeedback *)self topicIdentifier];
  identifier2 = [equalCopy topicIdentifier];
  if ((identifier != 0) != (identifier2 == 0))
  {
    topicIdentifier = [(_CPSearchSuggestionForFeedback *)self topicIdentifier];
    if (!topicIdentifier)
    {

LABEL_32:
      v35 = 1;
      goto LABEL_30;
    }

    v31 = topicIdentifier;
    topicIdentifier2 = [(_CPSearchSuggestionForFeedback *)self topicIdentifier];
    topicIdentifier3 = [equalCopy topicIdentifier];
    v34 = [topicIdentifier2 isEqual:topicIdentifier3];

    if (v34)
    {
      goto LABEL_32;
    }
  }

  else
  {
LABEL_28:
  }

LABEL_29:
  v35 = 0;
LABEL_30:

  return v35;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  identifier = [(_CPSearchSuggestionForFeedback *)self identifier];

  if (identifier)
  {
    identifier = self->_identifier;
    PBDataWriterWriteStringField();
  }

  suggestion = [(_CPSearchSuggestionForFeedback *)self suggestion];

  if (suggestion)
  {
    suggestion = self->_suggestion;
    PBDataWriterWriteStringField();
  }

  query = [(_CPSearchSuggestionForFeedback *)self query];

  if (query)
  {
    query = self->_query;
    PBDataWriterWriteStringField();
  }

  [(_CPSearchSuggestionForFeedback *)self score];
  if (v10 != 0.0)
  {
    score = self->_score;
    PBDataWriterWriteDoubleField();
  }

  if ([(_CPSearchSuggestionForFeedback *)self type])
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
  }

  v13 = [(_CPSearchSuggestionForFeedback *)self fbr];

  if (v13)
  {
    fbr = self->_fbr;
    PBDataWriterWriteStringField();
  }

  topicIdentifier = [(_CPSearchSuggestionForFeedback *)self topicIdentifier];

  v16 = toCopy;
  if (topicIdentifier)
  {
    topicIdentifier = self->_topicIdentifier;
    PBDataWriterWriteStringField();
    v16 = toCopy;
  }
}

- (_CPSearchSuggestionForFeedback)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v18.receiver = self;
  v18.super_class = _CPSearchSuggestionForFeedback;
  v5 = [(_CPSearchSuggestionForFeedback *)&v18 init];
  if (v5)
  {
    identifier = [facadeCopy identifier];

    if (identifier)
    {
      identifier2 = [facadeCopy identifier];
      [(_CPSearchSuggestionForFeedback *)v5 setIdentifier:identifier2];
    }

    suggestion = [facadeCopy suggestion];

    if (suggestion)
    {
      suggestion2 = [facadeCopy suggestion];
      [(_CPSearchSuggestionForFeedback *)v5 setSuggestion:suggestion2];
    }

    query = [facadeCopy query];

    if (query)
    {
      query2 = [facadeCopy query];
      [(_CPSearchSuggestionForFeedback *)v5 setQuery:query2];
    }

    [facadeCopy score];
    [(_CPSearchSuggestionForFeedback *)v5 setScore:?];
    -[_CPSearchSuggestionForFeedback setType:](v5, "setType:", [facadeCopy type]);
    v12 = [facadeCopy fbr];

    if (v12)
    {
      v13 = [facadeCopy fbr];
      [(_CPSearchSuggestionForFeedback *)v5 setFbr:v13];
    }

    topicIdentifier = [facadeCopy topicIdentifier];

    if (topicIdentifier)
    {
      topicIdentifier2 = [facadeCopy topicIdentifier];
      [(_CPSearchSuggestionForFeedback *)v5 setTopicIdentifier:topicIdentifier2];
    }

    v16 = v5;
  }

  return v5;
}

@end