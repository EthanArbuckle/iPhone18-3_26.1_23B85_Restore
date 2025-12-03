@interface IMMessageHistoryMessage
- (IMMessageHistoryMessage)initWithCoder:(id)coder;
- (IMMessageHistoryMessage)initWithGUID:(id)d date:(id)date messagePartCount:(int64_t)count;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IMMessageHistoryMessage

- (IMMessageHistoryMessage)initWithGUID:(id)d date:(id)date messagePartCount:(int64_t)count
{
  dCopy = d;
  dateCopy = date;
  v14.receiver = self;
  v14.super_class = IMMessageHistoryMessage;
  v10 = [(IMMessageHistoryMessage *)&v14 init];
  if (v10)
  {
    v11 = [dCopy copy];
    guid = v10->_guid;
    v10->_guid = v11;

    objc_storeStrong(&v10->_date, date);
    v10->_messagePartCount = count;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  guid = self->_guid;
  date = self->_date;
  messagePartCount = self->_messagePartCount;

  return [v4 initWithGUID:guid date:date messagePartCount:messagePartCount];
}

- (void)encodeWithCoder:(id)coder
{
  guid = self->_guid;
  coderCopy = coder;
  [coderCopy encodeObject:guid forKey:@"guid"];
  [coderCopy encodeObject:self->_date forKey:@"date"];
  [coderCopy encodeInteger:self->_messagePartCount forKey:@"messagePartCount"];
}

- (IMMessageHistoryMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"guid"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
  v7 = [coderCopy decodeIntegerForKey:@"messagePartCount"];

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
    selfCopy = 0;
  }

  else
  {
    self = [(IMMessageHistoryMessage *)self initWithGUID:v5 date:v6 messagePartCount:v7];
    selfCopy = self;
  }

  return selfCopy;
}

@end