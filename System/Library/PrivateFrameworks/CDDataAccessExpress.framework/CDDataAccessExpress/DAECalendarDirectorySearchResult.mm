@interface DAECalendarDirectorySearchResult
- (DAECalendarDirectorySearchResult)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DAECalendarDirectorySearchResult

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v9.receiver = self;
  v9.super_class = DAECalendarDirectorySearchResult;
  v4 = [(DAECalendarDirectorySearchResult *)&v9 description];
  displayName = [(DAECalendarDirectorySearchResult *)self displayName];
  preferredAddress = [(DAECalendarDirectorySearchResult *)self preferredAddress];
  v7 = [v3 initWithFormat:@"[%@] displayName: [%@] preferredAddress: [%@]", v4, displayName, preferredAddress];

  return v7;
}

- (DAECalendarDirectorySearchResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(DAECalendarDirectorySearchResult *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    [(DAECalendarDirectorySearchResult *)v5 setDisplayName:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"preferredAddress"];
    [(DAECalendarDirectorySearchResult *)v5 setPreferredAddress:v7];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  displayName = [(DAECalendarDirectorySearchResult *)self displayName];
  [coderCopy encodeObject:displayName forKey:@"displayName"];

  preferredAddress = [(DAECalendarDirectorySearchResult *)self preferredAddress];
  [coderCopy encodeObject:preferredAddress forKey:@"preferredAddress"];
}

@end