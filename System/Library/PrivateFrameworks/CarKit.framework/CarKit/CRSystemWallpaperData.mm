@interface CRSystemWallpaperData
- (BOOL)isEqual:(id)a3;
- (CRSystemWallpaperData)initWithBSXPCCoder:(id)a3;
- (CRSystemWallpaperData)initWithCoder:(id)a3;
- (CRSystemWallpaperData)initWithDictionary:(id)a3;
- (CRSystemWallpaperData)initWithIdentifier:(id)a3;
- (NSString)description;
- (id)asDictionary;
- (void)asDictionary;
@end

@implementation CRSystemWallpaperData

- (CRSystemWallpaperData)initWithIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CRSystemWallpaperData;
  v5 = [(CRSystemWallpaperData *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (CRSystemWallpaperData)initWithDictionary:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 objectForKey:@"systemWallpaperIdentifier"];

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
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)asDictionary
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = [(CRSystemWallpaperData *)self identifier];

  if (v3)
  {
    v7 = @"systemWallpaperIdentifier";
    v4 = [(CRSystemWallpaperData *)self identifier];
    v8[0] = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  }

  else
  {
    v4 = CarGeneralLogging();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      [(CRSystemWallpaperData *)self asDictionary];
    }

    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
  if (v5 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v6 = [(CRSystemWallpaperData *)self identifier];
    v7 = [v5 identifier];
    v8 = [v6 isEqualToString:v7];
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
  v5 = [(CRSystemWallpaperData *)self identifier];
  v6 = [v3 stringWithFormat:@"%@ {identifier: %@}", v4, v5];

  return v6;
}

- (CRSystemWallpaperData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"systemWallpaperIdentifier"];

  if (v5)
  {
    self = [(CRSystemWallpaperData *)self initWithIdentifier:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (CRSystemWallpaperData)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"systemWallpaperIdentifier"];

  if (v5)
  {
    self = [(CRSystemWallpaperData *)self initWithIdentifier:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)asDictionary
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_1C81FC000, a2, OS_LOG_TYPE_FAULT, "Unable to serialize wallpaper: %@", &v2, 0xCu);
}

@end