@interface TextProcessorTrain
- (TextProcessorTrain)initWithVocab:(id)vocab;
- (void)addText:(id)text;
- (void)addText:(id)text length:(unint64_t)length;
- (void)addTokenizedText:(id)text length:(unint64_t)length;
- (void)shuffleSamples;
@end

@implementation TextProcessorTrain

- (TextProcessorTrain)initWithVocab:(id)vocab
{
  vocabCopy = vocab;
  v10.receiver = self;
  v10.super_class = TextProcessorTrain;
  v6 = [(TextProcessorTrain *)&v10 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    text = v6->_text;
    v6->_text = v7;

    objc_storeStrong(&v6->_vocab, vocab);
    v6->_numValidTokens = 0;
  }

  return v6;
}

- (void)addText:(id)text
{
  v19 = *MEMORY[0x1E69E9840];
  textCopy = text;
  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v6 = [textCopy componentsSeparatedByCharactersInSet:whitespaceCharacterSet];

  v7 = objc_alloc_init(TextSequenceTrain);
  endOfSentenceIndex = [(_EARLMTKaldiVocab *)self->_vocab endOfSentenceIndex];
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

        [(TextSequenceTrain *)v7 addWordWithInputId:[(_EARLMTKaldiVocab *)self->_vocab indexForWord:*(*(&v14 + 1) + 8 * v13), v14]];
        ++self->_numValidTokens;
        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }

  [(TextSequenceTrain *)v7 addWordWithInputId:endOfSentenceIndex];
  [(NSMutableArray *)self->_text addObject:v7];
}

- (void)addText:(id)text length:(unint64_t)length
{
  textCopy = text;
  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v7 = [textCopy componentsSeparatedByCharactersInSet:whitespaceCharacterSet];

  endOfSentenceIndex = [(_EARLMTKaldiVocab *)self->_vocab endOfSentenceIndex];
  beginOfSentenceIndex = [(_EARLMTKaldiVocab *)self->_vocab beginOfSentenceIndex];
  v10 = [v7 count];
  if (length && v10)
  {
    text = self->_text;
    v12 = [[TextSequenceTrain alloc] initWithLength:length];
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
        v18 = [(_EARLMTKaldiVocab *)vocab indexForWord:v17];

        v19 = [(NSMutableArray *)self->_text objectAtIndexedSubscript:[(NSMutableArray *)self->_text count]- 1];
        [v19 addWordWithInputId:v18];

        ++self->_numValidTokens;
        if (++lengthCopy == length)
        {
          lengthCopy = length;
          if (v14 != [v7 count] - 1)
          {
            v20 = self->_text;
            v21 = [[TextSequenceTrain alloc] initWithLength:length];
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

- (void)addTokenizedText:(id)text length:(unint64_t)length
{
  textCopy = text;
  v6 = [textCopy count];
  if (length && v6)
  {
    endOfSentenceIndex = [(_EARLMTKaldiVocab *)self->_vocab endOfSentenceIndex];
    beginOfSentenceIndex = [(_EARLMTKaldiVocab *)self->_vocab beginOfSentenceIndex];
    text = self->_text;
    v10 = [[TextSequenceTrain alloc] initWithLength:length];
    [(NSMutableArray *)text addObject:v10];

    vocab = self->_vocab;
    v12 = [textCopy objectAtIndexedSubscript:0];
    v13 = [(_EARLMTKaldiVocab *)vocab indexForWord:v12];

    v14 = [(NSMutableArray *)self->_text objectAtIndexedSubscript:[(NSMutableArray *)self->_text count]- 1];
    lengthCopy = 1;
    [v14 addWordWithInputId:beginOfSentenceIndex target:v13 mask:1];

    if ([textCopy count])
    {
      v16 = 0;
      lengthCopy = 1;
      do
      {
        v17 = self->_vocab;
        v18 = [textCopy objectAtIndexedSubscript:v16];
        v19 = [(_EARLMTKaldiVocab *)v17 indexForWord:v18];

        v20 = endOfSentenceIndex;
        if (v16 < [textCopy count] - 1)
        {
          v21 = self->_vocab;
          v22 = [textCopy objectAtIndexedSubscript:v16 + 1];
          v20 = [(_EARLMTKaldiVocab *)v21 indexForWord:v22];
        }

        v23 = [(NSMutableArray *)self->_text objectAtIndexedSubscript:[(NSMutableArray *)self->_text count]- 1];
        [v23 addWordWithInputId:v19 target:v20 mask:1];

        ++self->_numValidTokens;
        if (++lengthCopy == length)
        {
          lengthCopy = length;
          if (v16 != [textCopy count] - 1)
          {
            v24 = self->_text;
            v25 = [[TextSequenceTrain alloc] initWithLength:length];
            [(NSMutableArray *)v24 addObject:v25];

            lengthCopy = 0;
          }
        }

        ++v16;
      }

      while (v16 < [textCopy count]);
    }

    v26 = length - lengthCopy;
    if (length > lengthCopy)
    {
      do
      {
        v27 = [(NSMutableArray *)self->_text objectAtIndexedSubscript:[(NSMutableArray *)self->_text count]- 1];
        [v27 addWordWithInputId:endOfSentenceIndex target:endOfSentenceIndex mask:0];

        --v26;
      }

      while (v26);
    }
  }
}

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

@end