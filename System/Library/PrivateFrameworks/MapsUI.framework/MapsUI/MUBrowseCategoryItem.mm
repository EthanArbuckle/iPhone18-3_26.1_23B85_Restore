@interface MUBrowseCategoryItem
- (id)imageWithSearchCategory:(id)category nightMode:(BOOL)mode;
@end

@implementation MUBrowseCategoryItem

- (id)imageWithSearchCategory:(id)category nightMode:(BOOL)mode
{
  v5 = MEMORY[0x1E696F220];
  styleAttributes = [category styleAttributes];
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen nativeScale];
  LOBYTE(v10) = mode;
  v8 = [v5 imageForStyle:styleAttributes size:4 forScale:1 format:0 transparent:0 transitMode:0 isCarplay:v10 nightMode:?];

  return v8;
}

@end