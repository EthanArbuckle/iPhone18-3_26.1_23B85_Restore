@interface GDGraphIdentifierRelationship
- (GDGraphIdentifierRelationship)initWithTypeField:(id)a3 idField:(id)a4 hasProfileImageField:(id)a5 allTypeField:(id)a6 allIdField:(id)a7 allHasProfileImageField:(id)a8;
@end

@implementation GDGraphIdentifierRelationship

- (GDGraphIdentifierRelationship)initWithTypeField:(id)a3 idField:(id)a4 hasProfileImageField:(id)a5 allTypeField:(id)a6 allIdField:(id)a7 allHasProfileImageField:(id)a8
{
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = GDGraphIdentifierRelationship;
  v18 = [(GDGraphIdentifierRelationship *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_type, a3);
    objc_storeStrong(&v19->_id, a4);
    objc_storeStrong(&v19->_hasProfileImage, a5);
    objc_storeStrong(&v19->_allType, a6);
    objc_storeStrong(&v19->_allId, a7);
    objc_storeStrong(&v19->_allHasProfileImage, a8);
  }

  return v19;
}

@end