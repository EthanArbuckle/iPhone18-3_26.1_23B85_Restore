@interface _CPSectionRankingFeedback
- (BOOL)isEqual:(id)a3;
- (_CPSectionRankingFeedback)init;
- (_CPSectionRankingFeedback)initWithFacade:(id)a3;
- (unint64_t)hash;
- (void)addResults:(id)a3;
- (void)setResults:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _CPSectionRankingFeedback

- (unint64_t)hash
{
  v3 = 2654435761u * self->_timestamp;
  v4 = [(NSArray *)self->_results hash];
  v5 = [(_CPResultSectionForFeedback *)self->_section hash];
  personalizationScore = self->_personalizationScore;
  if (personalizationScore < 0.0)
  {
    personalizationScore = -personalizationScore;
  }

  *v6.i64 = round(personalizationScore);
  *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  return v4 ^ v5 ^ (2654435761 * self->_localSectionPosition) ^ v3 ^ ((*vbslq_s8(vnegq_f64(v9), v7, v6).i64 * 2654435760.0) + vcvtd_n_u64_f64(personalizationScore - *v6.i64, 0x40uLL));
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  timestamp = self->_timestamp;
  if (timestamp != [v4 timestamp])
  {
    goto LABEL_13;
  }

  v6 = [(_CPSectionRankingFeedback *)self results];
  v7 = [v4 results];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_12;
  }

  v8 = [(_CPSectionRankingFeedback *)self results];
  if (v8)
  {
    v9 = v8;
    v10 = [(_CPSectionRankingFeedback *)self results];
    v11 = [v4 results];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  v6 = [(_CPSectionRankingFeedback *)self section];
  v7 = [v4 section];
  if ((v6 != 0) == (v7 == 0))
  {
LABEL_12:

    goto LABEL_13;
  }

  v13 = [(_CPSectionRankingFeedback *)self section];
  if (v13)
  {
    v14 = v13;
    v15 = [(_CPSectionRankingFeedback *)self section];
    v16 = [v4 section];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  localSectionPosition = self->_localSectionPosition;
  if (localSectionPosition == [v4 localSectionPosition])
  {
    personalizationScore = self->_personalizationScore;
    [v4 personalizationScore];
    v18 = personalizationScore == v22;
    goto LABEL_14;
  }

LABEL_13:
  v18 = 0;
LABEL_14:

  return v18;
}

- (void)writeTo:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(_CPSectionRankingFeedback *)self timestamp])
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = self->_results;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v12 = [(_CPSectionRankingFeedback *)self section];

  if (v12)
  {
    v13 = [(_CPSectionRankingFeedback *)self section];
    PBDataWriterWriteSubmessage();
  }

  if ([(_CPSectionRankingFeedback *)self localSectionPosition])
  {
    localSectionPosition = self->_localSectionPosition;
    PBDataWriterWriteUint32Field();
  }

  [(_CPSectionRankingFeedback *)self personalizationScore];
  if (v15 != 0.0)
  {
    personalizationScore = self->_personalizationScore;
    PBDataWriterWriteDoubleField();
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)addResults:(id)a3
{
  v4 = a3;
  results = self->_results;
  v8 = v4;
  if (!results)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_results;
    self->_results = v6;

    v4 = v8;
    results = self->_results;
  }

  [(NSArray *)results addObject:v4];
}

- (void)setResults:(id)a3
{
  v4 = [a3 mutableCopy];
  results = self->_results;
  self->_results = v4;

  MEMORY[0x1EEE66BB8]();
}

- (_CPSectionRankingFeedback)init
{
  v5.receiver = self;
  v5.super_class = _CPSectionRankingFeedback;
  v2 = [(_CPSectionRankingFeedback *)&v5 init];
  if (v2)
  {
    [(_CPSectionRankingFeedback *)v2 setTimestamp:mach_absolute_time()];
    v3 = v2;
  }

  return v2;
}

- (_CPSectionRankingFeedback)initWithFacade:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = _CPSectionRankingFeedback;
  v5 = [(_CPSectionRankingFeedback *)&v25 init];
  if (v5)
  {
    v6 = [v4 results];
    if (v6)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v7 = 0;
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = [v4 results];
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [[_CPResultRankingFeedback alloc] initWithFacade:*(*(&v21 + 1) + 8 * i)];
          [v7 addObject:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v10);
    }

    [(_CPSectionRankingFeedback *)v5 setResults:v7];
    v14 = [v4 section];

    if (v14)
    {
      v15 = [_CPResultSectionForFeedback alloc];
      v16 = [v4 section];
      v17 = [(_CPResultSectionForFeedback *)v15 initWithFacade:v16];
      [(_CPSectionRankingFeedback *)v5 setSection:v17];
    }

    -[_CPSectionRankingFeedback setLocalSectionPosition:](v5, "setLocalSectionPosition:", [v4 localSectionPosition]);
    [v4 personalizationScore];
    [(_CPSectionRankingFeedback *)v5 setPersonalizationScore:?];
    v18 = v5;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v5;
}

@end