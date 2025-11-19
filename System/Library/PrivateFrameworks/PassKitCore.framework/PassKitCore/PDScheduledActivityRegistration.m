@interface PDScheduledActivityRegistration
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToScheduledActivityRegistration:(id)a3;
- (PDScheduledActivityRegistration)initWithActivityCriteria:(id)a3 activityContext:(id)a4;
- (PDScheduledActivityRegistration)initWithCoder:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PDScheduledActivityRegistration

- (PDScheduledActivityRegistration)initWithActivityCriteria:(id)a3 activityContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PDScheduledActivityRegistration;
  v9 = [(PDScheduledActivityRegistration *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_activityCriteria, a3);
    if (v8)
    {
      if (NSClassFromString(&cfstr_Pdusernotifica.isa) && (objc_opt_isKindOfClass() & 1) != 0)
      {
        objc_storeStrong(&v10->_activityContext, a4);
      }
    }
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_activityCriteria];
  [v3 safelyAddObject:self->_activityContext];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PDScheduledActivityRegistration *)self isEqualToScheduledActivityRegistration:v5];
  }

  return v6;
}

- (BOOL)isEqualToScheduledActivityRegistration:(id)a3
{
  v4 = a3;
  activityCriteria = self->_activityCriteria;
  v6 = v4[1];
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
  v10 = v4[2];
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

- (PDScheduledActivityRegistration)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PDScheduledActivityRegistration;
  v5 = [(PDScheduledActivityRegistration *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activityCritera"];
    activityCriteria = v5->_activityCriteria;
    v5->_activityCriteria = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activityContextData"];
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

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [v6 encodeObject:self->_activityCriteria forKey:@"activityCritera"];
  activityContext = self->_activityContext;
  if (activityContext)
  {
    v5 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:activityContext requiringSecureCoding:1 error:0];
    [v6 encodeObject:v5 forKey:@"activityContextData"];
  }
}

@end