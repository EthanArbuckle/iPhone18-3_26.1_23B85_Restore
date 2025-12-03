@interface IDSBAASigningResult
- (IDSBAASigningResult)initWithResultData:(id)data timestamp:(id)timestamp error:(id)error currentTimestampInMs:(unint64_t)ms icloudDigest:(id)digest icloudAltDigest:(id)altDigest icloudResultData:(id)resultData icloudAltResultData:(id)self0 icloudError:(id)self1 icloudAltError:(id)self2 hostCertChain:(id)self3 hostResultData:(id)self4 hostAltResultData:(id)self5 hostError:(id)self6 hostAltError:(id)self7 baaCertSource:(id)self8;
@end

@implementation IDSBAASigningResult

- (IDSBAASigningResult)initWithResultData:(id)data timestamp:(id)timestamp error:(id)error currentTimestampInMs:(unint64_t)ms icloudDigest:(id)digest icloudAltDigest:(id)altDigest icloudResultData:(id)resultData icloudAltResultData:(id)self0 icloudError:(id)self1 icloudAltError:(id)self2 hostCertChain:(id)self3 hostResultData:(id)self4 hostAltResultData:(id)self5 hostError:(id)self6 hostAltError:(id)self7 baaCertSource:(id)self8
{
  dataCopy = data;
  timestampCopy = timestamp;
  timestampCopy2 = timestamp;
  errorCopy = error;
  errorCopy2 = error;
  digestCopy = digest;
  digestCopy2 = digest;
  altDigestCopy = altDigest;
  resultDataCopy = resultData;
  altResultDataCopy = altResultData;
  icloudErrorCopy = icloudError;
  altErrorCopy = altError;
  chainCopy = chain;
  hostResultDataCopy = hostResultData;
  hostAltResultDataCopy = hostAltResultData;
  hostErrorCopy = hostError;
  hostAltErrorCopy = hostAltError;
  sourceCopy = source;
  v46.receiver = self;
  v46.super_class = IDSBAASigningResult;
  v28 = [(IDSBAASigningResult *)&v46 init];
  v29 = v28;
  if (v28)
  {
    objc_storeStrong(&v28->_resultData, data);
    objc_storeStrong(&v29->_timestamp, timestampCopy);
    objc_storeStrong(&v29->_error, errorCopy);
    v29->_currentTimestampInMs = ms;
    objc_storeStrong(&v29->_icloudDigest, digestCopy);
    objc_storeStrong(&v29->_icloudAltDigest, altDigest);
    objc_storeStrong(&v29->_icloudResultData, resultData);
    objc_storeStrong(&v29->_icloudAltResultData, altResultData);
    objc_storeStrong(&v29->_icloudError, icloudError);
    objc_storeStrong(&v29->_icloudAltError, altError);
    objc_storeStrong(&v29->_hostCertChain, chain);
    objc_storeStrong(&v29->_hostResultData, hostResultData);
    objc_storeStrong(&v29->_hostAltResultData, hostAltResultData);
    objc_storeStrong(&v29->_hostError, hostError);
    objc_storeStrong(&v29->_hostAltError, hostAltError);
    objc_storeStrong(&v29->_baaCertSource, source);
  }

  return v29;
}

@end