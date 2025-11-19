@interface IMDaemonListener
- (BOOL)_hidingDisconnect;
- (BOOL)hasPostedSetupComplete;
- (BOOL)isHoldingChatMessages;
- (BOOL)isSetupComplete;
- (BOOL)shouldHoldChatMessages;
- (NSArray)allServices;
- (NSDictionary)persistentProperties;
- (NSDictionary)properties;
- (NSMutableDictionary)_contexts;
- (NSString)myStatusMessage;
- (id)_stampForContext:(id)a3;
- (id)serviceWithName:(id)a3;
- (id)valueOfPersistentProperty:(id)a3;
- (id)valueOfProperty:(id)a3;
- (unint64_t)myStatus;
- (unint64_t)vcCapabilities;
- (unsigned)myIdleTime;
- (void)_noteDisconnected;
- (void)_resetPostedSetupCompleted;
- (void)_setHidingDisconnect:(BOOL)a3;
- (void)_setStamp:(id)a3 forContext:(id)a4;
- (void)addHandler:(id)a3;
- (void)holdChatMessages;
- (void)releaseHeldChatMessages;
- (void)removeHandler:(id)a3;
@end

@implementation IMDaemonListener

- (NSDictionary)properties
{
  v2 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x1E695DF30], a2, *MEMORY[0x1E695D930], @"Not yet implemented", 0);
  objc_exception_throw(v2);
}

- (id)valueOfProperty:(id)a3
{
  v3 = a3;
  v5 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x1E695DF30], v4, *MEMORY[0x1E695D930], @"Not yet implemented", 0);
  objc_exception_throw(v5);
}

- (NSDictionary)persistentProperties
{
  v2 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x1E695DF30], a2, *MEMORY[0x1E695D930], @"Not yet implemented", 0);
  objc_exception_throw(v2);
}

- (id)valueOfPersistentProperty:(id)a3
{
  v3 = a3;
  v5 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x1E695DF30], v4, *MEMORY[0x1E695D930], @"Not yet implemented", 0);
  objc_exception_throw(v5);
}

- (void)addHandler:(id)a3
{
  v3 = a3;
  v5 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x1E695DF30], v4, *MEMORY[0x1E695D930], @"Not yet implemented", 0);
  objc_exception_throw(v5);
}

- (void)removeHandler:(id)a3
{
  v3 = a3;
  v5 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x1E695DF30], v4, *MEMORY[0x1E695D930], @"Not yet implemented", 0);
  objc_exception_throw(v5);
}

- (unint64_t)myStatus
{
  v2 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x1E695DF30], a2, *MEMORY[0x1E695D930], @"Not yet implemented", 0);
  objc_exception_throw(v2);
}

- (NSString)myStatusMessage
{
  v2 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x1E695DF30], a2, *MEMORY[0x1E695D930], @"Not yet implemented", 0);
  objc_exception_throw(v2);
}

- (unsigned)myIdleTime
{
  v2 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x1E695DF30], a2, *MEMORY[0x1E695D930], @"Not yet implemented", 0);
  objc_exception_throw(v2);
}

- (unint64_t)vcCapabilities
{
  v2 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x1E695DF30], a2, *MEMORY[0x1E695D930], @"Not yet implemented", 0);
  objc_exception_throw(v2);
}

- (void)holdChatMessages
{
  v2 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x1E695DF30], a2, *MEMORY[0x1E695D930], @"Not yet implemented", 0);
  objc_exception_throw(v2);
}

- (void)releaseHeldChatMessages
{
  v2 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x1E695DF30], a2, *MEMORY[0x1E695D930], @"Not yet implemented", 0);
  objc_exception_throw(v2);
}

- (BOOL)shouldHoldChatMessages
{
  v2 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x1E695DF30], a2, *MEMORY[0x1E695D930], @"Not yet implemented", 0);
  objc_exception_throw(v2);
}

- (BOOL)isHoldingChatMessages
{
  v2 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x1E695DF30], a2, *MEMORY[0x1E695D930], @"Not yet implemented", 0);
  objc_exception_throw(v2);
}

- (BOOL)isSetupComplete
{
  v2 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x1E695DF30], a2, *MEMORY[0x1E695D930], @"Not yet implemented", 0);
  objc_exception_throw(v2);
}

- (BOOL)hasPostedSetupComplete
{
  v2 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x1E695DF30], a2, *MEMORY[0x1E695D930], @"Not yet implemented", 0);
  objc_exception_throw(v2);
}

- (NSArray)allServices
{
  v2 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x1E695DF30], a2, *MEMORY[0x1E695D930], @"Not yet implemented", 0);
  objc_exception_throw(v2);
}

- (void)_noteDisconnected
{
  v2 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x1E695DF30], a2, *MEMORY[0x1E695D930], @"Not yet implemented", 0);
  objc_exception_throw(v2);
}

- (id)serviceWithName:(id)a3
{
  v3 = a3;
  v5 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x1E695DF30], v4, *MEMORY[0x1E695D930], @"Not yet implemented", 0);
  objc_exception_throw(v5);
}

- (void)_setStamp:(id)a3 forContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v8 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x1E695DF30], v7, *MEMORY[0x1E695D930], @"Not yet implemented", 0);
  objc_exception_throw(v8);
}

- (id)_stampForContext:(id)a3
{
  v3 = a3;
  v5 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x1E695DF30], v4, *MEMORY[0x1E695D930], @"Not yet implemented", 0);
  objc_exception_throw(v5);
}

- (void)_resetPostedSetupCompleted
{
  v2 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x1E695DF30], a2, *MEMORY[0x1E695D930], @"Not yet implemented", 0);
  objc_exception_throw(v2);
}

- (NSMutableDictionary)_contexts
{
  v2 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x1E695DF30], a2, *MEMORY[0x1E695D930], @"Not yet implemented", 0);
  objc_exception_throw(v2);
}

- (BOOL)_hidingDisconnect
{
  v2 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x1E695DF30], a2, *MEMORY[0x1E695D930], @"Not yet implemented", 0);
  objc_exception_throw(v2);
}

- (void)_setHidingDisconnect:(BOOL)a3
{
  v3 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x1E695DF30], a2, *MEMORY[0x1E695D930], @"Not yet implemented", 0);
  objc_exception_throw(v3);
}

@end