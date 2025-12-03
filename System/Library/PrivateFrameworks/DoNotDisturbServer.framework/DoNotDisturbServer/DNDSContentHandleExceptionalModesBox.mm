@interface DNDSContentHandleExceptionalModesBox
- (DNDSContentHandleExceptionalModesBox)initWithContactHandle:(id)handle allowed:(id)allowed silenced:(id)silenced;
@end

@implementation DNDSContentHandleExceptionalModesBox

- (DNDSContentHandleExceptionalModesBox)initWithContactHandle:(id)handle allowed:(id)allowed silenced:(id)silenced
{
  handleCopy = handle;
  allowedCopy = allowed;
  silencedCopy = silenced;
  v19.receiver = self;
  v19.super_class = DNDSContentHandleExceptionalModesBox;
  v11 = [(DNDSContentHandleExceptionalModesBox *)&v19 init];
  if (v11)
  {
    v12 = [handleCopy copy];
    contactHandle = v11->_contactHandle;
    v11->_contactHandle = v12;

    v14 = [allowedCopy copy];
    allowed = v11->_allowed;
    v11->_allowed = v14;

    v16 = [silencedCopy copy];
    silenced = v11->_silenced;
    v11->_silenced = v16;
  }

  return v11;
}

@end