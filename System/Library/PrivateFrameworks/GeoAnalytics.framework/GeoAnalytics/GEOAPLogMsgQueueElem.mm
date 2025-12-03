@interface GEOAPLogMsgQueueElem
- (BOOL)isEqual:(id)equal;
- (GEOAPLogMsgQueueElem)initWithLogMsg:(id)msg uploadBatchId:(unint64_t)id expireTime:(id)time createTime:(id)createTime;
- (id)copy;
- (unint64_t)hash;
@end

@implementation GEOAPLogMsgQueueElem

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    uploadBatchId = self->_uploadBatchId;
    if (uploadBatchId == [v5 uploadBatchId])
    {
      logMsg = self->_logMsg;
      logMsg = [v5 logMsg];
      if ([(NSData *)logMsg isEqual:logMsg])
      {
        expireTime = self->_expireTime;
        expireTime = [v5 expireTime];
        v11 = [(NSDate *)expireTime isEqualToDate:expireTime];
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

- (GEOAPLogMsgQueueElem)initWithLogMsg:(id)msg uploadBatchId:(unint64_t)id expireTime:(id)time createTime:(id)createTime
{
  msgCopy = msg;
  timeCopy = time;
  createTimeCopy = createTime;
  v17.receiver = self;
  v17.super_class = GEOAPLogMsgQueueElem;
  v14 = [(GEOAPQueueElem *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_logMsg, msg);
    v15->_uploadBatchId = id;
    objc_storeStrong(&v15->_expireTime, time);
    objc_storeStrong(&v15->super._createTime, createTime);
  }

  return v15;
}

@end