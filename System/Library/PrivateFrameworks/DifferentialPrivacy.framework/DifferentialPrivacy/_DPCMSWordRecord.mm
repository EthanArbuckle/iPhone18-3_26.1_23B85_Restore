@interface _DPCMSWordRecord
- (BOOL)copyFromManagedObject:(id)object;
- (BOOL)copyToManagedObject:(id)object;
- (id)description;
@end

@implementation _DPCMSWordRecord

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = [&stru_2839671C8 mutableCopy];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 appendFormat:@"%@: { ", v6];

  fragmentPosition = self->_fragmentPosition;
  fragmentHashIndex = self->_fragmentHashIndex;
  v9 = [(NSData *)self->_fragment hash];
  v13.receiver = self;
  v13.super_class = _DPCMSWordRecord;
  v10 = [(_DPCMSSequenceRecord *)&v13 description];
  [v4 appendFormat:@"fragmentPosition=%d ; fragmentHashIndex=%ld ; fragment=%lu %@ }", fragmentPosition, fragmentHashIndex, v9, v10];

  v11 = [v4 copy];
  objc_autoreleasePoolPop(v3);

  return v11;
}

- (BOOL)copyToManagedObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v10.receiver = self, v10.super_class = _DPCMSWordRecord, [(_DPCMSSequenceRecord *)&v10 copyToManagedObject:objectCopy]))
  {
    v5 = objectCopy;
    plainFragment = [(_DPCMSWordRecord *)self plainFragment];
    [v5 setPlainFragment:plainFragment];

    fragment = [(_DPCMSWordRecord *)self fragment];
    [v5 setFragment:fragment];

    [v5 setFragmentPosition:{-[_DPCMSWordRecord fragmentPosition](self, "fragmentPosition")}];
    [v5 setFragmentHashIndex:{-[_DPCMSWordRecord fragmentHashIndex](self, "fragmentHashIndex")}];

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
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v11.receiver = self, v11.super_class = _DPCMSWordRecord, [(_DPCMSSequenceRecord *)&v11 copyFromManagedObject:objectCopy]))
  {
    v5 = objectCopy;
    plainFragment = [v5 plainFragment];
    [(_DPCMSWordRecord *)self setPlainFragment:plainFragment];

    fragment = [v5 fragment];
    [(_DPCMSWordRecord *)self setFragment:fragment];

    -[_DPCMSWordRecord setFragmentPosition:](self, "setFragmentPosition:", [v5 fragmentPosition]);
    fragmentHashIndex = [v5 fragmentHashIndex];

    [(_DPCMSWordRecord *)self setFragmentHashIndex:fragmentHashIndex];
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end