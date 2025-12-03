@interface _DPInputHelper
- (_DPInputHelper)init;
- (id)nonEmptyNonWhitespaceStringsFromFileAtPath:(id)path;
- (id)nonEmptyStringsFromFileAtPath:(id)path;
- (id)nonEmptyStringsFromFileAtPath:(id)path encoding:(unint64_t)encoding;
- (id)nonEmptyStringsFromFileAtPath:(id)path separatedBy:(id)by encoding:(unint64_t)encoding;
- (id)numbersFromFileAtPath:(id)path;
@end

@implementation _DPInputHelper

- (_DPInputHelper)init
{
  v6.receiver = self;
  v6.super_class = _DPInputHelper;
  v2 = [(_DPInputHelper *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    fmt = v2->_fmt;
    v2->_fmt = v3;

    [(NSNumberFormatter *)v2->_fmt setNumberStyle:1];
  }

  return v2;
}

- (id)nonEmptyStringsFromFileAtPath:(id)path separatedBy:(id)by encoding:(unint64_t)encoding
{
  pathCopy = path;
  byCopy = by;
  v9 = objc_autoreleasePoolPush();
  v10 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:pathCopy encoding:encoding error:0];
  v11 = [v10 componentsSeparatedByCharactersInSet:byCopy];
  v12 = [MEMORY[0x277CBEBF8] mutableCopy];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __69___DPInputHelper_nonEmptyStringsFromFileAtPath_separatedBy_encoding___block_invoke;
  v15[3] = &unk_27858B300;
  v13 = v12;
  v16 = v13;
  [v11 enumerateObjectsUsingBlock:v15];

  objc_autoreleasePoolPop(v9);

  return v13;
}

- (id)nonEmptyStringsFromFileAtPath:(id)path
{
  v4 = MEMORY[0x277CCA900];
  pathCopy = path;
  newlineCharacterSet = [v4 newlineCharacterSet];
  v7 = [(_DPInputHelper *)self nonEmptyStringsFromFileAtPath:pathCopy separatedBy:newlineCharacterSet encoding:4];

  return v7;
}

- (id)nonEmptyStringsFromFileAtPath:(id)path encoding:(unint64_t)encoding
{
  v6 = MEMORY[0x277CCA900];
  pathCopy = path;
  newlineCharacterSet = [v6 newlineCharacterSet];
  v9 = [(_DPInputHelper *)self nonEmptyStringsFromFileAtPath:pathCopy separatedBy:newlineCharacterSet encoding:encoding];

  return v9;
}

- (id)nonEmptyNonWhitespaceStringsFromFileAtPath:(id)path
{
  v4 = MEMORY[0x277CCA900];
  pathCopy = path;
  whitespaceAndNewlineCharacterSet = [v4 whitespaceAndNewlineCharacterSet];
  v7 = [(_DPInputHelper *)self nonEmptyStringsFromFileAtPath:pathCopy separatedBy:whitespaceAndNewlineCharacterSet encoding:4];

  return v7;
}

- (id)numbersFromFileAtPath:(id)path
{
  pathCopy = path;
  v5 = objc_autoreleasePoolPush();
  v6 = [(_DPInputHelper *)self nonEmptyNonWhitespaceStringsFromFileAtPath:pathCopy];
  v7 = [MEMORY[0x277CBEBF8] mutableCopy];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __40___DPInputHelper_numbersFromFileAtPath___block_invoke;
  v10[3] = &unk_27858B2D8;
  v10[4] = self;
  v8 = v7;
  v11 = v8;
  [v6 enumerateObjectsUsingBlock:v10];

  objc_autoreleasePoolPop(v5);

  return v8;
}

@end