@interface _DASContinuedProcessingWrapper
- (_DASContinuedProcessingWrapper)initWithCoder:(id)coder;
- (_DASContinuedProcessingWrapper)initWithTitle:(id)title subtitle:(id)subtitle iconBundleIdentifier:(id)identifier linkToBundleIdentifier:(id)bundleIdentifier resources:(int64_t)resources;
- (_DASContinuedProcessingWrapper)initWithTitle:(id)title subtitle:(id)subtitle iconBundleIdentifier:(id)identifier linkToBundleIdentifier:(id)bundleIdentifier resources:(int64_t)resources submissionStrategy:(int64_t)strategy isForegroundAppProxy:(BOOL)proxy;
- (_DASContinuedProcessingWrapper)initWithTitle:(id)title subtitle:(id)subtitle resources:(int64_t)resources submissionStrategy:(int64_t)strategy;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _DASContinuedProcessingWrapper

- (_DASContinuedProcessingWrapper)initWithTitle:(id)title subtitle:(id)subtitle resources:(int64_t)resources submissionStrategy:(int64_t)strategy
{
  titleCopy = title;
  subtitleCopy = subtitle;
  v17.receiver = self;
  v17.super_class = _DASContinuedProcessingWrapper;
  v13 = [(_DASContinuedProcessingWrapper *)&v17 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_title, title);
    objc_storeStrong(&v14->_subtitle, subtitle);
    iconBundleIdentifier = v14->_iconBundleIdentifier;
    v14->_iconBundleIdentifier = 0;

    v14->_resources = resources;
    v14->_submissionStrategy = strategy;
  }

  return v14;
}

- (_DASContinuedProcessingWrapper)initWithTitle:(id)title subtitle:(id)subtitle iconBundleIdentifier:(id)identifier linkToBundleIdentifier:(id)bundleIdentifier resources:(int64_t)resources
{
  titleCopy = title;
  subtitleCopy = subtitle;
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  v20.receiver = self;
  v20.super_class = _DASContinuedProcessingWrapper;
  v17 = [(_DASContinuedProcessingWrapper *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_title, title);
    objc_storeStrong(&v18->_subtitle, subtitle);
    objc_storeStrong(&v18->_iconBundleIdentifier, identifier);
    objc_storeStrong(&v18->_linkToBundleIdentifier, bundleIdentifier);
    v18->_resources = resources;
    v18->_submissionStrategy = 1;
  }

  return v18;
}

- (_DASContinuedProcessingWrapper)initWithTitle:(id)title subtitle:(id)subtitle iconBundleIdentifier:(id)identifier linkToBundleIdentifier:(id)bundleIdentifier resources:(int64_t)resources submissionStrategy:(int64_t)strategy isForegroundAppProxy:(BOOL)proxy
{
  titleCopy = title;
  subtitleCopy = subtitle;
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  v23.receiver = self;
  v23.super_class = _DASContinuedProcessingWrapper;
  v19 = [(_DASContinuedProcessingWrapper *)&v23 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_title, title);
    objc_storeStrong(&v20->_subtitle, subtitle);
    objc_storeStrong(&v20->_iconBundleIdentifier, identifier);
    objc_storeStrong(&v20->_linkToBundleIdentifier, bundleIdentifier);
    v20->_resources = resources;
    v20->_submissionStrategy = strategy;
    v20->_isForegroundAppProxy = proxy;
  }

  return v20;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  v6 = [(NSString *)self->_title copyWithZone:zone];
  v7 = [(NSString *)self->_subtitle copyWithZone:zone];
  v8 = [(NSString *)self->_iconBundleIdentifier copyWithZone:zone];
  v9 = [(NSString *)self->_linkToBundleIdentifier copyWithZone:zone];
  LOBYTE(v12) = self->_isForegroundAppProxy;
  v10 = [v5 initWithTitle:v6 subtitle:v7 iconBundleIdentifier:v8 linkToBundleIdentifier:v9 resources:self->_resources submissionStrategy:self->_submissionStrategy isForegroundAppProxy:v12];

  return v10;
}

- (_DASContinuedProcessingWrapper)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"iconBundleIdentifier"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"linkToBundleIdentifier"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"resources"];
  integerValue = [v9 integerValue];

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"submissionStrategy"];
  integerValue2 = [v11 integerValue];

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isForegroundAppProxy"];

  bOOLValue = [v13 BOOLValue];
  v15 = 0;
  if (v5 && v6)
  {
    LOBYTE(v17) = bOOLValue;
    v15 = [objc_alloc(objc_opt_class()) initWithTitle:v5 subtitle:v6 iconBundleIdentifier:v7 linkToBundleIdentifier:v8 resources:integerValue submissionStrategy:integerValue2 isForegroundAppProxy:v17];
  }

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  title = self->_title;
  coderCopy = coder;
  [coderCopy encodeObject:title forKey:@"title"];
  [coderCopy encodeObject:self->_subtitle forKey:@"subtitle"];
  [coderCopy encodeObject:self->_iconBundleIdentifier forKey:@"iconBundleIdentifier"];
  [coderCopy encodeObject:self->_linkToBundleIdentifier forKey:@"linkToBundleIdentifier"];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_resources];
  [coderCopy encodeObject:v6 forKey:@"resources"];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_submissionStrategy];
  [coderCopy encodeObject:v7 forKey:@"submissionStrategy"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_isForegroundAppProxy];
  [coderCopy encodeObject:v8 forKey:@"isForegroundAppProxy"];
}

@end