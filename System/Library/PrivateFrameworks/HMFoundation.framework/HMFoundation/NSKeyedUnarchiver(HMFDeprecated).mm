@interface NSKeyedUnarchiver(HMFDeprecated)
+ (id)deserializeObjectWithData:()HMFDeprecated allowedClass:frameworkClasses:;
+ (id)deserializeObjectWithData:()HMFDeprecated allowedClasses:;
@end

@implementation NSKeyedUnarchiver(HMFDeprecated)

+ (id)deserializeObjectWithData:()HMFDeprecated allowedClasses:
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v18 = 0;
  v8 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v7 fromData:v6 error:&v18];
  v9 = v18;
  v10 = v9;
  if (v8)
  {
    v11 = 1;
  }

  else
  {
    v11 = v9 == 0;
  }

  if (!v11)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = HMFGetLogIdentifier(selfCopy);
      *buf = 138543618;
      v20 = v15;
      v21 = 2112;
      v22 = v10;
      _os_log_impl(&dword_22ADEC000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to unarchive with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)deserializeObjectWithData:()HMFDeprecated allowedClass:frameworkClasses:
{
  v40 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v34 = 0;
  v10 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v8 error:&v34];
  v11 = v34;
  if (!v10)
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier(selfCopy);
      *buf = 138543618;
      v37 = v26;
      v38 = 2112;
      v39 = v11;
      _os_log_impl(&dword_22ADEC000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive due to invalid data: %@", buf, 0x16u);
    }

    goto LABEL_18;
  }

  [v10 setDecodingFailurePolicy:1];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v31;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v31 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [v10 setClass:a4 forClassName:*(*(&v30 + 1) + 8 * i)];
      }

      v14 = [v12 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v14);
  }

  v17 = *MEMORY[0x277CCA308];
  v29 = v11;
  v18 = [v10 decodeTopLevelObjectOfClass:a4 forKey:v17 error:&v29];
  v19 = v29;

  [v10 finishDecoding];
  if (v18)
  {
    v20 = 1;
  }

  else
  {
    v20 = v19 == 0;
  }

  if (!v20)
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = HMFGetLogIdentifier(selfCopy2);
      *buf = 138543618;
      v37 = v24;
      v38 = 2112;
      v39 = v19;
      _os_log_impl(&dword_22ADEC000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to unarchive with error: %@", buf, 0x16u);
    }

    v11 = v19;
LABEL_18:

    objc_autoreleasePoolPop(v21);
    v18 = 0;
    v19 = v11;
  }

  v27 = *MEMORY[0x277D85DE8];

  return v18;
}

@end