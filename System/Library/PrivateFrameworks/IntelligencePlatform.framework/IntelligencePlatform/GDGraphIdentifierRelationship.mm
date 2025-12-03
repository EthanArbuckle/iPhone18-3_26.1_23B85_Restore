@interface GDGraphIdentifierRelationship
- (GDGraphIdentifierRelationship)initWithTypeField:(id)field idField:(id)idField hasProfileImageField:(id)imageField allTypeField:(id)typeField allIdField:(id)allIdField allHasProfileImageField:(id)profileImageField;
@end

@implementation GDGraphIdentifierRelationship

- (GDGraphIdentifierRelationship)initWithTypeField:(id)field idField:(id)idField hasProfileImageField:(id)imageField allTypeField:(id)typeField allIdField:(id)allIdField allHasProfileImageField:(id)profileImageField
{
  fieldCopy = field;
  idFieldCopy = idField;
  imageFieldCopy = imageField;
  typeFieldCopy = typeField;
  allIdFieldCopy = allIdField;
  profileImageFieldCopy = profileImageField;
  v24.receiver = self;
  v24.super_class = GDGraphIdentifierRelationship;
  v18 = [(GDGraphIdentifierRelationship *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_type, field);
    objc_storeStrong(&v19->_id, idField);
    objc_storeStrong(&v19->_hasProfileImage, imageField);
    objc_storeStrong(&v19->_allType, typeField);
    objc_storeStrong(&v19->_allId, allIdField);
    objc_storeStrong(&v19->_allHasProfileImage, profileImageField);
  }

  return v19;
}

@end