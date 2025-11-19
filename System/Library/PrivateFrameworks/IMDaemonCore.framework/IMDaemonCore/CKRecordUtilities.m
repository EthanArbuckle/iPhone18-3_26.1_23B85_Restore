@interface CKRecordUtilities
+ (id)recordIDUsingName:(id)a3 zoneID:(id)a4;
+ (id)recordIDUsingSalt:(id)a3 zoneID:(id)a4 guid:(id)a5;
+ (id)recordNameForRecordChangeTag:(id)a3 ckRecordID:(id)a4 salt:(id)a5 guid:(id)a6;
+ (id)recordNameUsingSalt:(id)a3 guid:(id)a4;
@end

@implementation CKRecordUtilities

+ (id)recordNameUsingSalt:(id)a3 guid:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if ([v6 length] && objc_msgSend(v5, "length"))
  {
    v7 = MEMORY[0x231896740](v6, v5);
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v12 = 138412802;
        v13 = v7;
        v14 = 2112;
        v15 = v6;
        v16 = 2112;
        v17 = v5;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Computed message record name hash %@ from guid %@ and salt %@", &v12, 0x20u);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v12 = 138412802;
        v13 = 0;
        v14 = 2112;
        v15 = v6;
        v16 = 2112;
        v17 = v5;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Could not compute message record name hash %@ from guid %@ and salt %@ as one or both are nil", &v12, 0x20u);
      }
    }

    v7 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)recordNameForRecordChangeTag:(id)a3 ckRecordID:(id)a4 salt:(id)a5 guid:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  if ([v9 length])
  {
    v12 = v9;
  }

  else
  {
    v12 = [a1 recordNameUsingSalt:v10 guid:v11];
  }

  v13 = v12;

  return v13;
}

+ (id)recordIDUsingName:(id)a3 zoneID:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 length])
  {
    v7 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:v5 zoneID:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)recordIDUsingSalt:(id)a3 zoneID:(id)a4 guid:(id)a5
{
  v8 = a4;
  v9 = [a1 recordNameUsingSalt:a3 guid:a5];
  v10 = [a1 recordIDUsingName:v9 zoneID:v8];

  return v10;
}

@end