@interface BBBulletinRequestParameters
+ (id)requestParametersForDestination:(unint64_t)a3 withSinceDate:(id)a4 maximumCount:(int64_t)a5 enabledSectionIDs:(id)a6;
- (BBBulletinRequestParameters)initWithCoder:(id)a3;
- (BBBulletinRequestParameters)initWithDestination:(unint64_t)a3 sinceDate:(id)a4 maximumCount:(int64_t)a5 enabledSectionIDs:(id)a6;
- (NSSet)enabledSectionIDs;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BBBulletinRequestParameters

+ (id)requestParametersForDestination:(unint64_t)a3 withSinceDate:(id)a4 maximumCount:(int64_t)a5 enabledSectionIDs:(id)a6
{
  v9 = a6;
  v10 = a4;
  v11 = [objc_alloc(objc_opt_class()) initWithDestination:a3 sinceDate:v10 maximumCount:a5 enabledSectionIDs:v9];

  return v11;
}

- (BBBulletinRequestParameters)initWithDestination:(unint64_t)a3 sinceDate:(id)a4 maximumCount:(int64_t)a5 enabledSectionIDs:(id)a6
{
  v10 = a4;
  v11 = a6;
  if (a3 != 2)
  {
    [BBBulletinRequestParameters initWithDestination:sinceDate:maximumCount:enabledSectionIDs:];
  }

  v19.receiver = self;
  v19.super_class = BBBulletinRequestParameters;
  v12 = [(BBBulletinRequestParameters *)&v19 init];
  v13 = v12;
  if (v12)
  {
    v12->_publisherDestination = a3;
    v14 = [v10 copy];
    sinceDate = v13->_sinceDate;
    v13->_sinceDate = v14;

    v13->_maximumCount = a5;
    v16 = [v11 copy];
    enabledSectionIDs = v13->_enabledSectionIDs;
    v13->_enabledSectionIDs = v16;
  }

  return v13;
}

- (BBBulletinRequestParameters)initWithCoder:(id)a3
{
  v15[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"BBPublisherDestination"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BBSinceDate"];
  v7 = [v4 decodeIntegerForKey:@"BBMaximumCount"];
  v8 = MEMORY[0x277CBEB98];
  v15[0] = objc_opt_class();
  v15[1] = objc_opt_class();
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v10 = [v8 setWithArray:v9];
  v11 = [v4 decodeObjectOfClasses:v10 forKey:@"BBEnabledSectionIDs"];

  v12 = [(BBBulletinRequestParameters *)self initWithDestination:v5 sinceDate:v6 maximumCount:v7 enabledSectionIDs:v11];
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeInteger:self->_publisherDestination forKey:@"BBPublisherDestination"];
  [v5 encodeObject:self->_sinceDate forKey:@"BBSinceDate"];
  [v5 encodeInteger:self->_maximumCount forKey:@"BBMaximumCount"];
  enabledSectionIDs = self->_enabledSectionIDs;
  if (enabledSectionIDs)
  {
    [v5 encodeObject:enabledSectionIDs forKey:@"BBEnabledSectionIDs"];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  publisherDestination = self->_publisherDestination;
  maximumCount = self->_maximumCount;
  sinceDate = self->_sinceDate;
  enabledSectionIDs = self->_enabledSectionIDs;

  return [v4 initWithDestination:publisherDestination sinceDate:sinceDate maximumCount:maximumCount enabledSectionIDs:enabledSectionIDs];
}

- (NSSet)enabledSectionIDs
{
  enabledSectionIDs = self->_enabledSectionIDs;
  if (enabledSectionIDs)
  {
    v3 = enabledSectionIDs;
  }

  else
  {
    v3 = [MEMORY[0x277CBEB98] set];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = @"[Invalid destination]";
  if (self->_publisherDestination == 2)
  {
    v5 = @"BBPublisherDestinationNotices";
  }

  return [v3 stringWithFormat:@"<%@: %p; publisherDestination:%@; sinceDate:%@; maxCount:%ld; enabledSectionIDs:%@>", v4, self, v5, self->_sinceDate, self->_maximumCount, self->_enabledSectionIDs];
}

- (void)initWithDestination:sinceDate:maximumCount:enabledSectionIDs:.cold.1()
{
  OUTLINED_FUNCTION_0_3();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:@"IsSingleListTypeDestination(destination)" object:? file:? lineNumber:? description:?];
}

@end