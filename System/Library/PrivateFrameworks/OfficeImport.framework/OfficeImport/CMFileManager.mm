@interface CMFileManager
+ (id)canonicalUrlPrefix:(id)prefix;
+ (id)getUrlProtocol:(id)protocol;
+ (id)uniqueFileName:(id)name;
+ (unint64_t)getFileTypeFromPath:(id)path;
+ (unint64_t)getFileTypeFromUTI:(id)i;
@end

@implementation CMFileManager

+ (id)uniqueFileName:(id)name
{
  nameCopy = name;
  v4 = CFUUIDCreate(0);
  v5 = CFUUIDCreateString(0, v4);
  CFRelease(v4);
  nameCopy = [(__CFString *)v5 stringByAppendingFormat:@".%@", nameCopy];

  return nameCopy;
}

+ (unint64_t)getFileTypeFromPath:(id)path
{
  pathExtension = [path pathExtension];
  if ([pathExtension caseInsensitiveCompare:@"doc"] && objc_msgSend(pathExtension, "caseInsensitiveCompare:", @"dot"))
  {
    if ([pathExtension caseInsensitiveCompare:@"docx"] && objc_msgSend(pathExtension, "caseInsensitiveCompare:", @"dotx") && objc_msgSend(pathExtension, "caseInsensitiveCompare:", @"docm") && objc_msgSend(pathExtension, "caseInsensitiveCompare:", @"dotm"))
    {
      if ([pathExtension caseInsensitiveCompare:@"xls"] && objc_msgSend(pathExtension, "caseInsensitiveCompare:", @"xlt") && objc_msgSend(pathExtension, "caseInsensitiveCompare:", @"xla"))
      {
        if ([pathExtension caseInsensitiveCompare:@"xlsx"] && objc_msgSend(pathExtension, "caseInsensitiveCompare:", @"xltx") && objc_msgSend(pathExtension, "caseInsensitiveCompare:", @"xlsm") && objc_msgSend(pathExtension, "caseInsensitiveCompare:", @"xltm"))
        {
          if ([pathExtension caseInsensitiveCompare:@"ppt"] && objc_msgSend(pathExtension, "caseInsensitiveCompare:", @"pot") && objc_msgSend(pathExtension, "caseInsensitiveCompare:", @"pps"))
          {
            if ([pathExtension caseInsensitiveCompare:@"pptx"] && objc_msgSend(pathExtension, "caseInsensitiveCompare:", @"pptm") && objc_msgSend(pathExtension, "caseInsensitiveCompare:", @"potx") && objc_msgSend(pathExtension, "caseInsensitiveCompare:", @"potm") && objc_msgSend(pathExtension, "caseInsensitiveCompare:", @"ppsx") && objc_msgSend(pathExtension, "caseInsensitiveCompare:", @"ppsm"))
            {
              if ([pathExtension caseInsensitiveCompare:@"csv"])
              {
                v4 = 0;
              }

              else
              {
                v4 = 7;
              }
            }

            else
            {
              v4 = 6;
            }
          }

          else
          {
            v4 = 5;
          }
        }

        else
        {
          v4 = 4;
        }
      }

      else
      {
        v4 = 3;
      }
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

+ (unint64_t)getFileTypeFromUTI:(id)i
{
  v3 = [MEMORY[0x277CE1CB8] typeWithIdentifier:i];
  if (qword_27FC699D0 != -1)
  {
    dispatch_once(&qword_27FC699D0, &__block_literal_global_106);
  }

  if ([v3 conformsToType:_MergedGlobals_60])
  {
    goto LABEL_4;
  }

  if ([v3 conformsToType:qword_27FC698F0])
  {
LABEL_6:
    v4 = 3;
    goto LABEL_15;
  }

  if ([v3 conformsToType:qword_27FC698F8])
  {
LABEL_8:
    v4 = 5;
    goto LABEL_15;
  }

  if ([v3 conformsToType:qword_27FC69900])
  {
LABEL_10:
    v4 = 2;
    goto LABEL_15;
  }

  if ([v3 conformsToType:qword_27FC69908])
  {
LABEL_12:
    v4 = 4;
    goto LABEL_15;
  }

  if ([v3 conformsToType:qword_27FC69910])
  {
    goto LABEL_14;
  }

  if ([v3 conformsToType:qword_27FC69918])
  {
LABEL_4:
    v4 = 1;
    goto LABEL_15;
  }

  if ([v3 conformsToType:qword_27FC69920] & 1) != 0 || (objc_msgSend(v3, "conformsToType:", qword_27FC69930) & 1) != 0 || (objc_msgSend(v3, "conformsToType:", qword_27FC69928) & 1) != 0 || qword_27FC69938 && (objc_msgSend(v3, "conformsToType:") & 1) != 0 || qword_27FC69940 && (objc_msgSend(v3, "conformsToType:"))
  {
    goto LABEL_10;
  }

  if ([v3 conformsToType:qword_27FC69948] & 1) != 0 || (objc_msgSend(v3, "conformsToType:", qword_27FC69950))
  {
    goto LABEL_6;
  }

  if ([v3 conformsToType:qword_27FC69958] & 1) != 0 || (objc_msgSend(v3, "conformsToType:", qword_27FC69968) & 1) != 0 || (objc_msgSend(v3, "conformsToType:", qword_27FC69960) & 1) != 0 || qword_27FC69970 && (objc_msgSend(v3, "conformsToType:") & 1) != 0 || qword_27FC69978 && (objc_msgSend(v3, "conformsToType:"))
  {
    goto LABEL_12;
  }

  if ([v3 conformsToType:qword_27FC69980] & 1) != 0 || (objc_msgSend(v3, "conformsToType:", qword_27FC69988))
  {
    goto LABEL_8;
  }

  if ([v3 conformsToType:qword_27FC69998] & 1) != 0 || (objc_msgSend(v3, "conformsToType:", qword_27FC69990) & 1) != 0 || (objc_msgSend(v3, "conformsToType:", qword_27FC699A8) & 1) != 0 || (objc_msgSend(v3, "conformsToType:", qword_27FC699A0) & 1) != 0 || (objc_msgSend(v3, "conformsToType:", qword_27FC699B0) & 1) != 0 || qword_27FC699B8 && (objc_msgSend(v3, "conformsToType:") & 1) != 0 || qword_27FC699C0 && (objc_msgSend(v3, "conformsToType:") & 1) != 0 || qword_27FC699C8 && (objc_msgSend(v3, "conformsToType:"))
  {
LABEL_14:
    v4 = 6;
    goto LABEL_15;
  }

  if ([v3 conformsToType:*MEMORY[0x277CE1D28]])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

LABEL_15:

  return v4;
}

void __36__CMFileManager_getFileTypeFromUTI___block_invoke()
{
  v0 = [MEMORY[0x277CE1CB8] typeWithIdentifier:@"com.microsoft.word.doc"];
  v1 = _MergedGlobals_60;
  _MergedGlobals_60 = v0;

  v2 = [MEMORY[0x277CE1CB8] typeWithIdentifier:@"com.microsoft.excel.xls"];
  v3 = qword_27FC698F0;
  qword_27FC698F0 = v2;

  v4 = [MEMORY[0x277CE1CB8] typeWithIdentifier:@"com.microsoft.powerpoint.ppt"];
  v5 = qword_27FC698F8;
  qword_27FC698F8 = v4;

  v6 = [MEMORY[0x277CE1CB8] typeWithIdentifier:@"org.openxmlformats.wordprocessingml.document"];
  v7 = qword_27FC69900;
  qword_27FC69900 = v6;

  v8 = [MEMORY[0x277CE1CB8] typeWithIdentifier:@"org.openxmlformats.spreadsheetml.sheet"];
  v9 = qword_27FC69908;
  qword_27FC69908 = v8;

  v10 = [MEMORY[0x277CE1CB8] typeWithIdentifier:@"org.openxmlformats.presentationml.presentation"];
  v11 = qword_27FC69910;
  qword_27FC69910 = v10;

  v12 = [MEMORY[0x277CE1CB8] typeWithIdentifier:@"com.microsoft.word.dot"];
  v13 = qword_27FC69918;
  qword_27FC69918 = v12;

  v14 = [MEMORY[0x277CE1CB8] typeWithIdentifier:@"org.openxmlformats.wordprocessingml.template"];
  v15 = qword_27FC69920;
  qword_27FC69920 = v14;

  v16 = [MEMORY[0x277CE1CB8] typeWithIdentifier:@"org.openxmlformats.wordprocessingml.document.macroenabled"];
  v17 = qword_27FC69930;
  qword_27FC69930 = v16;

  v18 = [MEMORY[0x277CE1CB8] typeWithIdentifier:@"org.openxmlformats.wordprocessingml.template.macroenabled"];
  v19 = qword_27FC69928;
  qword_27FC69928 = v18;

  v20 = [MEMORY[0x277CE1CB8] typeWithIdentifier:@"com.microsoft.word.openxml.document"];
  v21 = qword_27FC69938;
  qword_27FC69938 = v20;

  v22 = [MEMORY[0x277CE1CB8] typeWithIdentifier:@"com.microsoft.word.openxml.template"];
  v23 = qword_27FC69940;
  qword_27FC69940 = v22;

  v24 = [MEMORY[0x277CE1CB8] typeWithIdentifier:@"com.microsoft.excel.xlt"];
  v25 = qword_27FC69948;
  qword_27FC69948 = v24;

  v26 = [MEMORY[0x277CE1CB8] typeWithIdentifier:@"com.microsoft.excel.xla"];
  v27 = qword_27FC69950;
  qword_27FC69950 = v26;

  v28 = [MEMORY[0x277CE1CB8] typeWithIdentifier:@"org.openxmlformats.spreadsheetml.template"];
  v29 = qword_27FC69958;
  qword_27FC69958 = v28;

  v30 = [MEMORY[0x277CE1CB8] typeWithIdentifier:@"org.openxmlformats.spreadsheetml.sheet.macroenabled"];
  v31 = qword_27FC69960;
  qword_27FC69960 = v30;

  v32 = [MEMORY[0x277CE1CB8] typeWithIdentifier:@"org.openxmlformats.spreadsheetml.template.macroenabled"];
  v33 = qword_27FC69968;
  qword_27FC69968 = v32;

  v34 = [MEMORY[0x277CE1CB8] typeWithIdentifier:@"com.microsoft.excel.openxml.workbook"];
  v35 = qword_27FC69970;
  qword_27FC69970 = v34;

  v36 = [MEMORY[0x277CE1CB8] typeWithIdentifier:@"com.microsoft.excel.openxml.template"];
  v37 = qword_27FC69978;
  qword_27FC69978 = v36;

  v38 = [MEMORY[0x277CE1CB8] typeWithIdentifier:@"com.microsoft.powerpoint.pps"];
  v39 = qword_27FC69980;
  qword_27FC69980 = v38;

  v40 = [MEMORY[0x277CE1CB8] typeWithIdentifier:@"com.microsoft.powerpoint.pot"];
  v41 = qword_27FC69988;
  qword_27FC69988 = v40;

  v42 = [MEMORY[0x277CE1CB8] typeWithIdentifier:@"org.openxmlformats.presentationml.template"];
  v43 = qword_27FC69998;
  qword_27FC69998 = v42;

  v44 = [MEMORY[0x277CE1CB8] typeWithIdentifier:@"org.openxmlformats.presentationml.slideshow"];
  v45 = qword_27FC69990;
  qword_27FC69990 = v44;

  v46 = [MEMORY[0x277CE1CB8] typeWithIdentifier:@"org.openxmlformats.presentationml.template.macroenabled"];
  v47 = qword_27FC699A0;
  qword_27FC699A0 = v46;

  v48 = [MEMORY[0x277CE1CB8] typeWithIdentifier:@"org.openxmlformats.presentationml.presentation.macroenabled"];
  v49 = qword_27FC699A8;
  qword_27FC699A8 = v48;

  v50 = [MEMORY[0x277CE1CB8] typeWithIdentifier:@"org.openxmlformats.presentationml.slideshow.macroenabled"];
  v51 = qword_27FC699B0;
  qword_27FC699B0 = v50;

  v52 = [MEMORY[0x277CE1CB8] typeWithIdentifier:@"com.microsoft.powerpoint.openxml.presentation"];
  v53 = qword_27FC699B8;
  qword_27FC699B8 = v52;

  v54 = [MEMORY[0x277CE1CB8] typeWithIdentifier:@"com.microsoft.powerpoint.openxml.template"];
  v55 = qword_27FC699C0;
  qword_27FC699C0 = v54;

  v56 = [MEMORY[0x277CE1CB8] typeWithIdentifier:@"com.microsoft.powerpoint.openxml.slideshow"];
  v57 = qword_27FC699C8;
  qword_27FC699C8 = v56;
}

+ (id)canonicalUrlPrefix:(id)prefix
{
  prefixCopy = prefix;
  if (![prefixCopy length] || (v4 = objc_msgSend(prefixCopy, "characterAtIndex:", objc_msgSend(prefixCopy, "length") - 1), v4 == 47) || v4 == 58)
  {
    v5 = prefixCopy;
  }

  else
  {
    v5 = [prefixCopy stringByAppendingString:@"/"];
  }

  v6 = v5;

  return v6;
}

+ (id)getUrlProtocol:(id)protocol
{
  protocolCopy = protocol;
  v4 = [protocolCopy rangeOfString:@":"];
  if (v5)
  {
    v6 = [protocolCopy substringToIndex:v4 + 1];
  }

  else
  {
    v6 = &stru_286EE1130;
  }

  return v6;
}

@end