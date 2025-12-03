@interface SGDelivery
+ (id)stringForProvider:(unint64_t)provider;
+ (unint64_t)providerForString:(id)string;
- (SGDelivery)initWithCoder:(id)coder;
- (SGDelivery)initWithRecordId:(id)id origin:(id)origin parentURL:(id)l provider:(unint64_t)provider trackingNumber:(id)number;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SGDelivery

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SGDelivery;
  coderCopy = coder;
  [(SGObject *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_parentURL forKey:{@"parentURL", v5.receiver, v5.super_class}];
  [coderCopy encodeInt64:self->_provider forKey:@"provider"];
  [coderCopy encodeObject:self->_trackingNumber forKey:@"trackingNumber"];
  [coderCopy encodeObject:self->_externalIdentifier forKey:@"externalIdentifier"];
}

- (SGDelivery)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = SGDelivery;
  v6 = [(SGObject *)&v20 initWithCoder:coderCopy];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"parentURL"];

    if (v8)
    {
      v9 = v8;
      parentURL = v6->_parentURL;
      v6->_parentURL = v9;
    }

    else
    {
      parentURL = [MEMORY[0x1E696AAA8] currentHandler];
      [parentURL handleFailureInMethod:a2 object:v6 file:@"SGDelivery.m" lineNumber:50 description:{@"nonnull property %s *%s was null when decoded", "NSURL", "parentURL"}];
    }

    v6->_provider = [coderCopy decodeInt64ForKey:@"provider"];
    v11 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"trackingNumber"];

    if (v12)
    {
      v13 = v12;
      trackingNumber = v6->_trackingNumber;
      v6->_trackingNumber = v13;
    }

    else
    {
      trackingNumber = [MEMORY[0x1E696AAA8] currentHandler];
      [trackingNumber handleFailureInMethod:a2 object:v6 file:@"SGDelivery.m" lineNumber:52 description:{@"nonnull property %s *%s was null when decoded", "NSString", "trackingNumber"}];
    }

    v15 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"externalIdentifier"];

    if (v16)
    {
      v17 = v16;
      externalIdentifier = v6->_externalIdentifier;
      v6->_externalIdentifier = v17;
    }

    else
    {
      externalIdentifier = [MEMORY[0x1E696AAA8] currentHandler];
      [externalIdentifier handleFailureInMethod:a2 object:v6 file:@"SGDelivery.m" lineNumber:53 description:{@"nonnull property %s *%s was null when decoded", "NSString", "externalIdentifier"}];
    }
  }

  return v6;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"[SGDelivery externalIdentifier:%@]", self->_externalIdentifier];

  return v2;
}

- (SGDelivery)initWithRecordId:(id)id origin:(id)origin parentURL:(id)l provider:(unint64_t)provider trackingNumber:(id)number
{
  v30[2] = *MEMORY[0x1E69E9840];
  idCopy = id;
  originCopy = origin;
  lCopy = l;
  numberCopy = number;
  if (idCopy)
  {
    if (originCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGDelivery.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"recordId"}];

    if (originCopy)
    {
LABEL_3:
      if (lCopy)
      {
        goto LABEL_4;
      }

LABEL_10:
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGDelivery.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"parentURL"}];

      if (numberCopy)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"SGDelivery.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"origin"}];

  if (!lCopy)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (numberCopy)
  {
    goto LABEL_5;
  }

LABEL_11:
  currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler4 handleFailureInMethod:a2 object:self file:@"SGDelivery.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"trackingNumber"}];

LABEL_5:
  v29.receiver = self;
  v29.super_class = SGDelivery;
  v17 = [(SGObject *)&v29 initWithRecordId:idCopy origin:originCopy];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_parentURL, l);
    v18->_provider = provider;
    objc_storeStrong(&v18->_trackingNumber, number);
    v19 = [objc_opt_class() stringForProvider:v18->_provider];
    v30[0] = v19;
    v30[1] = v18->_trackingNumber;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
    v21 = SGDelimitedStringsSerializeArray(v20);
    externalIdentifier = v18->_externalIdentifier;
    v18->_externalIdentifier = v21;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v18;
}

+ (unint64_t)providerForString:(id)string
{
  lowercaseString = [string lowercaseString];
  if ([lowercaseString isEqualToString:@"fedex"])
  {
    v4 = 1;
  }

  else if ([lowercaseString isEqualToString:@"ups"])
  {
    v4 = 2;
  }

  else if ([lowercaseString isEqualToString:@"usps"])
  {
    v4 = 3;
  }

  else if ([lowercaseString isEqualToString:@"ontrac"])
  {
    v4 = 4;
  }

  else if ([lowercaseString isEqualToString:@"dhl"])
  {
    v4 = 5;
  }

  else if ([lowercaseString isEqualToString:@"tnt"])
  {
    v4 = 6;
  }

  else if ([lowercaseString isEqualToString:@"ems"])
  {
    v4 = 7;
  }

  else if ([lowercaseString isEqualToString:@"canadapost"])
  {
    v4 = 8;
  }

  else if ([lowercaseString isEqualToString:@"chronopost"])
  {
    v4 = 9;
  }

  else if ([lowercaseString isEqualToString:@"colissimo"])
  {
    v4 = 10;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)stringForProvider:(unint64_t)provider
{
  if (provider > 0xA)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7EFCF80[provider];
  }
}

@end