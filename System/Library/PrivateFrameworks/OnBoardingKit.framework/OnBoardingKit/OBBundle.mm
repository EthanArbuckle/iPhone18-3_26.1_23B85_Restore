@interface OBBundle
+ (OBBundle)bundleWithIdentifier:(id)identifier;
+ (id)bundleAtPath:(id)path;
+ (id)bundleAtPath:(id)path placeholderIdentifier:(id)identifier;
+ (id)nameFromIdentifier:(id)identifier;
- (OBBundle)initWithBundle:(id)bundle isLinkBundle:(BOOL)linkBundle isReplacementBundle:(BOOL)replacementBundle;
- (OBBundle)initWithBundle:(id)bundle placeholderIdentifier:(id)identifier;
@end

@implementation OBBundle

+ (OBBundle)bundleWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[OBBundleManager sharedManager];
  v5 = [v4 bundleWithIdentifier:identifierCopy];

  return v5;
}

+ (id)bundleAtPath:(id)path
{
  v3 = [MEMORY[0x1E696AAE8] bundleWithPath:path];
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

+ (id)bundleAtPath:(id)path placeholderIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = [MEMORY[0x1E696AAE8] bundleWithPath:path];
  if (v6)
  {
    v7 = [[OBBundle alloc] initWithBundle:v6 placeholderIdentifier:identifierCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (OBBundle)initWithBundle:(id)bundle isLinkBundle:(BOOL)linkBundle isReplacementBundle:(BOOL)replacementBundle
{
  replacementBundleCopy = replacementBundle;
  bundleCopy = bundle;
  v24.receiver = self;
  v24.super_class = OBBundle;
  v10 = [(OBBundle *)&v24 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_bundle, bundle);
    bundleIdentifier = [bundleCopy bundleIdentifier];
    identifier = v11->_identifier;
    v11->_identifier = bundleIdentifier;

    v14 = [bundleCopy objectForInfoDictionaryKey:@"CFBundleShortVersionString"];
    bundleVersion = v11->_bundleVersion;
    v11->_bundleVersion = v14;

    v11->_isPlaceholder = 0;
    v11->_isLinkBundle = linkBundle;
    v16 = [OBBundle nameFromIdentifier:v11->_identifier];
    name = v11->_name;
    v11->_name = v16;

    v11->_isReplacementBundle = replacementBundleCopy;
    if (replacementBundleCopy)
    {
      privacyFlow = [(OBBundle *)v11 privacyFlow];
      replacementPrecondition = [privacyFlow replacementPrecondition];
      replacementPreconditionCache = v11->_replacementPreconditionCache;
      v11->_replacementPreconditionCache = replacementPrecondition;

      replaceeIdentifierSets = [privacyFlow replaceeIdentifierSets];
      replaceeIdentifierSetsCache = v11->_replaceeIdentifierSetsCache;
      v11->_replaceeIdentifierSetsCache = replaceeIdentifierSets;
    }
  }

  return v11;
}

- (OBBundle)initWithBundle:(id)bundle placeholderIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = [(OBBundle *)self initWithBundle:bundle];
  if (v7)
  {
    v8 = [identifierCopy copy];
    identifier = v7->_identifier;
    v7->_identifier = v8;

    v7->_isPlaceholder = 1;
  }

  return v7;
}

+ (id)nameFromIdentifier:(id)identifier
{
  v3 = [identifier componentsSeparatedByString:@"com.apple.onboarding."];
  lastObject = [v3 lastObject];

  return lastObject;
}

@end