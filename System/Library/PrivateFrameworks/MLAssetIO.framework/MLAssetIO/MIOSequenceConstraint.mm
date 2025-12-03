@interface MIOSequenceConstraint
- (BOOL)isEqual:(id)equal;
- (MIOSequenceConstraint)initWithSpecification:(const void *)specification;
- (NSString)description;
- (_MIORange)countRange;
- (unint64_t)hash;
@end

@implementation MIOSequenceConstraint

- (MIOSequenceConstraint)initWithSpecification:(const void *)specification
{
  v23.receiver = self;
  v23.super_class = MIOSequenceConstraint;
  v4 = [(MIOSequenceConstraint *)&v23 init];
  v5 = v4;
  if (v4)
  {
    CoreML::Specification::SequenceFeatureType::CopyFrom((v4 + 8), specification);
    CoreML::Specification::FeatureDescription::FeatureDescription(&v19, 0, 0);
    v6 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
    if (v20)
    {
      v6 = *v6;
    }

    google::protobuf::internal::ArenaStringPtr::Set<google::protobuf::internal::ArenaStringPtr::EmptyDefault>(&v21, "values", v6);
    v7 = *(specification + 9);
    if (v7 == 1)
    {
      v8 = v22;
      if (!v22)
      {
        v13 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
        if (v20)
        {
          v13 = *v13;
        }

        v8 = google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::FeatureType>(v13);
        v22 = v8;
      }

      if (*(v8 + 36) == 1)
      {
        goto LABEL_23;
      }

      CoreML::Specification::FeatureType::clear_Type(v8);
      *(v8 + 36) = 1;
      v14 = *(v8 + 8);
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
      if (v14)
      {
        v15 = *v15;
      }

      v12 = google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::Int64FeatureType>(v15);
    }

    else
    {
      if (v7 != 3)
      {
        goto LABEL_23;
      }

      v8 = v22;
      if (!v22)
      {
        v9 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
        if (v20)
        {
          v9 = *v9;
        }

        v8 = google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::FeatureType>(v9);
        v22 = v8;
      }

      if (*(v8 + 36) == 3)
      {
        goto LABEL_23;
      }

      CoreML::Specification::FeatureType::clear_Type(v8);
      *(v8 + 36) = 3;
      v10 = *(v8 + 8);
      v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
      if (v10)
      {
        v11 = *v11;
      }

      v12 = google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::StringFeatureType>(v11);
    }

    *(v8 + 24) = v12;
LABEL_23:
    v16 = [[MIOFeatureDescription alloc] initWithSpecification:&v19];
    valueDescription = v5->_valueDescription;
    v5->_valueDescription = v16;

    CoreML::Specification::FeatureDescription::~FeatureDescription(&v19);
  }

  return v5;
}

- (NSString)description
{
  countRange = [(MIOSequenceConstraint *)self countRange];
  v5 = v4;
  v6 = MEMORY[0x1E696AEC0];
  valueDescription = [(MIOSequenceConstraint *)self valueDescription];
  v8 = [v6 stringWithFormat:@"MIOSequenceConstraint { countRange: [%zd, %zd], valueDescription: %@ }", countRange, v5, valueDescription];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      countRange = [(MIOSequenceConstraint *)self countRange];
      v8 = v7;
      countRange2 = [(MIOSequenceConstraint *)v5 countRange];
      if (MIOEqualRanges(countRange, v8, countRange2, v10))
      {
        valueDescription = [(MIOSequenceConstraint *)self valueDescription];
        valueDescription2 = [(MIOSequenceConstraint *)v5 valueDescription];
        v13 = [valueDescription isEqual:valueDescription2];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (unint64_t)hash
{
  countRange = [(MIOSequenceConstraint *)self countRange];
  [(MIOSequenceConstraint *)self countRange];
  v5 = v4;
  valueDescription = [(MIOSequenceConstraint *)self valueDescription];
  v7 = [valueDescription hash];

  return v5 ^ countRange ^ v7;
}

- (_MIORange)countRange
{
  sizerange = self->_sequenceFeatureTypeParams.sizerange_;
  if (!sizerange)
  {
    sizerange = &CoreML::Specification::_SizeRange_default_instance_;
  }

  v3 = *(sizerange + 2);
  v4 = *(sizerange + 3);
  if (v4 <= 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = MIOMakeRange(v3, v5);
  result.upperBound = v7;
  result.lowerBound = v6;
  return result;
}

@end