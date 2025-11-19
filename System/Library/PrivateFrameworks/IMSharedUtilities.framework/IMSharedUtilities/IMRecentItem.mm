@interface IMRecentItem
- (BOOL)isEqual:(id)a3;
- (IMRecentItem)initWithGUID:(id)a3 data:(id)a4 messageItemInfo:(id)a5;
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

- (IMRecentItem)initWithGUID:(id)a3 data:(id)a4 messageItemInfo:(id)a5
{
  v12.receiver = self;
  v12.super_class = IMRecentItem;
  v8 = [(IMRecentItem *)&v12 init];
  if (v8)
  {
    v8->_payloadData = [a4 copy];
    v8->_messageItemInfo = [a5 copy];
    [objc_msgSend(MEMORY[0x1E695DF00] "date")];
    v8->_timestamp = [MEMORY[0x1E696AD98] numberWithInt:v9];
    if (a3)
    {
      v10 = a3;
    }

    else
    {
      v10 = [MEMORY[0x1E696AEC0] stringGUID];
    }

    v8->_GUID = [v10 copy];
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [(IMRecentItem *)self GUID];
  v6 = [a3 GUID];

  return [(NSString *)v5 isEqualToString:v6];
}

- (unint64_t)hash
{
  v2 = [(IMRecentItem *)self GUID];

  return [(NSString *)v2 hash];
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