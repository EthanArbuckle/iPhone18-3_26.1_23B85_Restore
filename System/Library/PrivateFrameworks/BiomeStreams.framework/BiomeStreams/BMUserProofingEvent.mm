@interface BMUserProofingEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMUserProofingEvent)initWithAbsoluteTimestamp:(double)timestamp age:(id)age gender:(id)gender skinTone:(id)tone ethnicity:(id)ethnicity deviceLanguage:(id)language proofingDecision:(id)decision issuer:(id)self0 livenessAssessment:(id)self1 gestureAssessment:(id)self2;
- (BMUserProofingEvent)initWithCoder:(id)coder;
- (BMUserProofingEvent)initWithProto:(id)proto;
- (BMUserProofingEvent)initWithProtoData:(id)data;
- (BOOL)isEqual:(id)equal;
- (id)encodeAsProto;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BMUserProofingEvent

- (BMUserProofingEvent)initWithAbsoluteTimestamp:(double)timestamp age:(id)age gender:(id)gender skinTone:(id)tone ethnicity:(id)ethnicity deviceLanguage:(id)language proofingDecision:(id)decision issuer:(id)self0 livenessAssessment:(id)self1 gestureAssessment:(id)self2
{
  ageCopy = age;
  genderCopy = gender;
  toneCopy = tone;
  ethnicityCopy = ethnicity;
  languageCopy = language;
  decisionCopy = decision;
  issuerCopy = issuer;
  assessmentCopy = assessment;
  gestureAssessmentCopy = gestureAssessment;
  v49.receiver = self;
  v49.super_class = BMUserProofingEvent;
  v28 = [(BMUserProofingEvent *)&v49 init];
  v29 = v28;
  if (v28)
  {
    v28->_absoluteTimestamp = timestamp;
    v30 = [ageCopy copy];
    age = v29->_age;
    v29->_age = v30;

    v32 = [genderCopy copy];
    gender = v29->_gender;
    v29->_gender = v32;

    v34 = [toneCopy copy];
    skinTone = v29->_skinTone;
    v29->_skinTone = v34;

    v36 = [ethnicityCopy copy];
    ethnicity = v29->_ethnicity;
    v29->_ethnicity = v36;

    v38 = [languageCopy copy];
    deviceLanguage = v29->_deviceLanguage;
    v29->_deviceLanguage = v38;

    v40 = [decisionCopy copy];
    proofingDecision = v29->_proofingDecision;
    v29->_proofingDecision = v40;

    v42 = [issuerCopy copy];
    issuer = v29->_issuer;
    v29->_issuer = v42;

    v44 = [assessmentCopy copy];
    livenessAssessment = v29->_livenessAssessment;
    v29->_livenessAssessment = v44;

    v46 = [gestureAssessmentCopy copy];
    gestureAssessment = v29->_gestureAssessment;
    v29->_gestureAssessment = v46;
  }

  return v29;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  if (version == 1)
  {
    v7 = [[self alloc] initWithProtoData:dataCopy];
  }

  else
  {
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [BMUserProofingEvent eventWithData:version dataVersion:v8];
    }

    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(BMUserProofingEvent *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"user_proofing"];
}

- (BMUserProofingEvent)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E69C5D78];
  coderCopy = coder;
  v6 = [v4 robustDecodeObjectOfClass:objc_opt_class() forKey:@"user_proofing" withCoder:coderCopy expectNonNull:1 errorDomain:@"BMStreamErrorDomain" errorCode:2 logHandle:0];

  if (v6)
  {
    self = [(BMUserProofingEvent *)self initWithProtoData:v6];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)encodeAsProto
{
  proto = [(BMUserProofingEvent *)self proto];
  data = [proto data];

  return data;
}

- (BMUserProofingEvent)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [BMUserProofingEvent initWithProto:v5];
      }

      goto LABEL_17;
    }

    v5 = protoCopy;
    [v5 absoluteTimestamp];
    if (v6 != 0.0)
    {
      v7 = [v5 age];
      if (v7)
      {
        v8 = v7;
        gender = [v5 gender];
        if (gender)
        {
          v10 = gender;
          deviceLanguage = [v5 deviceLanguage];
          if (deviceLanguage)
          {
            v12 = deviceLanguage;
            proofingDecision = [v5 proofingDecision];

            if (proofingDecision)
            {
              [v5 absoluteTimestamp];
              v15 = v14;
              v27 = [v5 age];
              gender2 = [v5 gender];
              skinTone = [v5 skinTone];
              ethnicity = [v5 ethnicity];
              deviceLanguage2 = [v5 deviceLanguage];
              proofingDecision2 = [v5 proofingDecision];
              issuer = [v5 issuer];
              livenessAssessment = [v5 livenessAssessment];
              gestureAssessment = [v5 gestureAssessment];
              self = [(BMUserProofingEvent *)self initWithAbsoluteTimestamp:v27 age:gender2 gender:skinTone skinTone:ethnicity ethnicity:deviceLanguage2 deviceLanguage:proofingDecision2 proofingDecision:v15 issuer:issuer livenessAssessment:livenessAssessment gestureAssessment:gestureAssessment];

              selfCopy = self;
LABEL_18:

              goto LABEL_19;
            }

            goto LABEL_14;
          }
        }
      }
    }

