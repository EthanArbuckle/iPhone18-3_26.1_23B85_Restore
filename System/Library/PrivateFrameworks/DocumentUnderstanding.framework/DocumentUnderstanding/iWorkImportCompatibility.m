@interface iWorkImportCompatibility
+ (__CFDictionary)htmlForFileData:(__CFData *)a3 referringURLPrefix:(__CFString *)a4 uti:(__CFString *)a5;
+ (__CFDictionary)htmlForFileURL:(__CFURL *)a3 referringURLPrefix:(__CFString *)a4 uti:(__CFString *)a5;
@end

@implementation iWorkImportCompatibility

+ (__CFDictionary)htmlForFileURL:(__CFURL *)a3 referringURLPrefix:(__CFString *)a4 uti:(__CFString *)a5
{
  if (!sub_232CE4820() || !sub_232CE48F0())
  {
    return 0;
  }

  v8 = sub_232CE48F0();
  if (v8)
  {

    return v8(a3, a4, a5);
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

+ (__CFDictionary)htmlForFileData:(__CFData *)a3 referringURLPrefix:(__CFString *)a4 uti:(__CFString *)a5
{
  if (!sub_232CE4820() || !sub_232CE4C40())
  {
    return 0;
  }

  v8 = sub_232CE4C40();
  if (v8)
  {

    return v8(a3, a4, a5);
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