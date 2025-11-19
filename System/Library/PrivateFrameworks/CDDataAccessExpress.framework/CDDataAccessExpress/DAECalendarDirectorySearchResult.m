@interface DAECalendarDirectorySearchResult
- (DAECalendarDirectorySearchResult)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DAECalendarDirectorySearchResult

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v9.receiver = self;
  v9.super_class = DAECalendarDirectorySearchResult;
  v4 = [(DAECalendarDirectorySearchResult *)&v9 description];
  v5 = [(DAECalendarDirectorySearchResult *)self displayName];
  v6 = [(DAECalendarDirectorySearchResult *)self preferredAddress];
  v7 = [v3 initWithFormat:@"[%@] displayName: [%@] preferredAddress: [%@]", v4, v5, v6];

  return v7;
}

- (DAECalendarDirectorySearchResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DAECalendarDirectorySearchResult *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    [(DAECalendarDirectorySearchResult *)v5 setDisplayName:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"preferredAddress"];
    [(DAECalendarDirectorySearchResult *)v5 setPreferredAddress:v7];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DAECalendarDirectorySearchResult *)self displayName];
  [v4 encodeObject:v5 forKey:@"displayName"];

  v6 = [(DAECalendarDirectorySearchResult *)self preferredAddress];
  [v4 encodeObject:v6 forKey:@"preferredAddress"];
}

@end