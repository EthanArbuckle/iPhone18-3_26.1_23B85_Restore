@interface ACAccount(UserEnrollment)
- (uint64_t)mc_isUserEnrollmentAccount;
- (void)unenrollAccountWithCompletionHandler:()UserEnrollment;
@end

@implementation ACAccount(UserEnrollment)

- (uint64_t)mc_isUserEnrollmentAccount
{
  v2 = [self accountPropertyForKey:@"userEnrollmentAccount"];

  if (!v2)
  {
    mEMORY[0x1E69AD428] = [MEMORY[0x1E69AD428] sharedConfiguration];
    [mEMORY[0x1E69AD428] refreshDetailsFromDisk];

    accountProperties = [self accountProperties];
    v5 = [accountProperties objectForKeyedSubscript:*MEMORY[0x1E69597A0]];
    mEMORY[0x1E69AD428]2 = [MEMORY[0x1E69AD428] sharedConfiguration];
    personaID = [mEMORY[0x1E69AD428]2 personaID];
    if ([v5 isEqualToString:personaID])
    {
      mEMORY[0x1E69AD428]3 = [MEMORY[0x1E69AD428] sharedConfiguration];
      isUserEnrollment = [mEMORY[0x1E69AD428]3 isUserEnrollment];
    }

    else
    {
      isUserEnrollment = 0;
    }

    v10 = [MEMORY[0x1E696AD98] numberWithBool:isUserEnrollment];
    [self setAccountProperty:v10 forKey:@"userEnrollmentAccount"];
  }

  v11 = [self accountPropertyForKey:@"userEnrollmentAccount"];
  bOOLValue = [v11 BOOLValue];

  return bOOLValue;
}

- (void)unenrollAccountWithCompletionHandler:()UserEnrollment
{
  v4 = a3;
  if ([self mc_isUserEnrollmentAccount])
  {
    mEMORY[0x1E69AD428] = [MEMORY[0x1E69AD428] sharedConfiguration];
    managingProfileIdentifier = [mEMORY[0x1E69AD428] managingProfileIdentifier];

    v7 = +[MCProfileConnection sharedConnection];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __66__ACAccount_UserEnrollment__unenrollAccountWithCompletionHandler___block_invoke;
    v8[3] = &unk_1E77D31A0;
    v9 = v4;
    [v7 removeProfileWithIdentifier:managingProfileIdentifier completion:v8];
  }

  else if (v4)
  {
    (*(v4 + 2))(v4, 1, 0);
  }
}

@end