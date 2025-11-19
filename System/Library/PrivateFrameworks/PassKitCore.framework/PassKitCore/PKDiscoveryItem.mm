@interface PKDiscoveryItem
+ (id)activeItemFromEngagementRequest:(id)a3;
+ (id)convertEngagementRequestToDictionary:(id)a3;
- (BOOL)hasHitMaxLargeViewCount;
- (BOOL)hasHitMaxViewCount;
- (PKDiscoveryItem)initWithCoder:(id)a3;
- (PKDiscoveryItem)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)eventForKey:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)updateForRuleResult:(BOOL)a3;
- (void)updateWithDiscoveryItem:(id)a3;
@end

@implementation PKDiscoveryItem

+ (id)convertEngagementRequestToDictionary:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 clientData];
  v6 = [v5 objectForKeyedSubscript:@"url"];
  if (v6)
  {

LABEL_4:
    v23.receiver = a1;
    v23.super_class = &OBJC_METACLASS___PKDiscoveryItem;
    v8 = objc_msgSendSuper2(&v23, sel_convertEngagementRequestToDictionary_, v4);
    v9 = [v8 mutableCopy];

    v10 = [v5 objectForKeyedSubscript:@"url"];
    if (v10)
    {
      [v9 setObject:v10 forKeyedSubscript:@"layoutBundleURL"];
    }

    else
    {
      v11 = [v4 URL];
      v12 = [v11 absoluteString];
      [v9 setObject:v12 forKeyedSubscript:@"layoutBundleURL"];
    }

    v13 = [v5 objectForKeyedSubscript:@"badging"];
    [v9 setObject:v13 forKeyedSubscript:@"shouldBadge"];

    v14 = [v5 objectForKeyedSubscript:@"entitledToForceLarge"];
    [v9 setObject:v14 forKeyedSubscript:@"entitledToForceLargeCard"];

    v15 = [v5 objectForKeyedSubscript:@"carouselRankingOrder"];
    [v9 setObject:v15 forKeyedSubscript:@"priority"];

    v22 = 0;
    v16 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v22];
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

  v7 = [v4 URL];

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

+ (id)activeItemFromEngagementRequest:(id)a3
{
  v3 = [a1 convertEngagementRequestToDictionary:a3];
  v4 = [[PKDiscoveryItem alloc] initWithDictionary:v3];
  [(PKDiscoveryObject *)v4 setStatus:2];

  return v4;
}

- (PKDiscoveryItem)initWithDictionary:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = PKDiscoveryItem;
  v5 = [(PKDiscoveryObject *)&v18 initWithDictionary:v4];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"type"];
    v5->_type = [v6 isEqual:@"article"];

    v7 = [v4 PKURLForKey:@"layoutBundleURL"];
    layoutBundleURL = v5->_layoutBundleURL;
    v5->_layoutBundleURL = v7;

    v9 = [v4 PKArrayContaining:objc_opt_class() forKey:@"supportedLocalizations"];
    supportedLocalizations = v5->_supportedLocalizations;
    v5->_supportedLocalizations = v9;

    v5->_shouldBadge = [v4 PKBoolForKey:@"shouldBadge"];
    v5->_entitledToForceLargeCard = [v4 PKBoolForKey:@"entitledToForceLargeCard"];
    v11 = [v4 objectForKey:@"priority"];

    if (v11)
    {
      v12 = [v4 PKIntegerForKey:@"priority"];
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

    v15 = [v4 PKDataForKey:@"clientData"];
    clientData = v5->_clientData;
    v5->_clientData = v15;

    v5->_priority = v14;
  }

  return v5;
}

