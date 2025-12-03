@interface ICASContextPathData
- (ICASContextPathData)initWithContextPath:(id)path;
- (id)toDict;
@end

@implementation ICASContextPathData

- (ICASContextPathData)initWithContextPath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = ICASContextPathData;
  v6 = [(ICASContextPathData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contextPath, path);
  }

  return v7;
}

- (id)toDict
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"contextPath";
  contextPath = [(ICASContextPathData *)self contextPath];
  if (contextPath)
  {
    contextPath2 = [(ICASContextPathData *)self contextPath];
  }

  else
  {
    contextPath2 = objc_opt_new();
  }

  v5 = contextPath2;
  v10[0] = contextPath2;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end