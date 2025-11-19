@interface CNApplicationProxy
- (CNApplicationProxy)init;
- (CNApplicationProxy)initWithBundleIdentifier:(id)a3 teamIdentifier:(id)a4 localizedName:(id)a5 activityTypes:(id)a6;
- (CNApplicationProxy)initWithCoder:(id)a3;
- (CNApplicationProxy)initWithLSApplicationProxy:(id)a3;
- (CNApplicationProxy)initWithLSApplicationRecord:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNApplicationProxy

- (CNApplicationProxy)init
{
  v2 = CNInitializerUnavailableException(self, a2, sel_initWithLSApplicationProxy_);
  objc_exception_throw(v2);
}

- (CNApplicationProxy)initWithLSApplicationProxy:(id)a3
{
  v4 = a3;
  v5 = [v4 bundleIdentifier];
  v6 = [v4 teamID];
  v7 = [v4 localizedName];
  v8 = [v4 activityTypes];

  v9 = [(CNApplicationProxy *)self initWithBundleIdentifier:v5 teamIdentifier:v6 localizedName:v7 activityTypes:v8];
  return v9;
}

- (CNApplicationProxy)initWithLSApplicationRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 bundleIdentifier];
  v6 = [v4 teamIdentifier];
  v7 = [v4 localizedName];
  v8 = [v4 userActivityTypes];

  v9 = [v8 allObjects];
  v10 = [(CNApplicationProxy *)self initWithBundleIdentifier:v5 teamIdentifier:v6 localizedName:v7 activityTypes:v9];

  return v10;
}

- (CNApplicationProxy)initWithBundleIdentifier:(id)a3 teamIdentifier:(id)a4 localizedName:(id)a5 activityTypes:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v27.receiver = self;
  v27.super_class = CNApplicationProxy;
  v14 = [(CNApplicationProxy *)&v27 init];
  if (v14)
  {
    v15 = [v10 copy];
    bundleIdentifier = v14->_bundleIdentifier;
    v14->_bundleIdentifier = v15;

    v17 = [v11 copy];
    teamIdentifier = v14->_teamIdentifier;
    v14->_teamIdentifier = v17;

    v19 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"\u200E"];
    v20 = [v12 stringByTrimmingCharactersInSet:v19];

    v21 = [v20 copy];
    localizedName = v14->_localizedName;
    v14->_localizedName = v21;

    v23 = [v13 copy];
    activityTypes = v14->_activityTypes;
    v14->_activityTypes = v23;

    v25 = v14;
    v12 = v20;
  }

  return v14;
}

- (CNApplicationProxy)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = CNApplicationProxy;
  v5 = [(CNApplicationProxy *)&v23 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_bundleIdentifier"];
    v7 = [v6 copy];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_teamIdentifier"];
    v10 = [v9 copy];
    teamIdentifier = v5->_teamIdentifier;
    v5->_teamIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_localizedName"];
    v13 = [v12 copy];
    localizedName = v5->_localizedName;
    v5->_localizedName = v13;

    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"_activityTypes"];
    v19 = [v18 copy];
    activityTypes = v5->_activityTypes;
    v5->_activityTypes = v19;

    v21 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  bundleIdentifier = self->_bundleIdentifier;
  v5 = a3;
  [v5 encodeObject:bundleIdentifier forKey:@"_bundleIdentifier"];
  [v5 encodeObject:self->_teamIdentifier forKey:@"_teamIdentifier"];
  [v5 encodeObject:self->_localizedName forKey:@"_localizedName"];
  [v5 encodeObject:self->_activityTypes forKey:@"_activityTypes"];
}

- (id)description
{
  v3 = [CNDescriptionBuilder descriptionBuilderWithObject:self];
  v4 = CNApplicationProxyApplicationIdentifierKey;
  v5 = [(CNApplicationProxy *)self bundleIdentifier];
  v6 = [v3 appendName:v4 object:v5];

  v7 = CNApplicationProxyTeamIdentifierKey;
  v8 = [(CNApplicationProxy *)self teamIdentifier];
  v9 = [v3 appendName:v7 object:v8];

  v10 = CNApplicationProxyLocalizedNameKey;
  v11 = [(CNApplicationProxy *)self localizedName];
  v12 = [v3 appendName:v10 object:v11];

  v13 = CNApplicationProxyActivityTypesKey;
  v14 = [(CNApplicationProxy *)self activityTypes];
  v15 = [v3 appendName:v13 object:v14];

  v16 = [v3 build];

  return v16;
}

@end