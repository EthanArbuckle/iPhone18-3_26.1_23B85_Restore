@interface PDScheduledActivityRegistration
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToScheduledActivityRegistration:(id)registration;
- (PDScheduledActivityRegistration)initWithActivityCriteria:(id)criteria activityContext:(id)context;
- (PDScheduledActivityRegistration)initWithCoder:(id)coder;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PDScheduledActivityRegistration

- (PDScheduledActivityRegistration)initWithActivityCriteria:(id)criteria activityContext:(id)context
{
  criteriaCopy = criteria;
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = PDScheduledActivityRegistration;
  v9 = [(PDScheduledActivityRegistration *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_activityCriteria, criteria);
    if (contextCopy)
    {
      if (NSClassFromString(&cfstr_Pdusernotifica.isa) && (objc_opt_isKindOfClass() & 1) != 0)
      {
        objc_storeStrong(&v10->_activityContext, context);
      }
    }
  }

  return v10;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_activityCriteria];
  [array safelyAddObject:self->_activityContext];
  v4 = PKCombinedHash(17, array);

  return v4;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PDScheduledActivityRegistration *)self isEqualToScheduledActivityRegistration:v5];
  }

  return v6;
}

- (BOOL)isEqualToScheduledActivityRegistration:(id)registration
{
  registrationCopy = registration;
  activityCriteria = self->_activityCriteria;
  v6 = registrationCopy[1];
  if (activityCriteria)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if ([(PDScheduledActivityCriteria *)activityCriteria isEqual:?])
    {
      goto LABEL_9;
    }

LABEL_7:
    v8 = 0;
    goto LABEL_13;
  }

  if (activityCriteria != v6)
  {
    goto LABEL_7;
  }

LABEL_9:
  activityContext = self->_activityContext;
  v10 = registrationCopy[2];
  if (activityContext && v10)
  {
    v8 = [activityContext isEqual:?];
  }

  else
  {
    v8 = activityContext == v10;
  }

LABEL_13:

  return v8;
}

- (PDScheduledActivityRegistration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = PDScheduledActivityRegistration;
  v5 = [(PDScheduledActivityRegistration *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activityCritera"];
    activityCriteria = v5->_activityCriteria;
    v5->_activityCriteria = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activityContextData"];
    if (v8)
    {
      v9 = NSClassFromString(&cfstr_Pdusernotifica.isa);
      if (v9)
      {
        v9 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:v9 fromData:v8 error:0];
      }

      activityContext = v5->_activityContext;
      v5->_activityContext = v9;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_activityCriteria forKey:@"activityCritera"];
  activityContext = self->_activityContext;
  if (activityContext)
  {
    v5 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:activityContext requiringSecureCoding:1 error:0];
    [coderCopy encodeObject:v5 forKey:@"activityContextData"];
  }
}

@end