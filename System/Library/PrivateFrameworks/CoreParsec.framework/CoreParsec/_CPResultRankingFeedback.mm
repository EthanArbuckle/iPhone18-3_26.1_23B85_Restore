@interface _CPResultRankingFeedback
- (BOOL)isEqual:(id)a3;
- (_CPResultRankingFeedback)init;
- (_CPResultRankingFeedback)initWithFacade:(id)a3;
- (unint64_t)hash;
- (void)addDuplicateResults:(id)a3;
- (void)addHiddenResults:(id)a3;
- (void)setDuplicateResults:(id)a3;
- (void)setHiddenResults:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _CPResultRankingFeedback

- (unint64_t)hash
{
  v3 = 2654435761u * self->_timestamp;
  v4 = [(_CPSearchResultForFeedback *)self->_result hash];
  v5 = v4 ^ [(NSArray *)self->_hiddenResults hash];
  v6 = [(NSArray *)self->_duplicateResults hash];
  personalizationScore = self->_personalizationScore;
  if (personalizationScore < 0.0)
  {
    personalizationScore = -personalizationScore;
  }

  *v7.i64 = round(personalizationScore);
  *v8.i64 = *v7.i64 - trunc(*v7.i64 * 5.42101086e-20) * 1.84467441e19;
  v10.f64[0] = NAN;
  v10.f64[1] = NAN;
  return v5 ^ v6 ^ (2654435761 * self->_localResultPosition) ^ v3 ^ ((*vbslq_s8(vnegq_f64(v10), v8, v7).i64 * 2654435760.0) + vcvtd_n_u64_f64(personalizationScore - *v7.i64, 0x40uLL));
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  timestamp = self->_timestamp;
  if (timestamp != [v4 timestamp])
  {
    goto LABEL_18;
  }

  v6 = [(_CPResultRankingFeedback *)self result];
  v7 = [v4 result];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_17;
  }

  v8 = [(_CPResultRankingFeedback *)self result];
  if (v8)
  {
    v9 = v8;
    v10 = [(_CPResultRankingFeedback *)self result];
    v11 = [v4 result];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v6 = [(_CPResultRankingFeedback *)self hiddenResults];
  v7 = [v4 hiddenResults];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_17;
  }

  v13 = [(_CPResultRankingFeedback *)self hiddenResults];
  if (v13)
  {
    v14 = v13;
    v15 = [(_CPResultRankingFeedback *)self hiddenResults];
    v16 = [v4 hiddenResults];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v6 = [(_CPResultRankingFeedback *)self duplicateResults];
  v7 = [v4 duplicateResults];
  if ((v6 != 0) == (v7 == 0))
  {
LABEL_17:

    goto LABEL_18;
  }

  v18 = [(_CPResultRankingFeedback *)self duplicateResults];
  if (v18)
  {
    v19 = v18;
    v20 = [(_CPResultRankingFeedback *)self duplicateResults];
    v21 = [v4 duplicateResults];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  localResultPosition = self->_localResultPosition;
  if (localResultPosition == [v4 localResultPosition])
  {
    personalizationScore = self->_personalizationScore;
    [v4 personalizationScore];
    v23 = personalizationScore == v27;
    goto LABEL_19;
  }

LABEL_18:
  v23 = 0;
LABEL_19:

  return v23;
}

- (void)writeTo:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(_CPResultRankingFeedback *)self timestamp])
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  v6 = [(_CPResultRankingFeedback *)self result];

  if (v6)
  {
    v7 = [(_CPResultRankingFeedback *)self result];
    PBDataWriterWriteSubmessage();
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = self->_hiddenResults;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
    do
    {
      v12 = 0;
      do
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v28 + 1) + 8 * v12);
        PBDataWriterWriteSubmessage();
        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v10);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = self->_duplicateResults;
  v15 = [(NSArray *)v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    do
    {
      v18 = 0;
      do
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v24 + 1) + 8 * v18);
        PBDataWriterWriteSubmessage();
        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSArray *)v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v16);
  }

  if ([(_CPResultRankingFeedback *)self localResultPosition])
  {
    localResultPosition = self->_localResultPosition;
    PBDataWriterWriteUint32Field();
  }

  [(_CPResultRankingFeedback *)self personalizationScore];
  if (v21 != 0.0)
  {
    personalizationScore = self->_personalizationScore;
    PBDataWriterWriteDoubleField();
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)addDuplicateResults:(id)a3
{
  v4 = a3;
  duplicateResults = self->_duplicateResults;
  v8 = v4;
  if (!duplicateResults)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_duplicateResults;
    self->_duplicateResults = v6;

    v4 = v8;
    duplicateResults = self->_duplicateResults;
  }

  [(NSArray *)duplicateResults addObject:v4];
}

