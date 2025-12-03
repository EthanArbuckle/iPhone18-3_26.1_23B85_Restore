@interface CNApplicationProxy
- (CNApplicationProxy)init;
- (CNApplicationProxy)initWithBundleIdentifier:(id)identifier teamIdentifier:(id)teamIdentifier localizedName:(id)name activityTypes:(id)types;
- (CNApplicationProxy)initWithCoder:(id)coder;
- (CNApplicationProxy)initWithLSApplicationProxy:(id)proxy;
- (CNApplicationProxy)initWithLSApplicationRecord:(id)record;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNApplicationProxy

- (CNApplicationProxy)init
{
  v2 = CNInitializerUnavailableException(self, a2, sel_initWithLSApplicationProxy_);
  objc_exception_throw(v2);
}

- (CNApplicationProxy)initWithLSApplicationProxy:(id)proxy
{
  proxyCopy = proxy;
  bundleIdentifier = [proxyCopy bundleIdentifier];
  teamID = [proxyCopy teamID];
  localizedName = [proxyCopy localizedName];
  activityTypes = [proxyCopy activityTypes];

  v9 = [(CNApplicationProxy *)self initWithBundleIdentifier:bundleIdentifier teamIdentifier:teamID localizedName:localizedName activityTypes:activityTypes];
  return v9;
}

- (CNApplicationProxy)initWithLSApplicationRecord:(id)record
{
  recordCopy = record;
  bundleIdentifier = [recordCopy bundleIdentifier];
  teamIdentifier = [recordCopy teamIdentifier];
  localizedName = [recordCopy localizedName];
  userActivityTypes = [recordCopy userActivityTypes];

  allObjects = [userActivityTypes allObjects];
  v10 = [(CNApplicationProxy *)self initWithBundleIdentifier:bundleIdentifier teamIdentifier:teamIdentifier localizedName:localizedName activityTypes:allObjects];

  return v10;
}

- (CNApplicationProxy)initWithBundleIdentifier:(id)identifier teamIdentifier:(id)teamIdentifier localizedName:(id)name activityTypes:(id)types
{
  identifierCopy = identifier;
  teamIdentifierCopy = teamIdentifier;
  nameCopy = name;
  typesCopy = types;
  v27.receiver = self;
  v27.super_class = CNApplicationProxy;
  v14 = [(CNApplicationProxy *)&v27 init];
  if (v14)
  {
    v15 = [identifierCopy copy];
    bundleIdentifier = v14->_bundleIdentifier;
    v14->_bundleIdentifier = v15;

    v17 = [teamIdentifierCopy copy];
    teamIdentifier = v14->_teamIdentifier;
    v14->_teamIdentifier = v17;

    v19 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"\u200E"];
    v20 = [nameCopy stringByTrimmingCharactersInSet:v19];

    v21 = [v20 copy];
    localizedName = v14->_localizedName;
    v14->_localizedName = v21;

    v23 = [typesCopy copy];
    activityTypes = v14->_activityTypes;
    v14->_activityTypes = v23;

    v25 = v14;
    nameCopy = v20;
  }

  return v14;
}

- (CNApplicationProxy)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = CNApplicationProxy;
  v5 = [(CNApplicationProxy *)&v23 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_bundleIdentifier"];
    v7 = [v6 copy];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_teamIdentifier"];
    v10 = [v9 copy];
    teamIdentifier = v5->_teamIdentifier;
    v5->_teamIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_localizedName"];
    v13 = [v12 copy];
    localizedName = v5->_localizedName;
    v5->_localizedName = v13;

    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"_activityTypes"];
    v19 = [v18 copy];
    activityTypes = v5->_activityTypes;
    v5->_activityTypes = v19;

    v21 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  bundleIdentifier = self->_bundleIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:bundleIdentifier forKey:@"_bundleIdentifier"];
  [coderCopy encodeObject:self->_teamIdentifier forKey:@"_teamIdentifier"];
  [coderCopy encodeObject:self->_localizedName forKey:@"_localizedName"];
  [coderCopy encodeObject:self->_activityTypes forKey:@"_activityTypes"];
}

- (id)description
{
  v3 = [CNDescriptionBuilder descriptionBuilderWithObject:self];
  v4 = CNApplicationProxyApplicationIdentifierKey;
  bundleIdentifier = [(CNApplicationProxy *)self bundleIdentifier];
  v6 = [v3 appendName:v4 object:bundleIdentifier];

  v7 = CNApplicationProxyTeamIdentifierKey;
  teamIdentifier = [(CNApplicationProxy *)self teamIdentifier];
  v9 = [v3 appendName:v7 object:teamIdentifier];

  v10 = CNApplicationProxyLocalizedNameKey;
  localizedName = [(CNApplicationProxy *)self localizedName];
  v12 = [v3 appendName:v10 object:localizedName];

  v13 = CNApplicationProxyActivityTypesKey;
  activityTypes = [(CNApplicationProxy *)self activityTypes];
  v15 = [v3 appendName:v13 object:activityTypes];

  build = [v3 build];

  return build;
}

@end