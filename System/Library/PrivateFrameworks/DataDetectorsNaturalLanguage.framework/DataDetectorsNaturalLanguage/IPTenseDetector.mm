@interface IPTenseDetector
+ (int64_t)tenseOfString:(id)string languageID:(id)d;
@end

@implementation IPTenseDetector

+ (int64_t)tenseOfString:(id)string languageID:(id)d
{
  stringCopy = string;
  dCopy = d;
  if (![dCopy hasPrefix:@"zh"])
  {
    if ([dCopy hasPrefix:@"ja"])
    {
      if (([stringCopy containsString:@"だった"] & 1) == 0 && (objc_msgSend(stringCopy, "containsString:", @"でした") & 1) == 0 && (objc_msgSend(stringCopy, "containsString:", @"ました") & 1) == 0 && (objc_msgSend(stringCopy, "containsString:", @"あった") & 1) == 0 && (objc_msgSend(stringCopy, "containsString:", @"いた") & 1) == 0 && (objc_msgSend(stringCopy, "containsString:", @"した") & 1) == 0 && (objc_msgSend(stringCopy, "containsString:", @"おられた") & 1) == 0 && (objc_msgSend(stringCopy, "containsString:", @"くれた") & 1) == 0 && (objc_msgSend(stringCopy, "containsString:", @"された") & 1) == 0 && (objc_msgSend(stringCopy, "containsString:", @"されてた") & 1) == 0 && (objc_msgSend(stringCopy, "containsString:", @"されていた") & 1) == 0 && (objc_msgSend(stringCopy, "containsString:", @"した") & 1) == 0 && (objc_msgSend(stringCopy, "containsString:", @"ました") & 1) == 0 && (objc_msgSend(stringCopy, "containsString:", @"していた") & 1) == 0 && (objc_msgSend(stringCopy, "containsString:", @"してた") & 1) == 0 && (objc_msgSend(stringCopy, "containsString:", @"とった") & 1) == 0 && (objc_msgSend(stringCopy, "containsString:", @"なった") & 1) == 0 && (objc_msgSend(stringCopy, "containsString:", @"会った") & 1) == 0 && (objc_msgSend(stringCopy, "containsString:", @"入った") & 1) == 0 && (objc_msgSend(stringCopy, "containsString:", @"出た") & 1) == 0 && (objc_msgSend(stringCopy, "containsString:", @"出られた") & 1) == 0 && (objc_msgSend(stringCopy, "containsString:", @"思った") & 1) == 0 && (objc_msgSend(stringCopy, "containsString:", @"終えた") & 1) == 0 && (objc_msgSend(stringCopy, "containsString:", @"終わった") & 1) == 0 && (objc_msgSend(stringCopy, "containsString:", @"行った") & 1) == 0 && (objc_msgSend(stringCopy, "containsString:", @"見せた") & 1) == 0 && (objc_msgSend(stringCopy, "containsString:", @"見た") & 1) == 0 && (objc_msgSend(stringCopy, "containsString:", @"かった") & 1) == 0)
      {
        if ([stringCopy containsString:@"です"] & 1) != 0 || (objc_msgSend(stringCopy, "containsString:", @"にしてます"))
        {
          goto LABEL_8;
        }

        v12 = @"にしています";
        goto LABEL_44;
      }

LABEL_38:
      v7 = 0;
      goto LABEL_49;
    }

    if (tenseOfString_languageID__onceToken == -1)
    {
      if (!stringCopy)
      {
        goto LABEL_48;
      }
    }

    else
    {
      +[IPTenseDetector tenseOfString:languageID:];
      if (!stringCopy)
      {
        goto LABEL_48;
      }
    }

    if ([stringCopy length])
    {
      v8 = tenseOfString_languageID__tagger;
      objc_sync_enter(v8);
      [tenseOfString_languageID__tagger setString:stringCopy];
      v23 = 0;
      v24 = &v23;
      v25 = 0x2020000000;
      v26 = 3;
      v21[0] = 0;
      v21[1] = v21;
      v21[2] = 0x3032000000;
      v21[3] = __Block_byref_object_copy__0;
      v21[4] = __Block_byref_object_dispose__0;
      v22 = 0;
      v19[0] = 0;
      v19[1] = v19;
      v19[2] = 0x2020000000;
      v20 = 0;
      v9 = tenseOfString_languageID__tagger;
      v10 = [stringCopy length];
      v11 = *MEMORY[0x277CCAEC8];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __44__IPTenseDetector_tenseOfString_languageID___block_invoke_180;
      v14[3] = &unk_278F22EA0;
      v15 = stringCopy;
      v16 = v21;
      v17 = v19;
      v18 = &v23;
      [v9 enumerateTagsInRange:0 scheme:v10 options:v11 usingBlock:{6, v14}];
      [tenseOfString_languageID__tagger setString:&stru_285AD0E88];
      v7 = v24[3];

      _Block_object_dispose(v19, 8);
      _Block_object_dispose(v21, 8);

      _Block_object_dispose(&v23, 8);
      objc_sync_exit(v8);

      goto LABEL_49;
    }

LABEL_48:
    v7 = 3;
    goto LABEL_49;
  }

  if ([stringCopy containsString:@"了"] & 1) != 0 || (objc_msgSend(stringCopy, "containsString:", @"过节") & 1) == 0 && (objc_msgSend(stringCopy, "containsString:", @"过") & 1) != 0 || (objc_msgSend(stringCopy, "containsString:", @"過節") & 1) == 0 && (objc_msgSend(stringCopy, "containsString:", @"過"))
  {
    goto LABEL_38;
  }

  if ([stringCopy containsString:@"将"])
  {
LABEL_8:
    v7 = 2;
    goto LABEL_49;
  }

  v12 = @"要";
LABEL_44:
  if ([stringCopy containsString:v12])
  {
    v7 = 2;
  }

  else
  {
    v7 = 3;
  }

LABEL_49:

  return v7;
}

