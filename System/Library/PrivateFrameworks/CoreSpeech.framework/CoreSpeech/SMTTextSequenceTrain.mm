@interface SMTTextSequenceTrain
- (SMTTextSequenceTrain)initWithLength:(unint64_t)length;
- (void)addWordWithInputId:(unint64_t)id;
- (void)addWordWithInputId:(unint64_t)id target:(unint64_t)target mask:(unint64_t)mask;
@end

@implementation SMTTextSequenceTrain

- (void)addWordWithInputId:(unint64_t)id target:(unint64_t)target mask:(unint64_t)mask
{
  [(SMTTextSequenceTrain *)self addWordWithInputId:id];
  target = self->_target;
  v9 = [NSNumber numberWithUnsignedLong:target];
  [(NSMutableArray *)target addObject:v9];

  mask = self->_mask;
  v11 = [NSNumber numberWithUnsignedLong:mask];
  [(NSMutableArray *)mask addObject:v11];
}

- (void)addWordWithInputId:(unint64_t)id
{
  sequence = self->_sequence;
  v4 = [NSNumber numberWithUnsignedLong:id];
  [(NSMutableArray *)sequence addObject:v4];
}

- (SMTTextSequenceTrain)initWithLength:(unint64_t)length
{
  v12.receiver = self;
  v12.super_class = SMTTextSequenceTrain;
  v4 = [(SMTTextSequenceTrain *)&v12 init];
  if (v4)
  {
    v5 = [[NSMutableArray alloc] initWithCapacity:length];
    sequence = v4->_sequence;
    v4->_sequence = v5;

    v7 = [[NSMutableArray alloc] initWithCapacity:length];
    target = v4->_target;
    v4->_target = v7;

    v9 = [[NSMutableArray alloc] initWithCapacity:length];
    mask = v4->_mask;
    v4->_mask = v9;
  }

  return v4;
}

@end