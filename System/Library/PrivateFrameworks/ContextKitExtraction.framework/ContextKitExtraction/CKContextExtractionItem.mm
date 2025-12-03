@interface CKContextExtractionItem
- (BOOL)isEqual:(id)equal;
- (CKContextExtractionItem)initWithCoder:(id)coder;
- (CKContextExtractionItem)initWithTitle:(id)title type:(unint64_t)type bundleIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)toJSONSerializableDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKContextExtractionItem

- (CKContextExtractionItem)initWithTitle:(id)title type:(unint64_t)type bundleIdentifier:(id)identifier
{
  titleCopy = title;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = CKContextExtractionItem;
  v11 = [(CKContextExtractionItem *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_title, title);
    v12->_type = type;
    objc_storeStrong(&v12->_bundleIdentifier, identifier);
  }

  return v12;
}

- (CKContextExtractionItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = CKContextExtractionItem;
  v5 = [(CKContextExtractionItem *)&v20 init];
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    title = v5->_title;
    v5->_title = v6;
    v12 = v6;

    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v8;
    v14 = v8;

    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"extractionSourceClassName"];
    extractionSourceClassName = v5->_extractionSourceClassName;
    v5->_extractionSourceClassName = v17;

    v5->_onScreen = [coderCopy decodeBoolForKey:@"onScreen"];
LABEL_8:
    v10 = v5;
    goto LABEL_9;
  }

  v10 = 0;
LABEL_9:

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  title = self->_title;
  coderCopy = coder;
  [coderCopy encodeObject:title forKey:@"title"];
  [coderCopy encodeInteger:self->_type forKey:@"type"];
  [coderCopy encodeObject:self->_bundleIdentifier forKey:@"bundleIdentifier"];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_extractionSourceClassName forKey:@"extractionSourceClassName"];
  [coderCopy encodeBool:self->_onScreen forKey:@"onScreen"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSString *)self->_title copy];
  [v4 setTitle:v5];

  [v4 setType:self->_type];
  v6 = [(NSString *)self->_bundleIdentifier copy];
  [v4 setBundleIdentifier:v6];

  v7 = [(NSString *)self->_identifier copy];
  [v4 setIdentifier:v7];

  v8 = [(NSString *)self->_extractionSourceClassName copy];
  [v4 setExtractionSourceClassName:v8];

  [v4 setOnScreen:self->_onScreen];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(CKContextExtractionItem *)self hash];
      v6 = v5 == [(CKContextExtractionItem *)equalCopy hash];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_title hash];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_type];
  v5 = [v4 hash] - v3 + 32 * v3;

  v6 = [(NSString *)self->_bundleIdentifier hash]- v5 + 32 * v5;
  v7 = [(NSString *)self->_identifier hash]- v6 + 32 * v6;
  v8 = [(NSString *)self->_extractionSourceClassName hash];
  return self->_onScreen - (v8 - v7 + 32 * v7) + 32 * (v8 - v7 + 32 * v7) + 887503681;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  title = self->_title;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_type];
  v6 = v5;
  if (self->_onScreen)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = [v3 stringWithFormat:@"Title: %@, Type: %@, Identifier: %@, BundleIdentifier: %@, ExtractionClass: %@, On Screen:%@\n", title, v5, self->_identifier, self->_bundleIdentifier, self->_extractionSourceClassName, v7];

  return v8;
}

- (id)toJSONSerializableDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:self->_title forKeyedSubscript:@"title"];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_type];
  [v3 setObject:v4 forKeyedSubscript:@"type"];

  [v3 setObject:self->_bundleIdentifier forKeyedSubscript:@"bundleIdentifier"];
  [v3 setObject:self->_identifier forKeyedSubscript:@"identifier"];
  [v3 setObject:self->_extractionSourceClassName forKeyedSubscript:@"extractionSourceClassName"];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_onScreen];
  [v3 setObject:v5 forKeyedSubscript:@"onScreen"];

  return v3;
}

@end