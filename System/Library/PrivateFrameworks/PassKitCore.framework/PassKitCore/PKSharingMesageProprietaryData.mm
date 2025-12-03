@interface PKSharingMesageProprietaryData
- (PKSharingMesageProprietaryData)init;
- (PKSharingMesageProprietaryData)initWithDictionary:(id)dictionary;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation PKSharingMesageProprietaryData

- (PKSharingMesageProprietaryData)init
{
  v3.receiver = self;
  v3.super_class = PKSharingMesageProprietaryData;
  return [(PKSharingMesageProprietaryData *)&v3 init];
}

- (PKSharingMesageProprietaryData)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    v5 = [(PKSharingMesageProprietaryData *)self init];
    if (v5)
    {
      v6 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"displayableSharedEntitlements"];
      v7 = [v6 pk_arrayBySafelyApplyingBlock:&__block_literal_global_13];
      displayableSharedEntitlements = v5->_displayableSharedEntitlements;
      v5->_displayableSharedEntitlements = v7;

      v9 = [dictionaryCopy PKStringForKey:@"accessType"];
      v5->_accessType = PKSecureElementAccessPassTypeFromString(v9);
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

PKDisplayablePassEntitlement *__53__PKSharingMesageProprietaryData_initWithDictionary___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKDisplayablePassEntitlement alloc] initWithDictionary:v2];

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(NSArray *)self->_displayableSharedEntitlements pk_arrayByApplyingBlock:&__block_literal_global_24];
  [v3 setObject:v4 forKeyedSubscript:@"displayableSharedEntitlements"];

  v5 = PKSecureElementAccessPassTypeToString(self->_accessType);
  [v3 setObject:v5 forKeyedSubscript:@"accessType"];

  v6 = [v3 copy];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  [v6 appendFormat:@"displayableSharedEntitlements: '%@'; ", self->_displayableSharedEntitlements];
  v7 = PKSecureElementAccessPassTypeToString(self->_accessType);
  [v6 appendFormat:@"accessType: '%@'; ", v7];

  [v6 appendFormat:@">"];
  v8 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v8;
}

@end