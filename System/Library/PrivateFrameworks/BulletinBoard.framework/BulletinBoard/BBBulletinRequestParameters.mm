@interface BBBulletinRequestParameters
+ (id)requestParametersForDestination:(unint64_t)destination withSinceDate:(id)date maximumCount:(int64_t)count enabledSectionIDs:(id)ds;
- (BBBulletinRequestParameters)initWithCoder:(id)coder;
- (BBBulletinRequestParameters)initWithDestination:(unint64_t)destination sinceDate:(id)date maximumCount:(int64_t)count enabledSectionIDs:(id)ds;
- (NSSet)enabledSectionIDs;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BBBulletinRequestParameters

+ (id)requestParametersForDestination:(unint64_t)destination withSinceDate:(id)date maximumCount:(int64_t)count enabledSectionIDs:(id)ds
{
  dsCopy = ds;
  dateCopy = date;
  v11 = [objc_alloc(objc_opt_class()) initWithDestination:destination sinceDate:dateCopy maximumCount:count enabledSectionIDs:dsCopy];

  return v11;
}

- (BBBulletinRequestParameters)initWithDestination:(unint64_t)destination sinceDate:(id)date maximumCount:(int64_t)count enabledSectionIDs:(id)ds
{
  dateCopy = date;
  dsCopy = ds;
  if (destination != 2)
  {
    [BBBulletinRequestParameters initWithDestination:sinceDate:maximumCount:enabledSectionIDs:];
  }

  v19.receiver = self;
  v19.super_class = BBBulletinRequestParameters;
  v12 = [(BBBulletinRequestParameters *)&v19 init];
  v13 = v12;
  if (v12)
  {
    v12->_publisherDestination = destination;
    v14 = [dateCopy copy];
    sinceDate = v13->_sinceDate;
    v13->_sinceDate = v14;

    v13->_maximumCount = count;
    v16 = [dsCopy copy];
    enabledSectionIDs = v13->_enabledSectionIDs;
    v13->_enabledSectionIDs = v16;
  }

  return v13;
}

- (BBBulletinRequestParameters)initWithCoder:(id)coder
{
  v15[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"BBPublisherDestination"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BBSinceDate"];
  v7 = [coderCopy decodeIntegerForKey:@"BBMaximumCount"];
  v8 = MEMORY[0x277CBEB98];
  v15[0] = objc_opt_class();
  v15[1] = objc_opt_class();
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v10 = [v8 setWithArray:v9];
  v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"BBEnabledSectionIDs"];

  v12 = [(BBBulletinRequestParameters *)self initWithDestination:v5 sinceDate:v6 maximumCount:v7 enabledSectionIDs:v11];
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:self->_publisherDestination forKey:@"BBPublisherDestination"];
  [coderCopy encodeObject:self->_sinceDate forKey:@"BBSinceDate"];
  [coderCopy encodeInteger:self->_maximumCount forKey:@"BBMaximumCount"];
  enabledSectionIDs = self->_enabledSectionIDs;
  if (enabledSectionIDs)
  {
    [coderCopy encodeObject:enabledSectionIDs forKey:@"BBEnabledSectionIDs"];
  }
}

- (id)copyWithZone:(_NSZone *)zone
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