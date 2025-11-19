@interface MIOFeatureDescription
- (BOOL)isEqual:(id)a3;
- (BOOL)optional;
- (MIOFeatureDescription)initWithSpecification:(const void *)a3;
- (NSString)shortDescription;
- (id)description;
- (id)featureTypeDictionaryForModelViewer;
- (id)featureTypeStringForModelViewer;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (int64_t)type;
- (unint64_t)hash;
- (void)setShortDescription:(id)a3;
@end

@implementation MIOFeatureDescription

- (MIOFeatureDescription)initWithSpecification:(const void *)a3
{
  v16.receiver = self;
  v16.super_class = MIOFeatureDescription;
  v4 = [(MIOFeatureDescription *)&v16 init];
  v5 = v4;
  if (!v4)
  {
    return v5;
  }

  CoreML::Specification::FeatureDescription::CopyFrom(v4 + 1, a3);
  v6 = 0;
  type = v5->_featureDescriptionParams.type_;
  if (!type)
  {
    type = &CoreML::Specification::_FeatureType_default_instance_;
  }

  v8 = *(type + 9);
  if (v8 <= 5)
  {
    if (v8 == 4)
    {
      v6 = [[MIOImageConstraint alloc] initWithSpecification:type[3]];
    }

    else if (v8 == 5)
    {
      v6 = [[MIOMultiArrayConstraint alloc] initWithSpecification:type[3]];
    }

    goto LABEL_16;
  }

  switch(v8)
  {
    case 6:
      v9 = type[3];
      v10 = [MIODictionaryConstraint alloc];
      goto LABEL_13;
    case 7:
      v6 = [[MIOSequenceConstraint alloc] initWithSpecification:type[3]];
      break;
    case 8:
      v9 = type[3];
      v10 = [MIOStateConstraint alloc];
LABEL_13:
      v6 = [(MIODictionaryConstraint *)v10 initWithSpecification:v9];
      break;
  }

LABEL_16:
  constraint = v5->_constraint;
  v5->_constraint = v6;

  v12 = v5->_featureDescriptionParams.name_.tagged_ptr_.ptr_ & 0xFFFFFFFFFFFFFFFELL;
  if (*(v12 + 23) < 0)
  {
    v12 = *v12;
  }

  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v12];
  cachedName = v5->_cachedName;
  v5->_cachedName = v13;

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [MIOMutableFeatureDescription alloc];

  return [(MIOFeatureDescription *)v4 initWithSpecification:&self->_featureDescriptionParams];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(MIOFeatureDescription *)self name];
  v5 = MIOFeatureTypeToString([(MIOFeatureDescription *)self type]);
  if ([(MIOFeatureDescription *)self optional])
  {
    v6 = "YES";
  }

  else
  {
    v6 = "NO";
  }

  v7 = [(MIOFeatureDescription *)self constraint];
  v8 = [(MIOFeatureDescription *)self shortDescription];
  v9 = [v3 stringWithFormat:@"MIOFeatureDescription (%@) {type: %@, optional: %s, constraint: %@, shortDescription: %@}", v4, v5, v6, v7, v8];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v19 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MIOFeatureDescription *)self name];
      v7 = [(MIOFeatureDescription *)v5 name];
      v8 = [v6 isEqual:v7];

      if (v8)
      {
        v9 = [(MIOFeatureDescription *)self shortDescription];
        v10 = [(MIOFeatureDescription *)v5 shortDescription];
        v11 = [v9 isEqual:v10];

        if (v11)
        {
          v12 = [(MIOFeatureDescription *)self type];
          if (v12 == [(MIOFeatureDescription *)v5 type])
          {
            v13 = [(MIOFeatureDescription *)self optional];
            if (v13 == [(MIOFeatureDescription *)v5 optional])
            {
              v14 = [(MIOFeatureDescription *)self constraint];
              if (v14 && ([(MIOFeatureDescription *)v5 constraint], v15 = objc_claimAutoreleasedReturnValue(), v15, v14, v15))
              {
                v16 = [(MIOFeatureDescription *)self constraint];
                v17 = [(MIOFeatureDescription *)v5 constraint];
                v18 = [v16 isEqual:v17];

                if (v18)
                {
                  goto LABEL_19;
                }
              }

              else
              {
                v20 = [(MIOFeatureDescription *)self constraint];
                if (v20)
                {
                }

                else
                {
                  v21 = [(MIOFeatureDescription *)v5 constraint];

                  if (!v21)
                  {
LABEL_19:
                    v19 = 1;
                    goto LABEL_17;
                  }
                }
              }
            }
          }
        }
      }

      v19 = 0;
LABEL_17:

      goto LABEL_18;
    }

    v19 = 0;
  }

LABEL_18:

  return v19;
}

- (unint64_t)hash
{
  v3 = [(MIOFeatureDescription *)self name];
  v4 = [v3 hash];
  v5 = [(MIOFeatureDescription *)self type];
  v6 = [(MIOFeatureDescription *)self optional];
  v7 = [(MIOFeatureDescription *)self constraint];
  v8 = [v7 hash];

  return v5 ^ v4 ^ v6 ^ v8;
}

- (NSString)shortDescription
{
  v2 = self->_featureDescriptionParams.shortdescription_.tagged_ptr_.ptr_ & 0xFFFFFFFFFFFFFFFELL;
  if (*(v2 + 23) < 0)
  {
    v2 = *v2;
  }

  return [MEMORY[0x1E696AEC0] stringWithUTF8String:v2];
}

- (void)setShortDescription:(id)a3
{
  v7 = a3;
  v4 = [v7 UTF8String];
  ptr = self->_featureDescriptionParams._internal_metadata_.ptr_;
  v6 = (ptr & 0xFFFFFFFFFFFFFFFCLL);
  if (ptr)
  {
    v6 = *v6;
  }

  google::protobuf::internal::ArenaStringPtr::Set<google::protobuf::internal::ArenaStringPtr::EmptyDefault>(&self->_featureDescriptionParams.shortdescription_, v4, v6);
}

- (int64_t)type
{
  type = self->_featureDescriptionParams.type_;
  if (!type)
  {
    type = &CoreML::Specification::_FeatureType_default_instance_;
  }

  return *(type + 9);
}

- (BOOL)optional
{
  type = self->_featureDescriptionParams.type_;
  if (!type)
  {
    type = &CoreML::Specification::_FeatureType_default_instance_;
  }

  return *(type + 16);
}

- (id)featureTypeStringForModelViewer
{
  if (self->_featureDescriptionParams.type_)
  {
    type = self->_featureDescriptionParams.type_;
  }

  else
  {
    type = &CoreML::Specification::_FeatureType_default_instance_;
  }

  CoreML::FeatureType::FeatureType(v4, type);
}

- (id)featureTypeDictionaryForModelViewer
{
  if (self->_featureDescriptionParams.type_)
  {
    type = self->_featureDescriptionParams.type_;
  }

  else
  {
    type = &CoreML::Specification::_FeatureType_default_instance_;
  }

  CoreML::FeatureType::FeatureType(v4, type);
}

@end