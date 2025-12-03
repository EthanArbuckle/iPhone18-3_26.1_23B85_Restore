@interface CATTaskProgress
+ (Class)classForResultObjectWithRequestClassName:(id)name;
+ (id)progressForOperation:(id)operation;
+ (void)assertResultObject:(id)object isValidForRequestClassName:(id)name;
- (CATTaskProgress)init;
- (CATTaskProgress)initWithCoder:(id)coder;
- (CATTaskProgress)initWithOperation:(id)operation;
- (CATTaskProgress)initWithOperationUUID:(id)d;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)progressStateDescription;
- (unint64_t)state;
- (void)encodeWithCoder:(id)coder;
- (void)setProgress:(id)progress;
@end

@implementation CATTaskProgress

+ (id)progressForOperation:(id)operation
{
  operationCopy = operation;
  v5 = [[self alloc] initWithOperation:operationCopy];

  return v5;
}

- (CATTaskProgress)initWithOperationUUID:(id)d
{
  dCopy = d;
  if (!dCopy)
  {
    [(CATTaskProgress *)a2 initWithOperationUUID:?];
  }

  v10.receiver = self;
  v10.super_class = CATTaskProgress;
  v6 = [(CATTaskProgress *)&v10 init];
  if (v6)
  {
    v7 = [dCopy copy];
    UUID = v6->_UUID;
    v6->_UUID = v7;

    v6->_completedUnitCount = -1;
    v6->_totalUnitCount = -1;
  }

  return v6;
}

- (CATTaskProgress)initWithOperation:(id)operation
{
  operationCopy = operation;
  if (!operationCopy)
  {
    [(CATTaskProgress *)a2 initWithOperation:?];
  }

  uUID = [operationCopy UUID];
  v7 = [(CATTaskProgress *)self initWithOperationUUID:uUID];

  if (v7)
  {
    request = [operationCopy request];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    requestClassName = v7->_requestClassName;
    v7->_requestClassName = v10;

    resultObject = [operationCopy resultObject];
    resultObject = v7->_resultObject;
    v7->_resultObject = resultObject;

    v7->_phase = [operationCopy phase];
    error = [operationCopy error];
    error = v7->_error;
    v7->_error = error;

    userInfo = [operationCopy userInfo];
    userInfo = v7->_userInfo;
    v7->_userInfo = userInfo;

    v7->_isCancelable = [objc_opt_class() isCancelable];
    v7->_isCanceled = [operationCopy isCanceled];
    v7->_completedUnitCount = [operationCopy completedUnitCount];
    v7->_totalUnitCount = [operationCopy totalUnitCount];
    [objc_opt_class() assertResultObject:v7->_resultObject isValidForRequestClassName:v7->_requestClassName];
  }

  return v7;
}

- (CATTaskProgress)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"CATTaskProgress.m" lineNumber:93 description:{@"%@ cannot call %@ because it is not allowed", v5, v6}];

  return 0;
}

- (unint64_t)state
{
  if ([(CATTaskProgress *)self phase]!= 3)
  {
    return 0;
  }

  error = [(CATTaskProgress *)self error];
  if (error)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

+ (void)assertResultObject:(id)object isValidForRequestClassName:(id)name
{
  objectCopy = object;
  nameCopy = name;
  if (objectCopy)
  {
    v8 = [objc_opt_class() classForResultObjectWithRequestClassName:nameCopy];
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(CATTaskProgress *)a2 assertResultObject:self isValidForRequestClassName:objectCopy, v8];
    }
  }
}

+ (Class)classForResultObjectWithRequestClassName:(id)name
{
  v3 = NSClassFromString(name);
  allowlistedClassForResultObject = [(objc_class *)v3 allowlistedClassForResultObject];
  if (!allowlistedClassForResultObject)
  {
    allowlistedClassForResultObject = [(objc_class *)v3 whitelistedClassForResultObject];
  }

  return allowlistedClassForResultObject;
}

- (id)progressStateDescription
{
  state = [(CATTaskProgress *)self state];
  if (state >= 3)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", -[CATTaskProgress state](self, "state")];
  }

  else
  {
    v4 = off_278DA7A90[state];
  }

  return v4;
}

- (CATTaskProgress)initWithCoder:(id)coder
{
  coderCopy = coder;
  v38.receiver = self;
  v38.super_class = CATTaskProgress;
  v5 = [(CATTaskProgress *)&v38 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"UUID"];
    UUID = v5->_UUID;
    v5->_UUID = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phase"];
    v5->_phase = [v9 unsignedIntegerValue];

    v10 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"error"];
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
    v22 = [coderCopy decodeObjectOfClasses:v21 forKey:@"userInfo"];
    userInfo = v5->_userInfo;
    v5->_userInfo = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isCancelable"];
    v5->_isCancelable = [v24 BOOLValue];

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isCanceled"];
    v5->_isCanceled = [v25 BOOLValue];

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"totalUnitCount"];
    v5->_totalUnitCount = [v26 integerValue];

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"completedUnitCount"];
    v5->_completedUnitCount = [v27 integerValue];

    v28 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v29 = [coderCopy decodeObjectOfClasses:v28 forKey:@"requestClassName"];
    requestClassName = v5->_requestClassName;
    v5->_requestClassName = v29;

    v31 = [MEMORY[0x277CBEB98] setWithObjects:{objc_msgSend(objc_opt_class(), "classForResultObjectWithRequestClassName:", v5->_requestClassName), 0}];
    v32 = [coderCopy decodeObjectOfClasses:v31 forKey:@"resultObject"];
    resultObject = v5->_resultObject;
    v5->_resultObject = v32;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uUID = [(CATTaskProgress *)self UUID];
  [coderCopy encodeObject:uUID forKey:@"UUID"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CATTaskProgress phase](self, "phase")}];
  [coderCopy encodeObject:v6 forKey:@"phase"];

  requestClassName = [(CATTaskProgress *)self requestClassName];
  [coderCopy encodeObject:requestClassName forKey:@"requestClassName"];

  resultObject = [(CATTaskProgress *)self resultObject];
  [coderCopy encodeObject:resultObject forKey:@"resultObject"];

  error = [(CATTaskProgress *)self error];
  [coderCopy encodeObject:error forKey:@"error"];

  userInfo = [(CATTaskProgress *)self userInfo];
  [coderCopy encodeObject:userInfo forKey:@"userInfo"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[CATTaskProgress isCancelable](self, "isCancelable")}];
  [coderCopy encodeObject:v11 forKey:@"isCancelable"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[CATTaskProgress isCanceled](self, "isCanceled")}];
  [coderCopy encodeObject:v12 forKey:@"isCanceled"];

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CATTaskProgress totalUnitCount](self, "totalUnitCount")}];
  [coderCopy encodeObject:v13 forKey:@"totalUnitCount"];

  v14 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CATTaskProgress completedUnitCount](self, "completedUnitCount")}];
  [coderCopy encodeObject:v14 forKey:@"completedUnitCount"];
}

