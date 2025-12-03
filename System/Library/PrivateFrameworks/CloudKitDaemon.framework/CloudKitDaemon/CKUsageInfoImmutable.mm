@interface CKUsageInfoImmutable
- (void)setFailureCount:(unint64_t)count;
- (void)setLastSent:(id)sent;
- (void)setLastUsed:(id)used;
- (void)setSending:(id)sending;
@end

@implementation CKUsageInfoImmutable

- (void)setFailureCount:(unint64_t)count
{
  v6 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, count);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v6, v5, a2, self, @"CKDDeviceCapabilityDataTypes.m", 111, @"Must not set properies on CKUsageInfoImmutable instance");
}

- (void)setLastSent:(id)sent
{
  v6 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, sent);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v6, v5, a2, self, @"CKDDeviceCapabilityDataTypes.m", 114, @"Must not set properies on CKUsageInfoImmutable instance");
}

- (void)setSending:(id)sending
{
  v6 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, sending);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v6, v5, a2, self, @"CKDDeviceCapabilityDataTypes.m", 117, @"Must not set properies on CKUsageInfoImmutable instance");
}

- (void)setLastUsed:(id)used
{
  v6 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, used);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v6, v5, a2, self, @"CKDDeviceCapabilityDataTypes.m", 120, @"Must not set properies on CKUsageInfoImmutable instance");
}

@end