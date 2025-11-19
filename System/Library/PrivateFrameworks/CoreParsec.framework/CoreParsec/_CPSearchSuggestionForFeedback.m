@interface _CPSearchSuggestionForFeedback
- (BOOL)isEqual:(id)a3;
- (_CPSearchSuggestionForFeedback)initWithFacade:(id)a3;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_29;
  }

  v5 = [(_CPSearchSuggestionForFeedback *)self identifier];
  v6 = [v4 identifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_28;
  }

  v7 = [(_CPSearchSuggestionForFeedback *)self identifier];
  if (v7)
  {
    v8 = v7;
    v9 = [(_CPSearchSuggestionForFeedback *)self identifier];
    v10 = [v4 identifier];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_29;
    }
  }

  else
  {
  }

  v5 = [(_CPSearchSuggestionForFeedback *)self suggestion];
  v6 = [v4 suggestion];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_28;
  }

  v12 = [(_CPSearchSuggestionForFeedback *)self suggestion];
  if (v12)
  {
    v13 = v12;
    v14 = [(_CPSearchSuggestionForFeedback *)self suggestion];
    v15 = [v4 suggestion];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_29;
    }
  }

  else
  {
  }

  v5 = [(_CPSearchSuggestionForFeedback *)self query];
  v6 = [v4 query];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_28;
  }

  v17 = [(_CPSearchSuggestionForFeedback *)self query];
  if (v17)
  {
    v18 = v17;
    v19 = [(_CPSearchSuggestionForFeedback *)self query];
    v20 = [v4 query];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_29;
    }
  }

  else
  {
  }

  score = self->_score;
  [v4 score];
  if (score != v23)
  {
    goto LABEL_29;
  }

  type = self->_type;
  if (type != [v4 type])
  {
    goto LABEL_29;
  }

  v5 = [(_CPSearchSuggestionForFeedback *)self fbr];
  v6 = [v4 fbr];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_28;
  }

  v25 = [(_CPSearchSuggestionForFeedback *)self fbr];
  if (v25)
  {
    v26 = v25;
    v27 = [(_CPSearchSuggestionForFeedback *)self fbr];
    v28 = [v4 fbr];
    v29 = [v27 isEqual:v28];

    if (!v29)
    {
      goto LABEL_29;
    }
  }

  else
  {
  }

  v5 = [(_CPSearchSuggestionForFeedback *)self topicIdentifier];
  v6 = [v4 topicIdentifier];
  if ((v5 != 0) != (v6 == 0))
  {
    v30 = [(_CPSearchSuggestionForFeedback *)self topicIdentifier];
    if (!v30)
    {

LABEL_32:
      v35 = 1;
      goto LABEL_30;
    }

    v31 = v30;
    v32 = [(_CPSearchSuggestionForFeedback *)self topicIdentifier];
    v33 = [v4 topicIdentifier];
    v34 = [v32 isEqual:v33];

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

- (void)writeTo:(id)a3
{
  v18 = a3;
  v4 = [(_CPSearchSuggestionForFeedback *)self identifier];

  if (v4)
  {
    identifier = self->_identifier;
    PBDataWriterWriteStringField();
  }

  v6 = [(_CPSearchSuggestionForFeedback *)self suggestion];

  if (v6)
  {
    suggestion = self->_suggestion;
    PBDataWriterWriteStringField();
  }

  v8 = [(_CPSearchSuggestionForFeedback *)self query];

  if (v8)
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

  v15 = [(_CPSearchSuggestionForFeedback *)self topicIdentifier];

  v16 = v18;
  if (v15)
  {
    topicIdentifier = self->_topicIdentifier;
    PBDataWriterWriteStringField();
    v16 = v18;
  }
}

- (_CPSearchSuggestionForFeedback)initWithFacade:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = _CPSearchSuggestionForFeedback;
  v5 = [(_CPSearchSuggestionForFeedback *)&v18 init];
  if (v5)
  {
    v6 = [v4 identifier];

    if (v6)
    {
      v7 = [v4 identifier];
      [(_CPSearchSuggestionForFeedback *)v5 setIdentifier:v7];
    }

    v8 = [v4 suggestion];

    if (v8)
    {
      v9 = [v4 suggestion];
      [(_CPSearchSuggestionForFeedback *)v5 setSuggestion:v9];
    }

    v10 = [v4 query];

    if (v10)
    {
      v11 = [v4 query];
      [(_CPSearchSuggestionForFeedback *)v5 setQuery:v11];
    }

    [v4 score];
    [(_CPSearchSuggestionForFeedback *)v5 setScore:?];
    -[_CPSearchSuggestionForFeedback setType:](v5, "setType:", [v4 type]);
    v12 = [v4 fbr];

    if (v12)
    {
      v13 = [v4 fbr];
      [(_CPSearchSuggestionForFeedback *)v5 setFbr:v13];
    }

    v14 = [v4 topicIdentifier];

    if (v14)
    {
      v15 = [v4 topicIdentifier];
      [(_CPSearchSuggestionForFeedback *)v5 setTopicIdentifier:v15];
    }

    v16 = v5;
  }

  return v5;
}

@end