@interface IMMessageDescriptor
- (IMMessageDescriptor)initWithMessageBody:(id)body messageGUID:(id)d;
- (NSArray)messageParts;
@end

@implementation IMMessageDescriptor

- (IMMessageDescriptor)initWithMessageBody:(id)body messageGUID:(id)d
{
  bodyCopy = body;
  dCopy = d;
  v14.receiver = self;
  v14.super_class = IMMessageDescriptor;
  v8 = [(IMMessageDescriptor *)&v14 init];
  if (v8)
  {
    v9 = [bodyCopy copy];
    messageBody = v8->_messageBody;
    v8->_messageBody = v9;

    v11 = [dCopy copy];
    messageGUID = v8->_messageGUID;
    v8->_messageGUID = v11;
  }

  return v8;
}

- (NSArray)messageParts
{
  messageParts = self->_messageParts;
  if (!messageParts)
  {
    array = [MEMORY[0x1E695DF70] array];
    messageBody = self->_messageBody;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1A86C8C28;
    v10[3] = &unk_1E7826888;
    v11 = array;
    v6 = array;
    [(NSAttributedString *)messageBody __im_visitMessageParts:v10];
    v7 = [v6 copy];
    v8 = self->_messageParts;
    self->_messageParts = v7;

    messageParts = self->_messageParts;
  }

  return messageParts;
}

@end