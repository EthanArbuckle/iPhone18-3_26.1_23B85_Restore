@interface IDSBAASigningResult
- (IDSBAASigningResult)initWithResultData:(id)a3 timestamp:(id)a4 error:(id)a5 currentTimestampInMs:(unint64_t)a6 icloudDigest:(id)a7 icloudAltDigest:(id)a8 icloudResultData:(id)a9 icloudAltResultData:(id)a10 icloudError:(id)a11 icloudAltError:(id)a12 hostCertChain:(id)a13 hostResultData:(id)a14 hostAltResultData:(id)a15 hostError:(id)a16 hostAltError:(id)a17 baaCertSource:(id)a18;
@end

@implementation IDSBAASigningResult

- (IDSBAASigningResult)initWithResultData:(id)a3 timestamp:(id)a4 error:(id)a5 currentTimestampInMs:(unint64_t)a6 icloudDigest:(id)a7 icloudAltDigest:(id)a8 icloudResultData:(id)a9 icloudAltResultData:(id)a10 icloudError:(id)a11 icloudAltError:(id)a12 hostCertChain:(id)a13 hostResultData:(id)a14 hostAltResultData:(id)a15 hostError:(id)a16 hostAltError:(id)a17 baaCertSource:(id)a18
{
  v45 = a3;
  v32 = a4;
  v44 = a4;
  v33 = a5;
  v43 = a5;
  v35 = a7;
  v42 = a7;
  v41 = a8;
  v40 = a9;
  v39 = a10;
  v38 = a11;
  v37 = a12;
  v22 = a13;
  v23 = a14;
  v24 = a15;
  v25 = a16;
  v26 = a17;
  v27 = a18;
  v46.receiver = self;
  v46.super_class = IDSBAASigningResult;
  v28 = [(IDSBAASigningResult *)&v46 init];
  v29 = v28;
  if (v28)
  {
    objc_storeStrong(&v28->_resultData, a3);
    objc_storeStrong(&v29->_timestamp, v32);
    objc_storeStrong(&v29->_error, v33);
    v29->_currentTimestampInMs = a6;
    objc_storeStrong(&v29->_icloudDigest, v35);
    objc_storeStrong(&v29->_icloudAltDigest, a8);
    objc_storeStrong(&v29->_icloudResultData, a9);
    objc_storeStrong(&v29->_icloudAltResultData, a10);
    objc_storeStrong(&v29->_icloudError, a11);
    objc_storeStrong(&v29->_icloudAltError, a12);
    objc_storeStrong(&v29->_hostCertChain, a13);
    objc_storeStrong(&v29->_hostResultData, a14);
    objc_storeStrong(&v29->_hostAltResultData, a15);
    objc_storeStrong(&v29->_hostError, a16);
    objc_storeStrong(&v29->_hostAltError, a17);
    objc_storeStrong(&v29->_baaCertSource, a18);
  }

  return v29;
}

@end