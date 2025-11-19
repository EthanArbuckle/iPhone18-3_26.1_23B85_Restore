@interface SGDelivery
+ (id)stringForProvider:(unint64_t)a3;
+ (unint64_t)providerForString:(id)a3;
- (SGDelivery)initWithCoder:(id)a3;
- (SGDelivery)initWithRecordId:(id)a3 origin:(id)a4 parentURL:(id)a5 provider:(unint64_t)a6 trackingNumber:(id)a7;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SGDelivery

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SGDelivery;
  v4 = a3;
  [(SGObject *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_parentURL forKey:{@"parentURL", v5.receiver, v5.super_class}];
  [v4 encodeInt64:self->_provider forKey:@"provider"];
  [v4 encodeObject:self->_trackingNumber forKey:@"trackingNumber"];
  [v4 encodeObject:self->_externalIdentifier forKey:@"externalIdentifier"];
}

- (SGDelivery)initWithCoder:(id)a3
{
  v5 = a3;
  v20.receiver = self;
  v20.super_class = SGDelivery;
  v6 = [(SGObject *)&v20 initWithCoder:v5];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v8 = [v5 decodeObjectOfClasses:v7 forKey:@"parentURL"];

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

    v6->_provider = [v5 decodeInt64ForKey:@"provider"];
    v11 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v12 = [v5 decodeObjectOfClasses:v11 forKey:@"trackingNumber"];

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
    v16 = [v5 decodeObjectOfClasses:v15 forKey:@"externalIdentifier"];

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

- (SGDelivery)initWithRecordId:(id)a3 origin:(id)a4 parentURL:(id)a5 provider:(unint64_t)a6 trackingNumber:(id)a7
{
  v30[2] = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  if (v13)
  {
    if (v14)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"SGDelivery.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"recordId"}];

    if (v14)
    {
LABEL_3:
      if (v15)
      {
        goto LABEL_4;
      }

LABEL_10:
      v27 = [MEMORY[0x1E696AAA8] currentHandler];
      [v27 handleFailureInMethod:a2 object:self file:@"SGDelivery.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"parentURL"}];

      if (v16)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  v26 = [MEMORY[0x1E696AAA8] currentHandler];
  [v26 handleFailureInMethod:a2 object:self file:@"SGDelivery.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"origin"}];

  if (!v15)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (v16)
  {
    goto LABEL_5;
  }

LABEL_11:
  v28 = [MEMORY[0x1E696AAA8] currentHandler];
  [v28 handleFailureInMethod:a2 object:self file:@"SGDelivery.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"trackingNumber"}];

LABEL_5:
  v29.receiver = self;
  v29.super_class = SGDelivery;
  v17 = [(SGObject *)&v29 initWithRecordId:v13 origin:v14];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_parentURL, a5);
    v18->_provider = a6;
    objc_storeStrong(&v18->_trackingNumber, a7);
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

+ (unint64_t)providerForString:(id)a3
{
  v3 = [a3 lowercaseString];
  if ([v3 isEqualToString:@"fedex"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"ups"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"usps"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"ontrac"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"dhl"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"tnt"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"ems"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"canadapost"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"chronopost"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"colissimo"])
  {
    v4 = 10;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)stringForProvider:(unint64_t)a3
{
  if (a3 > 0xA)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7EFCF80[a3];
  }
}

@end