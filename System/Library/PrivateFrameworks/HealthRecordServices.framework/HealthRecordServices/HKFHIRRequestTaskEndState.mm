@interface HKFHIRRequestTaskEndState
+ (id)endStateForCanceledRequestAtURL:(id)a3 resourceType:(id)a4 interactionType:(int64_t)a5;
- (BOOL)isEqual:(id)a3;
- (HKFHIRRequestTaskEndState)init;
- (HKFHIRRequestTaskEndState)initWithCoder:(id)a3;
- (HKFHIRRequestTaskEndState)initWithRequestedURL:(id)a3 resourceType:(id)a4 interactionType:(int64_t)a5 responseStatusCode:(int64_t)a6 requestEndTime:(id)a7 requestDuration:(double)a8 hadError:(BOOL)a9 errorCode:(id)a10;
- (NSString)eventLoggingDescription;
- (id)asErrorEndStateWithErrorCode:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKFHIRRequestTaskEndState

- (HKFHIRRequestTaskEndState)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKFHIRRequestTaskEndState)initWithRequestedURL:(id)a3 resourceType:(id)a4 interactionType:(int64_t)a5 responseStatusCode:(int64_t)a6 requestEndTime:(id)a7 requestDuration:(double)a8 hadError:(BOOL)a9 errorCode:(id)a10
{
  v18 = a3;
  v19 = a4;
  v20 = a7;
  v21 = a10;
  if (v18)
  {
    if (v20)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [HKFHIRRequestTaskEndState initWithRequestedURL:a2 resourceType:self interactionType:? responseStatusCode:? requestEndTime:? requestDuration:? hadError:? errorCode:?];
    if (v20)
    {
      goto LABEL_3;
    }
  }

  [HKFHIRRequestTaskEndState initWithRequestedURL:a2 resourceType:self interactionType:? responseStatusCode:? requestEndTime:? requestDuration:? hadError:? errorCode:?];
LABEL_3:
  v32.receiver = self;
  v32.super_class = HKFHIRRequestTaskEndState;
  v22 = [(HKFHIRRequestTaskEndState *)&v32 init];
  if (v22)
  {
    v23 = [v18 copy];
    requestedURL = v22->_requestedURL;
    v22->_requestedURL = v23;

    v25 = [v19 copy];
    resourceType = v22->_resourceType;
    v22->_resourceType = v25;

    v22->_interactionType = a5;
    v22->_responseStatusCode = a6;
    v27 = [v20 copy];
    requestEndTime = v22->_requestEndTime;
    v22->_requestEndTime = v27;

    v22->_requestDuration = a8;
    v22->_hadError = a9;
    v29 = [v21 copy];
    errorCode = v22->_errorCode;
    v22->_errorCode = v29;
  }

  return v22;
}

+ (id)endStateForCanceledRequestAtURL:(id)a3 resourceType:(id)a4 interactionType:(int64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [a1 alloc];
  v11 = [MEMORY[0x277CBEAA8] now];
  v12 = [v10 initWithRequestedURL:v9 resourceType:v8 interactionType:a5 responseStatusCode:0 requestEndTime:v11 requestDuration:1 hadError:0.0 errorCode:0];

  return v12;
}

- (NSString)eventLoggingDescription
{
  v3 = MEMORY[0x277CCACA8];
  resourceType = self->_resourceType;
  v5 = NSStringFromClinicalIngestionInteractionType(self->_interactionType);
  requestedURL = self->_requestedURL;
  responseStatusCode = self->_responseStatusCode;
  hadError = self->_hadError;
  v9 = HKStringFromBool();
  v10 = [v3 stringWithFormat:@"End state for resource %@ %@ URL: %@; HTTP status: %lu; had error: %@", resourceType, v5, requestedURL, responseStatusCode, v9];;

  return v10;
}

