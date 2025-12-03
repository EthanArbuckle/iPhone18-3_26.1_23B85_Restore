@interface CWFLocalNetworkFilteredName
+ (id)filteredName:(id)name reason:(unint64_t)reason;
- (id)description;
@end

@implementation CWFLocalNetworkFilteredName

+ (id)filteredName:(id)name reason:(unint64_t)reason
{
  nameCopy = name;
  v6 = objc_alloc_init(CWFLocalNetworkFilteredName);
  [(CWFLocalNetworkFilteredName *)v6 setName:nameCopy];

  [(CWFLocalNetworkFilteredName *)v6 setReason:reason];

  return v6;
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ : %p", v5, self];

  name = [(CWFLocalNetworkFilteredName *)self name];

  if (name)
  {
    name2 = [(CWFLocalNetworkFilteredName *)self name];
    [string appendFormat:@" name='%@'", name2];
  }

  if ([(CWFLocalNetworkFilteredName *)self reason])
  {
    [string appendFormat:@" reason=%lu", -[CWFLocalNetworkFilteredName reason](self, "reason")];
  }

  [string appendString:@">"];

  return string;
}

@end