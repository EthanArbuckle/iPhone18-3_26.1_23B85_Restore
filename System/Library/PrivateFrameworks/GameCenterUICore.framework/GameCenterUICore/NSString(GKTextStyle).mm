@interface NSString(GKTextStyle)
- (id)_gkAttributedStringByApplyingStyle:()GKTextStyle;
- (id)_gkAttributedStringByApplyingStylesForTags:()GKTextStyle untaggedStyle:;
@end

@implementation NSString(GKTextStyle)

- (id)_gkAttributedStringByApplyingStyle:()GKTextStyle
{
  v4 = MEMORY[0x277CCA898];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v5 attributes];

  v8 = [v6 initWithString:a1 attributes:v7];

  return v8;
}

- (id)_gkAttributedStringByApplyingStylesForTags:()GKTextStyle untaggedStyle:
{
  v88 = *MEMORY[0x277D85DE8];
  v46 = a3;
  v45 = a4;
  v43 = [v45 attributes];
  v77 = 0;
  v78 = &v77;
  v79 = 0x2020000000;
  v80 = 0;
  v48 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:a1 attributes:v43];
  v61 = 0;
  v62 = &v61;
  v63 = 0xD810000000;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v64 = &unk_24E4EABD3;
  v76 = 0;
  v5 = [(__CFString *)a1 length];
  v6 = v62;
  v62[20] = a1;
  v6[23] = 0;
  v6[24] = v5;
  CharactersPtr = CFStringGetCharactersPtr(a1);
  v6[21] = CharactersPtr;
  if (CharactersPtr)
  {
    CStringPtr = 0;
  }

  else
  {
    CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
  }

  v6[22] = CStringPtr;
  v6[25] = 0;
  v6[26] = 0;
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v60 = 0;
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __82__NSString_GKTextStyle___gkAttributedStringByApplyingStylesForTags_untaggedStyle___block_invoke;
  v56[3] = &unk_27967F468;
  v56[4] = &v57;
  v56[5] = 0;
  v56[6] = v5;
  v9 = MEMORY[0x253041B30](v56);
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __82__NSString_GKTextStyle___gkAttributedStringByApplyingStylesForTags_untaggedStyle___block_invoke_2;
  v55[3] = &unk_27967F490;
  v55[4] = &v77;
  v55[5] = v87;
  v10 = MEMORY[0x253041B30](v55);
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __82__NSString_GKTextStyle___gkAttributedStringByApplyingStylesForTags_untaggedStyle___block_invoke_3;
  v51[3] = &unk_27967F4B8;
  v53 = &v57;
  v54 = &v61;
  v11 = v9;
  v51[4] = a1;
  v52 = v11;
  v12 = MEMORY[0x253041B30](v51);
  v13 = 0;
  v14 = 0;
  v47 = 0;
  *&v15 = 138412802;
  v42 = v15;
  while (1)
  {
    if (!v13)
    {
      v12[2](v12, 60, 0);
      if (v10[2](v10, v58[3] - 1))
      {
        goto LABEL_45;
      }

      v13 = 1;
      goto LABEL_36;
    }

    if (v13 != 1)
    {
      if ((v12[2])(v12, 60, 0) && (v12[2])(v12, 47, 0))
      {
        v18 = v10[2](v10, v58[3] - 2);
      }

      else
      {
        v19 = *MEMORY[0x277D0C2A0];
        if (!*MEMORY[0x277D0C2A0])
        {
          v20 = GKOSLoggers();
          v19 = *MEMORY[0x277D0C2A0];
        }

        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v82 = a1;
          _os_log_debug_impl(&dword_24E4A8000, v19, OS_LOG_TYPE_DEBUG, "no closing tag in string:%@", buf, 0xCu);
        }

        v18 = 1;
      }

      v21 = v58[3];
      v49 = 0;
      v22 = (v12[2])(v12, 62, &v49);
      v23 = v49;
      if (v22)
      {
        if (v18)
        {
          goto LABEL_30;
        }

        v24 = v10[2](v10, v58[3]);
        if (([(__CFString *)v23 isEqualToString:v14]& 1) != 0)
        {
          goto LABEL_31;
        }

        v25 = *MEMORY[0x277D0C2A0];
        if (!*MEMORY[0x277D0C2A0])
        {
          v26 = GKOSLoggers();
          v25 = *MEMORY[0x277D0C2A0];
        }

        if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
LABEL_30:
          v24 = 1;
LABEL_31:
          v32 = [v46 objectForKeyedSubscript:{v14, v42}];
          v33 = v32;
          if (v32 && v32 != v45)
          {
            v34 = [v32 attributes];
            [v48 setAttributes:v34 range:{v47, v21 - v47}];
          }

          if (v24)
          {
            goto LABEL_45;
          }

          v13 = 0;
          goto LABEL_36;
        }

        *buf = v42;
        v82 = v23;
        v83 = 2112;
        v84 = v14;
        v85 = 2112;
        v86 = a1;
        v27 = v25;
        v28 = "wrong closing tag name (got %@, expected %@) in string:%@";
        v29 = 32;
      }

      else
      {
        v30 = *MEMORY[0x277D0C2A0];
        if (!*MEMORY[0x277D0C2A0])
        {
          v31 = GKOSLoggers();
          v30 = *MEMORY[0x277D0C2A0];
        }

        if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_30;
        }

        *buf = 138412290;
        v82 = a1;
        v27 = v30;
        v28 = "malformed closing tag in string:%@";
        v29 = 12;
      }

      _os_log_debug_impl(&dword_24E4A8000, v27, OS_LOG_TYPE_DEBUG, v28, buf, v29);
      goto LABEL_30;
    }

    v50 = v14;
    v16 = (v12[2])(v12, 62, &v50);
    v17 = v50;

    if ((v16 & 1) == 0)
    {
      break;
    }

    if (v10[2](v10, v58[3]))
    {
      goto LABEL_44;
    }

    v47 = v58[3];
    v13 = 2;
    v14 = v17;
LABEL_36:
    if (v11[2](v11))
    {
      goto LABEL_45;
    }
  }

  v35 = MEMORY[0x277D0C2A0];
  v36 = *MEMORY[0x277D0C2A0];
  if (!*MEMORY[0x277D0C2A0])
  {
    v37 = GKOSLoggers();
    v36 = *v35;
  }

  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v82 = a1;
    _os_log_debug_impl(&dword_24E4A8000, v36, OS_LOG_TYPE_DEBUG, "malformed tag in string:%@", buf, 0xCu);
  }

LABEL_44:
  v14 = v17;
LABEL_45:
  v38 = v78[3];
  if ((v38 & 0xFFFFFFFFFFFFFFFELL) >= 2)
  {
    v39 = (v38 & 0xFFFFFFFFFFFFFFFELL) + 2;
    v40 = &v87[(v38 >> 1) - 1] + 1;
    do
    {
      if (*v40 != *(v40 - 1))
      {
        [v48 deleteCharactersInRange:?];
      }

      v40 -= 2;
      v39 -= 2;
    }

    while (v39 > 3);
  }

  _Block_object_dispose(&v57, 8);
  _Block_object_dispose(&v61, 8);
  _Block_object_dispose(&v77, 8);

  return v48;
}

@end