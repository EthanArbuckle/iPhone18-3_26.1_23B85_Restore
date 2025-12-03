@interface IMTUConversationItem
- (IMTUConversationItem)initWithCoder:(id)coder;
- (IMTUConversationItem)initWithDictionary:(id)dictionary;
- (IMTUConversationItem)initWithSender:(id)sender time:(id)time guid:(id)guid messageSummaryInfo:(id)info;
- (NSDictionary)messageSummaryInfo;
- (id)copyDictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IMTUConversationItem

- (IMTUConversationItem)initWithSender:(id)sender time:(id)time guid:(id)guid messageSummaryInfo:(id)info
{
  infoCopy = info;
  v15.receiver = self;
  v15.super_class = IMTUConversationItem;
  v11 = [(IMItem *)&v15 initWithSender:sender time:time guid:guid type:6];
  if (v11)
  {
    v12 = [infoCopy objectForKey:@"conversationAVMode"];
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = &unk_1F1BFA550;
    }

    v11->_avMode = [v13 unsignedIntegerValue];
  }

  return v11;
}

- (IMTUConversationItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = IMTUConversationItem;
  v5 = [(IMItem *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_flags = [coderCopy decodeInt64ForKey:@"flags"];
    v5->_avMode = [coderCopy decodeIntegerForKey:@"conversationAVMode"];
  }

  return v5;
}

- (IMTUConversationItem)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = IMTUConversationItem;
  v5 = [(IMItem *)&v10 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"flags"];
    v5->_flags = [v6 unsignedLongLongValue];

    v7 = [dictionaryCopy objectForKey:@"conversationAVMode"];
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = &unk_1F1BFA550;
    }

    v5->_avMode = [v8 unsignedIntegerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = IMTUConversationItem;
  coderCopy = coder;
  [(IMItem *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt64:self->_flags forKey:{@"flags", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_avMode forKey:@"conversationAVMode"];
}

- (id)copyDictionaryRepresentation
{
  v8.receiver = self;
  v8.super_class = IMTUConversationItem;
  copyDictionaryRepresentation = [(IMItem *)&v8 copyDictionaryRepresentation];
  v4 = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_flags];
  if (v5)
  {
    CFDictionarySetValue(copyDictionaryRepresentation, @"flags", v5);
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_avMode];
  if (v6)
  {
    CFDictionarySetValue(copyDictionaryRepresentation, @"conversationAVMode", v6);
  }

  objc_autoreleasePoolPop(v4);
  return copyDictionaryRepresentation;
}

- (NSDictionary)messageSummaryInfo
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"conversationAVMode";
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[IMTUConversationItem avMode](self, "avMode")}];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

@end