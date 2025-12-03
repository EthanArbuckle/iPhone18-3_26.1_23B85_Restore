@interface BWNodeInputMediaProperties
- (BWVideoFormat)liveVideoFormat;
- (BWVideoFormat)resolvedVideoFormat;
- (void)_setOwningNodeInput:(id)input associatedAttachedMediaKey:(id)key;
- (void)dealloc;
- (void)setLiveFormat:(id)format;
- (void)setResolvedFormat:(id)format;
@end

@implementation BWNodeInputMediaProperties

- (BWVideoFormat)resolvedVideoFormat
{
  if ([(BWNodeInput *)self->_owningNodeInput mediaTypeIsVideo])
  {
    return self->_resolvedFormat;
  }

  else
  {
    return 0;
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWNodeInputMediaProperties;
  [(BWNodeInputMediaProperties *)&v3 dealloc];
}

- (void)_setOwningNodeInput:(id)input associatedAttachedMediaKey:(id)key
{
  if (!input)
  {
    v4 = MEMORY[0x1E695DF30];
    v5 = *MEMORY[0x1E695D920];
    v6 = @"Owning BWNodeInput must not be nil";
    goto LABEL_8;
  }

  if (self->_owningNodeInput)
  {
    v4 = MEMORY[0x1E695DF30];
    v5 = *MEMORY[0x1E695D920];
    v6 = @"Can only be owned by one BWNodeInput";
    goto LABEL_8;
  }

  if (!key)
  {
    v4 = MEMORY[0x1E695DF30];
    v5 = *MEMORY[0x1E695D940];
    v6 = @"Associated attached media key must not be nil";
LABEL_8:
    objc_exception_throw([v4 exceptionWithName:v5 reason:v6 userInfo:0]);
  }

  self->_owningNodeInput = input;
  self->_associatedAttachedMediaKey = [key copy];
}

- (void)setResolvedFormat:(id)format
{
  resolvedFormat = self->_resolvedFormat;
  if (resolvedFormat != format)
  {

    self->_resolvedFormat = format;
    node = [(BWNodeInput *)self->_owningNodeInput node];
    associatedAttachedMediaKey = self->_associatedAttachedMediaKey;
    owningNodeInput = self->_owningNodeInput;

    [(BWNode *)node didSelectFormat:format forInput:owningNodeInput forAttachedMediaKey:associatedAttachedMediaKey];
  }
}

- (void)setLiveFormat:(id)format
{
  liveFormat = self->_liveFormat;
  if (liveFormat != format)
  {

    self->_liveFormat = format;
  }
}

- (BWVideoFormat)liveVideoFormat
{
  if ([(BWNodeInput *)self->_owningNodeInput mediaTypeIsVideo])
  {
    return self->_liveFormat;
  }

  else
  {
    return 0;
  }
}

@end