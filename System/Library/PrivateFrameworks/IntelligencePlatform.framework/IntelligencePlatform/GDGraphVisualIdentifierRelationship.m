@interface GDGraphVisualIdentifierRelationship
- (GDGraphVisualIdentifierRelationship)initWithVisualIdentifierField:(id)a3 associationReasonField:(id)a4 suggestedNameField:(id)a5 suggestedRelationshipToDeviceOwnerField:(id)a6 allVisualIdentifierField:(id)a7 allAssociationReasonField:(id)a8 allSuggestedNameField:(id)a9 allSuggestedRelationshipToDeviceOwnerField:(id)a10;
@end

@implementation GDGraphVisualIdentifierRelationship

- (GDGraphVisualIdentifierRelationship)initWithVisualIdentifierField:(id)a3 associationReasonField:(id)a4 suggestedNameField:(id)a5 suggestedRelationshipToDeviceOwnerField:(id)a6 allVisualIdentifierField:(id)a7 allAssociationReasonField:(id)a8 allSuggestedNameField:(id)a9 allSuggestedRelationshipToDeviceOwnerField:(id)a10
{
  v27 = a3;
  v26 = a4;
  v25 = a5;
  v24 = a6;
  v23 = a7;
  v22 = a8;
  v17 = a9;
  v18 = a10;
  v28.receiver = self;
  v28.super_class = GDGraphVisualIdentifierRelationship;
  v19 = [(GDGraphVisualIdentifierRelationship *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_visualIdentifier, a3);
    objc_storeStrong(&v20->_associationReason, a4);
    objc_storeStrong(&v20->_suggestedName, a5);
    objc_storeStrong(&v20->_suggestedRelationshipToDeviceOwner, a6);
    objc_storeStrong(&v20->_allVisualIdentifier, a7);
    objc_storeStrong(&v20->_allAssociationReason, a8);
    objc_storeStrong(&v20->_allSuggestedName, a9);
    objc_storeStrong(&v20->_allSuggestedRelationshipToDeviceOwner, a10);
  }

  return v20;
}

@end