- (void)updateForRuleResult:(BOOL)a3
{
  v3 = a3;
  v20 = *MEMORY[0x1E69E9840];
  if ([(PKDiscoveryItem *)self isTerminalStatus])
  {
    v5 = PKLogFacilityTypeGetObject(0x11uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(PKDiscoveryObject *)self identifier];
      v12 = 138412290;
      v13 = v6;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Discovery Item with identifier: %@ is in terminal state and won't be updated based on rule result", &v12, 0xCu);
    }
  }

  else
  {
    if (v3)
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
      v9 = [(PKDiscoveryObject *)self identifier];
      v10 = [(PKDiscoveryObject *)self status];
      v11 = "NO";
      v12 = 138413058;
      v13 = v9;
      v14 = 2048;
      if (v3)
      {
        v11 = "YES";
      }

      v15 = v10;
      v16 = 2048;
      v17 = v7;
      v18 = 2080;
      v19 = v11;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Updating status of Discovery Item with identifier: %@ from %ld to %ld for result %s", &v12, 0x2Au);
    }

    [(PKDiscoveryObject *)self setStatus:v7];
  }
}

- (void)updateWithDiscoveryItem:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKDiscoveryItem;
  if ([(PKDiscoveryObject *)&v11 updateWithDiscoveryObject:v4])
  {
    self->_type = [v4 type];
    v5 = [v4 layoutBundleURL];
    layoutBundleURL = self->_layoutBundleURL;
    self->_layoutBundleURL = v5;

    v7 = [v4 supportedLocalizations];
    supportedLocalizations = self->_supportedLocalizations;
    self->_supportedLocalizations = v7;

    self->_shouldBadge = [v4 shouldBadge];
    self->_priority = [v4 priority];
    self->_entitledToForceLargeCard = [v4 entitledToForceLargeCard];
    v9 = [v4 clientData];
    clientData = self->_clientData;
    self->_clientData = v9;
  }
}

- (id)eventForKey:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4 && self->_clientData)
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
      v14 = [v13 PKDictionaryForKey:v4];
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
          v20 = v4;
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
  v3 = [(PKDiscoveryObject *)self maxViewCount];
  if (v3)
  {
    v4 = [(PKDiscoveryObject *)self viewCount];
    LOBYTE(v3) = v4 >= [(PKDiscoveryObject *)self maxViewCount];
  }

  return v3;
}

- (BOOL)hasHitMaxLargeViewCount
{
  v3 = [(PKDiscoveryObject *)self maxViewCountLargeCard];
  if (v3)
  {
    v4 = [(PKDiscoveryObject *)self viewCount];
    LOBYTE(v3) = v4 >= [(PKDiscoveryObject *)self maxViewCountLargeCard];
  }

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKDiscoveryItem;
  v4 = a3;
  [(PKDiscoveryObject *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_type forKey:{@"type", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_layoutBundleURL forKey:@"layoutBundleURL"];
  [v4 encodeObject:self->_supportedLocalizations forKey:@"supportedLocalizations"];
  [v4 encodeInteger:self->_shouldBadge forKey:@"shouldBadge"];
  [v4 encodeInteger:self->_priority forKey:@"priority"];
  [v4 encodeBool:self->_entitledToForceLargeCard forKey:@"entitledToForceLargeCard"];
  [v4 encodeObject:self->_clientData forKey:@"clientData"];
}

- (PKDiscoveryItem)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = PKDiscoveryItem;
  v5 = [(PKDiscoveryObject *)&v16 initWithCoder:v4];
  if (v5)
  {
    v5->_type = [v4 decodeIntegerForKey:@"type"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"layoutBundleURL"];
    layoutBundleURL = v5->_layoutBundleURL;
    v5->_layoutBundleURL = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"supportedLocalizations"];
    supportedLocalizations = v5->_supportedLocalizations;
    v5->_supportedLocalizations = v11;

    v5->_shouldBadge = [v4 decodeIntegerForKey:@"shouldBadge"] != 0;
    v5->_priority = [v4 decodeIntegerForKey:@"priority"];
    v5->_entitledToForceLargeCard = [v4 decodeBoolForKey:@"entitledToForceLargeCard"];
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientData"];
    clientData = v5->_clientData;
    v5->_clientData = v13;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v11.receiver = self;
  v11.super_class = PKDiscoveryItem;
  v5 = [(PKDiscoveryObject *)&v11 copyWithZone:?];
  *(v5 + 13) = self->_type;
  v6 = [(NSURL *)self->_layoutBundleURL copyWithZone:a3];
  v7 = *(v5 + 14);
  *(v5 + 14) = v6;

  v8 = [(NSArray *)self->_supportedLocalizations copyWithZone:a3];
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