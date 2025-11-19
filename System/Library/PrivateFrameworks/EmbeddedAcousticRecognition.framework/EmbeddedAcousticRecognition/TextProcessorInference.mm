@interface TextProcessorInference
- (TextProcessorInference)initWithLength:(unint64_t)a3 vocab:(id)a4 BOS:(unint64_t)a5;
- (TextProcessorInference)initWithVocab:(id)a3;
- (void)addText:(id)a3;
- (void)resetWithBOS:(unint64_t)a3;
@end

@implementation TextProcessorInference

- (TextProcessorInference)initWithVocab:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = TextProcessorInference;
  v6 = [(TextProcessorInference *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_vocab, a3);
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    text = v7->_text;
    v7->_text = v8;
  }

  return v7;
}

- (TextProcessorInference)initWithLength:(unint64_t)a3 vocab:(id)a4 BOS:(unint64_t)a5
{
  v7 = [(TextProcessorInference *)self initWithVocab:a4];
  if (v7)
  {
    v8 = [[TextSequenceInference alloc] initWithLength:a3 BOS:a5];
    [(NSMutableArray *)v7->_text addObject:v8];
  }

  return v7;
}

- (void)resetWithBOS:(unint64_t)a3
{
  v4 = [(NSMutableArray *)self->_text objectAtIndexedSubscript:0];
  [v4 resetWithBOS:a3];
}

- (void)addText:(id)a3
{
  v4 = [(_EARLMTKaldiVocab *)self->_vocab indexForWord:a3];
  v5 = [(NSMutableArray *)self->_text objectAtIndexedSubscript:0];
  [v5 addWordWithInputId:v4];
}

@end