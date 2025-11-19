@interface TextSequenceTrain
- (TextSequenceTrain)initWithLength:(unint64_t)a3;
- (void)addWordWithInputId:(unint64_t)a3;
- (void)addWordWithInputId:(unint64_t)a3 target:(unint64_t)a4 mask:(unint64_t)a5;
@end

@implementation TextSequenceTrain

- (TextSequenceTrain)initWithLength:(unint64_t)a3
{
  v12.receiver = self;
  v12.super_class = TextSequenceTrain;
  v4 = [(TextSequenceTrain *)&v12 init];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a3];
    sequence = v4->_sequence;
    v4->_sequence = v5;

    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a3];
    target = v4->_target;
    v4->_target = v7;

    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a3];
    mask = v4->_mask;
    v4->_mask = v9;
  }

  return v4;
}

- (void)addWordWithInputId:(unint64_t)a3
{
  sequence = self->_sequence;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a3];
  [(NSMutableArray *)sequence addObject:?];
}

- (void)addWordWithInputId:(unint64_t)a3 target:(unint64_t)a4 mask:(unint64_t)a5
{
  [(TextSequenceTrain *)self addWordWithInputId:a3];
  target = self->_target;
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a4];
  [(NSMutableArray *)target addObject:?];

  mask = self->_mask;
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a5];
  [(NSMutableArray *)mask addObject:?];
}

@end