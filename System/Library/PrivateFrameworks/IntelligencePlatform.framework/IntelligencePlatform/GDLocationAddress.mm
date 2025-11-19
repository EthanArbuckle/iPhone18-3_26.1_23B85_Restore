@interface GDLocationAddress
- (GDLocationAddress)initWithRelationshipIdTriplesIterator:(id)a3;
- (id)description;
@end

@implementation GDLocationAddress

- (id)description
{
  v39 = MEMORY[0x1E696AEC0];
  v37 = [(GDLocationAddress *)self relationshipIdentifier];
  v3 = [(GDLocationAddress *)self subPremises];
  v42 = v3;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &stru_1F20A2CD8;
  }

  v36 = v4;
  v5 = [(GDLocationAddress *)self subThoroughfare];
  v41 = v5;
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = &stru_1F20A2CD8;
  }

  v35 = v6;
  v7 = [(GDLocationAddress *)self thoroughfare];
  v40 = v7;
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = &stru_1F20A2CD8;
  }

  v34 = v8;
  v9 = [(GDLocationAddress *)self subLocality];
  v38 = v9;
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = &stru_1F20A2CD8;
  }

  v33 = v10;
  v11 = [(GDLocationAddress *)self locality];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = &stru_1F20A2CD8;
  }

  v32 = v13;
  v14 = [(GDLocationAddress *)self subAdministrativeArea];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = &stru_1F20A2CD8;
  }

  v31 = v16;
  v17 = [(GDLocationAddress *)self administrativeArea];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = &stru_1F20A2CD8;
  }

  v20 = [(GDLocationAddress *)self postalCode];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = &stru_1F20A2CD8;
  }

  v23 = [(GDLocationAddress *)self country];
  v24 = v23;
  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = &stru_1F20A2CD8;
  }

  v26 = [(GDLocationAddress *)self ISOCountryCode];
  v27 = v26;
  if (v26)
  {
    v28 = v26;
  }

  else
  {
    v28 = &stru_1F20A2CD8;
  }

  v29 = [v39 stringWithFormat:@"<GDLocationAddress id:%@ sp:%@ st:%@ t:%@ sl:%@ l:%@ sa:%@ a:%@ p:%@ c:%@ i:%@>", v37, v36, v35, v34, v33, v32, v31, v19, v22, v25, v28];

  return v29;
}

- (GDLocationAddress)initWithRelationshipIdTriplesIterator:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
  v23 = v4;
  obj = v4;
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
          v12 = [v10 relationshipId];
          v13 = [(GDRelationshipIdentifier *)v11 initWithString:v12];
          relationshipIdentifier = v5->_relationshipIdentifier;
          v5->_relationshipIdentifier = v13;
        }

        v15 = [v10 relationshipPredicate];
        p_subPremises = &v5->_subPremises;
        if ([v15 isEqual:@"PS730"])
        {
          goto LABEL_19;
        }

        p_subPremises = &v5->_subThoroughfare;
        if ([v15 isEqual:@"PS570"])
        {
          goto LABEL_19;
        }

        p_subPremises = &v5->_thoroughfare;
        if ([v15 isEqual:@"PS316"] & 1) != 0 || (p_subPremises = &v5->_subLocality, (objc_msgSend(v15, "isEqual:", @"PS569")) || (p_subPremises = &v5->_locality, (objc_msgSend(v15, "isEqual:", @"PS453")) || (p_subPremises = &v5->_subAdministrativeArea, (objc_msgSend(v15, "isEqual:", @"PS568")) || (p_subPremises = &v5->_administrativeArea, (objc_msgSend(v15, "isEqual:", @"PS455")) || (p_subPremises = &v5->_postalCode, (objc_msgSend(v15, "isEqual:", @"PS315")) || (p_subPremises = &v5->_country, (objc_msgSend(v15, "isEqual:", @"PS450")) || (p_subPremises = p_ISOCountryCode, objc_msgSend(v15, "isEqual:", @"PS454")))
        {
LABEL_19:
          v17 = [v10 object];
          v18 = *p_subPremises;
          *p_subPremises = v17;
        }
      }

      v7 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v7);
  }

  v4 = v23;
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