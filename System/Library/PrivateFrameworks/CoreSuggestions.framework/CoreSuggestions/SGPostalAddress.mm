@interface SGPostalAddress
+ (id)postalAddress:(id)a3 components:(id)a4 label:(id)a5 extractionInfo:(id)a6 recordId:(id)a7;
+ (id)postalAddress:(id)a3 components:(id)a4 label:(id)a5 extractionType:(unint64_t)a6 recordId:(id)a7;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPostalAddress:(id)a3;
- (NSString)address;
- (SGPostalAddress)initWithAddress:(id)a3 components:(id)a4 label:(id)a5 extractionInfo:(id)a6 recordId:(id)a7;
- (SGPostalAddress)initWithCoder:(id)a3;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SGPostalAddress

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(SGLabeledObject *)self label];
  if ([v4 length])
  {
    v5 = [(SGLabeledObject *)self label];
    v6 = [v3 initWithFormat:@"%@/'%@'", v5, self->_rawAddress];
  }

  else
  {
    v6 = [v3 initWithFormat:@"%@/'%@'", @"unlabeled", self->_rawAddress];
  }

  return v6;
}

- (BOOL)isEqualToPostalAddress:(id)a3
{
  v4 = a3;
  if (![(SGLabeledObject *)self isEqualToLabeledObject:v4])
  {
    goto LABEL_4;
  }

  v5 = self->_rawAddress;
  v6 = v5;
  if (v5 == v4[14])
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
LABEL_4:
      v8 = 0;
      goto LABEL_10;
    }
  }

  v9 = self->_components;
  v10 = v9;
  if (v9 == v4[15])
  {
    v8 = 1;
  }

  else
  {
    v8 = [(SGPostalAddressComponents *)v9 isEqual:?];
  }

LABEL_10:
  return v8;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGPostalAddress *)self isEqualToPostalAddress:v5];
  }

  return v6;
}

- (NSString)address
{
  pthread_mutex_lock(&self->_cachedAddressLock);
  if (!self->_cachedAddress)
  {
    v3 = collapseWhitespaceAndStrip(self->_rawAddress);
    cachedAddress = self->_cachedAddress;
    self->_cachedAddress = v3;
  }

  pthread_mutex_unlock(&self->_cachedAddressLock);
  v5 = self->_cachedAddress;

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SGPostalAddress;
  v4 = a3;
  [(SGLabeledObject *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_rawAddress forKey:{@"rawAddress", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_components forKey:@"components"];
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_cachedAddressLock);
  v3.receiver = self;
  v3.super_class = SGPostalAddress;
  [(SGPostalAddress *)&v3 dealloc];
}

- (SGPostalAddress)initWithCoder:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = SGPostalAddress;
  v6 = [(SGLabeledObject *)&v16 initWithCoder:v5];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v8 = [v5 decodeObjectOfClasses:v7 forKey:@"rawAddress"];

    if (v8)
    {
      v9 = v8;
      rawAddress = v6->_rawAddress;
      v6->_rawAddress = v9;
    }

    else
    {
      rawAddress = [MEMORY[0x1E696AAA8] currentHandler];
      [rawAddress handleFailureInMethod:a2 object:v6 file:@"SGPostalAddress.m" lineNumber:163 description:{@"nonnull property %s *%s was null when decoded", "NSString", "rawAddress"}];
    }

    v11 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v12 = [v5 decodeObjectOfClasses:v11 forKey:@"components"];

    if (v12)
    {
      v13 = v12;
      components = v6->_components;
      v6->_components = v13;
    }

    else
    {
      components = [MEMORY[0x1E696AAA8] currentHandler];
      [components handleFailureInMethod:a2 object:v6 file:@"SGPostalAddress.m" lineNumber:164 description:{@"nonnull property %s *%s was null when decoded", "SGPostalAddressComponents", "components"}];
    }

    pthread_mutex_init(&v6->_cachedAddressLock, 0);
  }

  return v6;
}

- (SGPostalAddress)initWithAddress:(id)a3 components:(id)a4 label:(id)a5 extractionInfo:(id)a6 recordId:(id)a7
{
  v12 = a3;
  v13 = a4;
  v18.receiver = self;
  v18.super_class = SGPostalAddress;
  v14 = [(SGLabeledObject *)&v18 initWithLabel:a5 extractionInfo:a6 recordId:a7];
  if (v14)
  {
    v15 = [v12 copy];
    rawAddress = v14->_rawAddress;
    v14->_rawAddress = v15;

    pthread_mutex_init(&v14->_cachedAddressLock, 0);
    objc_storeStrong(&v14->_components, a4);
  }

  return v14;
}

+ (id)postalAddress:(id)a3 components:(id)a4 label:(id)a5 extractionType:(unint64_t)a6 recordId:(id)a7
{
  v11 = a7;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [SGExtractionInfo extractionInfoWithExtractionType:a6 modelVersion:0 confidence:0];
  v16 = [SGPostalAddress postalAddress:v14 components:v13 label:v12 extractionInfo:v15 recordId:v11];

  return v16;
}

+ (id)postalAddress:(id)a3 components:(id)a4 label:(id)a5 extractionInfo:(id)a6 recordId:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [[SGPostalAddress alloc] initWithAddress:v15 components:v14 label:v13 extractionInfo:v12 recordId:v11];

  return v16;
}

@end