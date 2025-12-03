@interface GDSiriPersonOrganization
- (GDSiriPersonOrganization)initWithOrganizationName:(id)name phoneticOrganizationName:(id)organizationName;
@end

@implementation GDSiriPersonOrganization

- (GDSiriPersonOrganization)initWithOrganizationName:(id)name phoneticOrganizationName:(id)organizationName
{
  nameCopy = name;
  organizationNameCopy = organizationName;
  v12.receiver = self;
  v12.super_class = GDSiriPersonOrganization;
  v9 = [(GDSiriPersonOrganization *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_organizationName, name);
    objc_storeStrong(&v10->_phoneticOrganizationName, organizationName);
  }

  return v10;
}

@end