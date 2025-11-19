@interface GDGraphEmploymentRelationship
- (GDGraphEmploymentRelationship)initWithDepartmentField:(id)a3 organizationIdField:(id)a4 allDepartmentField:(id)a5 allOrganizationIdField:(id)a6;
@end

@implementation GDGraphEmploymentRelationship

- (GDGraphEmploymentRelationship)initWithDepartmentField:(id)a3 organizationIdField:(id)a4 allDepartmentField:(id)a5 allOrganizationIdField:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = GDGraphEmploymentRelationship;
  v15 = [(GDGraphEmploymentRelationship *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_department, a3);
    objc_storeStrong(&v16->_organizationId, a4);
    objc_storeStrong(&v16->_allDepartment, a5);
    objc_storeStrong(&v16->_allOrganizationId, a6);
  }

  return v16;
}

@end