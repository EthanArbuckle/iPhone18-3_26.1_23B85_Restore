@interface TextSequenceTrain
- (TextSequenceTrain)initWithLength:(unint64_t)length;
- (void)addWordWithInputId:(unint64_t)id;
- (void)addWordWithInputId:(unint64_t)id target:(unint64_t)target mask:(unint64_t)mask;
@end

@implementation TextSequenceTrain

- (TextSequenceTrain)initWithLength:(unint64_t)length
{
  v12.receiver = self;
  v12.super_class = TextSequenceTrain;
  v4 = [(TextSequenceTrain *)&v12 init];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:length];
    sequence = v4->_sequence;
    v4->_sequence = v5;

    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:length];
    target = v4->_target;
    v4->_target = v7;

    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:length];
    mask = v4->_mask;
    v4->_mask = v9;
  }

  return v4;
}

- (void)addWordWithInputId:(unint64_t)id
{
  sequence = self->_sequence;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:id];
  [(NSMutableArray *)sequence addObject:?];
}

- (void)addWordWithInputId:(unint64_t)id target:(unint64_t)target mask:(unint64_t)mask
{
  [(TextSequenceTrain *)self addWordWithInputId:id];
  target = self->_target;
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:target];
  [(NSMutableArray *)target addObject:?];

  mask = self->_mask;
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:mask];
  [(NSMutableArray *)mask addObject:?];
}

@end