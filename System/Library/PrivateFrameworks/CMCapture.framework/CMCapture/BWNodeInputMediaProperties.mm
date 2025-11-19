@interface BWNodeInputMediaProperties
- (BWVideoFormat)liveVideoFormat;
- (BWVideoFormat)resolvedVideoFormat;
- (void)_setOwningNodeInput:(id)a3 associatedAttachedMediaKey:(id)a4;
- (void)dealloc;
- (void)setLiveFormat:(id)a3;
- (void)setResolvedFormat:(id)a3;
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

- (void)_setOwningNodeInput:(id)a3 associatedAttachedMediaKey:(id)a4
{
  if (!a3)
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

  if (!a4)
  {
    v4 = MEMORY[0x1E695DF30];
    v5 = *MEMORY[0x1E695D940];
    v6 = @"Associated attached media key must not be nil";
LABEL_8:
    objc_exception_throw([v4 exceptionWithName:v5 reason:v6 userInfo:0]);
  }

  self->_owningNodeInput = a3;
  self->_associatedAttachedMediaKey = [a4 copy];
}

- (void)setResolvedFormat:(id)a3
{
  resolvedFormat = self->_resolvedFormat;
  if (resolvedFormat != a3)
  {

    self->_resolvedFormat = a3;
    v7 = [(BWNodeInput *)self->_owningNodeInput node];
    associatedAttachedMediaKey = self->_associatedAttachedMediaKey;
    owningNodeInput = self->_owningNodeInput;

    [(BWNode *)v7 didSelectFormat:a3 forInput:owningNodeInput forAttachedMediaKey:associatedAttachedMediaKey];
  }
}

- (void)setLiveFormat:(id)a3
{
  liveFormat = self->_liveFormat;
  if (liveFormat != a3)
  {

    self->_liveFormat = a3;
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