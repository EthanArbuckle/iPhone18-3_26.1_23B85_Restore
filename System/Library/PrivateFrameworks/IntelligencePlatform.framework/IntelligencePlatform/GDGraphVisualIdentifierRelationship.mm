@interface GDGraphVisualIdentifierRelationship
- (GDGraphVisualIdentifierRelationship)initWithVisualIdentifierField:(id)field associationReasonField:(id)reasonField suggestedNameField:(id)nameField suggestedRelationshipToDeviceOwnerField:(id)ownerField allVisualIdentifierField:(id)identifierField allAssociationReasonField:(id)associationReasonField allSuggestedNameField:(id)suggestedNameField allSuggestedRelationshipToDeviceOwnerField:(id)self0;
@end

@implementation GDGraphVisualIdentifierRelationship

- (GDGraphVisualIdentifierRelationship)initWithVisualIdentifierField:(id)field associationReasonField:(id)reasonField suggestedNameField:(id)nameField suggestedRelationshipToDeviceOwnerField:(id)ownerField allVisualIdentifierField:(id)identifierField allAssociationReasonField:(id)associationReasonField allSuggestedNameField:(id)suggestedNameField allSuggestedRelationshipToDeviceOwnerField:(id)self0
{
  fieldCopy = field;
  reasonFieldCopy = reasonField;
  nameFieldCopy = nameField;
  ownerFieldCopy = ownerField;
  identifierFieldCopy = identifierField;
  associationReasonFieldCopy = associationReasonField;
  suggestedNameFieldCopy = suggestedNameField;
  deviceOwnerFieldCopy = deviceOwnerField;
  v28.receiver = self;
  v28.super_class = GDGraphVisualIdentifierRelationship;
  v19 = [(GDGraphVisualIdentifierRelationship *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_visualIdentifier, field);
    objc_storeStrong(&v20->_associationReason, reasonField);
    objc_storeStrong(&v20->_suggestedName, nameField);
    objc_storeStrong(&v20->_suggestedRelationshipToDeviceOwner, ownerField);
    objc_storeStrong(&v20->_allVisualIdentifier, identifierField);
    objc_storeStrong(&v20->_allAssociationReason, associationReasonField);
    objc_storeStrong(&v20->_allSuggestedName, suggestedNameField);
    objc_storeStrong(&v20->_allSuggestedRelationshipToDeviceOwner, deviceOwnerField);
  }

  return v20;
}

@end