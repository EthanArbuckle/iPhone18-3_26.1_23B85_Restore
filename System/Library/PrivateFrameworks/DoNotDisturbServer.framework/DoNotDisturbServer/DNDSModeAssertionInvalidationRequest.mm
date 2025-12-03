@interface DNDSModeAssertionInvalidationRequest
+ (id)requestWithPredicate:(id)predicate requestDate:(id)date details:(id)details source:(id)source reason:(unint64_t)reason reasonOverride:(unint64_t)override;
+ (id)requestWithPredicate:(id)predicate requestDate:(id)date source:(id)source reason:(unint64_t)reason;
- (BOOL)isEqual:(id)equal;
- (DNDSModeAssertionInvalidationRequest)initWithUUID:(id)d predicate:(id)predicate requestDate:(id)date details:(id)details source:(id)source reason:(unint64_t)reason reasonOverride:(unint64_t)override;
- (NSString)description;
- (id)resolveWithExpectedRemoteDeviceIdentifier:(id)identifier localDeviceIdentifier:(id)deviceIdentifier remoteDeviceIdentifier:(id)remoteDeviceIdentifier;
- (unint64_t)hash;
@end

@implementation DNDSModeAssertionInvalidationRequest

- (id)resolveWithExpectedRemoteDeviceIdentifier:(id)identifier localDeviceIdentifier:(id)deviceIdentifier remoteDeviceIdentifier:(id)remoteDeviceIdentifier
{
  remoteDeviceIdentifierCopy = remoteDeviceIdentifier;
  deviceIdentifierCopy = deviceIdentifier;
  identifierCopy = identifier;
  source = [(DNDSModeAssertionInvalidationRequest *)self source];
  v12 = [source resolveWithExpectedRemoteDeviceIdentifier:identifierCopy localDeviceIdentifier:deviceIdentifierCopy remoteDeviceIdentifier:remoteDeviceIdentifierCopy];

  if (source == v12 || source && v12 && [source isEqual:v12])
  {
    selfCopy = self;
  }

  else
  {
    v14 = [DNDSModeAssertionInvalidationRequest alloc];
    uUID = [(DNDSModeAssertionInvalidationRequest *)self UUID];
    predicate = [(DNDSModeAssertionInvalidationRequest *)self predicate];
    requestDate = [(DNDSModeAssertionInvalidationRequest *)self requestDate];
    details = [(DNDSModeAssertionInvalidationRequest *)self details];
    selfCopy = [(DNDSModeAssertionInvalidationRequest *)v14 initWithUUID:uUID predicate:predicate requestDate:requestDate details:details source:v12 reason:[(DNDSModeAssertionInvalidationRequest *)self reason] reasonOverride:[(DNDSModeAssertionInvalidationRequest *)self reasonOverride]];
  }

  return selfCopy;
}

+ (id)requestWithPredicate:(id)predicate requestDate:(id)date source:(id)source reason:(unint64_t)reason
{
  sourceCopy = source;
  dateCopy = date;
  predicateCopy = predicate;
  v13 = [self alloc];
  uUID = [MEMORY[0x277CCAD78] UUID];
  v15 = [v13 initWithUUID:uUID predicate:predicateCopy requestDate:dateCopy details:0 source:sourceCopy reason:reason reasonOverride:0];

  return v15;
}

+ (id)requestWithPredicate:(id)predicate requestDate:(id)date details:(id)details source:(id)source reason:(unint64_t)reason reasonOverride:(unint64_t)override
{
  sourceCopy = source;
  detailsCopy = details;
  dateCopy = date;
  predicateCopy = predicate;
  v18 = [self alloc];
  uUID = [MEMORY[0x277CCAD78] UUID];
  v20 = [v18 initWithUUID:uUID predicate:predicateCopy requestDate:dateCopy details:detailsCopy source:sourceCopy reason:reason reasonOverride:override];

  return v20;
}

- (DNDSModeAssertionInvalidationRequest)initWithUUID:(id)d predicate:(id)predicate requestDate:(id)date details:(id)details source:(id)source reason:(unint64_t)reason reasonOverride:(unint64_t)override
{
  dCopy = d;
  predicateCopy = predicate;
  dateCopy = date;
  detailsCopy = details;
  sourceCopy = source;
  v32.receiver = self;
  v32.super_class = DNDSModeAssertionInvalidationRequest;
  v20 = [(DNDSModeAssertionInvalidationRequest *)&v32 init];
  if (v20)
  {
    v21 = [dCopy copy];
    UUID = v20->_UUID;
    v20->_UUID = v21;

    v23 = [predicateCopy copy];
    predicate = v20->_predicate;
    v20->_predicate = v23;

    v25 = [dateCopy copy];
    requestDate = v20->_requestDate;
    v20->_requestDate = v25;

    v27 = [detailsCopy copy];
    details = v20->_details;
    v20->_details = v27;

    v29 = [sourceCopy copy];
    source = v20->_source;
    v20->_source = v29;

    v20->_reason = reason;
    v20->_reasonOverride = override;
  }

  return v20;
}

