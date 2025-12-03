@interface ICASNotesToPagesContextPathData
- (ICASNotesToPagesContextPathData)initWithNotesToPagesContextPath:(id)path;
- (id)toDict;
@end

@implementation ICASNotesToPagesContextPathData

- (ICASNotesToPagesContextPathData)initWithNotesToPagesContextPath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = ICASNotesToPagesContextPathData;
  v6 = [(ICASNotesToPagesContextPathData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_notesToPagesContextPath, path);
  }

  return v7;
}

- (id)toDict
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"notesToPagesContextPath";
  notesToPagesContextPath = [(ICASNotesToPagesContextPathData *)self notesToPagesContextPath];
  if (notesToPagesContextPath)
  {
    notesToPagesContextPath2 = [(ICASNotesToPagesContextPathData *)self notesToPagesContextPath];
  }

  else
  {
    notesToPagesContextPath2 = objc_opt_new();
  }

  v5 = notesToPagesContextPath2;
  v10[0] = notesToPagesContextPath2;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end