- (void)setDuplicateResults:(id)a3
{
  v4 = [a3 mutableCopy];
  duplicateResults = self->_duplicateResults;
  self->_duplicateResults = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addHiddenResults:(id)a3
{
  v4 = a3;
  hiddenResults = self->_hiddenResults;
  v8 = v4;
  if (!hiddenResults)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_hiddenResults;
    self->_hiddenResults = v6;

    v4 = v8;
    hiddenResults = self->_hiddenResults;
  }

  [(NSArray *)hiddenResults addObject:v4];
}

- (void)setHiddenResults:(id)a3
{
  v4 = [a3 mutableCopy];
  hiddenResults = self->_hiddenResults;
  self->_hiddenResults = v4;

  MEMORY[0x1EEE66BB8]();
}

- (_CPResultRankingFeedback)init
{
  v5.receiver = self;
  v5.super_class = _CPResultRankingFeedback;
  v2 = [(_CPResultRankingFeedback *)&v5 init];
  if (v2)
  {
    [(_CPResultRankingFeedback *)v2 setTimestamp:mach_absolute_time()];
    v3 = v2;
  }

  return v2;
}

- (_CPResultRankingFeedback)initWithFacade:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v37.receiver = self;
  v37.super_class = _CPResultRankingFeedback;
  v5 = [(_CPResultRankingFeedback *)&v37 init];
  if (v5)
  {
    v6 = [v4 result];

    if (v6)
    {
      v7 = [_CPSearchResultForFeedback alloc];
      v8 = [v4 result];
      v9 = [(_CPSearchResultForFeedback *)v7 initWithFacade:v8];
      [(_CPResultRankingFeedback *)v5 setResult:v9];
    }

    v10 = [v4 hiddenResults];
    if (v10)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v11 = 0;
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v12 = [v4 hiddenResults];
    v13 = [v12 countByEnumeratingWithState:&v33 objects:v39 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v34;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v34 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [[_CPSearchResultForFeedback alloc] initWithFacade:*(*(&v33 + 1) + 8 * i)];
          [v11 addObject:v17];
        }

        v14 = [v12 countByEnumeratingWithState:&v33 objects:v39 count:16];
      }

      while (v14);
    }

    [(_CPResultRankingFeedback *)v5 setHiddenResults:v11];
    v18 = [v4 duplicateResults];
    if (v18)
    {
      v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v19 = 0;
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v20 = [v4 duplicateResults];
    v21 = [v20 countByEnumeratingWithState:&v29 objects:v38 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v30;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v30 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = [[_CPSearchResultForFeedback alloc] initWithFacade:*(*(&v29 + 1) + 8 * j)];
          [v19 addObject:v25];
        }

        v22 = [v20 countByEnumeratingWithState:&v29 objects:v38 count:16];
      }

      while (v22);
    }

    [(_CPResultRankingFeedback *)v5 setDuplicateResults:v19];
    -[_CPResultRankingFeedback setLocalResultPosition:](v5, "setLocalResultPosition:", [v4 localResultPosition]);
    [v4 personalizationScore];
    [(_CPResultRankingFeedback *)v5 setPersonalizationScore:?];
    v26 = v5;
  }

  v27 = *MEMORY[0x1E69E9840];
  return v5;
}

@end