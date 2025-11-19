@interface FCTagMetadata
- (BOOL)isAthlete;
- (BOOL)isLocalNews;
- (BOOL)isPublic;
- (FCTagMetadata)init;
- (FCTagMetadata)initWithIdentifier:(id)a3 tagType:(unint64_t)a4 dictionary:(id)a5;
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

- (FCTagMetadata)initWithIdentifier:(id)a3 tagType:(unint64_t)a4 dictionary:(id)a5
{
  v9 = a3;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = FCTagMetadata;
  v11 = [(FCTagMetadata *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_identifier, a3);
    v12->_tagType = a4;
    v13 = [v10 copy];
    dictionary = v12->_dictionary;
    v12->_dictionary = v13;
  }

  return v12;
}

- (NSString)name
{
  v2 = [(FCTagMetadata *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"name"];

  return v3;
}

- (NSString)nameImage
{
  v2 = [(FCTagMetadata *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"nameImage"];

  return v3;
}

- (NSString)nameImageForDarkBackground
{
  v2 = [(FCTagMetadata *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"nameImageForDarkBackground"];

  return v3;
}

- (NSString)nameImageMetadata
{
  v2 = [(FCTagMetadata *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"nameImageMetadata"];

  return v3;
}

- (NSString)nameImageMask
{
  v2 = [(FCTagMetadata *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"nameImageMask"];

  return v3;
}

- (int64_t)nameImageBaselineShift
{
  v2 = [(FCTagMetadata *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"nameImageBaselineShift"];
  v4 = [v3 longValue];

  return v4;
}

- (int64_t)nameImageScaleFactor
{
  v2 = [(FCTagMetadata *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"nameImageScaleFactor"];
  v4 = [v3 longValue];

  return v4;
}

- (NSString)coverImage
{
  v2 = [(FCTagMetadata *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"coverImage"];

  return v3;
}

- (NSString)feedNavImage
{
  v2 = [(FCTagMetadata *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"feedNavImage"];

  return v3;
}

- (NSString)feedNavImageHQ
{
  v2 = [(FCTagMetadata *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"feedNavImageHQ"];

  return v3;
}

- (NSString)publisherPaidAuthorizationURL
{
  v2 = [(FCTagMetadata *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"publisherPaidAuthorizationURL"];

  return v3;
}

- (NSString)publisherPaidVerificationURL
{
  v2 = [(FCTagMetadata *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"publisherPaidVerificationURL"];

  return v3;
}

- (NSString)sportsPrimaryName
{
  v2 = [(FCTagMetadata *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"sportsPrimaryName"];

  return v3;
}

- (NSString)sportsSecondaryName
{
  v2 = [(FCTagMetadata *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"sportsSecondaryName"];

  return v3;
}

- (NSString)sportsSecondaryShortName
{
  v3 = [(FCTagMetadata *)self dictionary];
  v4 = [v3 objectForKeyedSubscript:@"shortSecondaryName"];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(FCTagMetadata *)self dictionary];
    v6 = [v7 objectForKeyedSubscript:@"secondaryShortName"];
  }

  return v6;
}

- (NSString)sportsFullName
{
  v2 = [(FCTagMetadata *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"sportsFullName"];

  return v3;
}

- (unint64_t)sportsLeagueType
{
  v2 = [(FCTagMetadata *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"sportsLeagueType"];
  v4 = FCSportsLeagueTypeFromString(v3);

  return v4;
}

- (NSString)sportsPrimaryColor
{
  v2 = [(FCTagMetadata *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"sportsPrimaryColor"];

  return v3;
}

- (NSString)sportsLogoImageCompact
{
  v2 = [(FCTagMetadata *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"sportsLogoImageCompact"];

  return v3;
}

- (NSString)groupTitleColor
{
  v2 = [(FCTagMetadata *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"groupTitleColor"];

  return v3;
}

- (BOOL)isAthlete
{
  v2 = [(FCTagMetadata *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"tagTypes"];

  LOBYTE(v2) = [v3 containsObject:@"ATHLETE"];
  return v2;
}

- (BOOL)isLocalNews
{
  v2 = [(FCTagMetadata *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"tagTypes"];

  LOBYTE(v2) = [v3 containsObject:@"LOCAL_NEWS"];
  return v2;
}

- (BOOL)isPublic
{
  v2 = [(FCTagMetadata *)self dictionary];
  [v2 objectForKeyedSubscript:@"isPublic"];

  return 1;
}

@end