@interface NSString(Regex)
- (id)calc_stringByReplacingOccurrencesOfRegex:()Regex usingBlock:;
- (id)calc_stringByReplacingOccurrencesOfRegex:()Regex usingBlockWithResult:;
@end

@implementation NSString(Regex)

- (id)calc_stringByReplacingOccurrencesOfRegex:()Regex usingBlock:
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __71__NSString_Regex__calc_stringByReplacingOccurrencesOfRegex_usingBlock___block_invoke;
  v10[3] = &unk_1E815C4B8;
  v10[4] = self;
  v11 = v6;
  v7 = v6;
  v8 = [self calc_stringByReplacingOccurrencesOfRegex:a3 usingBlockWithResult:v10];

  return v8;
}

- (id)calc_stringByReplacingOccurrencesOfRegex:()Regex usingBlockWithResult:
{
  v6 = a3;
  v7 = a4;
  selfCopy = self;
  v9 = [selfCopy length];
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy_;
  v31 = __Block_byref_object_dispose_;
  v32 = 0;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v26[3] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __81__NSString_Regex__calc_stringByReplacingOccurrencesOfRegex_usingBlockWithResult___block_invoke;
  aBlock[3] = &unk_1E815C1E8;
  v24 = &v27;
  v10 = selfCopy;
  v23 = v10;
  v25 = v26;
  v11 = _Block_copy(aBlock);
  if (calc_stringByReplacingOccurrencesOfRegex_usingBlockWithResult__onceToken[0] != -1)
  {
    dispatch_once(calc_stringByReplacingOccurrencesOfRegex_usingBlockWithResult__onceToken, &__block_literal_global_105);
  }

  [calc_stringByReplacingOccurrencesOfRegex_usingBlockWithResult__lock lock];
  v12 = [calc_stringByReplacingOccurrencesOfRegex_usingBlockWithResult__regexes objectForKeyedSubscript:v6];
  if (!v12)
  {
    v12 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:v6 options:0 error:0];
    [calc_stringByReplacingOccurrencesOfRegex_usingBlockWithResult__regexes setObject:v12 forKeyedSubscript:v6];
  }

  [calc_stringByReplacingOccurrencesOfRegex_usingBlockWithResult__lock unlock];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __81__NSString_Regex__calc_stringByReplacingOccurrencesOfRegex_usingBlockWithResult___block_invoke_3;
  v18[3] = &unk_1E815C210;
  v13 = v11;
  v19 = v13;
  v21 = &v27;
  v14 = v7;
  v20 = v14;
  [v12 enumerateMatchesInString:v10 options:0 range:0 usingBlock:{v9, v18}];
  v15 = v10;
  if (v28[5])
  {
    (*(v13 + 2))(v13, v9, 0);
    v15 = v28[5];
  }

  v16 = v15;

  _Block_object_dispose(v26, 8);
  _Block_object_dispose(&v27, 8);

  return v16;
}

@end