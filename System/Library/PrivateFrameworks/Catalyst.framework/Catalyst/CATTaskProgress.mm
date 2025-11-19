@interface CATTaskProgress
+ (Class)classForResultObjectWithRequestClassName:(id)a3;
+ (id)progressForOperation:(id)a3;
+ (void)assertResultObject:(id)a3 isValidForRequestClassName:(id)a4;
- (CATTaskProgress)init;
- (CATTaskProgress)initWithCoder:(id)a3;
- (CATTaskProgress)initWithOperation:(id)a3;
- (CATTaskProgress)initWithOperationUUID:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)progressStateDescription;
- (unint64_t)state;
- (void)encodeWithCoder:(id)a3;
- (void)setProgress:(id)a3;
@end

@implementation CATTaskProgress

+ (id)progressForOperation:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithOperation:v4];

  return v5;
}

- (CATTaskProgress)initWithOperationUUID:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(CATTaskProgress *)a2 initWithOperationUUID:?];
  }

  v10.receiver = self;
  v10.super_class = CATTaskProgress;
  v6 = [(CATTaskProgress *)&v10 init];
  if (v6)
  {
    v7 = [v5 copy];
    UUID = v6->_UUID;
    v6->_UUID = v7;

    v6->_completedUnitCount = -1;
    v6->_totalUnitCount = -1;
  }

  return v6;
}

- (CATTaskProgress)initWithOperation:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(CATTaskProgress *)a2 initWithOperation:?];
  }

  v6 = [v5 UUID];
  v7 = [(CATTaskProgress *)self initWithOperationUUID:v6];

  if (v7)
  {
    v8 = [v5 request];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    requestClassName = v7->_requestClassName;
    v7->_requestClassName = v10;

    v12 = [v5 resultObject];
    resultObject = v7->_resultObject;
    v7->_resultObject = v12;

    v7->_phase = [v5 phase];
    v14 = [v5 error];
    error = v7->_error;
    v7->_error = v14;

    v16 = [v5 userInfo];
    userInfo = v7->_userInfo;
    v7->_userInfo = v16;

    v7->_isCancelable = [objc_opt_class() isCancelable];
    v7->_isCanceled = [v5 isCanceled];
    v7->_completedUnitCount = [v5 completedUnitCount];
    v7->_totalUnitCount = [v5 totalUnitCount];
    [objc_opt_class() assertResultObject:v7->_resultObject isValidForRequestClassName:v7->_requestClassName];
  }

  return v7;
}

- (CATTaskProgress)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:self file:@"CATTaskProgress.m" lineNumber:93 description:{@"%@ cannot call %@ because it is not allowed", v5, v6}];

  return 0;
}

- (unint64_t)state
{
  if ([(CATTaskProgress *)self phase]!= 3)
  {
    return 0;
  }

  v3 = [(CATTaskProgress *)self error];
  if (v3)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

+ (void)assertResultObject:(id)a3 isValidForRequestClassName:(id)a4
{
  v9 = a3;
  v7 = a4;
  if (v9)
  {
    v8 = [objc_opt_class() classForResultObjectWithRequestClassName:v7];
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(CATTaskProgress *)a2 assertResultObject:a1 isValidForRequestClassName:v9, v8];
    }
  }
}

+ (Class)classForResultObjectWithRequestClassName:(id)a3
{
  v3 = NSClassFromString(a3);
  v4 = [(objc_class *)v3 allowlistedClassForResultObject];
  if (!v4)
  {
    v4 = [(objc_class *)v3 whitelistedClassForResultObject];
  }

  return v4;
}

- (id)progressStateDescription
{
  v3 = [(CATTaskProgress *)self state];
  if (v3 >= 3)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", -[CATTaskProgress state](self, "state")];
  }

  else
  {
    v4 = off_278DA7A90[v3];
  }

  return v4;
}

- (CATTaskProgress)initWithCoder:(id)a3
{
  v4 = a3;
  v38.receiver = self;
  v38.super_class = CATTaskProgress;
  v5 = [(CATTaskProgress *)&v38 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"UUID"];
    UUID = v5->_UUID;
    v5->_UUID = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"phase"];
    v5->_phase = [v9 unsignedIntegerValue];

    v10 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"error"];
    error = v5->_error;
    v5->_error = v11;

    v37 = MEMORY[0x277CBEB98];
    v36 = objc_opt_class();
    v35 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = [v37 setWithObjects:{v36, v35, v13, v14, v15, v16, v17, v18, v19, v20, objc_opt_class(), 0}];
    v22 = [v4 decodeObjectOfClasses:v21 forKey:@"userInfo"];
    userInfo = v5->_userInfo;
    v5->_userInfo = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isCancelable"];
    v5->_isCancelable = [v24 BOOLValue];

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isCanceled"];
    v5->_isCanceled = [v25 BOOLValue];

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalUnitCount"];
    v5->_totalUnitCount = [v26 integerValue];

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"completedUnitCount"];
    v5->_completedUnitCount = [v27 integerValue];

    v28 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v29 = [v4 decodeObjectOfClasses:v28 forKey:@"requestClassName"];
    requestClassName = v5->_requestClassName;
    v5->_requestClassName = v29;

    v31 = [MEMORY[0x277CBEB98] setWithObjects:{objc_msgSend(objc_opt_class(), "classForResultObjectWithRequestClassName:", v5->_requestClassName), 0}];
    v32 = [v4 decodeObjectOfClasses:v31 forKey:@"resultObject"];
    resultObject = v5->_resultObject;
    v5->_resultObject = v32;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CATTaskProgress *)self UUID];
  [v4 encodeObject:v5 forKey:@"UUID"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CATTaskProgress phase](self, "phase")}];
  [v4 encodeObject:v6 forKey:@"phase"];

  v7 = [(CATTaskProgress *)self requestClassName];
  [v4 encodeObject:v7 forKey:@"requestClassName"];

  v8 = [(CATTaskProgress *)self resultObject];
  [v4 encodeObject:v8 forKey:@"resultObject"];

  v9 = [(CATTaskProgress *)self error];
  [v4 encodeObject:v9 forKey:@"error"];

  v10 = [(CATTaskProgress *)self userInfo];
  [v4 encodeObject:v10 forKey:@"userInfo"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[CATTaskProgress isCancelable](self, "isCancelable")}];
  [v4 encodeObject:v11 forKey:@"isCancelable"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[CATTaskProgress isCanceled](self, "isCanceled")}];
  [v4 encodeObject:v12 forKey:@"isCanceled"];

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CATTaskProgress totalUnitCount](self, "totalUnitCount")}];
  [v4 encodeObject:v13 forKey:@"totalUnitCount"];

  v14 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CATTaskProgress completedUnitCount](self, "completedUnitCount")}];
  [v4 encodeObject:v14 forKey:@"completedUnitCount"];
}

