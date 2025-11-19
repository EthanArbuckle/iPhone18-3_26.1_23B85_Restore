@interface HMBProcessingModelResult
+ (id)alloc;
- (HMBProcessingModelResult)initWithModel:(id)a3 options:(id)a4 mirrorOutputFuture:(id)a5;
- (id)attributeDescriptions;
@end

@implementation HMBProcessingModelResult

- (id)attributeDescriptions
{
  v16[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMBProcessingModelResult *)self model];
  v5 = [v3 initWithName:@"Model" value:v4];
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(HMBProcessingModelResult *)self options];
  v8 = [v6 initWithName:@"Options" value:v7];
  v16[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v10 = [(HMBProcessingModelResult *)self mirrorOutputFuture];
  if (v10)
  {
    v11 = @"<not nil>";
  }

  else
  {
    v11 = @"<nil>";
  }

  v12 = [v9 initWithName:@"Mirror Output" value:v11];
  v16[2] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (HMBProcessingModelResult)initWithModel:(id)a3 options:(id)a4 mirrorOutputFuture:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  if (!v10)
  {
LABEL_7:
    v16 = _HMFPreconditionFailure();
    return +[(HMBProcessingModelResult *)v16];
  }

  v12 = v11;
  v18.receiver = self;
  v18.super_class = HMBProcessingModelResult;
  v13 = [(HMBProcessingModelResult *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_model, a3);
    objc_storeStrong(&v14->_options, a4);
    objc_storeStrong(&v14->_mirrorOutputFuture, a5);
  }

  return v14;
}

+ (id)alloc
{
  v3 = objc_opt_class();
  if (v3 == objc_opt_class())
  {
    v5 = MEMORY[0x277CBEAD8];
    v6 = *MEMORY[0x277CBE660];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot create a direct instance of %@. Use a subclass instead", objc_opt_class()];
    v8 = [v5 exceptionWithName:v6 reason:v7 userInfo:0];
    v9 = v8;

    objc_exception_throw(v8);
  }

  v10.receiver = a1;
  v10.super_class = &OBJC_METACLASS___HMBProcessingModelResult;
  return objc_msgSendSuper2(&v10, sel_alloc);
}

@end