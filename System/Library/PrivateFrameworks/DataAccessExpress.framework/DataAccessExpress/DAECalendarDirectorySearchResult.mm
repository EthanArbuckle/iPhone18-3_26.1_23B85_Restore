@interface DAECalendarDirectorySearchResult
- (DAECalendarDirectorySearchResult)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DAECalendarDirectorySearchResult

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v10.receiver = self;
  v10.super_class = DAECalendarDirectorySearchResult;
  v4 = [(DAECalendarDirectorySearchResult *)&v10 description];
  v5 = [(DAECalendarDirectorySearchResult *)self displayName];
  v6 = [(DAECalendarDirectorySearchResult *)self preferredAddress];
  v7 = [(DAECalendarDirectorySearchResult *)self principalPath];
  v8 = [v3 initWithFormat:@"[%@] displayName: [%@] preferredAddress: [%@] principalPath: [%@]", v4, v5, v6, v7];

  return v8;
}

- (DAECalendarDirectorySearchResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DAECalendarDirectorySearchResult *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    [(DAECalendarDirectorySearchResult *)v5 setDisplayName:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"firstName"];
    [(DAECalendarDirectorySearchResult *)v5 setFirstName:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastName"];
    [(DAECalendarDirectorySearchResult *)v5 setLastName:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"preferredAddress"];
    [(DAECalendarDirectorySearchResult *)v5 setPreferredAddress:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"principalPath"];
    [(DAECalendarDirectorySearchResult *)v5 setPrincipalPath:v10];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DAECalendarDirectorySearchResult *)self displayName];
  [v4 encodeObject:v5 forKey:@"displayName"];

  v6 = [(DAECalendarDirectorySearchResult *)self firstName];
  [v4 encodeObject:v6 forKey:@"firstName"];

  v7 = [(DAECalendarDirectorySearchResult *)self lastName];
  [v4 encodeObject:v7 forKey:@"lastName"];

  v8 = [(DAECalendarDirectorySearchResult *)self preferredAddress];
  [v4 encodeObject:v8 forKey:@"preferredAddress"];

  v9 = [(DAECalendarDirectorySearchResult *)self principalPath];
  [v4 encodeObject:v9 forKey:@"principalPath"];
}

@end