void __44__IPTenseDetector_tenseOfString_languageID___block_invoke()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v0 = objc_alloc(MEMORY[0x277CCAAE8]);
  v5[0] = *MEMORY[0x277CCAEC8];
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v2 = [v0 initWithTagSchemes:v1 options:6];
  v3 = tenseOfString_languageID__tagger;
  tenseOfString_languageID__tagger = v2;

  v4 = *MEMORY[0x277D85DE8];
}

void __44__IPTenseDetector_tenseOfString_languageID___block_invoke_180(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v20 = a2;
  v12 = [*(a1 + 32) substringWithRange:{a3, a4}];
  v13 = [v12 lowercaseString];

  v14 = [*(*(*(a1 + 40) + 8) + 40) isEqualToString:@"CS"];
  v15 = v20;
  if (!v14 || (v16 = [v20 isEqualToString:@"VBN"], v15 = v20, (v16 & 1) == 0))
  {
    if (![&unk_285B08C40 containsObject:v15])
    {
      if (*(*(*(a1 + 48) + 8) + 24) == 1 && (([v20 isEqualToString:@"VBP"] & 1) != 0 || objc_msgSend(v20, "isEqualToString:", @"VBZ")))
      {
        goto LABEL_12;
      }

      if (![&unk_285B08C70 containsObject:v20])
      {
        if (![&unk_285B08C88 containsObject:v20])
        {
          goto LABEL_18;
        }

        v17 = *(*(a1 + 56) + 8);
        v18 = 2;
        goto LABEL_17;
      }

LABEL_14:
      v17 = *(*(a1 + 56) + 8);
      v18 = 1;
LABEL_17:
      *(v17 + 24) = v18;
      goto LABEL_18;
    }
  }

  if ([*(*(*(a1 + 40) + 8) + 40) isEqualToString:@"RB"] && objc_msgSend(v20, "isEqualToString:", @"VBZ") && (*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    goto LABEL_14;
  }

  if (([&unk_285B08C58 containsObject:v13] & 1) == 0)
  {
LABEL_12:
    *(*(*(a1 + 56) + 8) + 24) = 0;
    *a7 = 1;
  }

LABEL_18:
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  if (*(*(*(a1 + 48) + 8) + 24))
  {
LABEL_19:
    LOBYTE(v19) = 1;
    goto LABEL_23;
  }

  v19 = [&unk_285B08CA0 containsObject:v13];
  if (v19)
  {
    if ([v20 isEqualToString:@"VBP"])
    {
      goto LABEL_19;
    }

    LOBYTE(v19) = [v20 isEqualToString:@"VBS"];
  }

LABEL_23:
  *(*(*(a1 + 48) + 8) + 24) = v19;
}

@end