@interface NSURL(SFExtras)
- (id)sf_asPunchout;
@end

@implementation NSURL(SFExtras)

- (id)sf_asPunchout
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E69CA320]);
  v6[0] = self;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  [v2 setUrls:v3];

  v4 = *MEMORY[0x1E69E9840];

  return v2;
}

@end