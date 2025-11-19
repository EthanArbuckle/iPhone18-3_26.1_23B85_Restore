@interface NPComponentSequence
- (BOOL)isEqualToComponentSequence:(id)a3;
- (NPComponentSequence)initWithObservationSequence:(id)a3 hiddenSequence:(id)a4 oovIndices:(id)a5 emissionModelScore:(double)a6 stateModelScore:(double)a7 boost:(double)a8;
- (id)description;
- (id)oovTokens;
- (void)setValue:(id)a3 atSequenceIndex:(unint64_t)a4;
@end

@implementation NPComponentSequence

- (NPComponentSequence)initWithObservationSequence:(id)a3 hiddenSequence:(id)a4 oovIndices:(id)a5 emissionModelScore:(double)a6 stateModelScore:(double)a7 boost:(double)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v22.receiver = self;
  v22.super_class = NPComponentSequence;
  v17 = [(NPComponentSequence *)&v22 init];
  if (v17)
  {
    v18 = [v14 copy];
    [(NPComponentSequence *)v17 setObservation:v18];

    v19 = [v15 copy];
    [(NPComponentSequence *)v17 setSequence:v19];

    v20 = [v16 copy];
    [(NPComponentSequence *)v17 setOovIndices:v20];

    [(NPComponentSequence *)v17 setEmissionModelScore:a6];
    [(NPComponentSequence *)v17 setStateModelScore:a7];
    [(NPComponentSequence *)v17 setScore:floor((a6 + a7 + a8) * 1000000.0) / 1000000.0];
  }

  return v17;
}

- (BOOL)isEqualToComponentSequence:(id)a3
{
  v4 = a3;
  [(NPComponentSequence *)self score];
  v6 = v5;
  [v4 score];
  if (v6 == v7)
  {
    v8 = [(NPComponentSequence *)self sequence];
    v9 = [v4 sequence];
    if ([v8 isEqualToArray:v9])
    {
      v10 = [(NPComponentSequence *)self oovIndices];
      v11 = [v4 oovIndices];
      v12 = [v10 isEqualToArray:v11];
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
  v4 = [(NPComponentSequence *)self sequence];
  v5 = [(NPComponentSequence *)self observation];
  v6 = [(NPComponentSequence *)self oovTokens];
  [(NPComponentSequence *)self emissionModelScore];
  v8 = v7;
  [(NPComponentSequence *)self stateModelScore];
  v10 = v9;
  [(NPComponentSequence *)self score];
  v12 = [v3 stringWithFormat:@"<sequence = %@, observations = %@, oovTokens = %@, emission = %f, state = %f, score = %f>", v4, v5, v6, v8, v10, v11];
  v13 = [MEMORY[0x277CCA900] newlineCharacterSet];
  v14 = [v12 componentsSeparatedByCharactersInSet:v13];
  v15 = [v14 componentsJoinedByString:&stru_2858DACA8];
  v16 = _NPCollapseWhitespaceAndStrip(v15);

  return v16;
}

- (void)setValue:(id)a3 atSequenceIndex:(unint64_t)a4
{
  v11 = a3;
  v6 = [(NPComponentSequence *)self sequence];
  v7 = [v6 count];

  if (v7 > a4)
  {
    v8 = MEMORY[0x277CBEB18];
    v9 = [(NPComponentSequence *)self sequence];
    v10 = [v8 arrayWithArray:v9];

    [v10 setObject:v11 atIndexedSubscript:a4];
    [(NPComponentSequence *)self setSequence:v10];
  }
}

- (id)oovTokens
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  v4 = [(NPComponentSequence *)self oovIndices];
  v5 = [v3 initWithCapacity:{objc_msgSend(v4, "count")}];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(NPComponentSequence *)self oovIndices];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [(NPComponentSequence *)self observation];
        v13 = [v12 objectAtIndexedSubscript:{objc_msgSend(v11, "integerValue")}];
        [v5 addObject:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v5;
}

@end