@interface _DPHCMSSequenceRecord
- (BOOL)copyFromManagedObject:(id)a3;
- (BOOL)copyToManagedObject:(id)a3;
- (id)description;
@end

@implementation _DPHCMSSequenceRecord

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v10.receiver = self;
  v10.super_class = _DPHCMSSequenceRecord;
  sequenceBitIndex = self->_sequenceBitIndex;
  v7 = [(_DPCMSSequenceRecord *)&v10 description];
  v8 = [v3 stringWithFormat:@"%@: { sequenceBitIndex=%d  %@ }", v5, sequenceBitIndex, v7];;

  return v8;
}

- (BOOL)copyToManagedObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v8.receiver = self, v8.super_class = _DPHCMSSequenceRecord, [(_DPCMSSequenceRecord *)&v8 copyToManagedObject:v4]))
  {
    v5 = v4;
    [v5 setSequenceBitIndex:{-[_DPHCMSSequenceRecord sequenceBitIndex](self, "sequenceBitIndex")}];

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)copyFromManagedObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v7.receiver = self, v7.super_class = _DPHCMSSequenceRecord, [(_DPCMSSequenceRecord *)&v7 copyFromManagedObject:v4]))
  {
    -[_DPHCMSSequenceRecord setSequenceBitIndex:](self, "setSequenceBitIndex:", [v4 sequenceBitIndex]);
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end