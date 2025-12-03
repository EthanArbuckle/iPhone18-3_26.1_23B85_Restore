@interface IMLogging
+ (id)dateFormatter;
+ (id)logFileDirectory;
+ (id)timeFormatter;
+ (void)logAtLevel:(int)level type:(id)type category:(id)category insertProcessInfo:(BOOL)info simpleLogString:(id)string format:(id)format arguments:(char *)arguments time:(unint64_t)self0;
+ (void)logString:(id)string toFolder:(id)folder toFileNamed:(id)named;
@end

@implementation IMLogging

+ (void)logAtLevel:(int)level type:(id)type category:(id)category insertProcessInfo:(BOOL)info simpleLogString:(id)string format:(id)format arguments:(char *)arguments time:(unint64_t)self0
{
  infoCopy = info;
  categoryCopy = category;
  stringCopy = string;
  formatCopy = format;
  typeCopy = type;
  v18 = IMCreateStringFromDate(time);
  v19 = objc_alloc(MEMORY[0x1E696AD60]);
  v21 = objc_msgSend_initWithString_(v19, v20, v18);
  if (stringCopy)
  {
    FormatString = stringCopy;
  }

  else
  {
    FormatString = _IMFastCreateFormatString(formatCopy, arguments);
  }

  v30 = FormatString;
  if (dword_1EAED83A0 >= level)
  {
    _IMLog(@"%@", v23, v24, v25, v26, v27, v28, v29, FormatString);
  }

  if (qword_1EAED92C0 != -1)
  {
    sub_1959D6024();
  }

  v31 = qword_1EAED92B8;
  if (objc_msgSend_length(categoryCopy, v32, v33))
  {
    v35 = categoryCopy;

    v31 = v35;
  }

  v36 = objc_msgSend_stringByAppendingString_(v31, v34, @".log");
  objc_msgSend_appendString_(v21, v37, @" ");
  if (infoCopy)
  {
    v39 = qword_1EAED92B8;
    v40 = getpid();
    objc_msgSend_appendFormat_(v21, v41, @"%@[%i]: %@", v39, v40, v30);
  }

  else
  {
    objc_msgSend_appendString_(v21, v38, v30);
  }

  objc_msgSend_appendString_(v21, v42, @"\n");
  objc_msgSend_logString_toFolder_toFileNamed_(self, v43, v21, typeCopy, v36);
}

+ (id)logFileDirectory
{
  if (qword_1EAED92C8 != -1)
  {
    sub_1959D6038();
  }

  v3 = qword_1EAED92D0;

  return v3;
}

+ (id)dateFormatter
{
  v3 = objc_msgSend_currentThread(MEMORY[0x1E696AF00], a2, v2);
  v6 = objc_msgSend_threadDictionary(v3, v4, v5);

  v8 = objc_msgSend_objectForKey_(v6, v7, @"_IMLoggingDateFormatter");
  if (!v8)
  {
    v8 = objc_alloc_init(MEMORY[0x1E696AB78]);
    objc_msgSend_setDateFormat_(v8, v9, @"MM/dd/YY HH:mm:ss");
    v10 = objc_alloc(MEMORY[0x1E695DF58]);
    v12 = objc_msgSend_initWithLocaleIdentifier_(v10, v11, @"en_US");
    objc_msgSend_setLocale_(v8, v13, v12);
    objc_msgSend_setObject_forKey_(v6, v14, v8, @"_IMLoggingDateFormatter");
  }

  return v8;
}

+ (id)timeFormatter
{
  v3 = objc_msgSend_currentThread(MEMORY[0x1E696AF00], a2, v2);
  v6 = objc_msgSend_threadDictionary(v3, v4, v5);

  v8 = objc_msgSend_objectForKey_(v6, v7, @"_IMLoggingTimeFormatter");
  if (!v8)
  {
    v8 = objc_alloc_init(MEMORY[0x1E696AB78]);
    objc_msgSend_setDateFormat_(v8, v9, @"HH:mm:ss");
    v10 = objc_alloc(MEMORY[0x1E695DF58]);
    v12 = objc_msgSend_initWithLocaleIdentifier_(v10, v11, @"en_US");
    objc_msgSend_setLocale_(v8, v13, v12);
    objc_msgSend_setObject_forKey_(v6, v14, v8, @"_IMLoggingTimeFormatter");
  }

  return v8;
}

+ (void)logString:(id)string toFolder:(id)folder toFileNamed:(id)named
{
  stringCopy = string;
  folderCopy = folder;
  namedCopy = named;
  if (qword_1EAED92F0 != -1)
  {
    sub_1959D604C();
  }

  v11 = qword_1EAED92E8;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1959C03F8;
  v15[3] = &unk_1E7439838;
  v16 = folderCopy;
  v17 = namedCopy;
  v18 = stringCopy;
  selfCopy = self;
  v12 = stringCopy;
  v13 = namedCopy;
  v14 = folderCopy;
  dispatch_async(v11, v15);
}

@end