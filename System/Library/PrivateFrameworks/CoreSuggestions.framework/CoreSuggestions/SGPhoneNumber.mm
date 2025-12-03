@interface SGPhoneNumber
+ (id)phoneNumber:(id)number label:(id)label extractionInfo:(id)info recordId:(id)id;
+ (id)phoneNumber:(id)number label:(id)label extractionType:(unint64_t)type recordId:(id)id;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPhoneNumber:(id)number;
- (SGPhoneNumber)initWithCoder:(id)coder;
- (SGPhoneNumber)initWithPhoneNumber:(id)number label:(id)label extractionInfo:(id)info recordId:(id)id;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SGPhoneNumber

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  label = [(SGLabeledObject *)self label];
  if ([label length])
  {
    label2 = [(SGLabeledObject *)self label];
    v6 = [v3 initWithFormat:@"%@/'%@'", label2, self->_phoneNumber];
  }

  else
  {
    v6 = [v3 initWithFormat:@"%@/'%@'", @"unlabeled", self->_phoneNumber];
  }

  return v6;
}

- (BOOL)isEqualToPhoneNumber:(id)number
{
  numberCopy = number;
  if ([(SGLabeledObject *)self isEqualToLabeledObject:numberCopy])
  {
    v5 = self->_phoneNumber;
    v6 = v5;
    if (v5 == numberCopy[5])
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGPhoneNumber *)self isEqualToPhoneNumber:v5];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SGPhoneNumber;
  coderCopy = coder;
  [(SGLabeledObject *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_phoneNumber forKey:{@"phoneNumber", v5.receiver, v5.super_class}];
}

- (SGPhoneNumber)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = SGPhoneNumber;
  v6 = [(SGLabeledObject *)&v12 initWithCoder:coderCopy];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"phoneNumber"];

    if (v8)
    {
      v9 = v8;
      phoneNumber = v6->_phoneNumber;
      v6->_phoneNumber = v9;
    }

    else
    {
      phoneNumber = [MEMORY[0x1E696AAA8] currentHandler];
      [phoneNumber handleFailureInMethod:a2 object:v6 file:@"SGPhoneNumber.m" lineNumber:30 description:{@"nonnull property %s *%s was null when decoded", "NSString", "phoneNumber"}];
    }
  }

  return v6;
}

- (SGPhoneNumber)initWithPhoneNumber:(id)number label:(id)label extractionInfo:(id)info recordId:(id)id
{
  numberCopy = number;
  v15.receiver = self;
  v15.super_class = SGPhoneNumber;
  v11 = [(SGLabeledObject *)&v15 initWithLabel:label extractionInfo:info recordId:id];
  if (v11)
  {
    v12 = [numberCopy copy];
    phoneNumber = v11->_phoneNumber;
    v11->_phoneNumber = v12;
  }

  return v11;
}

+ (id)phoneNumber:(id)number label:(id)label extractionType:(unint64_t)type recordId:(id)id
{
  idCopy = id;
  labelCopy = label;
  numberCopy = number;
  v12 = [SGExtractionInfo extractionInfoWithExtractionType:type modelVersion:0 confidence:0];
  v13 = [SGPhoneNumber phoneNumber:numberCopy label:labelCopy extractionInfo:v12 recordId:idCopy];

  return v13;
}

+ (id)phoneNumber:(id)number label:(id)label extractionInfo:(id)info recordId:(id)id
{
  idCopy = id;
  infoCopy = info;
  labelCopy = label;
  numberCopy = number;
  v13 = [[SGPhoneNumber alloc] initWithPhoneNumber:numberCopy label:labelCopy extractionInfo:infoCopy recordId:idCopy];

  return v13;
}

@end