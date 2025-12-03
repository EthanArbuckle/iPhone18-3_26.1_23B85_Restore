@interface _DPHCMSWordRecord
- (BOOL)copyFromManagedObject:(id)object;
- (BOOL)copyToManagedObject:(id)object;
- (id)description;
@end

@implementation _DPHCMSWordRecord

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v11.receiver = self;
  v11.super_class = _DPHCMSWordRecord;
  fragmentBitIndex = self->_fragmentBitIndex;
  sequenceBitIndex = self->_sequenceBitIndex;
  v8 = [(_DPCMSWordRecord *)&v11 description];
  v9 = [v3 stringWithFormat:@"%@: { fragmentBitIndex=%d  sequenceBitIndex=%d ; %@ }", v5, fragmentBitIndex, sequenceBitIndex, v8];;

  return v9;
}

- (BOOL)copyToManagedObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v8.receiver = self, v8.super_class = _DPHCMSWordRecord, [(_DPCMSWordRecord *)&v8 copyToManagedObject:objectCopy]))
  {
    v5 = objectCopy;
    [v5 setFragmentBitIndex:{-[_DPHCMSWordRecord fragmentBitIndex](self, "fragmentBitIndex")}];
    [v5 setSequenceBitIndex:{-[_DPHCMSWordRecord sequenceBitIndex](self, "sequenceBitIndex")}];

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
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v9.receiver = self, v9.super_class = _DPHCMSWordRecord, [(_DPCMSWordRecord *)&v9 copyFromManagedObject:objectCopy]))
  {
    v5 = objectCopy;
    -[_DPHCMSWordRecord setFragmentBitIndex:](self, "setFragmentBitIndex:", [v5 fragmentBitIndex]);
    sequenceBitIndex = [v5 sequenceBitIndex];

    [(_DPHCMSWordRecord *)self setSequenceBitIndex:sequenceBitIndex];
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end