@interface _DPHCMSSequenceRecord
- (BOOL)copyFromManagedObject:(id)object;
- (BOOL)copyToManagedObject:(id)object;
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

- (BOOL)copyToManagedObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v8.receiver = self, v8.super_class = _DPHCMSSequenceRecord, [(_DPCMSSequenceRecord *)&v8 copyToManagedObject:objectCopy]))
  {
    v5 = objectCopy;
    [v5 setSequenceBitIndex:{-[_DPHCMSSequenceRecord sequenceBitIndex](self, "sequenceBitIndex")}];

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)copyFromManagedObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v7.receiver = self, v7.super_class = _DPHCMSSequenceRecord, [(_DPCMSSequenceRecord *)&v7 copyFromManagedObject:objectCopy]))
  {
    -[_DPHCMSSequenceRecord setSequenceBitIndex:](self, "setSequenceBitIndex:", [objectCopy sequenceBitIndex]);
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end