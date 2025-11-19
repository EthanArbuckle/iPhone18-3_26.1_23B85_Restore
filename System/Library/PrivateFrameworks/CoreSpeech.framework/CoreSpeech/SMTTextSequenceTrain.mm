@interface SMTTextSequenceTrain
- (SMTTextSequenceTrain)initWithLength:(unint64_t)a3;
- (void)addWordWithInputId:(unint64_t)a3;
- (void)addWordWithInputId:(unint64_t)a3 target:(unint64_t)a4 mask:(unint64_t)a5;
@end

@implementation SMTTextSequenceTrain

- (void)addWordWithInputId:(unint64_t)a3 target:(unint64_t)a4 mask:(unint64_t)a5
{
  [(SMTTextSequenceTrain *)self addWordWithInputId:a3];
  target = self->_target;
  v9 = [NSNumber numberWithUnsignedLong:a4];
  [(NSMutableArray *)target addObject:v9];

  mask = self->_mask;
  v11 = [NSNumber numberWithUnsignedLong:a5];
  [(NSMutableArray *)mask addObject:v11];
}

- (void)addWordWithInputId:(unint64_t)a3
{
  sequence = self->_sequence;
  v4 = [NSNumber numberWithUnsignedLong:a3];
  [(NSMutableArray *)sequence addObject:v4];
}

- (SMTTextSequenceTrain)initWithLength:(unint64_t)a3
{
  v12.receiver = self;
  v12.super_class = SMTTextSequenceTrain;
  v4 = [(SMTTextSequenceTrain *)&v12 init];
  if (v4)
  {
    v5 = [[NSMutableArray alloc] initWithCapacity:a3];
    sequence = v4->_sequence;
    v4->_sequence = v5;

    v7 = [[NSMutableArray alloc] initWithCapacity:a3];
    target = v4->_target;
    v4->_target = v7;

    v9 = [[NSMutableArray alloc] initWithCapacity:a3];
    mask = v4->_mask;
    v4->_mask = v9;
  }

  return v4;
}

@end