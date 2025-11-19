@interface OBBundle
+ (OBBundle)bundleWithIdentifier:(id)a3;
+ (id)bundleAtPath:(id)a3;
+ (id)bundleAtPath:(id)a3 placeholderIdentifier:(id)a4;
+ (id)nameFromIdentifier:(id)a3;
- (OBBundle)initWithBundle:(id)a3 isLinkBundle:(BOOL)a4 isReplacementBundle:(BOOL)a5;
- (OBBundle)initWithBundle:(id)a3 placeholderIdentifier:(id)a4;
@end

@implementation OBBundle

+ (OBBundle)bundleWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[OBBundleManager sharedManager];
  v5 = [v4 bundleWithIdentifier:v3];

  return v5;
}

+ (id)bundleAtPath:(id)a3
{
  v3 = [MEMORY[0x1E696AAE8] bundleWithPath:a3];
  if (v3)
  {
    v4 = [[OBBundle alloc] initWithBundle:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)bundleAtPath:(id)a3 placeholderIdentifier:(id)a4
{
  v5 = a4;
  v6 = [MEMORY[0x1E696AAE8] bundleWithPath:a3];
  if (v6)
  {
    v7 = [[OBBundle alloc] initWithBundle:v6 placeholderIdentifier:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (OBBundle)initWithBundle:(id)a3 isLinkBundle:(BOOL)a4 isReplacementBundle:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v24.receiver = self;
  v24.super_class = OBBundle;
  v10 = [(OBBundle *)&v24 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_bundle, a3);
    v12 = [v9 bundleIdentifier];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    v14 = [v9 objectForInfoDictionaryKey:@"CFBundleShortVersionString"];
    bundleVersion = v11->_bundleVersion;
    v11->_bundleVersion = v14;

    v11->_isPlaceholder = 0;
    v11->_isLinkBundle = a4;
    v16 = [OBBundle nameFromIdentifier:v11->_identifier];
    name = v11->_name;
    v11->_name = v16;

    v11->_isReplacementBundle = v5;
    if (v5)
    {
      v18 = [(OBBundle *)v11 privacyFlow];
      v19 = [v18 replacementPrecondition];
      replacementPreconditionCache = v11->_replacementPreconditionCache;
      v11->_replacementPreconditionCache = v19;

      v21 = [v18 replaceeIdentifierSets];
      replaceeIdentifierSetsCache = v11->_replaceeIdentifierSetsCache;
      v11->_replaceeIdentifierSetsCache = v21;
    }
  }

  return v11;
}

- (OBBundle)initWithBundle:(id)a3 placeholderIdentifier:(id)a4
{
  v6 = a4;
  v7 = [(OBBundle *)self initWithBundle:a3];
  if (v7)
  {
    v8 = [v6 copy];
    identifier = v7->_identifier;
    v7->_identifier = v8;

    v7->_isPlaceholder = 1;
  }

  return v7;
}

+ (id)nameFromIdentifier:(id)a3
{
  v3 = [a3 componentsSeparatedByString:@"com.apple.onboarding."];
  v4 = [v3 lastObject];

  return v4;
}

@end