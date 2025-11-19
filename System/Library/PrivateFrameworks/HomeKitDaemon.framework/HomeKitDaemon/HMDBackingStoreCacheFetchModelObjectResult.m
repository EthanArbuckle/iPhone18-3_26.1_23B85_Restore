@interface HMDBackingStoreCacheFetchModelObjectResult
- (HMDBackingStoreCacheFetchModelObjectResult)initWithRecord:(id)a3 data:(id)a4 encoding:(unint64_t)a5 error:(id *)a6;
@end

@implementation HMDBackingStoreCacheFetchModelObjectResult

- (HMDBackingStoreCacheFetchModelObjectResult)initWithRecord:(id)a3 data:(id)a4 encoding:(unint64_t)a5 error:(id *)a6
{
  v31 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v26.receiver = self;
  v26.super_class = HMDBackingStoreCacheFetchModelObjectResult;
  v12 = [(HMDBackingStoreCacheFetchModelObjectResult *)&v26 init];
  if (!v12)
  {
    goto LABEL_13;
  }

  if (v10 && v11)
  {
    v13 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v10 error:0];
    v14 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithCoder:v13];
    record = v12->_record;
    v12->_record = v14;

    if (a5)
    {
      v16 = [HMDBackingStoreModelObject objectFromData:v11 encoding:a5 error:a6];
      object = v12->_object;
      v12->_object = v16;
    }

    if (*a6)
    {
      v18 = objc_autoreleasePoolPush();
      v19 = v12;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = HMFGetLogIdentifier();
        v22 = *a6;
        *buf = 138543618;
        v28 = v21;
        v29 = 2112;
        v30 = v22;
        _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@unable to decode cached object %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
    }

    else if (v12->_object)
    {
      v23 = v12;
      goto LABEL_16;
    }

    v23 = 0;
LABEL_16:

    goto LABEL_17;
  }

  if (a6)
  {
    [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
    *a6 = v23 = 0;
  }

  else
  {
LABEL_13:
    v23 = 0;
  }

LABEL_17:

  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

@end