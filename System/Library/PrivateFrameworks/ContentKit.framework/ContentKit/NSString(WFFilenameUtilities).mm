@interface NSString(WFFilenameUtilities)
+ (id)wf_datedFilenameWithTypeString:()WFFilenameUtilities fileExtension:;
- (id)wf_filenameTruncatedToMaximumLengthWithFormat:()WFFilenameUtilities;
- (id)wf_filenameTruncatedToMaximumLengthWithSuffix:()WFFilenameUtilities;
- (id)wf_sanitizedFilename;
@end

@implementation NSString(WFFilenameUtilities)

- (id)wf_sanitizedFilename
{
  selfCopy = self;
  v2 = [selfCopy rangeOfString:@"^[\\.](?=.*)" options:1024];
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (!v4)
  {
    v5 = [selfCopy stringByReplacingOccurrencesOfString:@"." withString:@"_" options:0 range:{v2, v3}];

    selfCopy = v5;
  }

  v6 = [selfCopy stringByReplacingOccurrencesOfString:@":" withString:&stru_282F53518];
  v7 = [v6 stringByReplacingOccurrencesOfString:@"/" withString:@":"];

  return v7;
}

- (id)wf_filenameTruncatedToMaximumLengthWithFormat:()WFFilenameUtilities
{
  v4 = a3;
  pathExtension = [self pathExtension];
  v6 = [self lengthOfBytesUsingEncoding:4];
  v7 = [v4 lengthOfBytesUsingEncoding:4];
  v8 = [pathExtension lengthOfBytesUsingEncoding:4];
  selfCopy = self;
  v10 = v4;
  v11 = pathExtension;
  if (v8)
  {
    stringByDeletingPathExtension = [selfCopy stringByDeletingPathExtension];

    v13 = WFFilenameByApplyingFormatStringToBasenameAndAppendPathExtension(stringByDeletingPathExtension, v10, v7, v11, v8);
  }

  else
  {
    stringByDeletingPathExtension = selfCopy;
    v14 = v10;
    v15 = v11;
    v13 = stringByDeletingPathExtension;
    if (v7)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:v14, stringByDeletingPathExtension];
    }
  }

  v16 = [v13 lengthOfBytesUsingEncoding:4];
  if (v16 > 255)
  {
    v18 = v16 - v6;
    v19 = selfCopy;
    v20 = v19;
    if (v8 + v18 + 2 < 256)
    {
      v22 = 255 - v18;
      if (v8)
      {
        v22 += ~v8;
LABEL_13:
        v23 = v20;
        v31 = 0;
        v32 = &v31;
        v33 = 0x2020000000;
        v24 = [v23 length];
        if (v24 >= v22)
        {
          v25 = v22;
        }

        else
        {
          v25 = v24;
        }

        v34 = v25;
        v30[0] = 0;
        v30[1] = v30;
        v30[2] = 0x2020000000;
        v30[3] = 0;
        v26 = v32[3];
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __WFSubstringByEncodingComposedCharacterSequencesToMaxLength_block_invoke;
        v29[3] = &unk_278344A30;
        v29[6] = 4;
        v29[7] = v22;
        v29[4] = v30;
        v29[5] = &v31;
        [v23 enumerateSubstringsInRange:0 options:v26 usingBlock:{2, v29}];
        v27 = [v23 substringToIndex:v32[3]];
        _Block_object_dispose(v30, 8);
        _Block_object_dispose(&v31, 8);

        v17 = WFFilenameByApplyingFormatStringToBasenameAndAppendPathExtension(v27, v10, v7, v11, v8);

        goto LABEL_17;
      }
    }

    else
    {
      stringByDeletingPathExtension2 = [v19 stringByDeletingPathExtension];

      v11 = 0;
      v22 = 255 - v18;
      v20 = stringByDeletingPathExtension2;
    }

    v8 = 0;
    goto LABEL_13;
  }

  v17 = v13;
LABEL_17:

  return v17;
}

- (id)wf_filenameTruncatedToMaximumLengthWithSuffix:()WFFilenameUtilities
{
  if (a3)
  {
    v4 = [@"%@" stringByAppendingString:?];
  }

  else
  {
    v4 = 0;
  }

  v5 = [self wf_filenameTruncatedToMaximumLengthWithFormat:v4];

  return v5;
}

+ (id)wf_datedFilenameWithTypeString:()WFFilenameUtilities fileExtension:
{
  v5 = a4;
  v6 = a3;
  v7 = WFLocalizedString(@"yyyy-MM-dd");
  v8 = [MEMORY[0x277CCA968] dateFormatFromTemplate:v7 options:0 locale:0];
  v9 = objc_opt_new();
  [v9 setDateFormat:v8];
  date = [MEMORY[0x277CBEAA8] date];
  v11 = [v9 stringFromDate:date];
  v12 = [MEMORY[0x277CCA968] localizedStringFromDate:date dateStyle:0 timeStyle:2];
  v13 = MEMORY[0x277CCACA8];
  v14 = WFLocalizedString(@"%1$@ %2$@ at %3$@");
  v15 = [v13 localizedStringWithFormat:v14, v6, v11, v12];

  v16 = [v15 stringByReplacingOccurrencesOfString:@"/" withString:@"-"];

  v17 = WFLocalizedString(@"-");
  v18 = [v16 stringByReplacingOccurrencesOfString:@"-" withString:v17];

  v19 = WFLocalizedString(@".");
  v20 = [v18 stringByReplacingOccurrencesOfString:@":" withString:v19];

  v21 = [v20 stringByAppendingPathExtension:v5];

  return v21;
}

@end