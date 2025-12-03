@interface IMCollaborationNoticeTransmission
- (IMCollaborationNoticeTransmission)initWithCoder:(id)coder;
- (IMCollaborationNoticeTransmission)initWithEventData:(id)data eventType:(int64_t)type guidString:(id)string date:(id)date;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IMCollaborationNoticeTransmission

- (IMCollaborationNoticeTransmission)initWithEventData:(id)data eventType:(int64_t)type guidString:(id)string date:(id)date
{
  dataCopy = data;
  stringCopy = string;
  dateCopy = date;
  v17.receiver = self;
  v17.super_class = IMCollaborationNoticeTransmission;
  v14 = [(IMCollaborationNoticeTransmission *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_guidString, string);
    objc_storeStrong(&v15->_eventData, data);
    v15->_eventType = type;
    objc_storeStrong(&v15->_date, date);
  }

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  guidString = [(IMCollaborationNoticeTransmission *)self guidString];
  v6 = NSStringFromSelector(sel_guidString);
  [coderCopy encodeObject:guidString forKey:v6];

  eventData = [(IMCollaborationNoticeTransmission *)self eventData];
  v8 = NSStringFromSelector(sel_eventData);
  [coderCopy encodeObject:eventData forKey:v8];

  eventType = [(IMCollaborationNoticeTransmission *)self eventType];
  v10 = NSStringFromSelector(sel_eventType);
  [coderCopy encodeInt64:eventType forKey:v10];

  date = [(IMCollaborationNoticeTransmission *)self date];
  v11 = NSStringFromSelector(sel_date);
  [coderCopy encodeObject:date forKey:v11];
}

- (IMCollaborationNoticeTransmission)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = IMCollaborationNoticeTransmission;
  v5 = [(IMCollaborationNoticeTransmission *)&v20 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_guidString);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    guidString = v5->_guidString;
    v5->_guidString = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_eventData);
    v12 = [coderCopy decodeObjectOfClass:v10 forKey:v11];
    eventData = v5->_eventData;
    v5->_eventData = v12;

    v14 = NSStringFromSelector(sel_eventType);
    v5->_eventType = [coderCopy decodeInt64ForKey:v14];

    v15 = objc_opt_class();
    v16 = NSStringFromSelector(sel_date);
    v17 = [coderCopy decodeObjectOfClass:v15 forKey:v16];
    date = v5->_date;
    v5->_date = v17;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  eventData = [(IMCollaborationNoticeTransmission *)self eventData];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IMCollaborationNoticeTransmission eventType](self, "eventType")}];
  guidString = [(IMCollaborationNoticeTransmission *)self guidString];
  date = [(IMCollaborationNoticeTransmission *)self date];
  v10 = [v3 stringWithFormat:@"<%@ %p event = %@, type = %@, guidString: %@, date: %@", v5, self, eventData, v7, guidString, date];

  return v10;
}

@end