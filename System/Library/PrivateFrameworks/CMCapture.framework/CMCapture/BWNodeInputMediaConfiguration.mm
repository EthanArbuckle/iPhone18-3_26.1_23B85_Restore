@interface BWNodeInputMediaConfiguration
- (BWNodeInputMediaConfiguration)init;
- (void)_setAssociatedAttachedMediaKey:(id)key;
- (void)dealloc;
@end

@implementation BWNodeInputMediaConfiguration

- (BWNodeInputMediaConfiguration)init
{
  v3.receiver = self;
  v3.super_class = BWNodeInputMediaConfiguration;
  result = [(BWNodeInputMediaConfiguration *)&v3 init];
  if (result)
  {
    result->_passthroughMode = 0;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWNodeInputMediaConfiguration;
  [(BWNodeInputMediaConfiguration *)&v3 dealloc];
}

- (void)_setAssociatedAttachedMediaKey:(id)key
{
  if (!key)
  {
    v3 = MEMORY[0x1E695DF30];
    v4 = *MEMORY[0x1E695D940];
    v5 = @"Associated attached media key must not be nil";
    goto LABEL_6;
  }

  if (self->_associatedAttachedMediaKey)
  {
    v3 = MEMORY[0x1E695DF30];
    v4 = *MEMORY[0x1E695D940];
    v5 = @"Associated attached media key can only be set once";
LABEL_6:
    objc_exception_throw([v3 exceptionWithName:v4 reason:v5 userInfo:0]);
  }

  self->_associatedAttachedMediaKey = [key copy];
}

@end