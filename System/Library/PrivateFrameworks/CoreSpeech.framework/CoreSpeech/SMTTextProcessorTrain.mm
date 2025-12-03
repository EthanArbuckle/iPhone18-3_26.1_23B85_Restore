@interface SMTTextProcessorTrain
- (SMTTextProcessorTrain)initWithVocab:(id)vocab;
- (void)addText:(id)text;
- (void)addText:(id)text length:(unint64_t)length;
- (void)addTokenizedText:(id)text length:(unint64_t)length;
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

- (void)addTokenizedText:(id)text length:(unint64_t)length
{
  textCopy = text;
  v6 = [textCopy count];
  if (length && v6)
  {
    endOfSentenceIndex = [(SMTKaldiVocab *)self->_vocab endOfSentenceIndex];
    beginOfSentenceIndex = [(SMTKaldiVocab *)self->_vocab beginOfSentenceIndex];
    text = self->_text;
    v10 = [[SMTTextSequenceTrain alloc] initWithLength:length];
    [(NSMutableArray *)text addObject:v10];

    vocab = self->_vocab;
    v12 = [textCopy objectAtIndexedSubscript:0];
    v13 = [(SMTKaldiVocab *)vocab indexForWord:v12];

    v14 = [(NSMutableArray *)self->_text objectAtIndexedSubscript:[(NSMutableArray *)self->_text count]- 1];
    lengthCopy = 1;
    [v14 addWordWithInputId:beginOfSentenceIndex target:v13 mask:1];

    if ([textCopy count])
    {
      v16 = 1;
      lengthCopy = 1;
      do
      {
        v17 = self->_vocab;
        v18 = [textCopy objectAtIndexedSubscript:v16 - 1];
        v19 = [(SMTKaldiVocab *)v17 indexForWord:v18];

        v20 = endOfSentenceIndex;
        if ((v16 - 1) < [textCopy count] - 1)
        {
          v21 = self->_vocab;
          v22 = [textCopy objectAtIndexedSubscript:v16];
          v20 = [(SMTKaldiVocab *)v21 indexForWord:v22];
        }

        v23 = [(NSMutableArray *)self->_text objectAtIndexedSubscript:[(NSMutableArray *)self->_text count]- 1];
        [v23 addWordWithInputId:v19 target:v20 mask:1];

        ++self->_numValidTokens;
        if (++lengthCopy == length)
        {
          lengthCopy = length;
          if ((v16 - 1) != [textCopy count] - 1)
          {
            v24 = self->_text;
            v25 = [[SMTTextSequenceTrain alloc] initWithLength:length];
            [(NSMutableArray *)v24 addObject:v25];

            lengthCopy = 0;
          }
        }
      }

      while (v16++ < [textCopy count]);
    }

    v27 = length - lengthCopy;
    if (length > lengthCopy)
    {
      do
      {
        v28 = [(NSMutableArray *)self->_text objectAtIndexedSubscript:[(NSMutableArray *)self->_text count]- 1];
        [v28 addWordWithInputId:endOfSentenceIndex target:endOfSentenceIndex mask:0];

        --v27;
      }

      while (v27);
    }
  }
}

- (void)addText:(id)text length:(unint64_t)length
{
  textCopy = text;
  v6 = +[NSCharacterSet whitespaceCharacterSet];
  v7 = [textCopy componentsSeparatedByCharactersInSet:v6];

  endOfSentenceIndex = [(SMTKaldiVocab *)self->_vocab endOfSentenceIndex];
  beginOfSentenceIndex = [(SMTKaldiVocab *)self->_vocab beginOfSentenceIndex];
  v10 = [v7 count];
  if (length && v10)
  {
    text = self->_text;
    v12 = [[SMTTextSequenceTrain alloc] initWithLength:length];
    [(NSMutableArray *)text addObject:v12];

    v13 = [(NSMutableArray *)self->_text objectAtIndexedSubscript:[(NSMutableArray *)self->_text count]- 1];
    [v13 addWordWithInputId:beginOfSentenceIndex];

    if ([v7 count])
    {
      v14 = 0;
      lengthCopy = 1;
      do
      {
        vocab = self->_vocab;
        v17 = [v7 objectAtIndexedSubscript:v14];
        v18 = [(SMTKaldiVocab *)vocab indexForWord:v17];

        v19 = [(NSMutableArray *)self->_text objectAtIndexedSubscript:[(NSMutableArray *)self->_text count]- 1];
        [v19 addWordWithInputId:v18];

        ++self->_numValidTokens;
        if (++lengthCopy == length)
        {
          lengthCopy = length;
          if (v14 != [v7 count] - 1)
          {
            v20 = self->_text;
            v21 = [[SMTTextSequenceTrain alloc] initWithLength:length];
            [(NSMutableArray *)v20 addObject:v21];

            lengthCopy = 0;
          }
        }

        ++v14;
      }

      while (v14 < [v7 count]);
    }

    else
    {
      lengthCopy = 1;
    }

    v22 = length - lengthCopy;
    if (length > lengthCopy)
    {
      do
      {
        v23 = [(NSMutableArray *)self->_text objectAtIndexedSubscript:[(NSMutableArray *)self->_text count]- 1];
        [v23 addWordWithInputId:endOfSentenceIndex];

        --v22;
      }

      while (v22);
    }
  }
}

- (void)addText:(id)text
{
  textCopy = text;
  v5 = +[NSCharacterSet whitespaceCharacterSet];
  v6 = [textCopy componentsSeparatedByCharactersInSet:v5];

  v7 = objc_alloc_init(SMTTextSequenceTrain);
  endOfSentenceIndex = [(SMTKaldiVocab *)self->_vocab endOfSentenceIndex];
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

  [(SMTTextSequenceTrain *)v7 addWordWithInputId:endOfSentenceIndex];
  [(NSMutableArray *)self->_text addObject:v7];
}

- (SMTTextProcessorTrain)initWithVocab:(id)vocab
{
  vocabCopy = vocab;
  v10.receiver = self;
  v10.super_class = SMTTextProcessorTrain;
  v6 = [(SMTTextProcessorTrain *)&v10 init];
  if (v6)
  {
    v7 = objc_alloc_init(NSMutableArray);
    text = v6->_text;
    v6->_text = v7;

    objc_storeStrong(&v6->_vocab, vocab);
    v6->_numValidTokens = 0;
  }

  return v6;
}

@end