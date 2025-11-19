@interface GDSiriPersonOrganization
- (GDSiriPersonOrganization)initWithOrganizationName:(id)a3 phoneticOrganizationName:(id)a4;
@end

@implementation GDSiriPersonOrganization

- (GDSiriPersonOrganization)initWithOrganizationName:(id)a3 phoneticOrganizationName:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = GDSiriPersonOrganization;
  v9 = [(GDSiriPersonOrganization *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_organizationName, a3);
    objc_storeStrong(&v10->_phoneticOrganizationName, a4);
  }

  return v10;
}

@end