@interface _CPRankingFeedback
- (BOOL)isEqual:(id)equal;
- (_CPRankingFeedback)init;
- (_CPRankingFeedback)initWithFacade:(id)facade;
- (unint64_t)hash;
- (void)addHiddenResults:(id)results;
- (void)addSections:(id)sections;
- (void)setHiddenResults:(id)results;
- (void)setSections:(id)sections;
- (void)writeTo:(id)to;
@end

@implementation _CPRankingFeedback

- (unint64_t)hash
{
  blendingDuration = self->_blendingDuration;
  if (blendingDuration < 0.0)
  {
    blendingDuration = -blendingDuration;
  }

  *v2.i64 = round(blendingDuration);
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v6.f64[0] = NAN;
  v6.f64[1] = NAN;
  v7 = 2654435761u * self->_timestamp;
  v8 = (*vbslq_s8(vnegq_f64(v6), v3, v2).i64 * 2654435760.0) + vcvtd_n_u64_f64(blendingDuration - *v2.i64, 0x40uLL);
  v9 = [(NSArray *)self->_sections hash];
  return v9 ^ [(NSArray *)self->_hiddenResults hash]^ v7 ^ (2654435761 * self->_spotlightQueryIntent) ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  timestamp = self->_timestamp;
  if (timestamp != [equalCopy timestamp])
  {
    goto LABEL_14;
  }

  blendingDuration = self->_blendingDuration;
  [equalCopy blendingDuration];
  if (blendingDuration != v7)
  {
    goto LABEL_14;
  }

  sections = [(_CPRankingFeedback *)self sections];
  sections2 = [equalCopy sections];
  if ((sections != 0) == (sections2 == 0))
  {
    goto LABEL_13;
  }

  sections3 = [(_CPRankingFeedback *)self sections];
  if (sections3)
  {
    v11 = sections3;
    sections4 = [(_CPRankingFeedback *)self sections];
    sections5 = [equalCopy sections];
    v14 = [sections4 isEqual:sections5];

    if (!v14)
    {
      goto LABEL_14;
    }
  }

  else
  {
  }

  sections = [(_CPRankingFeedback *)self hiddenResults];
  sections2 = [equalCopy hiddenResults];
  if ((sections != 0) != (sections2 == 0))
  {
    hiddenResults = [(_CPRankingFeedback *)self hiddenResults];
    if (!hiddenResults)
    {

LABEL_17:
      spotlightQueryIntent = self->_spotlightQueryIntent;
      v20 = spotlightQueryIntent == [equalCopy spotlightQueryIntent];
      goto LABEL_15;
    }

    v16 = hiddenResults;
    hiddenResults2 = [(_CPRankingFeedback *)self hiddenResults];
    hiddenResults3 = [equalCopy hiddenResults];
    v19 = [hiddenResults2 isEqual:hiddenResults3];

    if (v19)
    {
      goto LABEL_17;
    }
  }

  else
  {
LABEL_13:
  }

LABEL_14:
  v20 = 0;
LABEL_15:

  return v20;
}

- (void)writeTo:(id)to
{
  v32 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if ([(_CPRankingFeedback *)self timestamp])
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  [(_CPRankingFeedback *)self blendingDuration];
  if (v6 != 0.0)
  {
    blendingDuration = self->_blendingDuration;
    PBDataWriterWriteDoubleField();
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = self->_sections;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    do
    {
      v12 = 0;
      do
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v26 + 1) + 8 * v12);
        PBDataWriterWriteSubmessage();
        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v10);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = self->_hiddenResults;
  v15 = [(NSArray *)v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    do
    {
      v18 = 0;
      do
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v22 + 1) + 8 * v18);
        PBDataWriterWriteSubmessage();
        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSArray *)v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v16);
  }

  if ([(_CPRankingFeedback *)self spotlightQueryIntent])
  {
    spotlightQueryIntent = self->_spotlightQueryIntent;
    PBDataWriterWriteInt32Field();
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)addHiddenResults:(id)results
{
  resultsCopy = results;
  hiddenResults = self->_hiddenResults;
  v8 = resultsCopy;
  if (!hiddenResults)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_hiddenResults;
    self->_hiddenResults = array;

    resultsCopy = v8;
    hiddenResults = self->_hiddenResults;
  }

  [(NSArray *)hiddenResults addObject:resultsCopy];
}

- (void)setHiddenResults:(id)results
{
  v4 = [results mutableCopy];
  hiddenResults = self->_hiddenResults;
  self->_hiddenResults = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addSections:(id)sections
{
  sectionsCopy = sections;
  sections = self->_sections;
  v8 = sectionsCopy;
  if (!sections)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_sections;
    self->_sections = array;

    sectionsCopy = v8;
    sections = self->_sections;
  }

  [(NSArray *)sections addObject:sectionsCopy];
}

- (void)setSections:(id)sections
{
  v4 = [sections mutableCopy];
  sections = self->_sections;
  self->_sections = v4;

  MEMORY[0x1EEE66BB8]();
}

- (_CPRankingFeedback)init
{
  v5.receiver = self;
  v5.super_class = _CPRankingFeedback;
  v2 = [(_CPRankingFeedback *)&v5 init];
  if (v2)
  {
    [(_CPRankingFeedback *)v2 setTimestamp:mach_absolute_time()];
    v3 = v2;
  }

  return v2;
}

- (_CPRankingFeedback)initWithFacade:(id)facade
{
  v36 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v33.receiver = self;
  v33.super_class = _CPRankingFeedback;
  v5 = [(_CPRankingFeedback *)&v33 init];
  if (v5)
  {
    -[_CPRankingFeedback setTimestamp:](v5, "setTimestamp:", [facadeCopy timestamp]);
    [facadeCopy blendingDuration];
    [(_CPRankingFeedback *)v5 setBlendingDuration:?];
    sections = [facadeCopy sections];
    if (sections)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v7 = 0;
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    sections2 = [facadeCopy sections];
    v9 = [sections2 countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v30;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v30 != v11)
          {
            objc_enumerationMutation(sections2);
          }

          v13 = [[_CPSectionRankingFeedback alloc] initWithFacade:*(*(&v29 + 1) + 8 * i)];
          [v7 addObject:v13];
        }

        v10 = [sections2 countByEnumeratingWithState:&v29 objects:v35 count:16];
      }

      while (v10);
    }

    [(_CPRankingFeedback *)v5 setSections:v7];
    hiddenResults = [facadeCopy hiddenResults];
    if (hiddenResults)
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v15 = 0;
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    hiddenResults2 = [facadeCopy hiddenResults];
    v17 = [hiddenResults2 countByEnumeratingWithState:&v25 objects:v34 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v26;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v26 != v19)
          {
            objc_enumerationMutation(hiddenResults2);
          }

          v21 = [[_CPSearchResultForFeedback alloc] initWithFacade:*(*(&v25 + 1) + 8 * j)];
          [v15 addObject:v21];
        }

        v18 = [hiddenResults2 countByEnumeratingWithState:&v25 objects:v34 count:16];
      }

      while (v18);
    }

    [(_CPRankingFeedback *)v5 setHiddenResults:v15];
    -[_CPRankingFeedback setSpotlightQueryIntent:](v5, "setSpotlightQueryIntent:", [facadeCopy spotlightQueryIntent]);
    v22 = v5;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v5;
}

@end