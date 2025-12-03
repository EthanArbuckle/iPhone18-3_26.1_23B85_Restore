@interface SMTTextProcessorInference
- (SMTTextProcessorInference)initWithLength:(unint64_t)length vocab:(id)vocab BOS:(unint64_t)s;
- (SMTTextProcessorInference)initWithVocab:(id)vocab;
- (void)addText:(id)text;
- (void)resetWithBOS:(unint64_t)s;
@end

@implementation SMTTextProcessorInference

- (void)addText:(id)text
{
  v4 = [(SMTKaldiVocab *)self->_vocab indexForWord:text];
  v5 = [(NSMutableArray *)self->_text objectAtIndexedSubscript:0];
  [v5 addWordWithInputId:v4];
}

- (void)resetWithBOS:(unint64_t)s
{
  v4 = [(NSMutableArray *)self->_text objectAtIndexedSubscript:0];
  [v4 resetWithBOS:s];
}

- (SMTTextProcessorInference)initWithLength:(unint64_t)length vocab:(id)vocab BOS:(unint64_t)s
{
  v7 = [(SMTTextProcessorInference *)self initWithVocab:vocab];
  if (v7)
  {
    v8 = [[SMTTextSequenceInference alloc] initWithLength:length BOS:s];
    [(NSMutableArray *)v7->_text addObject:v8];
  }

  return v7;
}

- (SMTTextProcessorInference)initWithVocab:(id)vocab
{
  vocabCopy = vocab;
  v11.receiver = self;
  v11.super_class = SMTTextProcessorInference;
  v6 = [(SMTTextProcessorInference *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_vocab, vocab);
    v8 = objc_alloc_init(NSMutableArray);
    text = v7->_text;
    v7->_text = v8;
  }

  return v7;
}

@end