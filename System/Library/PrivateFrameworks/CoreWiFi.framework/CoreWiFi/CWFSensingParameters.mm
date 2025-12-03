@interface CWFSensingParameters
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSensingParameters:(id)parameters;
- (CWFSensingParameters)init;
- (CWFSensingParameters)initWithCoder:(id)coder;
- (NSString)description;
- (id)JSONCompatibleKeyValueMap;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CWFSensingParameters

- (id)JSONCompatibleKeyValueMap
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CWFSensingParameters numberOfReports](self, "numberOfReports")}];
  [v3 setObject:v4 forKeyedSubscript:@"numberOfReports"];

  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[CWFSensingParameters matchFrameType](self, "matchFrameType")}];
  [v3 setObject:v5 forKeyedSubscript:@"matchFrameType"];

  matchMACAddresses = [(CWFSensingParameters *)self matchMACAddresses];
  [v3 setObject:matchMACAddresses forKeyedSubscript:@"matchMACAddresses"];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CWFSensingParameters timeout](self, "timeout")}];
  [v3 setObject:v7 forKeyedSubscript:@"timeout"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFSensingParameters submitMetric](self, "submitMetric")}];
  [v3 setObject:v8 forKeyedSubscript:@"submitMetric"];

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CWFSensingParameters scheduleOnceAfter](self, "scheduleOnceAfter")}];
  [v3 setObject:v9 forKeyedSubscript:@"scheduleOnceAfter"];

  v10 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CWFSensingParameters scheduleDailyAt](self, "scheduleDailyAt")}];
  [v3 setObject:v10 forKeyedSubscript:@"scheduleDailyAt"];

  activityLabels = [(CWFSensingParameters *)self activityLabels];
  [v3 setObject:activityLabels forKeyedSubscript:@"activityLabels"];

  placeLabels = [(CWFSensingParameters *)self placeLabels];
  [v3 setObject:placeLabels forKeyedSubscript:@"placeLabels"];

  comment = [(CWFSensingParameters *)self comment];
  [v3 setObject:comment forKeyedSubscript:@"comment"];

  v14 = sub_1E0BCEC64(v3, 0, 1u);
  if (v14)
  {
    v15 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v14];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (CWFSensingParameters)init
{
  v3.receiver = self;
  v3.super_class = CWFSensingParameters;
  result = [(CWFSensingParameters *)&v3 init];
  if (result)
  {
    result->_numberOfReports = 50;
    result->_matchFrameType = 1;
    result->_timeout = 25000;
    result->_submitMetric = 0;
    *&result->_scheduleOnceAfter = vdupq_n_s64(0xFFFFFFFFFFFFFFFELL);
  }

  return result;
}

- (NSString)description
{
  string = [MEMORY[0x1E696AD60] string];
  [string appendFormat:@"numberOfReports=%ld, ", self->_numberOfReports];
  [string appendFormat:@"matchFrameType=%d, ", self->_matchFrameType];
  [string appendFormat:@"matchMACAddresses="];
  if ([(NSArray *)self->_matchMACAddresses count])
  {
    v4 = 0;
    do
    {
      v5 = [(NSArray *)self->_matchMACAddresses objectAtIndexedSubscript:v4];
      v6 = CWFCorrectEthernetAddressString(v5);
      [string appendFormat:@"%@;", v6];

      ++v4;
    }

    while (v4 < [(NSArray *)self->_matchMACAddresses count]);
  }

  [string appendFormat:@", "];
  [string appendFormat:@"timeout=%ld, ", self->_timeout];
  [string appendFormat:@"submitMetric=%d, ", self->_submitMetric];
  [string appendFormat:@"scheduleOnceAfter=%ld, ", self->_scheduleOnceAfter];
  [string appendFormat:@"scheduleDailyAt=%ld, ", self->_scheduleDailyAt];
  [string appendFormat:@"activityLabels=%@, ", self->_activityLabels];
  [string appendFormat:@"placeLabels=%@, ", self->_placeLabels];
  [string appendFormat:@"comment=%@", self->_comment];

  return string;
}

