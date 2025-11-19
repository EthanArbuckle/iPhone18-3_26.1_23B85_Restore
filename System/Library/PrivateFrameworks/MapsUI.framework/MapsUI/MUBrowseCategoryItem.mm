@interface MUBrowseCategoryItem
- (id)imageWithSearchCategory:(id)a3 nightMode:(BOOL)a4;
@end

@implementation MUBrowseCategoryItem

- (id)imageWithSearchCategory:(id)a3 nightMode:(BOOL)a4
{
  v5 = MEMORY[0x1E696F220];
  v6 = [a3 styleAttributes];
  v7 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v7 nativeScale];
  LOBYTE(v10) = a4;
  v8 = [v5 imageForStyle:v6 size:4 forScale:1 format:0 transparent:0 transitMode:0 isCarplay:v10 nightMode:?];

  return v8;
}

@end