@interface CWFLocalNetworkFilteredName
+ (id)filteredName:(id)a3 reason:(unint64_t)a4;
- (id)description;
@end

@implementation CWFLocalNetworkFilteredName

+ (id)filteredName:(id)a3 reason:(unint64_t)a4
{
  v5 = a3;
  v6 = objc_alloc_init(CWFLocalNetworkFilteredName);
  [(CWFLocalNetworkFilteredName *)v6 setName:v5];

  [(CWFLocalNetworkFilteredName *)v6 setReason:a4];

  return v6;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ : %p", v5, self];

  v6 = [(CWFLocalNetworkFilteredName *)self name];

  if (v6)
  {
    v7 = [(CWFLocalNetworkFilteredName *)self name];
    [v3 appendFormat:@" name='%@'", v7];
  }

  if ([(CWFLocalNetworkFilteredName *)self reason])
  {
    [v3 appendFormat:@" reason=%lu", -[CWFLocalNetworkFilteredName reason](self, "reason")];
  }

  [v3 appendString:@">"];

  return v3;
}

@end