@interface NSString(MRUTextSize)
- (double)mru_textSizeForFont:()MRUTextSize boundingSize:;
@end

@implementation NSString(MRUTextSize)

- (double)mru_textSizeForFont:()MRUTextSize boundingSize:
{
  v15[1] = *MEMORY[0x1E69E9840];
  v14 = *MEMORY[0x1E69DB648];
  v15[0] = a5;
  v8 = MEMORY[0x1E695DF20];
  v9 = a5;
  v10 = [v8 dictionaryWithObjects:v15 forKeys:&v14 count:1];

  [self boundingRectWithSize:1 options:v10 attributes:0 context:{a2, a3}];
  v12 = v11;

  return v12;
}

@end