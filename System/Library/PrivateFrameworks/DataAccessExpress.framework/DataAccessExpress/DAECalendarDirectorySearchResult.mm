@interface DAECalendarDirectorySearchResult
- (DAECalendarDirectorySearchResult)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DAECalendarDirectorySearchResult

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v10.receiver = self;
  v10.super_class = DAECalendarDirectorySearchResult;
  v4 = [(DAECalendarDirectorySearchResult *)&v10 description];
  displayName = [(DAECalendarDirectorySearchResult *)self displayName];
  preferredAddress = [(DAECalendarDirectorySearchResult *)self preferredAddress];
  principalPath = [(DAECalendarDirectorySearchResult *)self principalPath];
  v8 = [v3 initWithFormat:@"[%@] displayName: [%@] preferredAddress: [%@] principalPath: [%@]", v4, displayName, preferredAddress, principalPath];

  return v8;
}

- (DAECalendarDirectorySearchResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(DAECalendarDirectorySearchResult *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    [(DAECalendarDirectorySearchResult *)v5 setDisplayName:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"firstName"];
    [(DAECalendarDirectorySearchResult *)v5 setFirstName:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastName"];
    [(DAECalendarDirectorySearchResult *)v5 setLastName:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"preferredAddress"];
    [(DAECalendarDirectorySearchResult *)v5 setPreferredAddress:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"principalPath"];
    [(DAECalendarDirectorySearchResult *)v5 setPrincipalPath:v10];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  displayName = [(DAECalendarDirectorySearchResult *)self displayName];
  [coderCopy encodeObject:displayName forKey:@"displayName"];

  firstName = [(DAECalendarDirectorySearchResult *)self firstName];
  [coderCopy encodeObject:firstName forKey:@"firstName"];

  lastName = [(DAECalendarDirectorySearchResult *)self lastName];
  [coderCopy encodeObject:lastName forKey:@"lastName"];

  preferredAddress = [(DAECalendarDirectorySearchResult *)self preferredAddress];
  [coderCopy encodeObject:preferredAddress forKey:@"preferredAddress"];

  principalPath = [(DAECalendarDirectorySearchResult *)self principalPath];
  [coderCopy encodeObject:principalPath forKey:@"principalPath"];
}

@end