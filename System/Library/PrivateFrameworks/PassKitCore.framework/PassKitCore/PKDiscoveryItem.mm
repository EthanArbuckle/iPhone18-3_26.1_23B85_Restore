@interface PKDiscoveryItem
+ (id)activeItemFromEngagementRequest:(id)request;
+ (id)convertEngagementRequestToDictionary:(id)dictionary;
- (BOOL)hasHitMaxLargeViewCount;
- (BOOL)hasHitMaxViewCount;
- (PKDiscoveryItem)initWithCoder:(id)coder;
- (PKDiscoveryItem)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)eventForKey:(id)key;
- (void)encodeWithCoder:(id)coder;
- (void)updateForRuleResult:(BOOL)result;
- (void)updateWithDiscoveryItem:(id)item;
@end

@implementation PKDiscoveryItem

+ (id)convertEngagementRequestToDictionary:(id)dictionary
{
  v26 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  clientData = [dictionaryCopy clientData];
  v6 = [clientData objectForKeyedSubscript:@"url"];
  if (v6)
  {

LABEL_4:
    v23.receiver = self;
    v23.super_class = &OBJC_METACLASS___PKDiscoveryItem;
    v8 = objc_msgSendSuper2(&v23, sel_convertEngagementRequestToDictionary_, dictionaryCopy);
    v9 = [v8 mutableCopy];

    v10 = [clientData objectForKeyedSubscript:@"url"];
    if (v10)
    {
      [v9 setObject:v10 forKeyedSubscript:@"layoutBundleURL"];
    }

    else
    {
      v11 = [dictionaryCopy URL];
      absoluteString = [v11 absoluteString];
      [v9 setObject:absoluteString forKeyedSubscript:@"layoutBundleURL"];
    }

    v13 = [clientData objectForKeyedSubscript:@"badging"];
    [v9 setObject:v13 forKeyedSubscript:@"shouldBadge"];

    v14 = [clientData objectForKeyedSubscript:@"entitledToForceLarge"];
    [v9 setObject:v14 forKeyedSubscript:@"entitledToForceLargeCard"];

    v15 = [clientData objectForKeyedSubscript:@"carouselRankingOrder"];
    [v9 setObject:v15 forKeyedSubscript:@"priority"];

    v22 = 0;
    v16 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:clientData requiringSecureCoding:1 error:&v22];
    v17 = v22;
    [v9 setObject:v16 forKeyedSubscript:@"clientData"];

    v18 = [v9 objectForKeyedSubscript:@"clientData"];

    if (!v18)
    {
      v19 = PKLogFacilityTypeGetObject(0x11uLL);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v25 = v17;
        _os_log_impl(&dword_1AD337000, v19, OS_LOG_TYPE_DEFAULT, "could not serialize client data: %{public}@", buf, 0xCu);
      }
    }

    v20 = [v9 copy];

    goto LABEL_12;
  }

  v7 = [dictionaryCopy URL];

  if (v7)
  {
    goto LABEL_4;
  }

  v17 = PKLogFacilityTypeGetObject(0x11uLL);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, "client data lacks URL", buf, 2u);
  }

  v20 = 0;
LABEL_12:

  return v20;
}

+ (id)activeItemFromEngagementRequest:(id)request
{
  v3 = [self convertEngagementRequestToDictionary:request];
  v4 = [[PKDiscoveryItem alloc] initWithDictionary:v3];
  [(PKDiscoveryObject *)v4 setStatus:2];

  return v4;
}

