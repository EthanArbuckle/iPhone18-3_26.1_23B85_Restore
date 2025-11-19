@interface TextSequenceInference
- (TextSequenceInference)initWithLength:(unint64_t)a3;
- (TextSequenceInference)initWithLength:(unint64_t)a3 BOS:(unint64_t)a4;
- (void)addWordWithInputId:(unint64_t)a3;
- (void)resetWithBOS:(unint64_t)a3;
@end

@implementation TextSequenceInference

- (TextSequenceInference)initWithLength:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = TextSequenceInference;
  v4 = [(TextSequenceInference *)&v8 init];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a3];
    sequence = v4->_sequence;
    v4->_sequence = v5;
  }

  return v4;
}

- (TextSequenceInference)initWithLength:(unint64_t)a3 BOS:(unint64_t)a4
{
  v6 = [(TextSequenceInference *)self initWithLength:?];
  if (v6)
  {
    for (; a3; --a3)
    {
      sequence = v6->_sequence;
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a4];
      [(NSMutableArray *)sequence addObject:v8];
    }

    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a4];
    target = v6->_target;
    v6->_target = v9;
  }

  return v6;
}

- (void)resetWithBOS:(unint64_t)a3
{
  if ([(NSMutableArray *)self->_sequence count])
  {
    v5 = 0;
    do
    {
      v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a3];
      [(NSMutableArray *)self->_sequence setObject:v6 atIndexedSubscript:v5];

      ++v5;
    }

    while (v5 < [(NSMutableArray *)self->_sequence count]);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a3];
  target = self->_target;
  self->_target = v7;
}

- (void)addWordWithInputId:(unint64_t)a3
{
  if ([(NSMutableArray *)self->_sequence count])
  {
    [(NSMutableArray *)self->_sequence addObject:self->_target];
    [(NSMutableArray *)self->_sequence removeObjectAtIndex:0];
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a3];
    target = self->_target;
    self->_target = v5;
  }
}

@end