@interface ASGeoCodingKeyedUnarchiver
- (id)allowedClasses;
@end

@implementation ASGeoCodingKeyedUnarchiver

- (id)allowedClasses
{
  v17[10] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v16 = objc_opt_self();
  v17[0] = v16;
  v15 = objc_opt_self();
  v17[1] = v15;
  v3 = objc_opt_self();
  v17[2] = v3;
  v4 = objc_opt_self();
  v17[3] = v4;
  v5 = objc_opt_self();
  v17[4] = v5;
  v6 = objc_opt_self();
  v17[5] = v6;
  v7 = objc_opt_self();
  v17[6] = v7;
  v8 = objc_opt_self();
  v17[7] = v8;
  v9 = objc_opt_self();
  v17[8] = v9;
  v10 = objc_opt_self();
  v17[9] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:10];
  v12 = [v2 setWithArray:v11];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

@end