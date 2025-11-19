@interface IMCollaborationNoticeTransmission
- (IMCollaborationNoticeTransmission)initWithCoder:(id)a3;
- (IMCollaborationNoticeTransmission)initWithEventData:(id)a3 eventType:(int64_t)a4 guidString:(id)a5 date:(id)a6;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IMCollaborationNoticeTransmission

- (IMCollaborationNoticeTransmission)initWithEventData:(id)a3 eventType:(int64_t)a4 guidString:(id)a5 date:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = IMCollaborationNoticeTransmission;
  v14 = [(IMCollaborationNoticeTransmission *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_guidString, a5);
    objc_storeStrong(&v15->_eventData, a3);
    v15->_eventType = a4;
    objc_storeStrong(&v15->_date, a6);
  }

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(IMCollaborationNoticeTransmission *)self guidString];
  v6 = NSStringFromSelector(sel_guidString);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(IMCollaborationNoticeTransmission *)self eventData];
  v8 = NSStringFromSelector(sel_eventData);
  [v4 encodeObject:v7 forKey:v8];

  v9 = [(IMCollaborationNoticeTransmission *)self eventType];
  v10 = NSStringFromSelector(sel_eventType);
  [v4 encodeInt64:v9 forKey:v10];

  v12 = [(IMCollaborationNoticeTransmission *)self date];
  v11 = NSStringFromSelector(sel_date);
  [v4 encodeObject:v12 forKey:v11];
}

- (IMCollaborationNoticeTransmission)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = IMCollaborationNoticeTransmission;
  v5 = [(IMCollaborationNoticeTransmission *)&v20 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_guidString);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    guidString = v5->_guidString;
    v5->_guidString = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_eventData);
    v12 = [v4 decodeObjectOfClass:v10 forKey:v11];
    eventData = v5->_eventData;
    v5->_eventData = v12;

    v14 = NSStringFromSelector(sel_eventType);
    v5->_eventType = [v4 decodeInt64ForKey:v14];

    v15 = objc_opt_class();
    v16 = NSStringFromSelector(sel_date);
    v17 = [v4 decodeObjectOfClass:v15 forKey:v16];
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
  v6 = [(IMCollaborationNoticeTransmission *)self eventData];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IMCollaborationNoticeTransmission eventType](self, "eventType")}];
  v8 = [(IMCollaborationNoticeTransmission *)self guidString];
  v9 = [(IMCollaborationNoticeTransmission *)self date];
  v10 = [v3 stringWithFormat:@"<%@ %p event = %@, type = %@, guidString: %@, date: %@", v5, self, v6, v7, v8, v9];

  return v10;
}

@end