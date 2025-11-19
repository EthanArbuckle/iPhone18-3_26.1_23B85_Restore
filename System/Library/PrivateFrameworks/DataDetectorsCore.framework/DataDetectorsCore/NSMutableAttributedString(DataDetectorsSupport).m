@interface NSMutableAttributedString(DataDetectorsSupport)
- (void)dd_appendAttributedString:()DataDetectorsSupport;
- (void)dd_chopResults;
- (void)dd_offsetResultsBy:()DataDetectorsSupport;
@end

@implementation NSMutableAttributedString(DataDetectorsSupport)

- (void)dd_appendAttributedString:()DataDetectorsSupport
{
  if ([a3 length])
  {
    v5 = [a1 length];
    if (v5)
    {
      v6 = v5;
      v7 = [a3 mutableCopy];
      [v7 dd_offsetResultsBy:v6];
      [a1 appendAttributedString:v7];
    }

    else
    {

      [a1 appendAttributedString:a3];
    }
  }
}

- (void)dd_chopResults
{
  v2 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:512 valueOptions:0 capacity:0];
  v3 = [a1 length];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __65__NSMutableAttributedString_DataDetectorsSupport__dd_chopResults__block_invoke;
  v4[3] = &unk_1E8002790;
  v4[4] = a1;
  [a1 enumerateAttribute:@"DDResultAttributeName" inRange:0 options:v3 usingBlock:{0, v4}];
}

- (void)dd_offsetResultsBy:()DataDetectorsSupport
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__2165;
  v11 = __Block_byref_object_dispose__2166;
  v12 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:512 valueOptions:0 capacity:0];
  v5 = [a1 length];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70__NSMutableAttributedString_DataDetectorsSupport__dd_offsetResultsBy___block_invoke;
  v6[3] = &unk_1E8002768;
  v6[4] = a1;
  v6[5] = &v7;
  v6[6] = a3;
  [a1 enumerateAttribute:@"DDResultAttributeName" inRange:0 options:v5 usingBlock:{0, v6}];

  _Block_object_dispose(&v7, 8);
}

@end