@interface SGEmailAddress
+ (id)emailAddress:(id)a3 label:(id)a4 extractionInfo:(id)a5 withRecordId:(id)a6;
+ (id)emailAddress:(id)a3 label:(id)a4 extractionType:(unint64_t)a5 withRecordId:(id)a6;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToEmailAddress:(id)a3;
- (SGEmailAddress)initWithCoder:(id)a3;
- (SGEmailAddress)initWithEmailAddress:(id)a3 label:(id)a4 extractionInfo:(id)a5 recordId:(id)a6;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SGEmailAddress

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(SGLabeledObject *)self label];
  if ([v4 length])
  {
    v5 = [(SGLabeledObject *)self label];
    v6 = [v3 initWithFormat:@"%@/'%@'", v5, self->_emailAddress];
  }

  else
  {
    v6 = [v3 initWithFormat:@"%@/'%@'", @"unlabeled", self->_emailAddress];
  }

  return v6;
}

- (BOOL)isEqualToEmailAddress:(id)a3
{
  v4 = a3;
  if ([(SGLabeledObject *)self isEqualToLabeledObject:v4])
  {
    v5 = self->_emailAddress;
    v6 = v5;
    if (v5 == v4[5])
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGEmailAddress *)self isEqualToEmailAddress:v5];
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SGEmailAddress;
  v4 = a3;
  [(SGLabeledObject *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_emailAddress forKey:{@"emailAddress", v5.receiver, v5.super_class}];
}

- (SGEmailAddress)initWithCoder:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = SGEmailAddress;
  v6 = [(SGLabeledObject *)&v12 initWithCoder:v5];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v8 = [v5 decodeObjectOfClasses:v7 forKey:@"emailAddress"];

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

- (SGEmailAddress)initWithEmailAddress:(id)a3 label:(id)a4 extractionInfo:(id)a5 recordId:(id)a6
{
  v10 = a3;
  v15.receiver = self;
  v15.super_class = SGEmailAddress;
  v11 = [(SGLabeledObject *)&v15 initWithLabel:a4 extractionInfo:a5 recordId:a6];
  if (v11)
  {
    v12 = [v10 copy];
    emailAddress = v11->_emailAddress;
    v11->_emailAddress = v12;
  }

  return v11;
}

+ (id)emailAddress:(id)a3 label:(id)a4 extractionType:(unint64_t)a5 withRecordId:(id)a6
{
  v9 = a6;
  v10 = a4;
  v11 = a3;
  v12 = [SGExtractionInfo extractionInfoWithExtractionType:a5 modelVersion:0 confidence:0];
  v13 = [SGEmailAddress emailAddress:v11 label:v10 extractionInfo:v12 withRecordId:v9];

  return v13;
}

+ (id)emailAddress:(id)a3 label:(id)a4 extractionInfo:(id)a5 withRecordId:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[SGEmailAddress alloc] initWithEmailAddress:v12 label:v11 extractionInfo:v10 recordId:v9];

  return v13;
}

@end