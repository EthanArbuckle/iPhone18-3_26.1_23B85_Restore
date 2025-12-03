@interface MIOFeatureDescription
- (BOOL)isEqual:(id)equal;
- (BOOL)optional;
- (MIOFeatureDescription)initWithSpecification:(const void *)specification;
- (NSString)shortDescription;
- (id)description;
- (id)featureTypeDictionaryForModelViewer;
- (id)featureTypeStringForModelViewer;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (int64_t)type;
- (unint64_t)hash;
- (void)setShortDescription:(id)description;
@end

@implementation MIOFeatureDescription

- (MIOFeatureDescription)initWithSpecification:(const void *)specification
{
  v16.receiver = self;
  v16.super_class = MIOFeatureDescription;
  v4 = [(MIOFeatureDescription *)&v16 init];
  v5 = v4;
  if (!v4)
  {
    return v5;
  }

  CoreML::Specification::FeatureDescription::CopyFrom(v4 + 1, specification);
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

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [MIOMutableFeatureDescription alloc];

  return [(MIOFeatureDescription *)v4 initWithSpecification:&self->_featureDescriptionParams];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  name = [(MIOFeatureDescription *)self name];
  v5 = MIOFeatureTypeToString([(MIOFeatureDescription *)self type]);
  if ([(MIOFeatureDescription *)self optional])
  {
    v6 = "YES";
  }

  else
  {
    v6 = "NO";
  }

  constraint = [(MIOFeatureDescription *)self constraint];
  shortDescription = [(MIOFeatureDescription *)self shortDescription];
  v9 = [v3 stringWithFormat:@"MIOFeatureDescription (%@) {type: %@, optional: %s, constraint: %@, shortDescription: %@}", name, v5, v6, constraint, shortDescription];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v19 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      name = [(MIOFeatureDescription *)self name];
      name2 = [(MIOFeatureDescription *)v5 name];
      v8 = [name isEqual:name2];

      if (v8)
      {
        shortDescription = [(MIOFeatureDescription *)self shortDescription];
        shortDescription2 = [(MIOFeatureDescription *)v5 shortDescription];
        v11 = [shortDescription isEqual:shortDescription2];

        if (v11)
        {
          type = [(MIOFeatureDescription *)self type];
          if (type == [(MIOFeatureDescription *)v5 type])
          {
            optional = [(MIOFeatureDescription *)self optional];
            if (optional == [(MIOFeatureDescription *)v5 optional])
            {
              constraint = [(MIOFeatureDescription *)self constraint];
              if (constraint && ([(MIOFeatureDescription *)v5 constraint], v15 = objc_claimAutoreleasedReturnValue(), v15, constraint, v15))
              {
                constraint2 = [(MIOFeatureDescription *)self constraint];
                constraint3 = [(MIOFeatureDescription *)v5 constraint];
                v18 = [constraint2 isEqual:constraint3];

                if (v18)
                {
                  goto LABEL_19;
                }
              }

              else
              {
                constraint4 = [(MIOFeatureDescription *)self constraint];
                if (constraint4)
                {
                }

                else
                {
                  constraint5 = [(MIOFeatureDescription *)v5 constraint];

                  if (!constraint5)
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
  name = [(MIOFeatureDescription *)self name];
  v4 = [name hash];
  type = [(MIOFeatureDescription *)self type];
  optional = [(MIOFeatureDescription *)self optional];
  constraint = [(MIOFeatureDescription *)self constraint];
  v8 = [constraint hash];

  return type ^ v4 ^ optional ^ v8;
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

- (void)setShortDescription:(id)description
{
  descriptionCopy = description;
  uTF8String = [descriptionCopy UTF8String];
  ptr = self->_featureDescriptionParams._internal_metadata_.ptr_;
  v6 = (ptr & 0xFFFFFFFFFFFFFFFCLL);
  if (ptr)
  {
    v6 = *v6;
  }

  google::protobuf::internal::ArenaStringPtr::Set<google::protobuf::internal::ArenaStringPtr::EmptyDefault>(&self->_featureDescriptionParams.shortdescription_, uTF8String, v6);
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