- (unint64_t)hash
{
  uUID = [(DNDSModeAssertionInvalidationRequest *)self UUID];
  v4 = [uUID hash];
  predicate = [(DNDSModeAssertionInvalidationRequest *)self predicate];
  v6 = [predicate hash] ^ v4;
  requestDate = [(DNDSModeAssertionInvalidationRequest *)self requestDate];
  v8 = [requestDate hash];
  details = [(DNDSModeAssertionInvalidationRequest *)self details];
  v10 = v6 ^ v8 ^ [details hash];
  source = [(DNDSModeAssertionInvalidationRequest *)self source];
  v12 = [source hash];
  v13 = v12 ^ [(DNDSModeAssertionInvalidationRequest *)self reason];
  v14 = v13 ^ [(DNDSModeAssertionInvalidationRequest *)self reasonOverride];

  return v10 ^ v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      uUID = [(DNDSModeAssertionInvalidationRequest *)self UUID];
      uUID2 = [(DNDSModeAssertionInvalidationRequest *)v5 UUID];
      if (uUID != uUID2)
      {
        uUID3 = [(DNDSModeAssertionInvalidationRequest *)self UUID];
        if (!uUID3)
        {
          v10 = 0;
          goto LABEL_59;
        }

        uUID4 = [(DNDSModeAssertionInvalidationRequest *)v5 UUID];
        if (!uUID4)
        {
          v10 = 0;
LABEL_58:

          goto LABEL_59;
        }

        uUID5 = [(DNDSModeAssertionInvalidationRequest *)self UUID];
        uUID6 = [(DNDSModeAssertionInvalidationRequest *)v5 UUID];
        if (![uUID5 isEqual:uUID6])
        {
          v10 = 0;
LABEL_57:

          goto LABEL_58;
        }

        v62 = uUID6;
        v63 = uUID5;
      }

      predicate = [(DNDSModeAssertionInvalidationRequest *)self predicate];
      predicate2 = [(DNDSModeAssertionInvalidationRequest *)v5 predicate];
      if (predicate != predicate2)
      {
        predicate3 = [(DNDSModeAssertionInvalidationRequest *)self predicate];
        if (predicate3)
        {
          v13 = predicate3;
          predicate4 = [(DNDSModeAssertionInvalidationRequest *)v5 predicate];
          if (predicate4)
          {
            v60 = predicate4;
            predicate5 = [(DNDSModeAssertionInvalidationRequest *)self predicate];
            predicate6 = [(DNDSModeAssertionInvalidationRequest *)v5 predicate];
            if ([predicate5 isEqual:predicate6])
            {
              v56 = predicate6;
              v57 = v13;
              v58 = predicate5;
              goto LABEL_16;
            }
          }
        }

LABEL_55:

        v10 = 0;
        goto LABEL_56;
      }

LABEL_16:
      requestDate = [(DNDSModeAssertionInvalidationRequest *)self requestDate];
      requestDate2 = [(DNDSModeAssertionInvalidationRequest *)v5 requestDate];
      v61 = requestDate;
      if (requestDate == requestDate2)
      {
        goto LABEL_23;
      }

      requestDate3 = [(DNDSModeAssertionInvalidationRequest *)self requestDate];
      if (requestDate3)
      {
        v20 = requestDate3;
        requestDate4 = [(DNDSModeAssertionInvalidationRequest *)v5 requestDate];
        if (requestDate4)
        {
          v22 = requestDate2;
          v23 = v20;
          v53 = requestDate4;
          requestDate5 = [(DNDSModeAssertionInvalidationRequest *)self requestDate];
          requestDate6 = [(DNDSModeAssertionInvalidationRequest *)v5 requestDate];
          if ([requestDate5 isEqual:requestDate6])
          {
            v49 = requestDate5;
            v52 = requestDate6;
            requestDate = v23;
            requestDate2 = v22;
LABEL_23:
            details = [(DNDSModeAssertionInvalidationRequest *)self details];
            details2 = [(DNDSModeAssertionInvalidationRequest *)v5 details];
            if (details == details2)
            {
LABEL_31:
              source = [(DNDSModeAssertionInvalidationRequest *)self source];
              source2 = [(DNDSModeAssertionInvalidationRequest *)v5 source];
              v55 = requestDate;
              if (source != source2)
              {
                source3 = [(DNDSModeAssertionInvalidationRequest *)self source];
                if (!source3)
                {
                  v41 = v52;

                  v10 = 0;
LABEL_64:
                  if (details != details2)
                  {
                  }

                  if (v61 != requestDate2)
                  {
                  }

LABEL_75:

                  if (predicate != predicate2)
                  {
                  }

LABEL_56:
                  uUID6 = v62;
                  uUID5 = v63;
                  if (uUID != uUID2)
                  {
                    goto LABEL_57;
                  }

LABEL_59:

                  goto LABEL_60;
                }

                v47 = source3;
                source4 = [(DNDSModeAssertionInvalidationRequest *)v5 source];
                if (!source4)
                {
                  v10 = 0;
                  goto LABEL_63;
                }

                v43 = source4;
                source5 = [(DNDSModeAssertionInvalidationRequest *)self source];
                [(DNDSModeAssertionInvalidationRequest *)v5 source];
                v44 = v42 = source5;
                if (![source5 isEqual:?])
                {
                  v10 = 0;
LABEL_45:

LABEL_63:
                  v41 = v52;

                  goto LABEL_64;
                }
              }

              reason = [(DNDSModeAssertionInvalidationRequest *)self reason];
              if (reason == [(DNDSModeAssertionInvalidationRequest *)v5 reason])
              {
                reasonOverride = [(DNDSModeAssertionInvalidationRequest *)self reasonOverride];
                v10 = reasonOverride == [(DNDSModeAssertionInvalidationRequest *)v5 reasonOverride];
                v38 = v55;
                if (source != source2)
                {
                  goto LABEL_45;
                }
              }

              else
              {
                v38 = v55;
                if (source != source2)
                {

                  v10 = 0;
LABEL_71:
                  if (details != details2)
                  {
                  }

                  if (v61 != requestDate2)
                  {
                  }

                  goto LABEL_75;
                }

                v10 = 0;
              }

              goto LABEL_71;
            }

            details3 = [(DNDSModeAssertionInvalidationRequest *)self details];
            if (details3)
            {
              v50 = details3;
              details4 = [(DNDSModeAssertionInvalidationRequest *)v5 details];
              if (details4)
              {
                v54 = requestDate;
                v48 = details4;
                details5 = [(DNDSModeAssertionInvalidationRequest *)self details];
                details6 = [(DNDSModeAssertionInvalidationRequest *)v5 details];
                if ([details5 isEqual:details6])
                {
                  v45 = details6;
                  v46 = details5;
                  requestDate = v54;
                  goto LABEL_31;
                }

                v39 = v61;
                if (v61 != requestDate2)
                {
                }

                goto LABEL_53;
              }

              v35 = v52;
            }

            else
            {
              v35 = v52;
            }

            v39 = v61;
            if (v61 != requestDate2)
            {
            }

LABEL_53:

            if (predicate != predicate2)
            {
            }

            goto LABEL_55;
          }

LABEL_39:
          if (predicate != predicate2)
          {
          }

          goto LABEL_55;
        }
      }

      goto LABEL_39;
    }

    v10 = 0;
  }

LABEL_60:

  return v10;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  uUID = [(DNDSModeAssertionInvalidationRequest *)self UUID];
  predicate = [(DNDSModeAssertionInvalidationRequest *)self predicate];
  requestDate = [(DNDSModeAssertionInvalidationRequest *)self requestDate];
  details = [(DNDSModeAssertionInvalidationRequest *)self details];
  source = [(DNDSModeAssertionInvalidationRequest *)self source];
  [(DNDSModeAssertionInvalidationRequest *)self reason];
  v10 = DNDModeAssertionInvalidationReasonToString();
  [(DNDSModeAssertionInvalidationRequest *)self reasonOverride];
  v11 = DNDModeAssertionInvalidationReasonOverrideToString();
  v12 = [v3 stringWithFormat:@"<%@: %p UUID: %@; predicate: %@; requestDate: %@; details: %@; source: %@; reason: %@; reasonOverride: %@>", v4, self, uUID, predicate, requestDate, details, source, v10, v11];;

  return v12;
}

@end