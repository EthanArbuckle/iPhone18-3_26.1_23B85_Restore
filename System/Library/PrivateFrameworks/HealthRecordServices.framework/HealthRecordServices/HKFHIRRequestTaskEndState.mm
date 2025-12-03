@interface HKFHIRRequestTaskEndState
+ (id)endStateForCanceledRequestAtURL:(id)l resourceType:(id)type interactionType:(int64_t)interactionType;
- (BOOL)isEqual:(id)equal;
- (HKFHIRRequestTaskEndState)init;
- (HKFHIRRequestTaskEndState)initWithCoder:(id)coder;
- (HKFHIRRequestTaskEndState)initWithRequestedURL:(id)l resourceType:(id)type interactionType:(int64_t)interactionType responseStatusCode:(int64_t)code requestEndTime:(id)time requestDuration:(double)duration hadError:(BOOL)error errorCode:(id)self0;
- (NSString)eventLoggingDescription;
- (id)asErrorEndStateWithErrorCode:(id)code;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (HKFHIRRequestTaskEndState)initWithRequestedURL:(id)l resourceType:(id)type interactionType:(int64_t)interactionType responseStatusCode:(int64_t)code requestEndTime:(id)time requestDuration:(double)duration hadError:(BOOL)error errorCode:(id)self0
{
  lCopy = l;
  typeCopy = type;
  timeCopy = time;
  errorCodeCopy = errorCode;
  if (lCopy)
  {
    if (timeCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [HKFHIRRequestTaskEndState initWithRequestedURL:a2 resourceType:self interactionType:? responseStatusCode:? requestEndTime:? requestDuration:? hadError:? errorCode:?];
    if (timeCopy)
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
    v23 = [lCopy copy];
    requestedURL = v22->_requestedURL;
    v22->_requestedURL = v23;

    v25 = [typeCopy copy];
    resourceType = v22->_resourceType;
    v22->_resourceType = v25;

    v22->_interactionType = interactionType;
    v22->_responseStatusCode = code;
    v27 = [timeCopy copy];
    requestEndTime = v22->_requestEndTime;
    v22->_requestEndTime = v27;

    v22->_requestDuration = duration;
    v22->_hadError = error;
    v29 = [errorCodeCopy copy];
    errorCode = v22->_errorCode;
    v22->_errorCode = v29;
  }

  return v22;
}

+ (id)endStateForCanceledRequestAtURL:(id)l resourceType:(id)type interactionType:(int64_t)interactionType
{
  typeCopy = type;
  lCopy = l;
  v10 = [self alloc];
  v11 = [MEMORY[0x277CBEAA8] now];
  v12 = [v10 initWithRequestedURL:lCopy resourceType:typeCopy interactionType:interactionType responseStatusCode:0 requestEndTime:v11 requestDuration:1 hadError:0.0 errorCode:0];

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

- (id)asErrorEndStateWithErrorCode:(id)code
{
  codeCopy = code;
  v5 = [objc_alloc(objc_opt_class()) initWithRequestedURL:self->_requestedURL resourceType:self->_resourceType interactionType:self->_interactionType responseStatusCode:self->_responseStatusCode requestEndTime:self->_requestEndTime requestDuration:1 hadError:self->_requestDuration errorCode:codeCopy];

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7 = equalCopy;
  if (self != equalCopy)
  {
    v8 = equalCopy;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v14 = 0;
LABEL_31:

      goto LABEL_32;
    }

    requestedURL = self->_requestedURL;
    requestedURL = [(HKFHIRRequestTaskEndState *)v8 requestedURL];
    if (requestedURL != requestedURL)
    {
      requestedURL2 = [(HKFHIRRequestTaskEndState *)v8 requestedURL];
      if (!requestedURL2)
      {
        v14 = 0;
        goto LABEL_30;
      }

      v3 = requestedURL2;
      v12 = self->_requestedURL;
      requestedURL3 = [(HKFHIRRequestTaskEndState *)v8 requestedURL];
      if (![(NSURL *)v12 isEqual:requestedURL3])
      {
        v14 = 0;
LABEL_29:

        goto LABEL_30;
      }

      v50 = requestedURL3;
    }

    resourceType = self->_resourceType;
    resourceType = [(HKFHIRRequestTaskEndState *)v8 resourceType];
    if (resourceType != resourceType)
    {
      resourceType2 = [(HKFHIRRequestTaskEndState *)v8 resourceType];
      if (!resourceType2)
      {
        goto LABEL_27;
      }

      v4 = resourceType2;
      v18 = self->_resourceType;
      resourceType3 = [(HKFHIRRequestTaskEndState *)v8 resourceType];
      v20 = v18;
      v21 = resourceType3;
      if (![(NSString *)v20 isEqualToString:resourceType3])
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
      if (resourceType == resourceType)
      {
LABEL_23:

        goto LABEL_28;
      }

LABEL_22:

      goto LABEL_23;
    }

    requestEndTime = self->_requestEndTime;
    requestEndTime = [(HKFHIRRequestTaskEndState *)v8 requestEndTime];
    if (requestEndTime == requestEndTime)
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
      requestEndTime2 = [(HKFHIRRequestTaskEndState *)v8 requestEndTime];
      if (requestEndTime2)
      {
        v46 = requestEndTime2;
        v47 = requestEndTime;
        v26 = self->_requestEndTime;
        requestEndTime3 = [(HKFHIRRequestTaskEndState *)v8 requestEndTime];
        v28 = v26;
        v29 = requestEndTime3;
        if ([(NSDate *)v28 isEqualToDate:requestEndTime3])
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
          errorCode = [(HKFHIRRequestTaskEndState *)v8 errorCode];
          if (errorCode != errorCode)
          {
            errorCode2 = [(HKFHIRRequestTaskEndState *)v8 errorCode];
            if (!errorCode2)
            {

              v14 = 0;
              goto LABEL_48;
            }

            v42 = self->_errorCode;
            v43 = errorCode2;
            errorCode3 = [(HKFHIRRequestTaskEndState *)v8 errorCode];
            v39 = v42;
            v41 = errorCode3;
            if (![(NSString *)v39 isEqualToString:?])
            {
              v14 = 0;
              goto LABEL_42;
            }
          }

          hadError = self->_hadError;
          v14 = hadError == [(HKFHIRRequestTaskEndState *)v8 hadError];
          if (errorCode != errorCode)
          {
LABEL_42:
            v32 = v49;

            if (v47 == requestEndTime)
            {
              goto LABEL_44;
            }

            goto LABEL_43;
          }

LABEL_48:
          v32 = v49;
          if (v47 == requestEndTime)
          {
LABEL_44:

            if (resourceType == resourceType)
            {
              goto LABEL_23;
            }

            goto LABEL_22;
          }

LABEL_43:

          goto LABEL_44;
        }

        if (resourceType != resourceType)
        {

          goto LABEL_26;
        }

LABEL_27:

        v14 = 0;
LABEL_28:
        requestedURL3 = v50;
        if (requestedURL != requestedURL)
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

- (void)encodeWithCoder:(id)coder
{
  requestedURL = self->_requestedURL;
  coderCopy = coder;
  [coderCopy encodeObject:requestedURL forKey:@"requestedURL"];
  [coderCopy encodeObject:self->_resourceType forKey:@"resourceType"];
  [coderCopy encodeInteger:self->_interactionType forKey:@"interactionType"];
  [coderCopy encodeInteger:self->_responseStatusCode forKey:@"responseStatusCode"];
  [coderCopy encodeObject:self->_requestEndTime forKey:@"requestEndTime"];
  [coderCopy encodeDouble:@"requestDuration" forKey:self->_requestDuration];
  [coderCopy encodeBool:self->_hadError forKey:@"hadError"];
  [coderCopy encodeObject:self->_errorCode forKey:@"errorCode"];
}

- (HKFHIRRequestTaskEndState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestedURL"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestEndTime"];
  if (v5 && [coderCopy containsValueForKey:@"interactionType"] && objc_msgSend(coderCopy, "containsValueForKey:", @"responseStatusCode") && v6 && objc_msgSend(coderCopy, "containsValueForKey:", @"requestDuration") && (objc_msgSend(coderCopy, "containsValueForKey:", @"hadError") & 1) != 0)
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"resourceType"];
    v8 = [coderCopy decodeIntegerForKey:@"interactionType"];
    v9 = [coderCopy decodeIntegerForKey:@"responseStatusCode"];
    [coderCopy decodeDoubleForKey:@"requestDuration"];
    v11 = v10;
    v12 = [coderCopy decodeBoolForKey:@"hadError"];
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"errorCode"];
    self = [(HKFHIRRequestTaskEndState *)self initWithRequestedURL:v5 resourceType:v7 interactionType:v8 responseStatusCode:v9 requestEndTime:v6 requestDuration:v12 hadError:v11 errorCode:v13];

    selfCopy = self;
  }

  else
  {
    [coderCopy hrs_failWithCocoaValueNotFoundError];
    selfCopy = 0;
  }

  return selfCopy;
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