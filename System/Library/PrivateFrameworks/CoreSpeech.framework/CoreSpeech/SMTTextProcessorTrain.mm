@interface SMTTextProcessorTrain
- (SMTTextProcessorTrain)initWithVocab:(id)a3;
- (void)addText:(id)a3;
- (void)addText:(id)a3 length:(unint64_t)a4;
- (void)addTokenizedText:(id)a3 length:(unint64_t)a4;
- (void)shuffleSamples;
@end

@implementation SMTTextProcessorTrain

- (void)shuffleSamples
{
  if ([(NSMutableArray *)self->_text count])
  {
    v3 = 0;
    v4 = 0;
    do
    {
      [(NSMutableArray *)self->_text exchangeObjectAtIndex:v4 withObjectAtIndex:arc4random() % ([(NSMutableArray *)self->_text count]+ v3) + v4];
      ++v4;
      --v3;
    }

    while (v4 < [(NSMutableArray *)self->_text count]);
  }
}

- (void)addTokenizedText:(id)a3 length:(unint64_t)a4
{
  v29 = a3;
  v6 = [v29 count];
  if (a4 && v6)
  {
    v7 = [(SMTKaldiVocab *)self->_vocab endOfSentenceIndex];
    v8 = [(SMTKaldiVocab *)self->_vocab beginOfSentenceIndex];
    text = self->_text;
    v10 = [[SMTTextSequenceTrain alloc] initWithLength:a4];
    [(NSMutableArray *)text addObject:v10];

    vocab = self->_vocab;
    v12 = [v29 objectAtIndexedSubscript:0];
    v13 = [(SMTKaldiVocab *)vocab indexForWord:v12];

    v14 = [(NSMutableArray *)self->_text objectAtIndexedSubscript:[(NSMutableArray *)self->_text count]- 1];
    v15 = 1;
    [v14 addWordWithInputId:v8 target:v13 mask:1];

    if ([v29 count])
    {
      v16 = 1;
      v15 = 1;
      do
      {
        v17 = self->_vocab;
        v18 = [v29 objectAtIndexedSubscript:v16 - 1];
        v19 = [(SMTKaldiVocab *)v17 indexForWord:v18];

        v20 = v7;
        if ((v16 - 1) < [v29 count] - 1)
        {
          v21 = self->_vocab;
          v22 = [v29 objectAtIndexedSubscript:v16];
          v20 = [(SMTKaldiVocab *)v21 indexForWord:v22];
        }

        v23 = [(NSMutableArray *)self->_text objectAtIndexedSubscript:[(NSMutableArray *)self->_text count]- 1];
        [v23 addWordWithInputId:v19 target:v20 mask:1];

        ++self->_numValidTokens;
        if (++v15 == a4)
        {
          v15 = a4;
          if ((v16 - 1) != [v29 count] - 1)
          {
            v24 = self->_text;
            v25 = [[SMTTextSequenceTrain alloc] initWithLength:a4];
            [(NSMutableArray *)v24 addObject:v25];

            v15 = 0;
          }
        }
      }

      while (v16++ < [v29 count]);
    }

    v27 = a4 - v15;
    if (a4 > v15)
    {
      do
      {
        v28 = [(NSMutableArray *)self->_text objectAtIndexedSubscript:[(NSMutableArray *)self->_text count]- 1];
        [v28 addWordWithInputId:v7 target:v7 mask:0];

        --v27;
      }

      while (v27);
    }
  }
}

- (void)addText:(id)a3 length:(unint64_t)a4
{
  v24 = a3;
  v6 = +[NSCharacterSet whitespaceCharacterSet];
  v7 = [v24 componentsSeparatedByCharactersInSet:v6];

  v8 = [(SMTKaldiVocab *)self->_vocab endOfSentenceIndex];
  v9 = [(SMTKaldiVocab *)self->_vocab beginOfSentenceIndex];
  v10 = [v7 count];
  if (a4 && v10)
  {
    text = self->_text;
    v12 = [[SMTTextSequenceTrain alloc] initWithLength:a4];
    [(NSMutableArray *)text addObject:v12];

    v13 = [(NSMutableArray *)self->_text objectAtIndexedSubscript:[(NSMutableArray *)self->_text count]- 1];
    [v13 addWordWithInputId:v9];

    if ([v7 count])
    {
      v14 = 0;
      v15 = 1;
      do
      {
        vocab = self->_vocab;
        v17 = [v7 objectAtIndexedSubscript:v14];
        v18 = [(SMTKaldiVocab *)vocab indexForWord:v17];

        v19 = [(NSMutableArray *)self->_text objectAtIndexedSubscript:[(NSMutableArray *)self->_text count]- 1];
        [v19 addWordWithInputId:v18];

        ++self->_numValidTokens;
        if (++v15 == a4)
        {
          v15 = a4;
          if (v14 != [v7 count] - 1)
          {
            v20 = self->_text;
            v21 = [[SMTTextSequenceTrain alloc] initWithLength:a4];
            [(NSMutableArray *)v20 addObject:v21];

            v15 = 0;
          }
        }

        ++v14;
      }

      while (v14 < [v7 count]);
    }

    else
    {
      v15 = 1;
    }

    v22 = a4 - v15;
    if (a4 > v15)
    {
      do
      {
        v23 = [(NSMutableArray *)self->_text objectAtIndexedSubscript:[(NSMutableArray *)self->_text count]- 1];
        [v23 addWordWithInputId:v8];

        --v22;
      }

      while (v22);
    }
  }
}

- (void)addText:(id)a3
{
  v4 = a3;
  v5 = +[NSCharacterSet whitespaceCharacterSet];
  v6 = [v4 componentsSeparatedByCharactersInSet:v5];

  v7 = objc_alloc_init(SMTTextSequenceTrain);
  v8 = [(SMTKaldiVocab *)self->_vocab endOfSentenceIndex];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(SMTTextSequenceTrain *)v7 addWordWithInputId:[(SMTKaldiVocab *)self->_vocab indexForWord:*(*(&v14 + 1) + 8 * v13), v14]];
        ++self->_numValidTokens;
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }

  [(SMTTextSequenceTrain *)v7 addWordWithInputId:v8];
  [(NSMutableArray *)self->_text addObject:v7];
}

- (SMTTextProcessorTrain)initWithVocab:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = SMTTextProcessorTrain;
  v6 = [(SMTTextProcessorTrain *)&v10 init];
  if (v6)
  {
    v7 = objc_alloc_init(NSMutableArray);
    text = v6->_text;
    v6->_text = v7;

    objc_storeStrong(&v6->_vocab, a3);
    v6->_numValidTokens = 0;
  }

  return v6;
}

@end