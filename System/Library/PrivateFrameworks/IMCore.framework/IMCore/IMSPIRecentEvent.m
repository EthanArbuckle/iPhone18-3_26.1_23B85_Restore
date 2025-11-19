@interface IMSPIRecentEvent
- (IMSPIRecentEvent)initWithHandle:(id)a3 date:(id)a4;
- (IMSPIRecentEvent)initWithLabelID:(id)a3 date:(id)a4;
- (id)description;
@end

@implementation IMSPIRecentEvent

- (IMSPIRecentEvent)initWithHandle:(id)a3 date:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = IMSPIRecentEvent;
  v10 = [(IMSPIRecentEvent *)&v14 init];
  if (v10)
  {
    v11 = objc_msgSend_copy(v6, v8, v9);
    handle = v10->_handle;
    v10->_handle = v11;

    objc_storeStrong(&v10->_date, a4);
  }

  return v10;
}

- (IMSPIRecentEvent)initWithLabelID:(id)a3 date:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = IMSPIRecentEvent;
  v10 = [(IMSPIRecentEvent *)&v14 init];
  if (v10)
  {
    v11 = objc_msgSend_copy(v6, v8, v9);
    labelID = v10->_labelID;
    v10->_labelID = v11;

    objc_storeStrong(&v10->_date, a4);
  }

  return v10;
}

- (id)description
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_msgSend_handle(self, a2, v2);
  v8 = objc_msgSend_labelID(self, v6, v7);
  v11 = objc_msgSend_date(self, v9, v10);
  v13 = objc_msgSend_stringWithFormat_(v4, v12, @"IMSPIRecentEvent: %p [Handle: %@  LabelID: %@ Date: %@]", self, v5, v8, v11);

  return v13;
}

@end