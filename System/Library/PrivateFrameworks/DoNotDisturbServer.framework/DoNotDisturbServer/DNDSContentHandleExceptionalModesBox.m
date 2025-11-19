@interface DNDSContentHandleExceptionalModesBox
- (DNDSContentHandleExceptionalModesBox)initWithContactHandle:(id)a3 allowed:(id)a4 silenced:(id)a5;
@end

@implementation DNDSContentHandleExceptionalModesBox

- (DNDSContentHandleExceptionalModesBox)initWithContactHandle:(id)a3 allowed:(id)a4 silenced:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = DNDSContentHandleExceptionalModesBox;
  v11 = [(DNDSContentHandleExceptionalModesBox *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    contactHandle = v11->_contactHandle;
    v11->_contactHandle = v12;

    v14 = [v9 copy];
    allowed = v11->_allowed;
    v11->_allowed = v14;

    v16 = [v10 copy];
    silenced = v11->_silenced;
    v11->_silenced = v16;
  }

  return v11;
}

@end