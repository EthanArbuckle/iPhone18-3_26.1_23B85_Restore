@interface CRSystemWallpaperData
- (BOOL)isEqual:(id)equal;
- (CRSystemWallpaperData)initWithBSXPCCoder:(id)coder;
- (CRSystemWallpaperData)initWithCoder:(id)coder;
- (CRSystemWallpaperData)initWithDictionary:(id)dictionary;
- (CRSystemWallpaperData)initWithIdentifier:(id)identifier;
- (NSString)description;
- (id)asDictionary;
- (void)asDictionary;
@end

@implementation CRSystemWallpaperData

- (CRSystemWallpaperData)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = CRSystemWallpaperData;
  v5 = [(CRSystemWallpaperData *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (CRSystemWallpaperData)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  v5 = [dictionaryCopy objectForKey:@"systemWallpaperIdentifier"];

  v6 = v5;
  if (v6 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    self = [(CRSystemWallpaperData *)self initWithIdentifier:v7];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)asDictionary
{
  v8[1] = *MEMORY[0x1E69E9840];
  identifier = [(CRSystemWallpaperData *)self identifier];

  if (identifier)
  {
    v7 = @"systemWallpaperIdentifier";
    identifier2 = [(CRSystemWallpaperData *)self identifier];
    v8[0] = identifier2;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  }

  else
  {
    identifier2 = CarGeneralLogging();
    if (os_log_type_enabled(identifier2, OS_LOG_TYPE_FAULT))
    {
      [(CRSystemWallpaperData *)self asDictionary];
    }

    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = equalCopy;
  if (v5 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    identifier = [(CRSystemWallpaperData *)self identifier];
    identifier2 = [v5 identifier];
    v8 = [identifier isEqualToString:identifier2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = CRSystemWallpaperData;
  v4 = [(CRSystemWallpaperData *)&v8 description];
  identifier = [(CRSystemWallpaperData *)self identifier];
  v6 = [v3 stringWithFormat:@"%@ {identifier: %@}", v4, identifier];

  return v6;
}

- (CRSystemWallpaperData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"systemWallpaperIdentifier"];

  if (v5)
  {
    self = [(CRSystemWallpaperData *)self initWithIdentifier:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (CRSystemWallpaperData)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"systemWallpaperIdentifier"];

  if (v5)
  {
    self = [(CRSystemWallpaperData *)self initWithIdentifier:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)asDictionary
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  selfCopy = self;
  _os_log_fault_impl(&dword_1C81FC000, a2, OS_LOG_TYPE_FAULT, "Unable to serialize wallpaper: %@", &v2, 0xCu);
}

@end