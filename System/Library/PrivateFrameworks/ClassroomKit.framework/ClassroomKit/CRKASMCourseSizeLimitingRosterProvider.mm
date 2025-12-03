@interface CRKASMCourseSizeLimitingRosterProvider
- (BOOL)isLegalToUpdateCourse:(id)course withProperties:(id)properties error:(id *)error;
- (CRKASMCourseSizeLimitingRosterProvider)initWithRosterProvider:(id)provider maxUserCount:(int64_t)count maxTrustedUserCount:(int64_t)userCount;
- (id)courseForIdentifier:(id)identifier;
- (void)createCourseWithProperties:(id)properties completion:(id)completion;
- (void)updateCourseWithIdentifier:(id)identifier properties:(id)properties completion:(id)completion;
@end

@implementation CRKASMCourseSizeLimitingRosterProvider

- (CRKASMCourseSizeLimitingRosterProvider)initWithRosterProvider:(id)provider maxUserCount:(int64_t)count maxTrustedUserCount:(int64_t)userCount
{
  v8.receiver = self;
  v8.super_class = CRKASMCourseSizeLimitingRosterProvider;
  result = [(CRKASMRosterProviderDecoratorBase *)&v8 initWithRosterProvider:provider];
  if (result)
  {
    result->_maxUserCount = count;
    result->_maxTrustedUserCount = userCount;
  }

  return result;
}

- (void)createCourseWithProperties:(id)properties completion:(id)completion
{
  propertiesCopy = properties;
  completionCopy = completion;
  updateProperties = [propertiesCopy updateProperties];
  v12 = 0;
  v9 = [(CRKASMCourseSizeLimitingRosterProvider *)self isLegalToUpdateCourse:0 withProperties:updateProperties error:&v12];
  v10 = v12;

  if (v9)
  {
    underlyingRosterProvider = [(CRKASMRosterProviderDecoratorBase *)self underlyingRosterProvider];
    [underlyingRosterProvider createCourseWithProperties:propertiesCopy completion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, v10);
  }
}

- (void)updateCourseWithIdentifier:(id)identifier properties:(id)properties completion:(id)completion
{
  identifierCopy = identifier;
  propertiesCopy = properties;
  completionCopy = completion;
  v11 = [(CRKASMCourseSizeLimitingRosterProvider *)self courseForIdentifier:identifierCopy];
  v15 = 0;
  v12 = [(CRKASMCourseSizeLimitingRosterProvider *)self isLegalToUpdateCourse:v11 withProperties:propertiesCopy error:&v15];
  v13 = v15;
  if (v12)
  {
    underlyingRosterProvider = [(CRKASMRosterProviderDecoratorBase *)self underlyingRosterProvider];
    [underlyingRosterProvider updateCourseWithIdentifier:identifierCopy properties:propertiesCopy completion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, v13);
  }
}

- (BOOL)isLegalToUpdateCourse:(id)course withProperties:(id)properties error:(id *)error
{
  v8 = MEMORY[0x277CBEB58];
  propertiesCopy = properties;
  courseCopy = course;
  users = [courseCopy users];
  v12 = users;
  v13 = MEMORY[0x277CBEBF8];
  if (users)
  {
    v14 = users;
  }

  else
  {
    v14 = MEMORY[0x277CBEBF8];
  }

  v15 = [v8 setWithArray:v14];

  usersToAdd = [propertiesCopy usersToAdd];
  [v15 unionSet:usersToAdd];

  usersToRemove = [propertiesCopy usersToRemove];
  [v15 minusSet:usersToRemove];

  v18 = MEMORY[0x277CBEB58];
  trustedUsers = [courseCopy trustedUsers];

  if (trustedUsers)
  {
    v20 = trustedUsers;
  }

  else
  {
    v20 = v13;
  }

  v21 = [v18 setWithArray:v20];

  trustedUsersToAdd = [propertiesCopy trustedUsersToAdd];
  [v21 unionSet:trustedUsersToAdd];

  trustedUsersToRemove = [propertiesCopy trustedUsersToRemove];

  [v21 minusSet:trustedUsersToRemove];
  v24 = [v15 count];
  if (v24 <= -[CRKASMCourseSizeLimitingRosterProvider maxUserCount](self, "maxUserCount") && (v25 = [v21 count], v25 <= -[CRKASMCourseSizeLimitingRosterProvider maxTrustedUserCount](self, "maxTrustedUserCount")))
  {
    v26 = 1;
  }

  else if (error)
  {
    CRKErrorWithCodeAndUserInfo(155, 0);
    *error = v26 = 0;
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (id)courseForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  underlyingRosterProvider = [(CRKASMRosterProviderDecoratorBase *)self underlyingRosterProvider];
  roster = [underlyingRosterProvider roster];
  courses = [roster courses];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__CRKASMCourseSizeLimitingRosterProvider_courseForIdentifier___block_invoke;
  v11[3] = &unk_278DC1C30;
  v12 = identifierCopy;
  v8 = identifierCopy;
  v9 = [courses crk_firstMatching:v11];

  return v9;
}

uint64_t __62__CRKASMCourseSizeLimitingRosterProvider_courseForIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

@end