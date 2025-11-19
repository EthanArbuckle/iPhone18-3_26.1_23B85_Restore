@interface _DPCMSWordRecord
- (BOOL)copyFromManagedObject:(id)a3;
- (BOOL)copyToManagedObject:(id)a3;
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

- (BOOL)copyToManagedObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v10.receiver = self, v10.super_class = _DPCMSWordRecord, [(_DPCMSSequenceRecord *)&v10 copyToManagedObject:v4]))
  {
    v5 = v4;
    v6 = [(_DPCMSWordRecord *)self plainFragment];
    [v5 setPlainFragment:v6];

    v7 = [(_DPCMSWordRecord *)self fragment];
    [v5 setFragment:v7];

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

- (BOOL)copyFromManagedObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v11.receiver = self, v11.super_class = _DPCMSWordRecord, [(_DPCMSSequenceRecord *)&v11 copyFromManagedObject:v4]))
  {
    v5 = v4;
    v6 = [v5 plainFragment];
    [(_DPCMSWordRecord *)self setPlainFragment:v6];

    v7 = [v5 fragment];
    [(_DPCMSWordRecord *)self setFragment:v7];

    -[_DPCMSWordRecord setFragmentPosition:](self, "setFragmentPosition:", [v5 fragmentPosition]);
    v8 = [v5 fragmentHashIndex];

    [(_DPCMSWordRecord *)self setFragmentHashIndex:v8];
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end