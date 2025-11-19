@interface PARReply
- (NSArray)rawResponse;
- (PARReply)initWithCoder:(id)a3;
- (PARTask)task;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PARReply

- (PARTask)task
{
  WeakRetained = objc_loadWeakRetained(&self->_task);

  return WeakRetained;
}

- (NSArray)rawResponse
{
  rawResponse = self->_rawResponse;
  if (rawResponse)
  {
    v3 = rawResponse;
  }

  else
  {
    data = self->_data;
    if (data)
    {
      v3 = [MEMORY[0x1E696ACB0] JSONObjectWithData:data options:1 error:0];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  httpRequest = self->_httpRequest;
  v5 = a3;
  [v5 encodeObject:httpRequest forKey:@"_httpRequest"];
  [v5 encodeObject:self->_httpResponse forKey:@"_httpResponse"];
  [v5 encodeObject:self->_data forKey:@"_data"];
  [v5 encodeDouble:@"_scale" forKey:self->_scale];
  [v5 encodeInt32:self->_replyType forKey:@"_replyType"];
}

- (PARReply)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PARReply;
  v5 = [(PARReply *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_httpRequest"];
    httpRequest = v5->_httpRequest;
    v5->_httpRequest = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_httpResponse"];
    httpResponse = v5->_httpResponse;
    v5->_httpResponse = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_data"];
    data = v5->_data;
    v5->_data = v10;

    [v4 decodeDoubleForKey:@"_scale"];
    v5->_scale = v12;
    v5->_replyType = [v4 decodeInt32ForKey:@"_replyType"];
  }

  return v5;
}

@end