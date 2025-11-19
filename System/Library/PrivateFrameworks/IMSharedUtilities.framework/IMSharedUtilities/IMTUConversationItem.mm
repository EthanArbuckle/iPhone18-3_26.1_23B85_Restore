@interface IMTUConversationItem
- (IMTUConversationItem)initWithCoder:(id)a3;
- (IMTUConversationItem)initWithDictionary:(id)a3;
- (IMTUConversationItem)initWithSender:(id)a3 time:(id)a4 guid:(id)a5 messageSummaryInfo:(id)a6;
- (NSDictionary)messageSummaryInfo;
- (id)copyDictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IMTUConversationItem

- (IMTUConversationItem)initWithSender:(id)a3 time:(id)a4 guid:(id)a5 messageSummaryInfo:(id)a6
{
  v10 = a6;
  v15.receiver = self;
  v15.super_class = IMTUConversationItem;
  v11 = [(IMItem *)&v15 initWithSender:a3 time:a4 guid:a5 type:6];
  if (v11)
  {
    v12 = [v10 objectForKey:@"conversationAVMode"];
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

- (IMTUConversationItem)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = IMTUConversationItem;
  v5 = [(IMItem *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_flags = [v4 decodeInt64ForKey:@"flags"];
    v5->_avMode = [v4 decodeIntegerForKey:@"conversationAVMode"];
  }

  return v5;
}

- (IMTUConversationItem)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = IMTUConversationItem;
  v5 = [(IMItem *)&v10 initWithDictionary:v4];
  if (v5)
  {
    v6 = [v4 objectForKey:@"flags"];
    v5->_flags = [v6 unsignedLongLongValue];

    v7 = [v4 objectForKey:@"conversationAVMode"];
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

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = IMTUConversationItem;
  v4 = a3;
  [(IMItem *)&v5 encodeWithCoder:v4];
  [v4 encodeInt64:self->_flags forKey:{@"flags", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_avMode forKey:@"conversationAVMode"];
}

- (id)copyDictionaryRepresentation
{
  v8.receiver = self;
  v8.super_class = IMTUConversationItem;
  v3 = [(IMItem *)&v8 copyDictionaryRepresentation];
  v4 = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_flags];
  if (v5)
  {
    CFDictionarySetValue(v3, @"flags", v5);
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_avMode];
  if (v6)
  {
    CFDictionarySetValue(v3, @"conversationAVMode", v6);
  }

  objc_autoreleasePoolPop(v4);
  return v3;
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