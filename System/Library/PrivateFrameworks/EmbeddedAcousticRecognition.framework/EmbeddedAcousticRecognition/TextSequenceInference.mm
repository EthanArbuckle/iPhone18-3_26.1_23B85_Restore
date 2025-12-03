@interface TextSequenceInference
- (TextSequenceInference)initWithLength:(unint64_t)length;
- (TextSequenceInference)initWithLength:(unint64_t)length BOS:(unint64_t)s;
- (void)addWordWithInputId:(unint64_t)id;
- (void)resetWithBOS:(unint64_t)s;
@end

@implementation TextSequenceInference

- (TextSequenceInference)initWithLength:(unint64_t)length
{
  v8.receiver = self;
  v8.super_class = TextSequenceInference;
  v4 = [(TextSequenceInference *)&v8 init];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:length];
    sequence = v4->_sequence;
    v4->_sequence = v5;
  }

  return v4;
}

- (TextSequenceInference)initWithLength:(unint64_t)length BOS:(unint64_t)s
{
  v6 = [(TextSequenceInference *)self initWithLength:?];
  if (v6)
  {
    for (; length; --length)
    {
      sequence = v6->_sequence;
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:s];
      [(NSMutableArray *)sequence addObject:v8];
    }

    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:s];
    target = v6->_target;
    v6->_target = v9;
  }

  return v6;
}

- (void)resetWithBOS:(unint64_t)s
{
  if ([(NSMutableArray *)self->_sequence count])
  {
    v5 = 0;
    do
    {
      v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:s];
      [(NSMutableArray *)self->_sequence setObject:v6 atIndexedSubscript:v5];

      ++v5;
    }

    while (v5 < [(NSMutableArray *)self->_sequence count]);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:s];
  target = self->_target;
  self->_target = v7;
}

- (void)addWordWithInputId:(unint64_t)id
{
  if ([(NSMutableArray *)self->_sequence count])
  {
    [(NSMutableArray *)self->_sequence addObject:self->_target];
    [(NSMutableArray *)self->_sequence removeObjectAtIndex:0];
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:id];
    target = self->_target;
    self->_target = v5;
  }
}

@end