- (id)asErrorEndStateWithErrorCode:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithRequestedURL:self->_requestedURL resourceType:self->_resourceType interactionType:self->_interactionType responseStatusCode:self->_responseStatusCode requestEndTime:self->_requestEndTime requestDuration:1 hadError:self->_requestDuration errorCode:v4];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  resourceType = self->_resourceType;
  v6 = NSStringFromClinicalIngestionInteractionType(self->_interactionType);
  requestedURL = self->_requestedURL;
  v8 = [v3 stringWithFormat:@"<%@ %p> resource: %@ %@, URL: %@ HTTP status: %lu", v4, self, resourceType, v6, requestedURL, self->_responseStatusCode];;

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSURL *)self->_requestedURL hash];
  v4 = [(NSString *)self->_resourceType hash]^ v3;
  v5 = self->_interactionType ^ self->_responseStatusCode;
  v6 = v4 ^ v5 ^ [(NSDate *)self->_requestEndTime hash];
  requestDuration = self->_requestDuration;
  return v6 ^ [(NSString *)self->_errorCode hash]^ self->_hadError ^ requestDuration;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  v7 = v6;
  if (self != v6)
  {
    v8 = v6;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v14 = 0;
LABEL_31:

      goto LABEL_32;
    }

    requestedURL = self->_requestedURL;
    v10 = [(HKFHIRRequestTaskEndState *)v8 requestedURL];
    if (requestedURL != v10)
    {
      v11 = [(HKFHIRRequestTaskEndState *)v8 requestedURL];
      if (!v11)
      {
        v14 = 0;
        goto LABEL_30;
      }

      v3 = v11;
      v12 = self->_requestedURL;
      v13 = [(HKFHIRRequestTaskEndState *)v8 requestedURL];
      if (![(NSURL *)v12 isEqual:v13])
      {
        v14 = 0;
LABEL_29:

        goto LABEL_30;
      }

      v50 = v13;
    }

    resourceType = self->_resourceType;
    v16 = [(HKFHIRRequestTaskEndState *)v8 resourceType];
    if (resourceType != v16)
    {
      v17 = [(HKFHIRRequestTaskEndState *)v8 resourceType];
      if (!v17)
      {
        goto LABEL_27;
      }

      v4 = v17;
      v18 = self->_resourceType;
      v19 = [(HKFHIRRequestTaskEndState *)v8 resourceType];
      v20 = v18;
      v21 = v19;
      if (![(NSString *)v20 isEqualToString:v19])
      {

LABEL_26:
        goto LABEL_27;
      }

      v49 = v21;
    }

    interactionType = self->_interactionType;
    if (interactionType != [(HKFHIRRequestTaskEndState *)v8 interactionType]|| (responseStatusCode = self->_responseStatusCode, responseStatusCode != [(HKFHIRRequestTaskEndState *)v8 responseStatusCode]))
    {
      v14 = 0;
      v32 = v49;
      if (resourceType == v16)
      {
LABEL_23:

        goto LABEL_28;
      }

LABEL_22:

      goto LABEL_23;
    }

    requestEndTime = self->_requestEndTime;
    v48 = [(HKFHIRRequestTaskEndState *)v8 requestEndTime];
    if (requestEndTime == v48)
    {
      v47 = requestEndTime;
      requestDuration = self->_requestDuration;
      [(HKFHIRRequestTaskEndState *)v8 requestDuration];
      if (requestDuration == v35)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v25 = [(HKFHIRRequestTaskEndState *)v8 requestEndTime];
      if (v25)
      {
        v46 = v25;
        v47 = requestEndTime;
        v26 = self->_requestEndTime;
        v27 = [(HKFHIRRequestTaskEndState *)v8 requestEndTime];
        v28 = v26;
        v29 = v27;
        if ([(NSDate *)v28 isEqualToDate:v27])
        {
          v44 = v29;
          v30 = self->_requestDuration;
          [(HKFHIRRequestTaskEndState *)v8 requestDuration];
          if (v30 != v31)
          {
            v14 = 0;
            v32 = v49;
            goto LABEL_43;
          }

LABEL_34:
          errorCode = self->_errorCode;
          v45 = [(HKFHIRRequestTaskEndState *)v8 errorCode];
          if (errorCode != v45)
          {
            v37 = [(HKFHIRRequestTaskEndState *)v8 errorCode];
            if (!v37)
            {

              v14 = 0;
              goto LABEL_48;
            }

            v42 = self->_errorCode;
            v43 = v37;
            v38 = [(HKFHIRRequestTaskEndState *)v8 errorCode];
            v39 = v42;
            v41 = v38;
            if (![(NSString *)v39 isEqualToString:?])
            {
              v14 = 0;
              goto LABEL_42;
            }
          }

          hadError = self->_hadError;
          v14 = hadError == [(HKFHIRRequestTaskEndState *)v8 hadError];
          if (errorCode != v45)
          {
LABEL_42:
            v32 = v49;

            if (v47 == v48)
            {
              goto LABEL_44;
            }

            goto LABEL_43;
          }

LABEL_48:
          v32 = v49;
          if (v47 == v48)
          {
LABEL_44:

            if (resourceType == v16)
            {
              goto LABEL_23;
            }

            goto LABEL_22;
          }

LABEL_43:

          goto LABEL_44;
        }

        if (resourceType != v16)
        {

          goto LABEL_26;
        }

LABEL_27:

        v14 = 0;
LABEL_28:
        v13 = v50;
        if (requestedURL != v10)
        {
          goto LABEL_29;
        }

LABEL_30:

        goto LABEL_31;
      }
    }

    v14 = 0;
    v32 = v49;
    goto LABEL_44;
  }

  v14 = 1;
