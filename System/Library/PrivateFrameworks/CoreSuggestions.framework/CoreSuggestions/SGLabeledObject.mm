@interface SGLabeledObject
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToLabeledObject:(id)object;
- (SGLabeledObject)initWithCoder:(id)coder;
- (SGLabeledObject)initWithLabel:(id)label extractionInfo:(id)info recordId:(id)id;
- (SGLabeledObject)initWithLabel:(id)label extractionType:(unint64_t)type recordId:(id)id origin:(id)origin;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SGLabeledObject

- (BOOL)isEqualToLabeledObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v9.receiver = self, v9.super_class = SGLabeledObject, [(SGObject *)&v9 isEqualToSuggestion:objectCopy]))
  {
    v5 = self->_label;
    v6 = v5;
    if (v5 == objectCopy[3])
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGLabeledObject *)self isEqualToLabeledObject:v5];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SGLabeledObject;
  coderCopy = coder;
  [(SGObject *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_label forKey:{@"label", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_extractionInfo forKey:@"extractionInfo"];
}

- (SGLabeledObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = SGLabeledObject;
  v6 = [(SGObject *)&v15 initWithCoder:coderCopy];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"label"];
    label = v6->_label;
    v6->_label = v8;

    v10 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"extractionInfo"];

    if (v11)
    {
      v12 = v11;
      extractionInfo = v6->_extractionInfo;
      v6->_extractionInfo = v12;
    }

    else
    {
      extractionInfo = [MEMORY[0x1E696AAA8] currentHandler];
      [extractionInfo handleFailureInMethod:a2 object:v6 file:@"SGLabeledObject.m" lineNumber:49 description:{@"nonnull property %s *%s was null when decoded", "SGExtractionInfo", "extractionInfo"}];
    }
  }

  return v6;
}

- (SGLabeledObject)initWithLabel:(id)label extractionType:(unint64_t)type recordId:(id)id origin:(id)origin
{
  idCopy = id;
  labelCopy = label;
  v11 = [SGExtractionInfo extractionInfoWithExtractionType:type modelVersion:0 confidence:0];
  v12 = [(SGLabeledObject *)self initWithLabel:labelCopy extractionInfo:v11 recordId:idCopy];

  return v12;
}

- (SGLabeledObject)initWithLabel:(id)label extractionInfo:(id)info recordId:(id)id
{
  labelCopy = label;
  infoCopy = info;
  idCopy = id;
  v11 = [SGOrigin originWithType:0 sourceKey:0 externalKey:0 fromForwardedMessage:0];
  v16.receiver = self;
  v16.super_class = SGLabeledObject;
  v12 = [(SGObject *)&v16 initWithRecordId:idCopy origin:v11];

  if (v12)
  {
    v13 = [labelCopy copy];
    label = v12->_label;
    v12->_label = v13;

    objc_storeStrong(&v12->_extractionInfo, info);
  }

  return v12;
}

@end