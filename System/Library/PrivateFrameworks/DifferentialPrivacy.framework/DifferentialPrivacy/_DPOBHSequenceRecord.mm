@interface _DPOBHSequenceRecord
- (BOOL)copyFromManagedObject:(id)a3;
- (BOOL)copyToManagedObject:(id)a3;
- (id)description;
- (id)jsonString;
@end

@implementation _DPOBHSequenceRecord

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = [&stru_2839671C8 mutableCopy];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 appendFormat:@"%@: { ", v6];

  sequenceBitPosition = self->_sequenceBitPosition;
  if (self->_sequenceBitValue)
  {
    v8 = @"+1";
  }

  else
  {
    v8 = @"-1";
  }

  [v4 appendFormat:@"sequenceBitPosition=%lld ; sequenceBitValue=%@ ; ", self->_sequenceBitPosition, v8];
  v12.receiver = self;
  v12.super_class = _DPOBHSequenceRecord;
  v9 = [(_DPOBHRecord *)&v12 description];
  [v4 appendFormat:@"%@ }", v9];

  v10 = [v4 copy];
  objc_autoreleasePoolPop(v3);

  return v10;
}

- (BOOL)copyToManagedObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v9.receiver = self, v9.super_class = _DPOBHSequenceRecord, [(_DPOBHRecord *)&v9 copyToManagedObject:v4]))
  {
    v5 = v4;
    v6 = [(_DPOBHSequenceRecord *)self plainSequence];
    [v5 setPlainSequence:v6];

    [v5 setSequenceBitPosition:{-[_DPOBHSequenceRecord sequenceBitPosition](self, "sequenceBitPosition")}];
    [v5 setSequenceBitValue:{-[_DPOBHSequenceRecord sequenceBitValue](self, "sequenceBitValue")}];

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)copyFromManagedObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v10.receiver = self, v10.super_class = _DPOBHSequenceRecord, [(_DPOBHRecord *)&v10 copyFromManagedObject:v4]))
  {
    v5 = v4;
    v6 = [v5 plainSequence];
    [(_DPOBHSequenceRecord *)self setPlainSequence:v6];

    -[_DPOBHSequenceRecord setSequenceBitPosition:](self, "setSequenceBitPosition:", [v5 sequenceBitPosition]);
    v7 = [v5 sequenceBitValue];

    [(_DPOBHSequenceRecord *)self setSequenceBitValue:v7];
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)jsonString
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(_DPOBHSequenceRecord *)self sequenceBitPosition];
  v5 = [(_DPOBHSequenceRecord *)self sequenceBitValue];
  v6 = @"-1";
  if (v5)
  {
    v6 = @"+1";
  }

  return [v3 stringWithFormat:@"%lld, %@", v4, v6];
}

@end