- (PKDiscoveryItem)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = PKDiscoveryItem;
  v5 = [(PKDiscoveryObject *)&v18 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"type"];
    v5->_type = [v6 isEqual:@"article"];

    v7 = [dictionaryCopy PKURLForKey:@"layoutBundleURL"];
    layoutBundleURL = v5->_layoutBundleURL;
    v5->_layoutBundleURL = v7;

    v9 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"supportedLocalizations"];
    supportedLocalizations = v5->_supportedLocalizations;
    v5->_supportedLocalizations = v9;

    v5->_shouldBadge = [dictionaryCopy PKBoolForKey:@"shouldBadge"];
    v5->_entitledToForceLargeCard = [dictionaryCopy PKBoolForKey:@"entitledToForceLargeCard"];
    v11 = [dictionaryCopy objectForKey:@"priority"];

    if (v11)
    {
      v12 = [dictionaryCopy PKIntegerForKey:@"priority"];
      v13 = 1000;
      if (v12 < 1000)
      {
        v13 = v12;
      }

      v14 = v13 & ~(v13 >> 63);
    }

    else
    {
      v14 = 500;
    }

    v15 = [dictionaryCopy PKDataForKey:@"clientData"];
    clientData = v5->_clientData;
    v5->_clientData = v15;

    v5->_priority = v14;
  }

  return v5;
}

- (void)updateForRuleResult:(BOOL)result
{
  resultCopy = result;
  v20 = *MEMORY[0x1E69E9840];
  if ([(PKDiscoveryItem *)self isTerminalStatus])
  {
    v5 = PKLogFacilityTypeGetObject(0x11uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [(PKDiscoveryObject *)self identifier];
      v12 = 138412290;
      v13 = identifier;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Discovery Item with identifier: %@ is in terminal state and won't be updated based on rule result", &v12, 0xCu);
    }
  }

  else
  {
    if (resultCopy)
    {
      v7 = 2;
    }

    else
    {
      v7 = 6;
    }

    v8 = PKLogFacilityTypeGetObject(0x11uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      identifier2 = [(PKDiscoveryObject *)self identifier];
      status = [(PKDiscoveryObject *)self status];
      v11 = "NO";
      v12 = 138413058;
      v13 = identifier2;
      v14 = 2048;
      if (resultCopy)
      {
        v11 = "YES";
      }

      v15 = status;
      v16 = 2048;
      v17 = v7;
      v18 = 2080;
      v19 = v11;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Updating status of Discovery Item with identifier: %@ from %ld to %ld for result %s", &v12, 0x2Au);
    }

    [(PKDiscoveryObject *)self setStatus:v7];
  }
}

- (void)updateWithDiscoveryItem:(id)item
{
  itemCopy = item;
  v11.receiver = self;
  v11.super_class = PKDiscoveryItem;
  if ([(PKDiscoveryObject *)&v11 updateWithDiscoveryObject:itemCopy])
  {
    self->_type = [itemCopy type];
    layoutBundleURL = [itemCopy layoutBundleURL];
    layoutBundleURL = self->_layoutBundleURL;
    self->_layoutBundleURL = layoutBundleURL;

    supportedLocalizations = [itemCopy supportedLocalizations];
    supportedLocalizations = self->_supportedLocalizations;
    self->_supportedLocalizations = supportedLocalizations;

    self->_shouldBadge = [itemCopy shouldBadge];
    self->_priority = [itemCopy priority];
    self->_entitledToForceLargeCard = [itemCopy entitledToForceLargeCard];
    clientData = [itemCopy clientData];
    clientData = self->_clientData;
    self->_clientData = clientData;
  }
}

- (id)eventForKey:(id)key
{
  v21 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  if (keyCopy && self->_clientData)
  {
    v5 = objc_alloc(MEMORY[0x1E695DFD8]);
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v5 initWithObjects:{v6, v7, v8, objc_opt_class(), 0}];
    clientData = self->_clientData;
    v18 = 0;
    v11 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v9 fromData:clientData error:&v18];
    v12 = v18;
    if (v11)
    {
      v13 = [v11 PKDictionaryForKey:@"metrics"];
      v14 = [v13 PKDictionaryForKey:keyCopy];
      if (v14)
      {
        v15 = [objc_alloc(MEMORY[0x1E698CA08]) initWithUnderlyingDictionary:v14];
      }

      else
      {
        v16 = PKLogFacilityTypeGetObject(0x11uLL);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v20 = keyCopy;
          _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "couldn't find event for key: %{public}@", buf, 0xCu);
        }

        v15 = 0;
      }
    }

    else
    {
      v13 = PKLogFacilityTypeGetObject(0x11uLL);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v20 = v12;
        _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "error unarchiving client data: %{public}@", buf, 0xCu);
      }

      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)hasHitMaxViewCount
{
  maxViewCount = [(PKDiscoveryObject *)self maxViewCount];
  if (maxViewCount)
  {
    viewCount = [(PKDiscoveryObject *)self viewCount];
    LOBYTE(maxViewCount) = viewCount >= [(PKDiscoveryObject *)self maxViewCount];
  }

  return maxViewCount;
}

