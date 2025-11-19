@interface NGMPadding
+ (id)padMessage:(id)a3 error:(id *)a4;
+ (id)unpadMessage:(id)a3 error:(id *)a4;
@end

@implementation NGMPadding

+ (id)padMessage:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = v5;
  cf = 0;
  if (v5)
  {
    v7 = SecMPComputePaddingForTransport([v5 length], 2, &cf);
    if (cf)
    {
      v8 = CFCopyDescription(cf);
      CFRelease(cf);
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error obtaining the padding length: %@", v8];
      MPLogAndAssignError(401, a4, v9);
    }

    else
    {
      if (v7 < 0x100000000)
      {
        v15 = v7;
        v12 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:{v7 + objc_msgSend(v6, "length") + 4}];
        [v12 replaceBytesInRange:0 withBytes:{objc_msgSend(v6, "length"), objc_msgSend(v6, "bytes")}];
        v13 = SecRandomCopyBytes(*MEMORY[0x277CDC540], v7, ([v12 mutableBytes] + objc_msgSend(v6, "length")));
        if (v13)
        {
          v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"An issue occured while generating random bytes for padding with error: %i", v13];
          MPLogAndAssignError(4, a4, v14);

          v10 = 0;
        }

        else
        {
          [v12 replaceBytesInRange:objc_msgSend(v6 withBytes:{"length") + v7, 4, &v15}];
          v10 = v12;
        }

        goto LABEL_9;
      }

      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"The padding configuration suggested is larger than what can be represented in the payload: %li", v7];
      MPLogAndAssignError(401, a4, v8);
    }
  }

  else
  {
    MPLogAndAssignError(401, a4, @"Cannot pad a nil message.");
  }

  v10 = 0;
LABEL_9:

  return v10;
}

+ (id)unpadMessage:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    MPLogAndAssignError(401, a4, @"Cannot unpad a nil message.");
LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  if ([v5 length] <= 3)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"The message is too short (%lu) to contain any padding.", objc_msgSend(v6, "length"), v14];
    v9 = LABEL_7:;
    MPLogAndAssignError(401, a4, v9);

    goto LABEL_8;
  }

  v15 = 0;
  [v6 getBytes:&v15 range:{objc_msgSend(v6, "length") - 4, 4}];
  v7 = v15 + 4;
  if (v7 > [v6 length])
  {
    v8 = MEMORY[0x277CCACA8];
    v13 = [v6 length];
    [v8 stringWithFormat:@"The message is too short (%lu) to contain the indicated padding(%u).", v13, v15];
    goto LABEL_7;
  }

  v12 = [v6 length];
  v10 = [v6 subdataWithRange:{0, v12 - v15 - 4}];
LABEL_9:

  return v10;
}

@end