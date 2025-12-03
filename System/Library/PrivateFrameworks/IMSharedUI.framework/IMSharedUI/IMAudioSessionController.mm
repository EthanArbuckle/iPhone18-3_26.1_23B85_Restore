@interface IMAudioSessionController
+ (id)queue;
+ (id)sharedInstance;
- (void)configureAudioSessionWithOptions:(unint64_t)options;
- (void)setActive:(BOOL)active options:(unint64_t)options completion:(id)completion;
@end

@implementation IMAudioSessionController

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_254803EBC;
  block[3] = &unk_279789240;
  block[4] = self;
  if (qword_27F611850 != -1)
  {
    dispatch_once(&qword_27F611850, block);
  }

  v2 = qword_27F611848;

  return v2;
}

+ (id)queue
{
  if (qword_27F611860 != -1)
  {
    sub_254805998();
  }

  v3 = qword_27F611858;

  return v3;
}

- (void)setActive:(BOOL)active options:(unint64_t)options completion:(id)completion
{
  activeCopy = active;
  v29 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v11 = objc_msgSend_audio(IMSharedUILogs, v9, v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = MEMORY[0x259C1AB40](completionCopy);
    *buf = 67109632;
    v24 = activeCopy;
    v25 = 1024;
    v26 = options & 1;
    v27 = 2048;
    v28 = v12;
    _os_log_impl(&dword_2547F8000, v11, OS_LOG_TYPE_INFO, "setActive:%d shouldUseSpeaker:%d completion:%p", buf, 0x18u);
  }

  v15 = objc_msgSend_queue(IMAudioSessionController, v13, v14);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_2548041D8;
  v18[3] = &unk_279789268;
  v21 = activeCopy;
  v22 = options & 1;
  v18[4] = self;
  v19 = completionCopy;
  optionsCopy = options;
  v16 = completionCopy;
  dispatch_async(v15, v18);

  v17 = *MEMORY[0x277D85DE8];
}

- (void)configureAudioSessionWithOptions:(unint64_t)options
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, options);
  v12 = @"IMAudioSessionControllerSessionNotificationOptionsKey";
  v7 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v6, options);
  v13[0] = v7;
  v9 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v8, v13, &v12, 1);
  objc_msgSend_postNotificationName_object_userInfo_(v5, v10, @"IMAudioSessionControllerSessionOptionsWillChangeNotification", self, v9);

  v11 = *MEMORY[0x277D85DE8];
}

@end