- (BOOL)isEqualToSensingParameters:(id)parameters
{
  parametersCopy = parameters;
  numberOfReports = self->_numberOfReports;
  if (numberOfReports == [parametersCopy numberOfReports])
  {
    matchFrameType = self->_matchFrameType;
    if (matchFrameType == [parametersCopy matchFrameType])
    {
      matchMACAddresses = self->_matchMACAddresses;
      matchMACAddresses = [parametersCopy matchMACAddresses];
      if (matchMACAddresses != matchMACAddresses)
      {
        if (!self->_matchMACAddresses || ([parametersCopy matchMACAddresses], (v12 = objc_claimAutoreleasedReturnValue()) == 0))
        {
          v14 = 0;
          goto LABEL_37;
        }

        v3 = v12;
        v13 = self->_matchMACAddresses;
        matchMACAddresses2 = [parametersCopy matchMACAddresses];
        if (![(NSArray *)v13 isEqual:matchMACAddresses2])
        {
          v14 = 0;
LABEL_36:

          goto LABEL_37;
        }
      }

      timeout = self->_timeout;
      if (timeout == [parametersCopy timeout])
      {
        submitMetric = self->_submitMetric;
        if (submitMetric == [parametersCopy submitMetric])
        {
          scheduleOnceAfter = self->_scheduleOnceAfter;
          if (scheduleOnceAfter == [parametersCopy scheduleOnceAfter])
          {
            scheduleDailyAt = self->_scheduleDailyAt;
            if (scheduleDailyAt == [parametersCopy scheduleDailyAt])
            {
              activityLabels = self->_activityLabels;
              activityLabels = [parametersCopy activityLabels];
              v21 = activityLabels;
              if (activityLabels == activityLabels)
              {
                v46 = activityLabels;
                v24 = activityLabels;
LABEL_21:
                placeLabels = self->_placeLabels;
                placeLabels = [parametersCopy placeLabels];
                v27 = placeLabels;
                v44 = placeLabels;
                v45 = activityLabels2;
                if (placeLabels == placeLabels)
                {
                  v42 = placeLabels;
                  v28 = v24;
                  v21 = v46;
                }

                else
                {
                  v28 = v24;
                  if (!self->_placeLabels)
                  {
                    v14 = 0;
                    v21 = v46;
                    goto LABEL_43;
                  }

                  placeLabels2 = [parametersCopy placeLabels];
                  v21 = v46;
                  if (!placeLabels2)
                  {
                    goto LABEL_42;
                  }

                  v41 = placeLabels2;
                  v42 = v27;
                  v30 = self->_placeLabels;
                  placeLabels3 = [parametersCopy placeLabels];
                  v32 = v30;
                  v33 = placeLabels3;
                  if (([(NSArray *)v32 isEqual:placeLabels3]& 1) == 0)
                  {

                    v14 = 0;
                    goto LABEL_44;
                  }

                  v40 = v33;
                }

                comment = self->_comment;
                comment = [parametersCopy comment];
                v14 = comment == comment;
                if (v14 || !self->_comment)
                {
LABEL_31:

                  v27 = v42;
                  if (v44 == v42)
                  {
LABEL_43:

LABEL_44:
                    if (v28 != v21)
                    {
                    }

                    goto LABEL_46;
                  }

LABEL_32:

                  goto LABEL_43;
                }

                comment2 = [parametersCopy comment];
                if (comment2)
                {
                  v37 = self->_comment;
                  v47 = comment2;
                  comment3 = [parametersCopy comment];
                  v14 = [(NSString *)v37 isEqual:comment3];

                  goto LABEL_31;
                }

                v27 = v42;
                if (v44 != v42)
                {
                  goto LABEL_32;
                }

LABEL_42:
                v14 = 0;
                goto LABEL_43;
              }

              if (!self->_activityLabels || ([parametersCopy activityLabels], (v22 = objc_claimAutoreleasedReturnValue()) == 0))
              {
                v14 = 0;
LABEL_46:

LABEL_35:
                if (matchMACAddresses != matchMACAddresses)
                {
                  goto LABEL_36;
                }

LABEL_37:

                goto LABEL_38;
              }

              v43 = v22;
              v23 = self->_activityLabels;
              activityLabels2 = [parametersCopy activityLabels];
              if (([(NSArray *)v23 isEqual:activityLabels2]& 1) != 0)
              {
                v46 = v21;
                v24 = activityLabels;
                goto LABEL_21;
              }
            }
          }
        }
      }

      v14 = 0;
      goto LABEL_35;
    }
  }

  v14 = 0;
LABEL_38:

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFSensingParameters *)self isEqualToSensingParameters:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:self->_numberOfReports];
  v4 = [v3 hash];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:self->_matchFrameType];
  v6 = [v5 hash] ^ v4;
  v7 = [(NSArray *)self->_matchMACAddresses hash];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_timeout];
  v9 = v6 ^ v7 ^ [v8 hash];
  submitMetric = self->_submitMetric;
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:self->_scheduleOnceAfter];
  v12 = submitMetric ^ [v11 hash];
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:self->_scheduleDailyAt];
  v14 = v9 ^ v12 ^ [v13 hash];
  v15 = [(NSArray *)self->_activityLabels hash];
  v16 = v15 ^ [(NSArray *)self->_placeLabels hash];
  v17 = v16 ^ [(NSString *)self->_comment hash];

  return v14 ^ v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[CWFSensingParameters allocWithZone:?]];
  [(CWFSensingParameters *)v4 setNumberOfReports:self->_numberOfReports];
  [(CWFSensingParameters *)v4 setMatchFrameType:self->_matchFrameType];
  [(CWFSensingParameters *)v4 setMatchMACAddresses:self->_matchMACAddresses];
  [(CWFSensingParameters *)v4 setTimeout:self->_timeout];
  [(CWFSensingParameters *)v4 setSubmitMetric:self->_submitMetric];
  [(CWFSensingParameters *)v4 setScheduleOnceAfter:self->_scheduleOnceAfter];
  [(CWFSensingParameters *)v4 setScheduleDailyAt:self->_scheduleDailyAt];
  [(CWFSensingParameters *)v4 setActivityLabels:self->_activityLabels];
  [(CWFSensingParameters *)v4 setPlaceLabels:self->_placeLabels];
  [(CWFSensingParameters *)v4 setComment:self->_comment];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  numberOfReports = self->_numberOfReports;
  coderCopy = coder;
  [coderCopy encodeInteger:numberOfReports forKey:@"_numberOfReports"];
  [coderCopy encodeInteger:self->_matchFrameType forKey:@"_matchFrameType"];
  [coderCopy encodeObject:self->_matchMACAddresses forKey:@"_matchMACAddresses"];
  [coderCopy encodeInteger:self->_timeout forKey:@"_timeout"];
  [coderCopy encodeBool:self->_submitMetric forKey:@"_submitMetric"];
  [coderCopy encodeInteger:self->_scheduleOnceAfter forKey:@"_scheduleOnceAfter"];
  [coderCopy encodeInteger:self->_scheduleDailyAt forKey:@"_scheduleDailyAt"];
  [coderCopy encodeObject:self->_activityLabels forKey:@"_activityLabels"];
  [coderCopy encodeObject:self->_placeLabels forKey:@"_placeLabels"];
  [coderCopy encodeObject:self->_comment forKey:@"_comment"];
}

- (CWFSensingParameters)initWithCoder:(id)coder
{
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = CWFSensingParameters;
  v5 = [(CWFSensingParameters *)&v24 init];
  if (v5)
  {
    v5->_numberOfReports = [coderCopy decodeIntegerForKey:@"_numberOfReports"];
    v5->_matchFrameType = [coderCopy decodeIntegerForKey:@"_matchFrameType"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"_matchMACAddresses"];
    matchMACAddresses = v5->_matchMACAddresses;
    v5->_matchMACAddresses = v9;

    v5->_timeout = [coderCopy decodeIntegerForKey:@"_timeout"];
    v5->_submitMetric = [coderCopy decodeBoolForKey:@"_submitMetric"];
    v5->_scheduleOnceAfter = [coderCopy decodeIntegerForKey:@"_scheduleOnceAfter"];
    v5->_scheduleDailyAt = [coderCopy decodeIntegerForKey:@"_scheduleDailyAt"];
    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"_activityLabels"];
    activityLabels = v5->_activityLabels;
    v5->_activityLabels = v14;

    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"_placeLabels"];
    placeLabels = v5->_placeLabels;
    v5->_placeLabels = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_comment"];
    comment = v5->_comment;
    v5->_comment = v21;
  }

  return v5;
}

@end