- (BOOL)hasHitMaxLargeViewCount
{
  maxViewCountLargeCard = [(PKDiscoveryObject *)self maxViewCountLargeCard];
  if (maxViewCountLargeCard)
  {
    viewCount = [(PKDiscoveryObject *)self viewCount];
    LOBYTE(maxViewCountLargeCard) = viewCount >= [(PKDiscoveryObject *)self maxViewCountLargeCard];
  }

  return maxViewCountLargeCard;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKDiscoveryItem;
  coderCopy = coder;
  [(PKDiscoveryObject *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_type forKey:{@"type", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_layoutBundleURL forKey:@"layoutBundleURL"];
  [coderCopy encodeObject:self->_supportedLocalizations forKey:@"supportedLocalizations"];
  [coderCopy encodeInteger:self->_shouldBadge forKey:@"shouldBadge"];
  [coderCopy encodeInteger:self->_priority forKey:@"priority"];
  [coderCopy encodeBool:self->_entitledToForceLargeCard forKey:@"entitledToForceLargeCard"];
  [coderCopy encodeObject:self->_clientData forKey:@"clientData"];
}

- (PKDiscoveryItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = PKDiscoveryItem;
  v5 = [(PKDiscoveryObject *)&v16 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"layoutBundleURL"];
    layoutBundleURL = v5->_layoutBundleURL;
    v5->_layoutBundleURL = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"supportedLocalizations"];
    supportedLocalizations = v5->_supportedLocalizations;
    v5->_supportedLocalizations = v11;

    v5->_shouldBadge = [coderCopy decodeIntegerForKey:@"shouldBadge"] != 0;
    v5->_priority = [coderCopy decodeIntegerForKey:@"priority"];
    v5->_entitledToForceLargeCard = [coderCopy decodeBoolForKey:@"entitledToForceLargeCard"];
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientData"];
    clientData = v5->_clientData;
    v5->_clientData = v13;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v11.receiver = self;
  v11.super_class = PKDiscoveryItem;
  v5 = [(PKDiscoveryObject *)&v11 copyWithZone:?];
  *(v5 + 13) = self->_type;
  v6 = [(NSURL *)self->_layoutBundleURL copyWithZone:zone];
  v7 = *(v5 + 14);
  *(v5 + 14) = v6;

  v8 = [(NSArray *)self->_supportedLocalizations copyWithZone:zone];
  v9 = *(v5 + 15);
  *(v5 + 15) = v8;

  *(v5 + 96) = self->_shouldBadge;
  *(v5 + 16) = self->_priority;
  *(v5 + 97) = self->_entitledToForceLargeCard;
  objc_storeStrong(v5 + 17, self->_clientData);
  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v9.receiver = self;
  v9.super_class = PKDiscoveryItem;
  v4 = [(PKDiscoveryObject *)&v9 description];
  [v3 appendFormat:@" %@ ", v4];

  [v3 appendFormat:@"%@: '%ld'; ]", @"type", self->_type];
  [v3 appendFormat:@"%@: '%@'; ", @"layoutBundleURL", self->_layoutBundleURL];
  [v3 appendFormat:@"%@: '%@'; ", @"supportedLocalizations", self->_supportedLocalizations];
  if (self->_shouldBadge)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  [v3 appendFormat:@"%@: '%@'; ", @"shouldBadge", v5];
  [v3 appendFormat:@"%@: '%ld'; ", @"priority", self->_priority];
  if (self->_entitledToForceLargeCard)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [v3 appendFormat:@"%@: '%@'; ", @"entitledToForceLargeCard", v6];
  [v3 appendFormat:@"%@: '%@'; ", @"clientData", self->_clientData];
  [v3 appendFormat:@">"];
  v7 = [v3 copy];

  return v7;
}

@end