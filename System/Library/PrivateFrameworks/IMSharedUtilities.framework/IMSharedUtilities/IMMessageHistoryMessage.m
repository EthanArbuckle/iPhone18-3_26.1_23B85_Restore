@interface IMMessageHistoryMessage
- (IMMessageHistoryMessage)initWithCoder:(id)a3;
- (IMMessageHistoryMessage)initWithGUID:(id)a3 date:(id)a4 messagePartCount:(int64_t)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IMMessageHistoryMessage

- (IMMessageHistoryMessage)initWithGUID:(id)a3 date:(id)a4 messagePartCount:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v14.receiver = self;
  v14.super_class = IMMessageHistoryMessage;
  v10 = [(IMMessageHistoryMessage *)&v14 init];
  if (v10)
  {
    v11 = [v8 copy];
    guid = v10->_guid;
    v10->_guid = v11;

    objc_storeStrong(&v10->_date, a4);
    v10->_messagePartCount = a5;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  guid = self->_guid;
  date = self->_date;
  messagePartCount = self->_messagePartCount;

  return [v4 initWithGUID:guid date:date messagePartCount:messagePartCount];
}

- (void)encodeWithCoder:(id)a3
{
  guid = self->_guid;
  v5 = a3;
  [v5 encodeObject:guid forKey:@"guid"];
  [v5 encodeObject:self->_date forKey:@"date"];
  [v5 encodeInteger:self->_messagePartCount forKey:@"messagePartCount"];
}

- (IMMessageHistoryMessage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"guid"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
  v7 = [v4 decodeIntegerForKey:@"messagePartCount"];

  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    self = [(IMMessageHistoryMessage *)self initWithGUID:v5 date:v6 messagePartCount:v7];
    v9 = self;
  }

  return v9;
}

@end