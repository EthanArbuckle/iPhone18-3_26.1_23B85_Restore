@interface SGPostalAddress
+ (id)postalAddress:(id)address components:(id)components label:(id)label extractionInfo:(id)info recordId:(id)id;
+ (id)postalAddress:(id)address components:(id)components label:(id)label extractionType:(unint64_t)type recordId:(id)id;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPostalAddress:(id)address;
- (NSString)address;
- (SGPostalAddress)initWithAddress:(id)address components:(id)components label:(id)label extractionInfo:(id)info recordId:(id)id;
- (SGPostalAddress)initWithCoder:(id)coder;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SGPostalAddress

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  label = [(SGLabeledObject *)self label];
  if ([label length])
  {
    label2 = [(SGLabeledObject *)self label];
    v6 = [v3 initWithFormat:@"%@/'%@'", label2, self->_rawAddress];
  }

  else
  {
    v6 = [v3 initWithFormat:@"%@/'%@'", @"unlabeled", self->_rawAddress];
  }

  return v6;
}

- (BOOL)isEqualToPostalAddress:(id)address
{
  addressCopy = address;
  if (![(SGLabeledObject *)self isEqualToLabeledObject:addressCopy])
  {
    goto LABEL_4;
  }

  v5 = self->_rawAddress;
  v6 = v5;
  if (v5 == addressCopy[14])
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
  if (v9 == addressCopy[15])
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGPostalAddress *)self isEqualToPostalAddress:v5];
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

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SGPostalAddress;
  coderCopy = coder;
  [(SGLabeledObject *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_rawAddress forKey:{@"rawAddress", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_components forKey:@"components"];
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_cachedAddressLock);
  v3.receiver = self;
  v3.super_class = SGPostalAddress;
  [(SGPostalAddress *)&v3 dealloc];
}

- (SGPostalAddress)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = SGPostalAddress;
  v6 = [(SGLabeledObject *)&v16 initWithCoder:coderCopy];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"rawAddress"];

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
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"components"];

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

- (SGPostalAddress)initWithAddress:(id)address components:(id)components label:(id)label extractionInfo:(id)info recordId:(id)id
{
  addressCopy = address;
  componentsCopy = components;
  v18.receiver = self;
  v18.super_class = SGPostalAddress;
  v14 = [(SGLabeledObject *)&v18 initWithLabel:label extractionInfo:info recordId:id];
  if (v14)
  {
    v15 = [addressCopy copy];
    rawAddress = v14->_rawAddress;
    v14->_rawAddress = v15;

    pthread_mutex_init(&v14->_cachedAddressLock, 0);
    objc_storeStrong(&v14->_components, components);
  }

  return v14;
}

+ (id)postalAddress:(id)address components:(id)components label:(id)label extractionType:(unint64_t)type recordId:(id)id
{
  idCopy = id;
  labelCopy = label;
  componentsCopy = components;
  addressCopy = address;
  v15 = [SGExtractionInfo extractionInfoWithExtractionType:type modelVersion:0 confidence:0];
  v16 = [SGPostalAddress postalAddress:addressCopy components:componentsCopy label:labelCopy extractionInfo:v15 recordId:idCopy];

  return v16;
}

+ (id)postalAddress:(id)address components:(id)components label:(id)label extractionInfo:(id)info recordId:(id)id
{
  idCopy = id;
  infoCopy = info;
  labelCopy = label;
  componentsCopy = components;
  addressCopy = address;
  v16 = [[SGPostalAddress alloc] initWithAddress:addressCopy components:componentsCopy label:labelCopy extractionInfo:infoCopy recordId:idCopy];

  return v16;
}

@end