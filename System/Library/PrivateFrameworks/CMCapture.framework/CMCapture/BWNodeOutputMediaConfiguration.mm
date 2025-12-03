@interface BWNodeOutputMediaConfiguration
- (BOOL)isDrivenByInputWithIndex:(unint64_t)index;
- (BWNodeOutputMediaConfiguration)init;
- (NSArray)indexesOfInputsWhichDrivesThisOutput;
- (int)indexOfInputWhichDrivesThisOutput;
- (void)_setAssociatedAttachedMediaKey:(id)key;
- (void)dealloc;
- (void)setIndexOfInputWhichDrivesThisOutput:(int)output;
- (void)setIndexesOfInputsWhichDrivesThisOutput:(id)output;
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
    lastObject = [(NSArray *)self->_indexesOfInputsWhichDrivesThisOutput lastObject];

    LODWORD(v3) = [lastObject intValue];
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWNodeOutputMediaConfiguration;
  [(BWNodeOutputMediaConfiguration *)&v3 dealloc];
}

- (void)_setAssociatedAttachedMediaKey:(id)key
{
  if (!key)
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

  associatedAttachedMediaKey = [key copy];
  self->_associatedAttachedMediaKey = associatedAttachedMediaKey;
  attachedMediaKeyOfInputWhichDrivesThisOutput = self->_attachedMediaKeyOfInputWhichDrivesThisOutput;
  if (!attachedMediaKeyOfInputWhichDrivesThisOutput)
  {
    attachedMediaKeyOfInputWhichDrivesThisOutput = [key copy];
    self->_attachedMediaKeyOfInputWhichDrivesThisOutput = attachedMediaKeyOfInputWhichDrivesThisOutput;
    associatedAttachedMediaKey = self->_associatedAttachedMediaKey;
  }

  self->_performsAttachedMediaRemapping = ![(NSString *)associatedAttachedMediaKey isEqualToString:attachedMediaKeyOfInputWhichDrivesThisOutput];
}

- (void)setIndexOfInputWhichDrivesThisOutput:(int)output
{
  v3 = *&output;

  self->_indexesOfInputsWhichDrivesThisOutput = 0;
  if (v3)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:v3];
    self->_indexesOfInputsWhichDrivesThisOutput = [MEMORY[0x1E695DEC8] arrayWithObjects:&v5 count:1];
  }
}

- (void)setIndexesOfInputsWhichDrivesThisOutput:(id)output
{
  self->_indexesOfInputsWhichDrivesThisOutput = 0;
  if (output && ([output count] == 1 && !objc_msgSend(objc_msgSend(output, "objectAtIndexedSubscript:", 0), "isEqual:", &unk_1F2244710) || objc_msgSend(output, "count") >= 2))
  {
    self->_indexesOfInputsWhichDrivesThisOutput = output;
  }
}

- (NSArray)indexesOfInputsWhichDrivesThisOutput
{
  v2 = self->_indexesOfInputsWhichDrivesThisOutput;

  return v2;
}

- (BOOL)isDrivenByInputWithIndex:(unint64_t)index
{
  indexesOfInputsWhichDrivesThisOutput = self->_indexesOfInputsWhichDrivesThisOutput;
  if (!indexesOfInputsWhichDrivesThisOutput)
  {
    return index == 0;
  }

  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];

  return [(NSArray *)indexesOfInputsWhichDrivesThisOutput containsObject:v4];
}

@end