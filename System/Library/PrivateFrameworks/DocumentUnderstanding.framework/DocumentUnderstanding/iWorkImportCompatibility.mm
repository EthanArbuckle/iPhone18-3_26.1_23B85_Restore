@interface iWorkImportCompatibility
+ (__CFDictionary)htmlForFileData:(__CFData *)data referringURLPrefix:(__CFString *)prefix uti:(__CFString *)uti;
+ (__CFDictionary)htmlForFileURL:(__CFURL *)l referringURLPrefix:(__CFString *)prefix uti:(__CFString *)uti;
@end

@implementation iWorkImportCompatibility

+ (__CFDictionary)htmlForFileURL:(__CFURL *)l referringURLPrefix:(__CFString *)prefix uti:(__CFString *)uti
{
  if (!sub_232CE4820() || !sub_232CE48F0())
  {
    return 0;
  }

  v8 = sub_232CE48F0();
  if (v8)
  {

    return v8(l, prefix, uti);
  }

  else
  {
    v14 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v9, v10, v11, v12);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "CFDictionaryRef du_CopyHTMLForIWorkFileAtURL(CFURLRef, CFStringRef, CFStringRef)", v16, v17);
    v19 = dlerror();
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v14, v20, v18, @"iWorkImportCompatibility.m", 15, @"%s", v19);

    __break(1u);
  }

  return result;
}

+ (__CFDictionary)htmlForFileData:(__CFData *)data referringURLPrefix:(__CFString *)prefix uti:(__CFString *)uti
{
  if (!sub_232CE4820() || !sub_232CE4C40())
  {
    return 0;
  }

  v8 = sub_232CE4C40();
  if (v8)
  {

    return v8(data, prefix, uti);
  }

  else
  {
    v14 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v9, v10, v11, v12);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "CFDictionaryRef du_CopyHTMLForIWorkDataWithUTI(CFDataRef, CFStringRef, CFStringRef)", v16, v17);
    v19 = dlerror();
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v14, v20, v18, @"iWorkImportCompatibility.m", 14, @"%s", v19);

    __break(1u);
  }

  return result;
}

@end