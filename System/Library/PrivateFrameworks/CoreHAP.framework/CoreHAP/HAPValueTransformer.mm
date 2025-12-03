@interface HAPValueTransformer
+ (Class)expectedClassForFormat:(unint64_t)format;
- (id)reverseTransformedValue:(id)value format:(unint64_t)format error:(id *)error;
- (id)transformedValue:(id)value format:(unint64_t)format error:(id *)error;
@end

@implementation HAPValueTransformer

- (id)reverseTransformedValue:(id)value format:(unint64_t)format error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  if (valueCopy && (v8 = [objc_opt_class() expectedTransformedClassForFormat:format], (objc_opt_isKindOfClass() & 1) == 0))
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Value class, %@, is not of the expected class %@", objc_opt_class(), v8];
    v11 = objc_autoreleasePoolPush();
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v21 = v13;
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@[HAPValueTransformer] %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    if (error)
    {
      v14 = MEMORY[0x277CCA9B8];
      v18 = *MEMORY[0x277CCA450];
      v19 = v10;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      *error = [v14 errorWithDomain:@"HAPErrorDomain" code:-6756 userInfo:v15];
    }

    v9 = 0;
  }

  else
  {
    v9 = valueCopy;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)transformedValue:(id)value format:(unint64_t)format error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  if (valueCopy && (v8 = [objc_opt_class() expectedClassForFormat:format], (objc_opt_isKindOfClass() & 1) == 0))
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Value class, %@, is not of the expected class %@", objc_opt_class(), v8];
    v11 = objc_autoreleasePoolPush();
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v21 = v13;
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@[HAPValueTransformer] %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    if (error)
    {
      v14 = MEMORY[0x277CCA9B8];
      v18 = *MEMORY[0x277CCA450];
      v19 = v10;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      *error = [v14 errorWithDomain:@"HAPErrorDomain" code:-6756 userInfo:v15];
    }

    v9 = 0;
  }

  else
  {
    v9 = valueCopy;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (Class)expectedClassForFormat:(unint64_t)format
{
  if (format - 1 > 0xE)
  {
    v5 = 0;
  }

  else
  {
    v4 = **(&unk_2786D3250 + format - 1);
    v5 = objc_opt_class();
  }

  return v5;
}

@end