- (id)description
{
  state = [(CATTaskProgress *)self state];
  v4 = MEMORY[0x277CCACA8];
  if (state == 2)
  {
    error = [(CATTaskProgress *)self error];
    [v4 stringWithFormat:@"finished, error = %@", error];
  }

  else
  {
    if (state == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"finished"];
      goto LABEL_7;
    }

    error = [(CATTaskProgress *)self progressStateDescription];
    [v4 stringWithFormat:@"state = %@", error];
  }
  v5 = ;

LABEL_7:
  v7 = MEMORY[0x277CCACA8];
  uUID = [(CATTaskProgress *)self UUID];
  v9 = [v7 stringWithFormat:@"{ UUID = %@, %@ }", uUID, v5];

  return v9;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  uUID = [(CATTaskProgress *)self UUID];
  uUIDString = [uUID UUIDString];
  progressStateDescription = [(CATTaskProgress *)self progressStateDescription];
  error = [(CATTaskProgress *)self error];
  v9 = [v3 stringWithFormat:@"<%@: %p { UUID = %@, state = %@, error = %@ }>", v4, self, uUIDString, progressStateDescription, error];

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();
  if (v4 == objc_opt_class())
  {
    v6 = [CATTaskProgress allocWithZone:zone];
    uUID = [(CATTaskProgress *)self UUID];
    v8 = [(CATTaskProgress *)v6 initWithOperationUUID:uUID];

    [(CATTaskProgress *)v8 setProgress:self];
    return v8;
  }

  else
  {

    return self;
  }
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [CATMutableTaskProgress allocWithZone:zone];
  uUID = [(CATTaskProgress *)self UUID];
  v6 = [(CATMutableTaskProgress *)v4 initWithOperationUUID:uUID];

  [(CATMutableTaskProgress *)v6 setProgress:self];
  return v6;
}

- (void)setProgress:(id)progress
{
  progressCopy = progress;
  error = [progressCopy error];
  v5 = [error copy];
  [(CATTaskProgress *)self setError:v5];

  -[CATTaskProgress setPhase:](self, "setPhase:", [progressCopy phase]);
  -[CATTaskProgress setIsCancelable:](self, "setIsCancelable:", [progressCopy isCancelable]);
  -[CATTaskProgress setIsCanceled:](self, "setIsCanceled:", [progressCopy isCanceled]);
  -[CATTaskProgress setTotalUnitCount:](self, "setTotalUnitCount:", [progressCopy totalUnitCount]);
  -[CATTaskProgress setCompletedUnitCount:](self, "setCompletedUnitCount:", [progressCopy completedUnitCount]);
  requestClassName = [progressCopy requestClassName];
  [(CATTaskProgress *)self setRequestClassName:requestClassName];

  resultObject = [progressCopy resultObject];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);

  resultObject2 = [progressCopy resultObject];
  if (![resultObject2 conformsToProtocol:&unk_285616068])
  {
    goto LABEL_6;
  }

  resultObject3 = [progressCopy resultObject];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

LABEL_6:
    goto LABEL_7;
  }

  if ([v9 hasPrefix:@"NSMutable"])
  {

LABEL_13:
    resultObject4 = [progressCopy resultObject];
    v16 = [resultObject4 mutableCopy];
    goto LABEL_14;
  }

  v17 = [v9 hasPrefix:@"CATMutable"];

  if (v17)
  {
    goto LABEL_13;
  }

LABEL_7:
  resultObject5 = [progressCopy resultObject];
  if (([resultObject5 conformsToProtocol:&unk_28560FC78] & 1) == 0)
  {

    goto LABEL_11;
  }

  resultObject6 = [progressCopy resultObject];
  v14 = objc_opt_respondsToSelector();

  if ((v14 & 1) == 0)
  {
LABEL_11:
    resultObject4 = [progressCopy resultObject];
    [(CATTaskProgress *)self setResultObject:resultObject4];
    goto LABEL_15;
  }

  resultObject4 = [progressCopy resultObject];
  v16 = [resultObject4 copy];
LABEL_14:
  v18 = v16;
  [(CATTaskProgress *)self setResultObject:v16];

LABEL_15:
  userInfo = [progressCopy userInfo];
  v20 = [userInfo copy];
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