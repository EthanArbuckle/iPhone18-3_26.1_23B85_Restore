@interface GDGraphEmploymentRelationship
- (GDGraphEmploymentRelationship)initWithDepartmentField:(id)field organizationIdField:(id)idField allDepartmentField:(id)departmentField allOrganizationIdField:(id)organizationIdField;
@end

@implementation GDGraphEmploymentRelationship

- (GDGraphEmploymentRelationship)initWithDepartmentField:(id)field organizationIdField:(id)idField allDepartmentField:(id)departmentField allOrganizationIdField:(id)organizationIdField
{
  fieldCopy = field;
  idFieldCopy = idField;
  departmentFieldCopy = departmentField;
  organizationIdFieldCopy = organizationIdField;
  v18.receiver = self;
  v18.super_class = GDGraphEmploymentRelationship;
  v15 = [(GDGraphEmploymentRelationship *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_department, field);
    objc_storeStrong(&v16->_organizationId, idField);
    objc_storeStrong(&v16->_allDepartment, departmentField);
    objc_storeStrong(&v16->_allOrganizationId, organizationIdField);
  }

  return v16;
}

@end