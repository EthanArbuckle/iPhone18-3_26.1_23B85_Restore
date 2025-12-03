@interface _DPCMSSequenceRecord
- (BOOL)copyFromManagedObject:(id)object;
- (BOOL)copyToManagedObject:(id)object;
- (id)description;
@end

@implementation _DPCMSSequenceRecord

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = [&stru_2839671C8 mutableCopy];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 appendFormat:@"%@: { ", v6];

  sequenceHashIndex = self->_sequenceHashIndex;
  v8 = [(NSData *)self->_sequence hash];
  v12.receiver = self;
  v12.super_class = _DPCMSSequenceRecord;
  v9 = [(_DPCMSRecord *)&v12 description];
  [v4 appendFormat:@"sequenceHashIndex=%d ; sequence=%ld  ; %@ }", sequenceHashIndex, v8, v9];

  v10 = [v4 copy];
  objc_autoreleasePoolPop(v3);

  return v10;
}

- (BOOL)copyToManagedObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v10.receiver = self, v10.super_class = _DPCMSSequenceRecord, [(_DPCMSRecord *)&v10 copyToManagedObject:objectCopy]))
  {
    v5 = objectCopy;
    plainSequence = [(_DPCMSSequenceRecord *)self plainSequence];
    [v5 setPlainSequence:plainSequence];

    sequence = [(_DPCMSSequenceRecord *)self sequence];
    [v5 setSequence:sequence];

    [v5 setSequenceHashIndex:{-[_DPCMSSequenceRecord sequenceHashIndex](self, "sequenceHashIndex")}];
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)copyFromManagedObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v11.receiver = self, v11.super_class = _DPCMSSequenceRecord, [(_DPCMSRecord *)&v11 copyFromManagedObject:objectCopy]))
  {
    v5 = objectCopy;
    plainSequence = [v5 plainSequence];
    [(_DPCMSSequenceRecord *)self setPlainSequence:plainSequence];

    sequence = [v5 sequence];
    [(_DPCMSSequenceRecord *)self setSequence:sequence];

    sequenceHashIndex = [v5 sequenceHashIndex];
    [(_DPCMSSequenceRecord *)self setSequenceHashIndex:sequenceHashIndex];
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end