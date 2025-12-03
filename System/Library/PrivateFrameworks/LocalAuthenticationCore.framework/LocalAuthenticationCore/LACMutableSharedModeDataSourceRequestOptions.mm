@interface LACMutableSharedModeDataSourceRequestOptions
- (BOOL)isEqual:(id)equal;
- (NSString)description;
@end

@implementation LACMutableSharedModeDataSourceRequestOptions

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy conformsToProtocol:&unk_1F269F840])
  {
    v5 = equalCopy;
    isPreflight = [(LACMutableSharedModeDataSourceRequestOptions *)self isPreflight];
    isPreflight2 = [v5 isPreflight];

    v8 = isPreflight ^ isPreflight2 ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSString)description
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v11 = @"isPreflight";
  isPreflight = [(LACMutableSharedModeDataSourceRequestOptions *)self isPreflight];
  v6 = @"NO";
  if (isPreflight)
  {
    v6 = @"YES";
  }

  v12[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [v3 stringWithFormat:@"<%@ %p %@>", v4, self, v7];;

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

@end