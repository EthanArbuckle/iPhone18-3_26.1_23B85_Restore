@interface CKDDownloadAssetURLInfo
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
- (void)dealloc;
- (void)setRecordPCS:(_OpaquePCSShareProtection *)s;
@end

@implementation CKDDownloadAssetURLInfo

- (void)dealloc
{
  recordPCS = self->_recordPCS;
  if (recordPCS)
  {
    CFRelease(recordPCS);
    self->_recordPCS = 0;
  }

  v4.receiver = self;
  v4.super_class = CKDDownloadAssetURLInfo;
  [(CKDDownloadAssetURLInfo *)&v4 dealloc];
}

- (unint64_t)hash
{
  v3 = objc_msgSend_asset(self, a2, v2);
  v6 = objc_msgSend_hash(v3, v4, v5);

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objc_msgSend_asset(equalCopy, v5, v6);
    v10 = objc_msgSend_asset(self, v8, v9);
    isEqual = objc_msgSend_isEqual_(v7, v11, v10);
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (void)setRecordPCS:(_OpaquePCSShareProtection *)s
{
  recordPCS = self->_recordPCS;
  if (recordPCS != s)
  {
    if (s)
    {
      CFRetain(s);
      recordPCS = self->_recordPCS;
    }

    self->_recordPCS = s;
    if (recordPCS)
    {

      CFRelease(recordPCS);
    }
  }
}

@end