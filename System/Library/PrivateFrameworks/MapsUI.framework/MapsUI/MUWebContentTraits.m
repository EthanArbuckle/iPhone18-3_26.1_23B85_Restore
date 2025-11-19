@interface MUWebContentTraits
- (id)queryItems;
@end

@implementation MUWebContentTraits

- (id)queryItems
{
  v14[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E696AF60]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[MUWebContentTraits isVibrant](self, "isVibrant")}];
  v5 = [v4 stringValue];
  v6 = [v3 initWithName:@"isVibrant" value:v5];

  v7 = objc_alloc(MEMORY[0x1E696AF60]);
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[MUWebContentTraits isNativelyDrawingPlatter](self, "isNativelyDrawingPlatter")}];
  v9 = [v8 stringValue];
  v10 = [v7 initWithName:@"hasPlatter" value:v9];

  v14[0] = v6;
  v14[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

@end