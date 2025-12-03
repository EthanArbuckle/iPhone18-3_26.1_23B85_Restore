@interface NPComponentSequence
- (BOOL)isEqualToComponentSequence:(id)sequence;
- (NPComponentSequence)initWithObservationSequence:(id)sequence hiddenSequence:(id)hiddenSequence oovIndices:(id)indices emissionModelScore:(double)score stateModelScore:(double)modelScore boost:(double)boost;
- (id)description;
- (id)oovTokens;
- (void)setValue:(id)value atSequenceIndex:(unint64_t)index;
@end

@implementation NPComponentSequence

- (NPComponentSequence)initWithObservationSequence:(id)sequence hiddenSequence:(id)hiddenSequence oovIndices:(id)indices emissionModelScore:(double)score stateModelScore:(double)modelScore boost:(double)boost
{
  sequenceCopy = sequence;
  hiddenSequenceCopy = hiddenSequence;
  indicesCopy = indices;
  v22.receiver = self;
  v22.super_class = NPComponentSequence;
  v17 = [(NPComponentSequence *)&v22 init];
  if (v17)
  {
    v18 = [sequenceCopy copy];
    [(NPComponentSequence *)v17 setObservation:v18];

    v19 = [hiddenSequenceCopy copy];
    [(NPComponentSequence *)v17 setSequence:v19];

    v20 = [indicesCopy copy];
    [(NPComponentSequence *)v17 setOovIndices:v20];

    [(NPComponentSequence *)v17 setEmissionModelScore:score];
    [(NPComponentSequence *)v17 setStateModelScore:modelScore];
    [(NPComponentSequence *)v17 setScore:floor((score + modelScore + boost) * 1000000.0) / 1000000.0];
  }

  return v17;
}

- (BOOL)isEqualToComponentSequence:(id)sequence
{
  sequenceCopy = sequence;
  [(NPComponentSequence *)self score];
  v6 = v5;
  [sequenceCopy score];
  if (v6 == v7)
  {
    sequence = [(NPComponentSequence *)self sequence];
    sequence2 = [sequenceCopy sequence];
    if ([sequence isEqualToArray:sequence2])
    {
      oovIndices = [(NPComponentSequence *)self oovIndices];
      oovIndices2 = [sequenceCopy oovIndices];
      v12 = [oovIndices isEqualToArray:oovIndices2];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  sequence = [(NPComponentSequence *)self sequence];
  observation = [(NPComponentSequence *)self observation];
  oovTokens = [(NPComponentSequence *)self oovTokens];
  [(NPComponentSequence *)self emissionModelScore];
  v8 = v7;
  [(NPComponentSequence *)self stateModelScore];
  v10 = v9;
  [(NPComponentSequence *)self score];
  v12 = [v3 stringWithFormat:@"<sequence = %@, observations = %@, oovTokens = %@, emission = %f, state = %f, score = %f>", sequence, observation, oovTokens, v8, v10, v11];
  newlineCharacterSet = [MEMORY[0x277CCA900] newlineCharacterSet];
  v14 = [v12 componentsSeparatedByCharactersInSet:newlineCharacterSet];
  v15 = [v14 componentsJoinedByString:&stru_2858DACA8];
  v16 = _NPCollapseWhitespaceAndStrip(v15);

  return v16;
}

- (void)setValue:(id)value atSequenceIndex:(unint64_t)index
{
  valueCopy = value;
  sequence = [(NPComponentSequence *)self sequence];
  v7 = [sequence count];

  if (v7 > index)
  {
    v8 = MEMORY[0x277CBEB18];
    sequence2 = [(NPComponentSequence *)self sequence];
    v10 = [v8 arrayWithArray:sequence2];

    [v10 setObject:valueCopy atIndexedSubscript:index];
    [(NPComponentSequence *)self setSequence:v10];
  }
}

- (id)oovTokens
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  oovIndices = [(NPComponentSequence *)self oovIndices];
  v5 = [v3 initWithCapacity:{objc_msgSend(oovIndices, "count")}];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  oovIndices2 = [(NPComponentSequence *)self oovIndices];
  v7 = [oovIndices2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(oovIndices2);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        observation = [(NPComponentSequence *)self observation];
        v13 = [observation objectAtIndexedSubscript:{objc_msgSend(v11, "integerValue")}];
        [v5 addObject:v13];
      }

      v8 = [oovIndices2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v5;
}

@end