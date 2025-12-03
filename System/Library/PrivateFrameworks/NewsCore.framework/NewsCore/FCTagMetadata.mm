@interface FCTagMetadata
- (BOOL)isAthlete;
- (BOOL)isLocalNews;
- (BOOL)isPublic;
- (FCTagMetadata)init;
- (FCTagMetadata)initWithIdentifier:(id)identifier tagType:(unint64_t)type dictionary:(id)dictionary;
- (NSString)coverImage;
- (NSString)feedNavImage;
- (NSString)feedNavImageHQ;
- (NSString)groupTitleColor;
- (NSString)name;
- (NSString)nameImage;
- (NSString)nameImageForDarkBackground;
- (NSString)nameImageMask;
- (NSString)nameImageMetadata;
- (NSString)publisherPaidAuthorizationURL;
- (NSString)publisherPaidVerificationURL;
- (NSString)sportsFullName;
- (NSString)sportsLogoImageCompact;
- (NSString)sportsPrimaryColor;
- (NSString)sportsPrimaryName;
- (NSString)sportsSecondaryName;
- (NSString)sportsSecondaryShortName;
- (int64_t)nameImageBaselineShift;
- (int64_t)nameImageScaleFactor;
- (unint64_t)sportsLeagueType;
@end

@implementation FCTagMetadata

- (FCTagMetadata)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCTagMetadata init]";
    v10 = 2080;
    v11 = "FCTagMetadata.m";
    v12 = 1024;
    v13 = 34;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCTagMetadata init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCTagMetadata)initWithIdentifier:(id)identifier tagType:(unint64_t)type dictionary:(id)dictionary
{
  identifierCopy = identifier;
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = FCTagMetadata;
  v11 = [(FCTagMetadata *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_identifier, identifier);
    v12->_tagType = type;
    v13 = [dictionaryCopy copy];
    dictionary = v12->_dictionary;
    v12->_dictionary = v13;
  }

  return v12;
}

- (NSString)name
{
  dictionary = [(FCTagMetadata *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"name"];

  return v3;
}

- (NSString)nameImage
{
  dictionary = [(FCTagMetadata *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"nameImage"];

  return v3;
}

- (NSString)nameImageForDarkBackground
{
  dictionary = [(FCTagMetadata *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"nameImageForDarkBackground"];

  return v3;
}

- (NSString)nameImageMetadata
{
  dictionary = [(FCTagMetadata *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"nameImageMetadata"];

  return v3;
}

- (NSString)nameImageMask
{
  dictionary = [(FCTagMetadata *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"nameImageMask"];

  return v3;
}

- (int64_t)nameImageBaselineShift
{
  dictionary = [(FCTagMetadata *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"nameImageBaselineShift"];
  longValue = [v3 longValue];

  return longValue;
}

- (int64_t)nameImageScaleFactor
{
  dictionary = [(FCTagMetadata *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"nameImageScaleFactor"];
  longValue = [v3 longValue];

  return longValue;
}

- (NSString)coverImage
{
  dictionary = [(FCTagMetadata *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"coverImage"];

  return v3;
}

- (NSString)feedNavImage
{
  dictionary = [(FCTagMetadata *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"feedNavImage"];

  return v3;
}

- (NSString)feedNavImageHQ
{
  dictionary = [(FCTagMetadata *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"feedNavImageHQ"];

  return v3;
}

- (NSString)publisherPaidAuthorizationURL
{
  dictionary = [(FCTagMetadata *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"publisherPaidAuthorizationURL"];

  return v3;
}

- (NSString)publisherPaidVerificationURL
{
  dictionary = [(FCTagMetadata *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"publisherPaidVerificationURL"];

  return v3;
}

- (NSString)sportsPrimaryName
{
  dictionary = [(FCTagMetadata *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"sportsPrimaryName"];

  return v3;
}

- (NSString)sportsSecondaryName
{
  dictionary = [(FCTagMetadata *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"sportsSecondaryName"];

  return v3;
}

- (NSString)sportsSecondaryShortName
{
  dictionary = [(FCTagMetadata *)self dictionary];
  v4 = [dictionary objectForKeyedSubscript:@"shortSecondaryName"];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    dictionary2 = [(FCTagMetadata *)self dictionary];
    v6 = [dictionary2 objectForKeyedSubscript:@"secondaryShortName"];
  }

  return v6;
}

- (NSString)sportsFullName
{
  dictionary = [(FCTagMetadata *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"sportsFullName"];

  return v3;
}

- (unint64_t)sportsLeagueType
{
  dictionary = [(FCTagMetadata *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"sportsLeagueType"];
  v4 = FCSportsLeagueTypeFromString(v3);

  return v4;
}

- (NSString)sportsPrimaryColor
{
  dictionary = [(FCTagMetadata *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"sportsPrimaryColor"];

  return v3;
}

- (NSString)sportsLogoImageCompact
{
  dictionary = [(FCTagMetadata *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"sportsLogoImageCompact"];

  return v3;
}

- (NSString)groupTitleColor
{
  dictionary = [(FCTagMetadata *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"groupTitleColor"];

  return v3;
}

- (BOOL)isAthlete
{
  dictionary = [(FCTagMetadata *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"tagTypes"];

  LOBYTE(dictionary) = [v3 containsObject:@"ATHLETE"];
  return dictionary;
}

- (BOOL)isLocalNews
{
  dictionary = [(FCTagMetadata *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"tagTypes"];

  LOBYTE(dictionary) = [v3 containsObject:@"LOCAL_NEWS"];
  return dictionary;
}

- (BOOL)isPublic
{
  dictionary = [(FCTagMetadata *)self dictionary];
  [dictionary objectForKeyedSubscript:@"isPublic"];

  return 1;
}

@end