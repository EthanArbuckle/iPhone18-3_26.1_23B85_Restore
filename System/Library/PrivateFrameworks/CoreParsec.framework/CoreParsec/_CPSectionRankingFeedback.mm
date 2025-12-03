@interface _CPSectionRankingFeedback
- (BOOL)isEqual:(id)equal;
- (_CPSectionRankingFeedback)init;
- (_CPSectionRankingFeedback)initWithFacade:(id)facade;
- (unint64_t)hash;
- (void)addResults:(id)results;
- (void)setResults:(id)results;
- (void)writeTo:(id)to;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  timestamp = self->_timestamp;
  if (timestamp != [equalCopy timestamp])
  {
    goto LABEL_13;
  }

  results = [(_CPSectionRankingFeedback *)self results];
  results2 = [equalCopy results];
  if ((results != 0) == (results2 == 0))
  {
    goto LABEL_12;
  }

  results3 = [(_CPSectionRankingFeedback *)self results];
  if (results3)
  {
    v9 = results3;
    results4 = [(_CPSectionRankingFeedback *)self results];
    results5 = [equalCopy results];
    v12 = [results4 isEqual:results5];

    if (!v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  results = [(_CPSectionRankingFeedback *)self section];
  results2 = [equalCopy section];
  if ((results != 0) == (results2 == 0))
  {
LABEL_12:

    goto LABEL_13;
  }

  section = [(_CPSectionRankingFeedback *)self section];
  if (section)
  {
    v14 = section;
    section2 = [(_CPSectionRankingFeedback *)self section];
    section3 = [equalCopy section];
    v17 = [section2 isEqual:section3];

    if (!v17)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  localSectionPosition = self->_localSectionPosition;
  if (localSectionPosition == [equalCopy localSectionPosition])
  {
    personalizationScore = self->_personalizationScore;
    [equalCopy personalizationScore];
    v18 = personalizationScore == v22;
    goto LABEL_14;
  }

LABEL_13:
  v18 = 0;
LABEL_14:

  return v18;
}

- (void)writeTo:(id)to
{
  v23 = *MEMORY[0x1E69E9840];
  toCopy = to;
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

  section = [(_CPSectionRankingFeedback *)self section];

  if (section)
  {
    section2 = [(_CPSectionRankingFeedback *)self section];
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

- (void)addResults:(id)results
{
  resultsCopy = results;
  results = self->_results;
  v8 = resultsCopy;
  if (!results)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_results;
    self->_results = array;

    resultsCopy = v8;
    results = self->_results;
  }

  [(NSArray *)results addObject:resultsCopy];
}

- (void)setResults:(id)results
{
  v4 = [results mutableCopy];
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

- (_CPSectionRankingFeedback)initWithFacade:(id)facade
{
  v27 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v25.receiver = self;
  v25.super_class = _CPSectionRankingFeedback;
  v5 = [(_CPSectionRankingFeedback *)&v25 init];
  if (v5)
  {
    results = [facadeCopy results];
    if (results)
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
    results2 = [facadeCopy results];
    v9 = [results2 countByEnumeratingWithState:&v21 objects:v26 count:16];
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
            objc_enumerationMutation(results2);
          }

          v13 = [[_CPResultRankingFeedback alloc] initWithFacade:*(*(&v21 + 1) + 8 * i)];
          [v7 addObject:v13];
        }

        v10 = [results2 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v10);
    }

    [(_CPSectionRankingFeedback *)v5 setResults:v7];
    section = [facadeCopy section];

    if (section)
    {
      v15 = [_CPResultSectionForFeedback alloc];
      section2 = [facadeCopy section];
      v17 = [(_CPResultSectionForFeedback *)v15 initWithFacade:section2];
      [(_CPSectionRankingFeedback *)v5 setSection:v17];
    }

    -[_CPSectionRankingFeedback setLocalSectionPosition:](v5, "setLocalSectionPosition:", [facadeCopy localSectionPosition]);
    [facadeCopy personalizationScore];
    [(_CPSectionRankingFeedback *)v5 setPersonalizationScore:?];
    v18 = v5;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v5;
}

@end