LABEL_14:
    v24 = __biome_log_for_category();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      [BMUserProofingEvent initWithProto:v24];
    }

LABEL_17:
    selfCopy = 0;
    goto LABEL_18;
  }

  selfCopy = 0;
LABEL_19:

  return selfCopy;
}

- (BMUserProofingEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBUserProofingEvent alloc] initWithData:dataCopy];

    self = [(BMUserProofingEvent *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)proto
{
  v3 = objc_alloc_init(BMPBUserProofingEvent);
  [(BMPBUserProofingEvent *)v3 setAbsoluteTimestamp:self->_absoluteTimestamp];
  [(BMPBUserProofingEvent *)v3 setAge:self->_age];
  [(BMPBUserProofingEvent *)v3 setGender:self->_gender];
  [(BMPBUserProofingEvent *)v3 setSkinTone:self->_skinTone];
  [(BMPBUserProofingEvent *)v3 setEthnicity:self->_ethnicity];
  [(BMPBUserProofingEvent *)v3 setDeviceLanguage:self->_deviceLanguage];
  [(BMPBUserProofingEvent *)v3 setProofingDecision:self->_proofingDecision];
  [(BMPBUserProofingEvent *)v3 setIssuer:self->_issuer];
  [(BMPBUserProofingEvent *)v3 setLivenessAssessment:self->_livenessAssessment];
  [(BMPBUserProofingEvent *)v3 setGestureAssessment:self->_gestureAssessment];

  return v3;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_absoluteTimestamp];
  v4 = [v3 hash];
  v5 = [(NSString *)self->_age hash];
  v6 = v5 ^ [(NSString *)self->_gender hash];
  v7 = v6 ^ [(NSString *)self->_deviceLanguage hash]^ v4;
  v8 = [(NSString *)self->_proofingDecision hash];

  return v7 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = equalCopy;
    absoluteTimestamp = self->_absoluteTimestamp;
    [v7 absoluteTimestamp];
    if (absoluteTimestamp != v9)
    {
      v14 = 0;
LABEL_93:

      goto LABEL_94;
    }

    age = self->_age;
    v11 = age;
    if (!age)
    {
      v12 = [v7 age];
      if (!v12)
      {
        v71 = 0;
        v13 = 0;
        goto LABEL_12;
      }

      v71 = v12;
      v11 = self->_age;
    }

    v3 = [v7 age];
    if (![(NSString *)v11 isEqualToString:v3])
    {

      v14 = 0;
      goto LABEL_91;
    }

    v13 = 1;
LABEL_12:
    gender = self->_gender;
    v16 = gender;
    if (!gender)
    {
      gender = [v7 gender];
      if (!gender)
      {
        v70 = v13;
        v69 = 0;
        v18 = 0;
        goto LABEL_19;
      }

      v69 = gender;
      v16 = self->_gender;
    }

    gender2 = [v7 gender];
    if (![(NSString *)v16 isEqualToString:gender2])
    {
      v14 = 0;
      goto LABEL_88;
    }

    v70 = v13;
    v18 = 1;
LABEL_19:
    skinTone = self->_skinTone;
    v20 = skinTone;
    if (!skinTone)
    {
      skinTone = [v7 skinTone];
      if (!skinTone)
      {
        v67 = v18;
        v68 = 0;
        v65 = 0;
        goto LABEL_26;
      }

      v65 = skinTone;
      v20 = self->_skinTone;
    }

    skinTone2 = [v7 skinTone];
    v23 = v20;
    v24 = skinTone2;
    if (![(NSString *)v23 isEqualToString:skinTone2])
    {
      v14 = 0;
      goto LABEL_84;
    }

    v64 = v24;
    v67 = v18;
    v68 = 1;
LABEL_26:
    ethnicity = self->_ethnicity;
    v26 = ethnicity;
    if (!ethnicity)
    {
      ethnicity = [v7 ethnicity];
      if (!ethnicity)
      {
        v60 = 0;
        v63 = 0;
        goto LABEL_33;
      }

      v60 = ethnicity;
      v26 = self->_ethnicity;
    }

    ethnicity2 = [v7 ethnicity];
    if (![(NSString *)v26 isEqualToString:?])
    {
      v14 = 0;
      v18 = v67;
      goto LABEL_78;
    }

    v63 = 1;
LABEL_33:
    deviceLanguage = self->_deviceLanguage;
    v62 = deviceLanguage;
    if (!deviceLanguage)
    {
      deviceLanguage = [v7 deviceLanguage];
      if (!deviceLanguage)
      {
        v56 = 0;
        v59 = 0;
        goto LABEL_40;
      }

      v56 = deviceLanguage;
      deviceLanguage = self->_deviceLanguage;
    }

    deviceLanguage2 = [v7 deviceLanguage];
    if (![(NSString *)deviceLanguage isEqualToString:?])
    {
      v14 = 0;
      v18 = v67;
      goto LABEL_75;
    }

    v59 = 1;
LABEL_40:
    proofingDecision = self->_proofingDecision;
    v58 = proofingDecision;
    if (!proofingDecision)
    {
      proofingDecision = [v7 proofingDecision];
      if (!proofingDecision)
      {
        v52 = 0;
        v55 = 0;
        goto LABEL_47;
      }

      v52 = proofingDecision;
      proofingDecision = self->_proofingDecision;
    }

    proofingDecision2 = [v7 proofingDecision];
    if (![(NSString *)proofingDecision isEqualToString:?])
    {
      v14 = 0;
      v18 = v67;
      goto LABEL_72;
    }

    v55 = 1;
LABEL_47:
    issuer = self->_issuer;
    v54 = issuer;
    if (!issuer)
    {
      issuer = [v7 issuer];
      if (!issuer)
      {
        v48 = 0;
        v51 = 0;
        goto LABEL_54;
      }

      v48 = issuer;
      issuer = self->_issuer;
    }

    issuer2 = [v7 issuer];
    if (![(NSString *)issuer isEqualToString:?])
    {
      v14 = 0;
      v18 = v67;
      goto LABEL_69;
    }

    v51 = 1;
LABEL_54:
    livenessAssessment = self->_livenessAssessment;
    v50 = livenessAssessment;
    if (!livenessAssessment)
    {
      livenessAssessment = [v7 livenessAssessment];
      if (!livenessAssessment)
      {
        v45 = 0;
        v47 = 0;
        goto LABEL_61;
      }

      v45 = livenessAssessment;
      livenessAssessment = self->_livenessAssessment;
    }

    livenessAssessment2 = [v7 livenessAssessment];
    if (![(NSString *)livenessAssessment isEqualToString:?])
    {
      v14 = 0;
      v18 = v67;
      goto LABEL_66;
    }

    v47 = 1;
LABEL_61:
    gestureAssessment = self->_gestureAssessment;
    v37 = gestureAssessment;
    if (!gestureAssessment)
    {
      gestureAssessment = [v7 gestureAssessment];
      if (!gestureAssessment)
      {
        v42 = 0;
        v14 = 1;
        v18 = v67;
LABEL_109:

        if ((v47 & 1) == 0)
        {
LABEL_67:
          if (v50)
          {
            if (!v51)
            {
              goto LABEL_70;
            }
          }

          else
          {

            if ((v51 & 1) == 0)
            {
LABEL_70:
              if (v54)
              {
                if (!v55)
                {
                  goto LABEL_73;
                }
              }

              else
              {

                if ((v55 & 1) == 0)
                {
LABEL_73:
                  if (v58)
                  {
                    if (!v59)
                    {
                      goto LABEL_76;
                    }
                  }

                  else
                  {

                    if ((v59 & 1) == 0)
                    {
LABEL_76:
                      if (v62)
                      {
                        if (!v63)
                        {
LABEL_79:
                          if (ethnicity)
                          {
                            if (!v68)
                            {
LABEL_85:
                              if (skinTone)
                              {
                                if (v18)
                                {
LABEL_87:
                                  v13 = v70;
LABEL_88:

                                  if (gender)
                                  {
                                    goto LABEL_89;
                                  }

                                  goto LABEL_97;
                                }
                              }

                              else
                              {

                                if (v18)
                                {
                                  goto LABEL_87;
                                }
                              }

                              v13 = v70;
                              if (gender)
                              {
LABEL_89:
                                if (!v13)
                                {
                                  goto LABEL_91;
                                }

                                goto LABEL_90;
                              }

LABEL_97:

                              if ((v13 & 1) == 0)
                              {
LABEL_91:
                                if (!age)
                                {
                                }

                                goto LABEL_93;
                              }

LABEL_90:

                              goto LABEL_91;
                            }
                          }

                          else
                          {

                            if ((v68 & 1) == 0)
                            {
                              goto LABEL_85;
                            }
                          }

                          v24 = v64;
LABEL_84:

                          goto LABEL_85;
                        }
                      }

                      else
                      {

                        if ((v63 & 1) == 0)
                        {
                          goto LABEL_79;
                        }
                      }

LABEL_78:

                      goto LABEL_79;
                    }
                  }

LABEL_75:

                  goto LABEL_76;
                }
              }

LABEL_72:

              goto LABEL_73;
            }
          }

LABEL_69:

          goto LABEL_70;
        }

LABEL_66:

        goto LABEL_67;
      }

      v43 = gestureAssessment;
      v37 = self->_gestureAssessment;
    }

    v39 = v37;
    [v7 gestureAssessment];
    v40 = v46 = gestureAssessment;
    v14 = [(NSString *)v39 isEqualToString:v40];

    if (v46)
    {
      v18 = v67;
      if (!v47)
      {
        goto LABEL_67;
      }

      goto LABEL_66;
    }

    v18 = v67;
    v42 = v44;
    goto LABEL_109;
  }

  v14 = 0;
LABEL_94:

  return v14;
}

@end