@interface IMServiceAgentImpl
+ (id)imageNameForStatus:(unint64_t)status;
+ (id)imageURLForStatus:(unint64_t)status;
+ (id)sharedAgent;
+ (void)_determineStatusImageAppearance;
- (IMServiceAgentImpl)init;
- (id)myAvailableMessages;
- (id)myAwayMessages;
- (id)serviceWithName:(id)name;
- (unint64_t)vcCapabilities;
- (void)_customMessagesChanged:(id)changed;
- (void)_statusImageAppearanceChanged:(id)changed;
- (void)dealloc;
- (void)setMyAvailableMessages:(id)messages;
- (void)setMyAwayMessages:(id)messages;
- (void)setupComplete;
@end

@implementation IMServiceAgentImpl

+ (id)sharedAgent
{
  v2 = qword_1EB2EA230;
  if (!qword_1EB2EA230)
  {
    v3 = objc_alloc_init(IMServiceAgentImpl);
    v4 = qword_1EB2EA230;
    qword_1EB2EA230 = v3;

    v2 = qword_1EB2EA230;
  }

  return v2;
}

- (IMServiceAgentImpl)init
{
  v3.receiver = self;
  v3.super_class = IMServiceAgentImpl;
  return [(IMServiceAgentImpl *)&v3 init];
}

- (void)dealloc
{
  v4 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], a2, v2);
  objc_msgSend_removeObserver_name_object_(v4, v5, self, 0, 0);

  v6.receiver = self;
  v6.super_class = IMServiceAgentImpl;
  [(IMServiceAgentImpl *)&v6 dealloc];
}

- (id)serviceWithName:(id)name
{
  nameCopy = name;
  v6 = objc_msgSend_sharedController(IMDaemonController, v4, v5);
  objc_msgSend_blockUntilConnected(v6, v7, v8);

  if (objc_msgSend_isEqualToString_(nameCopy, v9, @"Bonjour"))
  {

    nameCopy = @"SubNet";
  }

  v12 = objc_msgSend_sharedController(IMDaemonController, v10, v11);
  v15 = objc_msgSend_listener(v12, v13, v14);
  v17 = objc_msgSend_serviceWithName_(v15, v16, nameCopy);

  return v17;
}

- (void)_statusImageAppearanceChanged:(id)changed
{
  v4 = objc_opt_class();
  objc_msgSend_forgetStatusImageAppearance(v4, v5, v6);
  v10 = objc_msgSend_notificationCenter(self, v7, v8);
  objc_msgSend___mainThreadPostNotificationName_object_(v10, v9, @"__kIMStatusImagesChangedAppearanceNotification", 0);
}

+ (void)_determineStatusImageAppearance
{
  v4 = objc_msgSend__IMAppObjectForKey_(MEMORY[0x1E695E000], a2, @"UseAlternateStatusIndicators");
  qword_1EB2E4FE0 = objc_msgSend_BOOLValue(v4, v2, v3);
}

+ (id)imageNameForStatus:(unint64_t)status
{
  if (qword_1EB2E4FE0 == -1)
  {
    objc_msgSend__determineStatusImageAppearance(self, a2, status);
  }

  if (status - 1 > 3)
  {
    v4 = @"NSStatusUnknown";
  }

  else
  {
    v4 = off_1E7811B20[status - 1];
  }

  if (qword_1EB2E4FE0)
  {
    v4 = objc_msgSend_stringByAppendingString_(v4, a2, @"Flat");
  }

  return v4;
}

