@interface SMTTextSequenceInference
- (SMTTextSequenceInference)initWithLength:(unint64_t)length;
- (SMTTextSequenceInference)initWithLength:(unint64_t)length BOS:(unint64_t)s;
- (void)addWordWithInputId:(unint64_t)id;
- (void)resetWithBOS:(unint64_t)s;
@end

@implementation SMTTextSequenceInference

- (void)addWordWithInputId:(unint64_t)id
{
  if ([(NSMutableArray *)self->_sequence count])
  {
    [(NSMutableArray *)self->_sequence addObject:self->_target];
    [(NSMutableArray *)self->_sequence removeObjectAtIndex:0];
    v5 = [NSNumber numberWithUnsignedLong:id];
    target = self->_target;
    self->_target = v5;

    _objc_release_x1();
  }
}

- (void)resetWithBOS:(unint64_t)s
{
  if ([(NSMutableArray *)self->_sequence count])
  {
    v5 = 0;
    do
    {
      v6 = [NSNumber numberWithUnsignedLong:s];
      [(NSMutableArray *)self->_sequence setObject:v6 atIndexedSubscript:v5];

      ++v5;
    }

    while (v5 < [(NSMutableArray *)self->_sequence count]);
  }

  v7 = [NSNumber numberWithUnsignedLong:s];
  target = self->_target;
  self->_target = v7;

  _objc_release_x1();
}

- (SMTTextSequenceInference)initWithLength:(unint64_t)length BOS:(unint64_t)s
{
  v6 = [(SMTTextSequenceInference *)self initWithLength:?];
  if (v6)
  {
    for (; length; --length)
    {
      sequence = v6->_sequence;
      v8 = [NSNumber numberWithUnsignedLong:s];
      [(NSMutableArray *)sequence addObject:v8];
    }

    v9 = [NSNumber numberWithUnsignedLong:s];
    target = v6->_target;
    v6->_target = v9;
  }

  return v6;
}

- (SMTTextSequenceInference)initWithLength:(unint64_t)length
{
  v8.receiver = self;
  v8.super_class = SMTTextSequenceInference;
  v4 = [(SMTTextSequenceInference *)&v8 init];
  if (v4)
  {
    v5 = [[NSMutableArray alloc] initWithCapacity:length];
    sequence = v4->_sequence;
    v4->_sequence = v5;
  }

  return v4;
}

@end