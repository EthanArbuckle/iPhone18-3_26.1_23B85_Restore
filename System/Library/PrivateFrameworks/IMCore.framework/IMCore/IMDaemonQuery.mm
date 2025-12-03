@interface IMDaemonQuery
- (IMDaemonQuery)initWithID:(id)d key:(id)key completionHandler:(id)handler;
- (id)description;
@end

@implementation IMDaemonQuery

- (IMDaemonQuery)initWithID:(id)d key:(id)key completionHandler:(id)handler
{
  dCopy = d;
  keyCopy = key;
  handlerCopy = handler;
  v29.receiver = self;
  v29.super_class = IMDaemonQuery;
  v13 = [(IMDaemonQuery *)&v29 init];
  if (v13)
  {
    v14 = objc_msgSend_copy(dCopy, v11, v12);
    ID = v13->_ID;
    v13->_ID = v14;

    v18 = objc_msgSend_copy(keyCopy, v16, v17);
    key = v13->_key;
    v13->_key = v18;

    v22 = objc_msgSend_copy(handlerCopy, v20, v21);
    completionHandler = v13->_completionHandler;
    v13->_completionHandler = v22;

    v26 = objc_msgSend_date(MEMORY[0x1E695DF00], v24, v25);
    startDate = v13->_startDate;
    v13->_startDate = v26;
  }

  return v13;
}

- (id)description
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_msgSend_ID(self, a2, v2);
  v8 = objc_msgSend_key(self, v6, v7);
  v11 = objc_msgSend_startDate(self, v9, v10);
  v15 = objc_msgSend_completionHandler(self, v12, v13);
  v16 = @"YES";
  if (!v15)
  {
    v16 = @"NO";
  }

  v17 = objc_msgSend_stringWithFormat_(v4, v14, @"ID: %@ key: %@ startDate: %@ completionHandler: %@", v5, v8, v11, v16);

  return v17;
}

@end