LABEL_32:

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  requestedURL = self->_requestedURL;
  v5 = a3;
  [v5 encodeObject:requestedURL forKey:@"requestedURL"];
  [v5 encodeObject:self->_resourceType forKey:@"resourceType"];
  [v5 encodeInteger:self->_interactionType forKey:@"interactionType"];
  [v5 encodeInteger:self->_responseStatusCode forKey:@"responseStatusCode"];
  [v5 encodeObject:self->_requestEndTime forKey:@"requestEndTime"];
  [v5 encodeDouble:@"requestDuration" forKey:self->_requestDuration];
  [v5 encodeBool:self->_hadError forKey:@"hadError"];
  [v5 encodeObject:self->_errorCode forKey:@"errorCode"];
}

- (HKFHIRRequestTaskEndState)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestedURL"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestEndTime"];
  if (v5 && [v4 containsValueForKey:@"interactionType"] && objc_msgSend(v4, "containsValueForKey:", @"responseStatusCode") && v6 && objc_msgSend(v4, "containsValueForKey:", @"requestDuration") && (objc_msgSend(v4, "containsValueForKey:", @"hadError") & 1) != 0)
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"resourceType"];
    v8 = [v4 decodeIntegerForKey:@"interactionType"];
    v9 = [v4 decodeIntegerForKey:@"responseStatusCode"];
    [v4 decodeDoubleForKey:@"requestDuration"];
    v11 = v10;
    v12 = [v4 decodeBoolForKey:@"hadError"];
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"errorCode"];
    self = [(HKFHIRRequestTaskEndState *)self initWithRequestedURL:v5 resourceType:v7 interactionType:v8 responseStatusCode:v9 requestEndTime:v6 requestDuration:v12 hadError:v11 errorCode:v13];

    v14 = self;
  }

  else
  {
    [v4 hrs_failWithCocoaValueNotFoundError];
    v14 = 0;
  }

  return v14;
}

- (void)initWithRequestedURL:(uint64_t)a1 resourceType:(uint64_t)a2 interactionType:responseStatusCode:requestEndTime:requestDuration:hadError:errorCode:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKFHIRRequestTaskEndState.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"requestedURL"}];
}

- (void)initWithRequestedURL:(uint64_t)a1 resourceType:(uint64_t)a2 interactionType:responseStatusCode:requestEndTime:requestDuration:hadError:errorCode:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKFHIRRequestTaskEndState.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"requestEndTime"}];
}

@end