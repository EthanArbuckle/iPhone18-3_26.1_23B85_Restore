@interface GDLocationAddress
- (GDLocationAddress)initWithRelationshipIdTriplesIterator:(id)iterator;
- (id)description;
@end

@implementation GDLocationAddress

- (id)description
{
  v39 = MEMORY[0x1E696AEC0];
  relationshipIdentifier = [(GDLocationAddress *)self relationshipIdentifier];
  subPremises = [(GDLocationAddress *)self subPremises];
  v42 = subPremises;
  if (subPremises)
  {
    v4 = subPremises;
  }

  else
  {
    v4 = &stru_1F20A2CD8;
  }

  v36 = v4;
  subThoroughfare = [(GDLocationAddress *)self subThoroughfare];
  v41 = subThoroughfare;
  if (subThoroughfare)
  {
    v6 = subThoroughfare;
  }

  else
  {
    v6 = &stru_1F20A2CD8;
  }

  v35 = v6;
  thoroughfare = [(GDLocationAddress *)self thoroughfare];
  v40 = thoroughfare;
  if (thoroughfare)
  {
    v8 = thoroughfare;
  }

  else
  {
    v8 = &stru_1F20A2CD8;
  }

  v34 = v8;
  subLocality = [(GDLocationAddress *)self subLocality];
  v38 = subLocality;
  if (subLocality)
  {
    v10 = subLocality;
  }

  else
  {
    v10 = &stru_1F20A2CD8;
  }

  v33 = v10;
  locality = [(GDLocationAddress *)self locality];
  v12 = locality;
  if (locality)
  {
    v13 = locality;
  }

  else
  {
    v13 = &stru_1F20A2CD8;
  }

  v32 = v13;
  subAdministrativeArea = [(GDLocationAddress *)self subAdministrativeArea];
  v15 = subAdministrativeArea;
  if (subAdministrativeArea)
  {
    v16 = subAdministrativeArea;
  }

  else
  {
    v16 = &stru_1F20A2CD8;
  }

  v31 = v16;
  administrativeArea = [(GDLocationAddress *)self administrativeArea];
  v18 = administrativeArea;
  if (administrativeArea)
  {
    v19 = administrativeArea;
  }

  else
  {
    v19 = &stru_1F20A2CD8;
  }

  postalCode = [(GDLocationAddress *)self postalCode];
  v21 = postalCode;
  if (postalCode)
  {
    v22 = postalCode;
  }

  else
  {
    v22 = &stru_1F20A2CD8;
  }

  country = [(GDLocationAddress *)self country];
  v24 = country;
  if (country)
  {
    v25 = country;
  }

  else
  {
    v25 = &stru_1F20A2CD8;
  }

  iSOCountryCode = [(GDLocationAddress *)self ISOCountryCode];
  v27 = iSOCountryCode;
  if (iSOCountryCode)
  {
    v28 = iSOCountryCode;
  }

  else
  {
    v28 = &stru_1F20A2CD8;
  }

  v29 = [v39 stringWithFormat:@"<GDLocationAddress id:%@ sp:%@ st:%@ t:%@ sl:%@ l:%@ sa:%@ a:%@ p:%@ c:%@ i:%@>", relationshipIdentifier, v36, v35, v34, v33, v32, v31, v19, v22, v25, v28];

  return v29;
}

- (GDLocationAddress)initWithRelationshipIdTriplesIterator:(id)iterator
{
  v31 = *MEMORY[0x1E69E9840];
  iteratorCopy = iterator;
  v29.receiver = self;
  v29.super_class = GDLocationAddress;
  v5 = [(GDLocationAddress *)&v29 init];
  if (!v5)
  {
    goto LABEL_23;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = iteratorCopy;
  obj = iteratorCopy;
  v6 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    p_ISOCountryCode = &v5->_ISOCountryCode;
    v8 = *v26;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        if (!v5->_relationshipIdentifier)
        {
          v11 = [GDRelationshipIdentifier alloc];
          relationshipId = [v10 relationshipId];
          v13 = [(GDRelationshipIdentifier *)v11 initWithString:relationshipId];
          relationshipIdentifier = v5->_relationshipIdentifier;
          v5->_relationshipIdentifier = v13;
        }

        relationshipPredicate = [v10 relationshipPredicate];
        p_subPremises = &v5->_subPremises;
        if ([relationshipPredicate isEqual:@"PS730"])
        {
          goto LABEL_19;
        }

        p_subPremises = &v5->_subThoroughfare;
        if ([relationshipPredicate isEqual:@"PS570"])
        {
          goto LABEL_19;
        }

        p_subPremises = &v5->_thoroughfare;
        if ([relationshipPredicate isEqual:@"PS316"] & 1) != 0 || (p_subPremises = &v5->_subLocality, (objc_msgSend(relationshipPredicate, "isEqual:", @"PS569")) || (p_subPremises = &v5->_locality, (objc_msgSend(relationshipPredicate, "isEqual:", @"PS453")) || (p_subPremises = &v5->_subAdministrativeArea, (objc_msgSend(relationshipPredicate, "isEqual:", @"PS568")) || (p_subPremises = &v5->_administrativeArea, (objc_msgSend(relationshipPredicate, "isEqual:", @"PS455")) || (p_subPremises = &v5->_postalCode, (objc_msgSend(relationshipPredicate, "isEqual:", @"PS315")) || (p_subPremises = &v5->_country, (objc_msgSend(relationshipPredicate, "isEqual:", @"PS450")) || (p_subPremises = p_ISOCountryCode, objc_msgSend(relationshipPredicate, "isEqual:", @"PS454")))
        {
LABEL_19:
          object = [v10 object];
          v18 = *p_subPremises;
          *p_subPremises = object;
        }
      }

      v7 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v7);
  }

  iteratorCopy = v23;
  if (!v5->_relationshipIdentifier)
  {
    v19 = 0;
  }

  else
  {
LABEL_23:
    v19 = v5;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

@end