- (id)description
{
  v3 = [(CATTaskProgress *)self state];
  v4 = MEMORY[0x277CCACA8];
  if (v3 == 2)
  {
    v6 = [(CATTaskProgress *)self error];
    [v4 stringWithFormat:@"finished, error = %@", v6];
  }

  else
  {
    if (v3 == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"finished"];
      goto LABEL_7;
    }

    v6 = [(CATTaskProgress *)self progressStateDescription];
    [v4 stringWithFormat:@"state = %@", v6];
  }
  v5 = ;

LABEL_7:
  v7 = MEMORY[0x277CCACA8];
  v8 = [(CATTaskProgress *)self UUID];
  v9 = [v7 stringWithFormat:@"{ UUID = %@, %@ }", v8, v5];

  return v9;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(CATTaskProgress *)self UUID];
  v6 = [v5 UUIDString];
  v7 = [(CATTaskProgress *)self progressStateDescription];
  v8 = [(CATTaskProgress *)self error];
  v9 = [v3 stringWithFormat:@"<%@: %p { UUID = %@, state = %@, error = %@ }>", v4, self, v6, v7, v8];

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_class();
  if (v4 == objc_opt_class())
  {
    v6 = [CATTaskProgress allocWithZone:a3];
    v7 = [(CATTaskProgress *)self UUID];
    v8 = [(CATTaskProgress *)v6 initWithOperationUUID:v7];

    [(CATTaskProgress *)v8 setProgress:self];
    return v8;
  }

  else
  {

    return self;
  }
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [CATMutableTaskProgress allocWithZone:a3];
  v5 = [(CATTaskProgress *)self UUID];
  v6 = [(CATMutableTaskProgress *)v4 initWithOperationUUID:v5];

  [(CATMutableTaskProgress *)v6 setProgress:self];
  return v6;
}

- (void)setProgress:(id)a3
{
  v21 = a3;
  v4 = [v21 error];
  v5 = [v4 copy];
  [(CATTaskProgress *)self setError:v5];

  -[CATTaskProgress setPhase:](self, "setPhase:", [v21 phase]);
  -[CATTaskProgress setIsCancelable:](self, "setIsCancelable:", [v21 isCancelable]);
  -[CATTaskProgress setIsCanceled:](self, "setIsCanceled:", [v21 isCanceled]);
  -[CATTaskProgress setTotalUnitCount:](self, "setTotalUnitCount:", [v21 totalUnitCount]);
  -[CATTaskProgress setCompletedUnitCount:](self, "setCompletedUnitCount:", [v21 completedUnitCount]);
  v6 = [v21 requestClassName];
  [(CATTaskProgress *)self setRequestClassName:v6];

  v7 = [v21 resultObject];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);

  v10 = [v21 resultObject];
  if (![v10 conformsToProtocol:&unk_285616068])
  {
    goto LABEL_6;
  }

  v11 = [v21 resultObject];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

LABEL_6:
    goto LABEL_7;
  }

  if ([v9 hasPrefix:@"NSMutable"])
  {

LABEL_13:
    v15 = [v21 resultObject];
    v16 = [v15 mutableCopy];
    goto LABEL_14;
  }

  v17 = [v9 hasPrefix:@"CATMutable"];

  if (v17)
  {
    goto LABEL_13;
  }

LABEL_7:
  v12 = [v21 resultObject];
  if (([v12 conformsToProtocol:&unk_28560FC78] & 1) == 0)
  {

    goto LABEL_11;
  }

  v13 = [v21 resultObject];
  v14 = objc_opt_respondsToSelector();

  if ((v14 & 1) == 0)
  {
LABEL_11:
    v15 = [v21 resultObject];
    [(CATTaskProgress *)self setResultObject:v15];
    goto LABEL_15;
  }

  v15 = [v21 resultObject];
  v16 = [v15 copy];
LABEL_14:
  v18 = v16;
  [(CATTaskProgress *)self setResultObject:v16];

LABEL_15:
  v19 = [v21 userInfo];
  v20 = [v19 copy];
  [(CATTaskProgress *)self setUserInfo:v20];
}

- (void)initWithOperationUUID:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CATTaskProgress.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"uuid"}];
}

- (void)initWithOperation:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CATTaskProgress.m" lineNumber:69 description:{@"Invalid parameter not satisfying: %@", @"operation"}];
}

+ (void)assertResultObject:(uint64_t)a3 isValidForRequestClassName:(uint64_t)a4 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"CATTaskProgress.m" lineNumber:118 description:{@"%@: resultObject (%@) is not accepted class %@", a2, a3, a4}];
}

@end