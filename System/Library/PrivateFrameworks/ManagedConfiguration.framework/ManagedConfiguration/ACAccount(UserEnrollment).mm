@interface ACAccount(UserEnrollment)
- (uint64_t)mc_isUserEnrollmentAccount;
- (void)unenrollAccountWithCompletionHandler:()UserEnrollment;
@end

@implementation ACAccount(UserEnrollment)

- (uint64_t)mc_isUserEnrollmentAccount
{
  v2 = [a1 accountPropertyForKey:@"userEnrollmentAccount"];

  if (!v2)
  {
    v3 = [MEMORY[0x1E69AD428] sharedConfiguration];
    [v3 refreshDetailsFromDisk];

    v4 = [a1 accountProperties];
    v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69597A0]];
    v6 = [MEMORY[0x1E69AD428] sharedConfiguration];
    v7 = [v6 personaID];
    if ([v5 isEqualToString:v7])
    {
      v8 = [MEMORY[0x1E69AD428] sharedConfiguration];
      v9 = [v8 isUserEnrollment];
    }

    else
    {
      v9 = 0;
    }

    v10 = [MEMORY[0x1E696AD98] numberWithBool:v9];
    [a1 setAccountProperty:v10 forKey:@"userEnrollmentAccount"];
  }

  v11 = [a1 accountPropertyForKey:@"userEnrollmentAccount"];
  v12 = [v11 BOOLValue];

  return v12;
}

- (void)unenrollAccountWithCompletionHandler:()UserEnrollment
{
  v4 = a3;
  if ([a1 mc_isUserEnrollmentAccount])
  {
    v5 = [MEMORY[0x1E69AD428] sharedConfiguration];
    v6 = [v5 managingProfileIdentifier];

    v7 = +[MCProfileConnection sharedConnection];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __66__ACAccount_UserEnrollment__unenrollAccountWithCompletionHandler___block_invoke;
    v8[3] = &unk_1E77D31A0;
    v9 = v4;
    [v7 removeProfileWithIdentifier:v6 completion:v8];
  }

  else if (v4)
  {
    (*(v4 + 2))(v4, 1, 0);
  }
}

@end