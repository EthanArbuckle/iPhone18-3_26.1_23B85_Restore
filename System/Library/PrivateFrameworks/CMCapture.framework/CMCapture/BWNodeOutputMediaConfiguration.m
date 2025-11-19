@interface BWNodeOutputMediaConfiguration
- (BOOL)isDrivenByInputWithIndex:(unint64_t)a3;
- (BWNodeOutputMediaConfiguration)init;
- (NSArray)indexesOfInputsWhichDrivesThisOutput;
- (int)indexOfInputWhichDrivesThisOutput;
- (void)_setAssociatedAttachedMediaKey:(id)a3;
- (void)dealloc;
- (void)setIndexOfInputWhichDrivesThisOutput:(int)a3;
- (void)setIndexesOfInputsWhichDrivesThisOutput:(id)a3;
@end

@implementation BWNodeOutputMediaConfiguration

- (BWNodeOutputMediaConfiguration)init
{
  v3.receiver = self;
  v3.super_class = BWNodeOutputMediaConfiguration;
  result = [(BWNodeOutputMediaConfiguration *)&v3 init];
  if (result)
  {
    result->_passthroughMode = 0;
    result->_performsAttachedMediaRemapping = 0;
  }

  return result;
}

- (int)indexOfInputWhichDrivesThisOutput
{
  v3 = [(NSArray *)self->_indexesOfInputsWhichDrivesThisOutput count];
  if (v3)
  {
    v4 = [(NSArray *)self->_indexesOfInputsWhichDrivesThisOutput lastObject];

    LODWORD(v3) = [v4 intValue];
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWNodeOutputMediaConfiguration;
  [(BWNodeOutputMediaConfiguration *)&v3 dealloc];
}

- (void)_setAssociatedAttachedMediaKey:(id)a3
{
  if (!a3)
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    v9 = @"Associated attached media key must not be nil";
    goto LABEL_8;
  }

  if (self->_associatedAttachedMediaKey)
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    v9 = @"Associated attached media key can only be set once";
LABEL_8:
    objc_exception_throw([v7 exceptionWithName:v8 reason:v9 userInfo:0]);
  }

  associatedAttachedMediaKey = [a3 copy];
  self->_associatedAttachedMediaKey = associatedAttachedMediaKey;
  attachedMediaKeyOfInputWhichDrivesThisOutput = self->_attachedMediaKeyOfInputWhichDrivesThisOutput;
  if (!attachedMediaKeyOfInputWhichDrivesThisOutput)
  {
    attachedMediaKeyOfInputWhichDrivesThisOutput = [a3 copy];
    self->_attachedMediaKeyOfInputWhichDrivesThisOutput = attachedMediaKeyOfInputWhichDrivesThisOutput;
    associatedAttachedMediaKey = self->_associatedAttachedMediaKey;
  }

  self->_performsAttachedMediaRemapping = ![(NSString *)associatedAttachedMediaKey isEqualToString:attachedMediaKeyOfInputWhichDrivesThisOutput];
}

- (void)setIndexOfInputWhichDrivesThisOutput:(int)a3
{
  v3 = *&a3;

  self->_indexesOfInputsWhichDrivesThisOutput = 0;
  if (v3)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:v3];
    self->_indexesOfInputsWhichDrivesThisOutput = [MEMORY[0x1E695DEC8] arrayWithObjects:&v5 count:1];
  }
}

- (void)setIndexesOfInputsWhichDrivesThisOutput:(id)a3
{
  self->_indexesOfInputsWhichDrivesThisOutput = 0;
  if (a3 && ([a3 count] == 1 && !objc_msgSend(objc_msgSend(a3, "objectAtIndexedSubscript:", 0), "isEqual:", &unk_1F2244710) || objc_msgSend(a3, "count") >= 2))
  {
    self->_indexesOfInputsWhichDrivesThisOutput = a3;
  }
}

- (NSArray)indexesOfInputsWhichDrivesThisOutput
{
  v2 = self->_indexesOfInputsWhichDrivesThisOutput;

  return v2;
}

- (BOOL)isDrivenByInputWithIndex:(unint64_t)a3
{
  indexesOfInputsWhichDrivesThisOutput = self->_indexesOfInputsWhichDrivesThisOutput;
  if (!indexesOfInputsWhichDrivesThisOutput)
  {
    return a3 == 0;
  }

  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];

  return [(NSArray *)indexesOfInputsWhichDrivesThisOutput containsObject:v4];
}

@end