@interface GEOAPLogMsgQueueElem
- (BOOL)isEqual:(id)a3;
- (GEOAPLogMsgQueueElem)initWithLogMsg:(id)a3 uploadBatchId:(unint64_t)a4 expireTime:(id)a5 createTime:(id)a6;
- (id)copy;
- (unint64_t)hash;
@end

@implementation GEOAPLogMsgQueueElem

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    uploadBatchId = self->_uploadBatchId;
    if (uploadBatchId == [v5 uploadBatchId])
    {
      logMsg = self->_logMsg;
      v8 = [v5 logMsg];
      if ([(NSData *)logMsg isEqual:v8])
      {
        expireTime = self->_expireTime;
        v10 = [v5 expireTime];
        v11 = [(NSDate *)expireTime isEqualToDate:v10];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  uploadBatchId = self->_uploadBatchId;
  v4 = [(NSData *)self->_logMsg hash]^ uploadBatchId;
  return v4 ^ [(NSDate *)self->_expireTime hash];
}

- (id)copy
{
  v3 = [GEOAPLogMsgQueueElem alloc];
  logMsg = self->_logMsg;
  uploadBatchId = self->_uploadBatchId;
  expireTime = self->_expireTime;
  createTime = self->super._createTime;

  return [(GEOAPLogMsgQueueElem *)v3 initWithLogMsg:logMsg uploadBatchId:uploadBatchId expireTime:expireTime createTime:createTime];
}

- (GEOAPLogMsgQueueElem)initWithLogMsg:(id)a3 uploadBatchId:(unint64_t)a4 expireTime:(id)a5 createTime:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = GEOAPLogMsgQueueElem;
  v14 = [(GEOAPQueueElem *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_logMsg, a3);
    v15->_uploadBatchId = a4;
    objc_storeStrong(&v15->_expireTime, a5);
    objc_storeStrong(&v15->super._createTime, a6);
  }

  return v15;
}

@end