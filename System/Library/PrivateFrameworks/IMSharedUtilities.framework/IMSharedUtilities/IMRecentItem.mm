@interface IMRecentItem
- (BOOL)isEqual:(id)equal;
- (IMRecentItem)initWithGUID:(id)d data:(id)data messageItemInfo:(id)info;
- (id)asJSONObject;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation IMRecentItem

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = IMRecentItem;
  [(IMRecentItem *)&v3 dealloc];
}

- (IMRecentItem)initWithGUID:(id)d data:(id)data messageItemInfo:(id)info
{
  v12.receiver = self;
  v12.super_class = IMRecentItem;
  v8 = [(IMRecentItem *)&v12 init];
  if (v8)
  {
    v8->_payloadData = [data copy];
    v8->_messageItemInfo = [info copy];
    [objc_msgSend(MEMORY[0x1E695DF00] "date")];
    v8->_timestamp = [MEMORY[0x1E696AD98] numberWithInt:v9];
    if (d)
    {
      dCopy = d;
    }

    else
    {
      dCopy = [MEMORY[0x1E696AEC0] stringGUID];
    }

    v8->_GUID = [dCopy copy];
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  gUID = [(IMRecentItem *)self GUID];
  gUID2 = [equal GUID];

  return [(NSString *)gUID isEqualToString:gUID2];
}

- (unint64_t)hash
{
  gUID = [(IMRecentItem *)self GUID];

  return [(NSString *)gUID hash];
}

- (id)asJSONObject
{
  v5 = *MEMORY[0x1E69E9840];
  v3[0] = @"guid";
  v3[1] = @"timestamp";
  v4 = vextq_s8(*&self->_timestamp, *&self->_timestamp, 8uLL);
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:&v4 forKeys:v3 count:2];
}

@end