@interface NSString(_DPTArguments)
- (id)dp_bitVectorsFromCSVString;
- (id)dp_dictionaryFromJsonString;
- (id)dp_floatVectorsFromCSVString;
- (id)dp_numbersFromCSVString;
- (id)dp_numbersVectorsFromCSVString;
- (id)dp_stringsFromCSVString;
- (id)dp_wordRecordsFromCSVString;
@end

@implementation NSString(_DPTArguments)

- (id)dp_stringsFromCSVString
{
  v2 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:{@", "}];
  v3 = [a1 componentsSeparatedByCharactersInSet:v2];

  return v3;
}

- (id)dp_numbersFromCSVString
{
  v1 = [a1 dp_stringsFromCSVString];
  v2 = objc_opt_new();
  [v2 setNumberStyle:1];
  v3 = [MEMORY[0x277CBEBF8] mutableCopy];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__NSString__DPTArguments__dp_numbersFromCSVString__block_invoke;
  v9[3] = &unk_27858B2D8;
  v10 = v2;
  v4 = v3;
  v11 = v4;
  v5 = v2;
  [v1 enumerateObjectsUsingBlock:v9];
  v6 = v11;
  v7 = v4;

  return v4;
}

- (id)dp_numbersVectorsFromCSVString
{
  v2 = objc_opt_new();
  [v2 setNumberStyle:1];
  v3 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@""];;
  v4 = [a1 componentsSeparatedByCharactersInSet:v3];

  v5 = [MEMORY[0x277CBEBF8] mutableCopy];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __57__NSString__DPTArguments__dp_numbersVectorsFromCSVString__block_invoke;
  v11[3] = &unk_27858B2D8;
  v12 = v2;
  v6 = v5;
  v13 = v6;
  v7 = v2;
  [v4 enumerateObjectsUsingBlock:v11];
  v8 = v13;
  v9 = v6;

  return v6;
}

- (id)dp_bitVectorsFromCSVString
{
  v1 = [a1 dp_stringsFromCSVString];
  v2 = [MEMORY[0x277CBEBF8] mutableCopy];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__NSString__DPTArguments__dp_bitVectorsFromCSVString__block_invoke;
  v5[3] = &unk_27858B300;
  v3 = v2;
  v6 = v3;
  [v1 enumerateObjectsUsingBlock:v5];

  return v3;
}

- (id)dp_floatVectorsFromCSVString
{
  v2 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@""];;
  v3 = [a1 componentsSeparatedByCharactersInSet:v2];

  v4 = [MEMORY[0x277CBEBF8] mutableCopy];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__NSString__DPTArguments__dp_floatVectorsFromCSVString__block_invoke;
  v7[3] = &unk_27858B300;
  v5 = v4;
  v8 = v5;
  [v3 enumerateObjectsUsingBlock:v7];

  return v5;
}

- (id)dp_wordRecordsFromCSVString
{
  v1 = [a1 dp_stringsFromCSVString];
  v2 = objc_opt_new();
  [v2 setNumberStyle:1];
  v3 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@":"];
  v4 = [MEMORY[0x277CBEBF8] mutableCopy];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54__NSString__DPTArguments__dp_wordRecordsFromCSVString__block_invoke;
  v11[3] = &unk_27858B328;
  v12 = v3;
  v13 = v2;
  v5 = v4;
  v14 = v5;
  v6 = v2;
  v7 = v3;
  [v1 enumerateObjectsUsingBlock:v11];
  v8 = v14;
  v9 = v5;

  return v5;
}

- (id)dp_dictionaryFromJsonString
{
  v1 = [a1 stringByReplacingOccurrencesOfString:@"\\{" withString:@"{"];
  v2 = [v1 stringByReplacingOccurrencesOfString:@"\\}" withString:@"}"];

  v3 = [MEMORY[0x277CCA900] newlineCharacterSet];
  v4 = [v2 componentsSeparatedByCharactersInSet:v3];
  v5 = [v4 componentsJoinedByString:@" "];

  v6 = [v5 dataUsingEncoding:4];
  v9 = 0;
  v7 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v6 options:16 error:&v9];

  return v7;
}

@end