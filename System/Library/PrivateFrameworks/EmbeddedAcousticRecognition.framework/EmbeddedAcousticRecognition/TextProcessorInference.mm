@interface TextProcessorInference
- (TextProcessorInference)initWithLength:(unint64_t)length vocab:(id)vocab BOS:(unint64_t)s;
- (TextProcessorInference)initWithVocab:(id)vocab;
- (void)addText:(id)text;
- (void)resetWithBOS:(unint64_t)s;
@end

@implementation TextProcessorInference

- (TextProcessorInference)initWithVocab:(id)vocab
{
  vocabCopy = vocab;
  v11.receiver = self;
  v11.super_class = TextProcessorInference;
  v6 = [(TextProcessorInference *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_vocab, vocab);
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    text = v7->_text;
    v7->_text = v8;
  }

  return v7;
}

- (TextProcessorInference)initWithLength:(unint64_t)length vocab:(id)vocab BOS:(unint64_t)s
{
  v7 = [(TextProcessorInference *)self initWithVocab:vocab];
  if (v7)
  {
    v8 = [[TextSequenceInference alloc] initWithLength:length BOS:s];
    [(NSMutableArray *)v7->_text addObject:v8];
  }

  return v7;
}

- (void)resetWithBOS:(unint64_t)s
{
  v4 = [(NSMutableArray *)self->_text objectAtIndexedSubscript:0];
  [v4 resetWithBOS:s];
}

- (void)addText:(id)text
{
  v4 = [(_EARLMTKaldiVocab *)self->_vocab indexForWord:text];
  v5 = [(NSMutableArray *)self->_text objectAtIndexedSubscript:0];
  [v5 addWordWithInputId:v4];
}

@end