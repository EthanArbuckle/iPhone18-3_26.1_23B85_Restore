@interface IFColor(FolderAdditions)
+ (id)folderColor;
@end

@implementation IFColor(FolderAdditions)

+ (id)folderColor
{
  v0 = [MEMORY[0x1E6999378] colorWithName:15 designSystem:0 palette:0 colorScheme:0 contrast:1 styling:0 displayGamut:0 error:0];
  v1 = [objc_alloc(MEMORY[0x1E69A8968]) initWithCGColor:{objc_msgSend(v0, "cgColor")}];

  return v1;
}

@end