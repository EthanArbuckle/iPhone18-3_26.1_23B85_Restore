@interface HMDEntityCodingDescription
- (id)descriptionForAttribute:(id)a3;
- (id)descriptionForRelationship:(id)a3;
@end

@implementation HMDEntityCodingDescription

id __51__HMDEntityCodingDescription_initWithModel_entity___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 isConditional];
  if (result)
  {
    [a3 shortDescription];
    objc_claimAutoreleasedReturnValue();
    v5 = _HMFPreconditionFailureWithFormat();
    return [(HMDManagedObjectCodingModel *)v5 codingKeyForProperty:v6];
  }

  return result;
}

- (id)descriptionForRelationship:(id)a3
{
  v5 = [a3 entity];
  v6 = v5;
  entity = self->_entity;
  if (v5 == entity || [(NSEntityDescription *)v5 isKindOfEntity:self->_entity])
  {

LABEL_4:
    v8 = [a3 name];
    v9 = [(NSDictionary *)self->_relationshipCodingKeysByPropertyName objectForKeyedSubscript:v8];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v8;
    }

    v12 = v11;

    v13 = [(NSDictionary *)self->_relationshipsByCodingKey objectForKeyedSubscript:v12];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 name];
      if ([v15 isEqualToString:v8])
      {
        v16 = v14;
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    goto LABEL_14;
  }

  v19 = [(NSEntityDescription *)entity isKindOfEntity:v6];

  if (v19)
  {
    goto LABEL_4;
  }

  v17 = 0;
LABEL_14:

  return v17;
}

- (id)descriptionForAttribute:(id)a3
{
  v5 = [a3 entity];
  v6 = v5;
  entity = self->_entity;
  if (v5 == entity || [(NSEntityDescription *)v5 isKindOfEntity:self->_entity])
  {

LABEL_4:
    v8 = [a3 name];
    v9 = [(NSDictionary *)self->_attributeCodingKeysByPropertyName objectForKeyedSubscript:v8];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v8;
    }

    v12 = v11;

    v13 = [(NSDictionary *)self->_attributesByCodingKey objectForKeyedSubscript:v12];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 name];
      if ([v15 isEqualToString:v8])
      {
        v16 = v14;
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    goto LABEL_14;
  }

  v19 = [(NSEntityDescription *)entity isKindOfEntity:v6];

  if (v19)
  {
    goto LABEL_4;
  }

  v17 = 0;
LABEL_14:

  return v17;
}

@end