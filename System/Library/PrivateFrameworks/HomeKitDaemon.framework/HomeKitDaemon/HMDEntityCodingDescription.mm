@interface HMDEntityCodingDescription
- (id)descriptionForAttribute:(id)attribute;
- (id)descriptionForRelationship:(id)relationship;
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

- (id)descriptionForRelationship:(id)relationship
{
  entity = [relationship entity];
  v6 = entity;
  entity = self->_entity;
  if (entity == entity || [(NSEntityDescription *)entity isKindOfEntity:self->_entity])
  {

LABEL_4:
    name = [relationship name];
    v9 = [(NSDictionary *)self->_relationshipCodingKeysByPropertyName objectForKeyedSubscript:name];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = name;
    }

    v12 = v11;

    v13 = [(NSDictionary *)self->_relationshipsByCodingKey objectForKeyedSubscript:v12];
    v14 = v13;
    if (v13)
    {
      name2 = [v13 name];
      if ([name2 isEqualToString:name])
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

- (id)descriptionForAttribute:(id)attribute
{
  entity = [attribute entity];
  v6 = entity;
  entity = self->_entity;
  if (entity == entity || [(NSEntityDescription *)entity isKindOfEntity:self->_entity])
  {

LABEL_4:
    name = [attribute name];
    v9 = [(NSDictionary *)self->_attributeCodingKeysByPropertyName objectForKeyedSubscript:name];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = name;
    }

    v12 = v11;

    v13 = [(NSDictionary *)self->_attributesByCodingKey objectForKeyedSubscript:v12];
    v14 = v13;
    if (v13)
    {
      name2 = [v13 name];
      if ([name2 isEqualToString:name])
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