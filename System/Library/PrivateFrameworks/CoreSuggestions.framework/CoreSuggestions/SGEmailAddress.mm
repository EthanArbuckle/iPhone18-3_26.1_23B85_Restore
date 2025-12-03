@interface SGEmailAddress
+ (id)emailAddress:(id)address label:(id)label extractionInfo:(id)info withRecordId:(id)id;
+ (id)emailAddress:(id)address label:(id)label extractionType:(unint64_t)type withRecordId:(id)id;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToEmailAddress:(id)address;
- (SGEmailAddress)initWithCoder:(id)coder;
- (SGEmailAddress)initWithEmailAddress:(id)address label:(id)label extractionInfo:(id)info recordId:(id)id;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SGEmailAddress

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  label = [(SGLabeledObject *)self label];
  if ([label length])
  {
    label2 = [(SGLabeledObject *)self label];
    v6 = [v3 initWithFormat:@"%@/'%@'", label2, self->_emailAddress];
  }

  else
  {
    v6 = [v3 initWithFormat:@"%@/'%@'", @"unlabeled", self->_emailAddress];
  }

  return v6;
}

- (BOOL)isEqualToEmailAddress:(id)address
{
  addressCopy = address;
  if ([(SGLabeledObject *)self isEqualToLabeledObject:addressCopy])
  {
    v5 = self->_emailAddress;
    v6 = v5;
    if (v5 == addressCopy[5])
    {
      v7 = 1;
    }

    else
    {
      v7 = [(NSString *)v5 isEqual:?];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGEmailAddress *)self isEqualToEmailAddress:v5];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SGEmailAddress;
  coderCopy = coder;
  [(SGLabeledObject *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_emailAddress forKey:{@"emailAddress", v5.receiver, v5.super_class}];
}

- (SGEmailAddress)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = SGEmailAddress;
  v6 = [(SGLabeledObject *)&v12 initWithCoder:coderCopy];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"emailAddress"];

    if (v8)
    {
      v9 = v8;
      emailAddress = v6->_emailAddress;
      v6->_emailAddress = v9;
    }

    else
    {
      emailAddress = [MEMORY[0x1E696AAA8] currentHandler];
      [emailAddress handleFailureInMethod:a2 object:v6 file:@"SGEmailAddress.m" lineNumber:30 description:{@"nonnull property %s *%s was null when decoded", "NSString", "emailAddress"}];
    }
  }

  return v6;
}

- (SGEmailAddress)initWithEmailAddress:(id)address label:(id)label extractionInfo:(id)info recordId:(id)id
{
  addressCopy = address;
  v15.receiver = self;
  v15.super_class = SGEmailAddress;
  v11 = [(SGLabeledObject *)&v15 initWithLabel:label extractionInfo:info recordId:id];
  if (v11)
  {
    v12 = [addressCopy copy];
    emailAddress = v11->_emailAddress;
    v11->_emailAddress = v12;
  }

  return v11;
}

+ (id)emailAddress:(id)address label:(id)label extractionType:(unint64_t)type withRecordId:(id)id
{
  idCopy = id;
  labelCopy = label;
  addressCopy = address;
  v12 = [SGExtractionInfo extractionInfoWithExtractionType:type modelVersion:0 confidence:0];
  v13 = [SGEmailAddress emailAddress:addressCopy label:labelCopy extractionInfo:v12 withRecordId:idCopy];

  return v13;
}

+ (id)emailAddress:(id)address label:(id)label extractionInfo:(id)info withRecordId:(id)id
{
  idCopy = id;
  infoCopy = info;
  labelCopy = label;
  addressCopy = address;
  v13 = [[SGEmailAddress alloc] initWithEmailAddress:addressCopy label:labelCopy extractionInfo:infoCopy recordId:idCopy];

  return v13;
}

@end