@interface PKAccountFundingSourceVerification
- (BOOL)isEqual:(id)a3;
- (PKAccountFundingSourceVerification)initWithCoder:(id)a3;
- (PKAccountFundingSourceVerification)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setRecoveryActions:(id)a3;
@end

@implementation PKAccountFundingSourceVerification

- (PKAccountFundingSourceVerification)initWithDictionary:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v31.receiver = self;
  v31.super_class = PKAccountFundingSourceVerification;
  v5 = [(PKAccountFundingSourceVerification *)&v31 init];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"status"];
    v5->_status = PKAccountFundingSourceVerificationStatusFromString(v6);

    v7 = [v4 PKArrayContaining:objc_opt_class() forKey:@"options"];
    v8 = [v7 pk_arrayByApplyingBlock:&__block_literal_global_161_0];
    options = v5->_options;
    v5->_options = v8;

    v10 = [v4 PKDictionaryForKey:@"pendingAttempt"];
    if ([v10 count])
    {
      v11 = [[PKAccountFundingSourceVerificationAttempt alloc] initWithDictionary:v10];
      pendingAttempt = v5->_pendingAttempt;
      v5->_pendingAttempt = v11;
    }

    v13 = [v4 PKDictionaryForKey:@"failedAttempt"];
    if ([v13 count])
    {
      v14 = [[PKAccountFundingSourceVerificationAttempt alloc] initWithDictionary:v13];
      failedAttempt = v5->_failedAttempt;
      v5->_failedAttempt = v14;
    }

    v16 = [v4 PKArrayContaining:objc_opt_class() forKey:@"recoveryActions"];
    if ([v16 count])
    {
      v25 = v13;
      v26 = v10;
      v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v18 = v16;
      v19 = [v18 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v28;
        do
        {
          v22 = 0;
          do
          {
            if (*v28 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = [[PKAccountFundingSourceVerificationAction alloc] initWithDictionary:*(*(&v27 + 1) + 8 * v22)];
            [v17 addObject:v23];

            ++v22;
          }

          while (v20 != v22);
          v20 = [v18 countByEnumeratingWithState:&v27 objects:v32 count:16];
        }

        while (v20);
      }

      [(PKAccountFundingSourceVerification *)v5 setRecoveryActions:v17];
      v13 = v25;
      v10 = v26;
    }
  }

  return v5;
}

uint64_t __57__PKAccountFundingSourceVerification_initWithDictionary___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = PKApplyVerificationTypeFromString(a2);

  return [v2 numberWithUnsignedInteger:v3];
}

- (void)setRecoveryActions:(id)a3
{
  v4 = [a3 sortedArrayUsingComparator:&__block_literal_global_165];
  recoveryActions = self->_recoveryActions;
  self->_recoveryActions = v4;
}

uint64_t __57__PKAccountFundingSourceVerification_setRecoveryActions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 hash];
  v6 = [v4 hash];

  if (v5 > v6)
  {
    return -1;
  }

  else
  {
    return v5 < v6;
  }
}

- (PKAccountFundingSourceVerification)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = PKAccountFundingSourceVerification;
  v5 = [(PKAccountFundingSourceVerification *)&v21 init];
  if (v5)
  {
    v5->_status = [v4 decodeIntegerForKey:@"status"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"options"];
    options = v5->_options;
    v5->_options = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pendingAttempt"];
    pendingAttempt = v5->_pendingAttempt;
    v5->_pendingAttempt = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"failedAttempt"];
    failedAttempt = v5->_failedAttempt;
    v5->_failedAttempt = v13;

    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"recoveryActions"];
    recoveryActions = v5->_recoveryActions;
    v5->_recoveryActions = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  status = self->_status;
  v5 = a3;
  [v5 encodeInteger:status forKey:@"status"];
  [v5 encodeObject:self->_options forKey:@"options"];
  [v5 encodeObject:self->_pendingAttempt forKey:@"pendingAttempt"];
  [v5 encodeObject:self->_failedAttempt forKey:@"failedAttempt"];
  [v5 encodeObject:self->_recoveryActions forKey:@"recoveryActions"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_22;
  }

  options = self->_options;
  v6 = v4[2];
  if (options && v6)
  {
    if (([(NSArray *)options isEqual:?]& 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (options != v6)
  {
    goto LABEL_22;
  }

  pendingAttempt = self->_pendingAttempt;
  v8 = v4[3];
  if (pendingAttempt && v8)
  {
    if (![(PKAccountFundingSourceVerificationAttempt *)pendingAttempt isEqual:?])
    {
      goto LABEL_22;
    }
  }

  else if (pendingAttempt != v8)
  {
    goto LABEL_22;
  }

  failedAttempt = self->_failedAttempt;
  v10 = v4[4];
  if (failedAttempt && v10)
  {
    if (![(PKAccountFundingSourceVerificationAttempt *)failedAttempt isEqual:?])
    {
      goto LABEL_22;
    }
  }

  else if (failedAttempt != v10)
  {
    goto LABEL_22;
  }

  recoveryActions = self->_recoveryActions;
  v12 = v4[5];
  if (!recoveryActions || !v12)
  {
    if (recoveryActions == v12)
    {
      goto LABEL_20;
    }

LABEL_22:
    v13 = 0;
    goto LABEL_23;
  }

  if (([(NSArray *)recoveryActions isEqual:?]& 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_20:
  v13 = self->_status == v4[1];
LABEL_23:

  return v13;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_options];
  [v3 safelyAddObject:self->_pendingAttempt];
  [v3 safelyAddObject:self->_failedAttempt];
  [v3 safelyAddObject:self->_recoveryActions];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_status - v4 + 32 * v4;

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = v3;
  status = self->_status;
  if (status > 4)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_1E79DC398[status];
  }

  [v3 appendFormat:@"status: '%@'; ", v6];
  [v4 appendFormat:@"options: '%@'; ", self->_options];
  [v4 appendFormat:@"pendingAttempt: '%@'; ", self->_pendingAttempt];
  [v4 appendFormat:@"failedAttempt: '%@'; ", self->_failedAttempt];
  [v4 appendFormat:@"recoveryActions: '%@'; ", self->_recoveryActions];
  [v4 appendFormat:@">"];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKAccountFundingSourceVerification allocWithZone:](PKAccountFundingSourceVerification init];
  v5->_status = self->_status;
  v6 = [(NSArray *)self->_options copyWithZone:a3];
  options = v5->_options;
  v5->_options = v6;

  v8 = [(PKAccountFundingSourceVerificationAttempt *)self->_pendingAttempt copyWithZone:a3];
  pendingAttempt = v5->_pendingAttempt;
  v5->_pendingAttempt = v8;

  v10 = [(PKAccountFundingSourceVerificationAttempt *)self->_failedAttempt copyWithZone:a3];
  failedAttempt = v5->_failedAttempt;
  v5->_failedAttempt = v10;

  v12 = [(NSArray *)self->_recoveryActions copyWithZone:a3];
  recoveryActions = v5->_recoveryActions;
  v5->_recoveryActions = v12;

  return v5;
}

@end