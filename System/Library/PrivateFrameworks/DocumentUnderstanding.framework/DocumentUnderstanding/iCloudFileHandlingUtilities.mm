@interface iCloudFileHandlingUtilities
+ (unint64_t)isURLDatalessFault:(id)fault;
@end

@implementation iCloudFileHandlingUtilities

+ (unint64_t)isURLDatalessFault:(id)fault
{
  v13 = *MEMORY[0x277D85DE8];
  cf = 0;
  propertyValueTypeRefPtr = 0;
  faultCopy = fault;
  if (CFURLCopyResourcePropertyForKey(faultCopy, *MEMORY[0x277CBECC0], &propertyValueTypeRefPtr, &cf))
  {
    v4 = propertyValueTypeRefPtr == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (qword_27DDD4DD8 != -1)
    {
      dispatch_once(&qword_27DDD4DD8, &unk_284815DB8);
    }

    v5 = qword_27DDD4DD0;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = cf;
      _os_log_error_impl(&dword_232B02000, v5, OS_LOG_TYPE_ERROR, "Could not determine if the document is a dataless fault: %@", buf, 0xCu);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    v6 = 2;
  }

  else
  {
    v6 = CFBooleanGetValue(propertyValueTypeRefPtr) != 0;
    CFRelease(propertyValueTypeRefPtr);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

@end