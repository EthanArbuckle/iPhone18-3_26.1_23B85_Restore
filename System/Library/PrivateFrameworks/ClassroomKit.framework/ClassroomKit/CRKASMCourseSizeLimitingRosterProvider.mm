@interface CRKASMCourseSizeLimitingRosterProvider
- (BOOL)isLegalToUpdateCourse:(id)a3 withProperties:(id)a4 error:(id *)a5;
- (CRKASMCourseSizeLimitingRosterProvider)initWithRosterProvider:(id)a3 maxUserCount:(int64_t)a4 maxTrustedUserCount:(int64_t)a5;
- (id)courseForIdentifier:(id)a3;
- (void)createCourseWithProperties:(id)a3 completion:(id)a4;
- (void)updateCourseWithIdentifier:(id)a3 properties:(id)a4 completion:(id)a5;
@end

@implementation CRKASMCourseSizeLimitingRosterProvider

- (CRKASMCourseSizeLimitingRosterProvider)initWithRosterProvider:(id)a3 maxUserCount:(int64_t)a4 maxTrustedUserCount:(int64_t)a5
{
  v8.receiver = self;
  v8.super_class = CRKASMCourseSizeLimitingRosterProvider;
  result = [(CRKASMRosterProviderDecoratorBase *)&v8 initWithRosterProvider:a3];
  if (result)
  {
    result->_maxUserCount = a4;
    result->_maxTrustedUserCount = a5;
  }

  return result;
}

- (void)createCourseWithProperties:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 updateProperties];
  v12 = 0;
  v9 = [(CRKASMCourseSizeLimitingRosterProvider *)self isLegalToUpdateCourse:0 withProperties:v8 error:&v12];
  v10 = v12;

  if (v9)
  {
    v11 = [(CRKASMRosterProviderDecoratorBase *)self underlyingRosterProvider];
    [v11 createCourseWithProperties:v6 completion:v7];
  }

  else
  {
    v7[2](v7, v10);
  }
}

- (void)updateCourseWithIdentifier:(id)a3 properties:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CRKASMCourseSizeLimitingRosterProvider *)self courseForIdentifier:v8];
  v15 = 0;
  v12 = [(CRKASMCourseSizeLimitingRosterProvider *)self isLegalToUpdateCourse:v11 withProperties:v9 error:&v15];
  v13 = v15;
  if (v12)
  {
    v14 = [(CRKASMRosterProviderDecoratorBase *)self underlyingRosterProvider];
    [v14 updateCourseWithIdentifier:v8 properties:v9 completion:v10];
  }

  else
  {
    v10[2](v10, v13);
  }
}

- (BOOL)isLegalToUpdateCourse:(id)a3 withProperties:(id)a4 error:(id *)a5
{
  v8 = MEMORY[0x277CBEB58];
  v9 = a4;
  v10 = a3;
  v11 = [v10 users];
  v12 = v11;
  v13 = MEMORY[0x277CBEBF8];
  if (v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = MEMORY[0x277CBEBF8];
  }

  v15 = [v8 setWithArray:v14];

  v16 = [v9 usersToAdd];
  [v15 unionSet:v16];

  v17 = [v9 usersToRemove];
  [v15 minusSet:v17];

  v18 = MEMORY[0x277CBEB58];
  v19 = [v10 trustedUsers];

  if (v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v13;
  }

  v21 = [v18 setWithArray:v20];

  v22 = [v9 trustedUsersToAdd];
  [v21 unionSet:v22];

  v23 = [v9 trustedUsersToRemove];

  [v21 minusSet:v23];
  v24 = [v15 count];
  if (v24 <= -[CRKASMCourseSizeLimitingRosterProvider maxUserCount](self, "maxUserCount") && (v25 = [v21 count], v25 <= -[CRKASMCourseSizeLimitingRosterProvider maxTrustedUserCount](self, "maxTrustedUserCount")))
  {
    v26 = 1;
  }

  else if (a5)
  {
    CRKErrorWithCodeAndUserInfo(155, 0);
    *a5 = v26 = 0;
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (id)courseForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CRKASMRosterProviderDecoratorBase *)self underlyingRosterProvider];
  v6 = [v5 roster];
  v7 = [v6 courses];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__CRKASMCourseSizeLimitingRosterProvider_courseForIdentifier___block_invoke;
  v11[3] = &unk_278DC1C30;
  v12 = v4;
  v8 = v4;
  v9 = [v7 crk_firstMatching:v11];

  return v9;
}

uint64_t __62__CRKASMCourseSizeLimitingRosterProvider_courseForIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

@end