+ (id)imageURLForStatus:(unint64_t)status
{
  if (qword_1EB2E4FE0 == -1)
  {
    objc_msgSend__determineStatusImageAppearance(self, a2, status);
  }

  v4 = qword_1EB2EA238;
  if (!qword_1EB2EA238)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = qword_1EB2EA238;
    qword_1EB2EA238 = v5;

    v7 = MEMORY[0x1E695DF20];
    v8 = _IMFrameworkBundle();
    v10 = objc_msgSend_pathForResource_ofType_(v8, v9, @"OnlineStatuses", @"plist");
    v12 = objc_msgSend_dictionaryWithContentsOfFile_(v7, v11, v10);

    v14 = objc_msgSend_objectForKey_(v12, v13, @"StatusList");
    v17 = objc_msgSend_count(v14, v15, v16);
    if (v17)
    {
      v19 = v17;
      for (i = 0; i != v19; ++i)
      {
        v21 = IMPersonStatusFromFZPersonStatus(i, v18);
        v23 = objc_msgSend_objectAtIndex_(v14, v22, v21);
        v24 = qword_1EB2EA238;
        v26 = objc_msgSend_objectForKey_(v23, v25, @"ImageName");
        objc_msgSend_addObject_(v24, v27, v26);
      }
    }

    v4 = qword_1EB2EA238;
  }

  if (objc_msgSend_count(v4, a2, status) && objc_msgSend_count(qword_1EB2EA238, v28, v29) > status)
  {
    v31 = objc_msgSend_objectAtIndex_(qword_1EB2EA238, v30, status);
    v33 = v31;
    if (qword_1EB2E4FE0 == 1)
    {
      v34 = objc_msgSend_stringByAppendingString_(v31, v32, @"_flat");

      v33 = v34;
    }

    if (v33)
    {
      v35 = MEMORY[0x1E695DFF8];
      v36 = _IMFrameworkBundle();
      v38 = objc_msgSend_pathForResource_ofType_(v36, v37, v33, @"tiff");
      v40 = objc_msgSend_fileURLWithPath_(v35, v39, v38);
    }

    else
    {
      v40 = 0;
    }
  }

  else
  {
    v40 = 0;
  }

  return v40;
}

- (void)_customMessagesChanged:(id)changed
{
  changedCopy = changed;
  IMSyncronizeAppPreferences();
  v7 = objc_msgSend_notificationCenter(self, v5, v6);
  v10 = objc_msgSend_name(changedCopy, v8, v9);
  v11 = qword_1EB2EA230;
  v14 = objc_msgSend_userInfo(changedCopy, v12, v13);

  objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v7, v15, v10, v11, v14);
  v19 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v16, v17);
  objc_msgSend___mainThreadPostNotificationName_object_(v19, v18, @"__kIMCustomStatusMessagesChangedNotification", 0);
}

- (id)myAvailableMessages
{
  v2 = *MEMORY[0x1E69A6538];
  v3 = *MEMORY[0x1E69A6210];
  v4 = IMGetCachedDomainValueForKey();
  if (objc_msgSend_count(v4, v5, v6))
  {
    v8 = v4;
  }

  else
  {
    v8 = objc_msgSend__IMAppObjectForKey_(MEMORY[0x1E695E000], v7, v3);
  }

  v9 = v8;

  return v9;
}

- (id)myAwayMessages
{
  v2 = *MEMORY[0x1E69A6538];
  v3 = *MEMORY[0x1E69A6218];
  v4 = IMGetCachedDomainValueForKey();
  if (objc_msgSend_count(v4, v5, v6))
  {
    v8 = v4;
  }

  else
  {
    v8 = objc_msgSend__IMAppObjectForKey_(MEMORY[0x1E695E000], v7, v3);
  }

  v9 = v8;

  return v9;
}

- (void)setMyAvailableMessages:(id)messages
{
  v3 = *MEMORY[0x1E69A6538];
  v4 = *MEMORY[0x1E69A6210];
  IMSetDomainValueForKey();
  v8 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v5, v6);
  objc_msgSend___mainThreadPostNotificationName_object_(v8, v7, @"__kIMCustomStatusMessagesChangedNotification", 0);
}

- (void)setMyAwayMessages:(id)messages
{
  v3 = *MEMORY[0x1E69A6538];
  v4 = *MEMORY[0x1E69A6218];
  IMSetDomainValueForKey();
  v8 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v5, v6);
  objc_msgSend___mainThreadPostNotificationName_object_(v8, v7, @"__kIMCustomStatusMessagesChangedNotification", 0);
}

- (void)setupComplete
{
  v10 = objc_msgSend_sharedController(IMDaemonController, a2, v2);
  v5 = objc_msgSend_listener(v10, v3, v4);
  v8 = objc_msgSend_allServices(v5, v6, v7);
  objc_msgSend_makeObjectsPerformSelector_(v8, v9, sel_doneSetup);
}

- (unint64_t)vcCapabilities
{
  v3 = objc_msgSend_sharedController(IMDaemonController, a2, v2);
  v6 = objc_msgSend_listener(v3, v4, v5);
  v9 = objc_msgSend_vcCapabilities(v6, v7, v8);

  return v9;
}

@end