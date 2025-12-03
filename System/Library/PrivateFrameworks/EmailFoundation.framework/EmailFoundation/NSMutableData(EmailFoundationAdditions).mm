@interface NSMutableData(EmailFoundationAdditions)
- (void)ef_deleteBytesInData:()EmailFoundationAdditions beforeOccurrencesOfData:;
- (void)ef_replaceContiguousSequencesOfBytesInData:()EmailFoundationAdditions withData:;
@end

@implementation NSMutableData(EmailFoundationAdditions)

- (void)ef_deleteBytesInData:()EmailFoundationAdditions beforeOccurrencesOfData:
{
  v13 = a3;
  v6 = a4;
  v7 = [self length];
  if (v7)
  {
    v8 = 0;
    v9 = v7 - 1;
    v10 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      if (v10 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v11 = [self subdataWithRange:{v9, 1}];
        if ([v13 ef_containsData:v11])
        {
          ++v8;
LABEL_12:

          goto LABEL_13;
        }

        [self ef_deleteBytesInRange:{v9 + 1, v8}];

        v8 = 0;
      }

      v12 = [v6 length];
      if (v9 + v12 <= [self length])
      {
        v11 = [self subdataWithRange:{v9, objc_msgSend(v6, "length")}];
        if ([v11 isEqualToData:v6])
        {
          v10 = v9;
        }

        else
        {
          v10 = 0x7FFFFFFFFFFFFFFFLL;
        }

        goto LABEL_12;
      }

      v10 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_13:
      --v9;
    }

    while (v9 != -1);
  }
}

- (void)ef_replaceContiguousSequencesOfBytesInData:()EmailFoundationAdditions withData:
{
  v11 = a3;
  v6 = a4;
  v7 = [self length];
  if (v7)
  {
    v8 = 0;
    do
    {
      v9 = v7 - 1;
      v10 = [self subdataWithRange:{v7 - 1, 1}];
      if ([v11 ef_containsData:v10])
      {
        ++v8;
        if (v7 == 1)
        {
          [self replaceBytesInRange:0 withBytes:v8 length:{objc_msgSend(v6, "bytes"), objc_msgSend(v6, "length")}];

          break;
        }
      }

      else if (v8)
      {
        [self replaceBytesInRange:v7 withBytes:v8 length:{objc_msgSend(v6, "bytes"), objc_msgSend(v6, "length")}];
        v8 = 0;
      }

      --v7;
    }

    while (v9);
  }
}

@end