@interface CKUsageInfoImmutable
- (void)setFailureCount:(unint64_t)a3;
- (void)setLastSent:(id)a3;
- (void)setLastUsed:(id)a3;
- (void)setSending:(id)a3;
@end

@implementation CKUsageInfoImmutable

- (void)setFailureCount:(unint64_t)a3
{
  v6 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, a3);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v6, v5, a2, self, @"CKDDeviceCapabilityDataTypes.m", 111, @"Must not set properies on CKUsageInfoImmutable instance");
}

- (void)setLastSent:(id)a3
{
  v6 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, a3);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v6, v5, a2, self, @"CKDDeviceCapabilityDataTypes.m", 114, @"Must not set properies on CKUsageInfoImmutable instance");
}

- (void)setSending:(id)a3
{
  v6 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, a3);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v6, v5, a2, self, @"CKDDeviceCapabilityDataTypes.m", 117, @"Must not set properies on CKUsageInfoImmutable instance");
}

- (void)setLastUsed:(id)a3
{
  v6 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, a3);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v6, v5, a2, self, @"CKDDeviceCapabilityDataTypes.m", 120, @"Must not set properies on CKUsageInfoImmutable instance");
}

@end