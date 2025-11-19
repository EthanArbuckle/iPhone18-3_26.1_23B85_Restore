@interface CalAttachmentFileSetProtectionAndQuarantineAttributes
@end

@implementation CalAttachmentFileSetProtectionAndQuarantineAttributes

uint64_t ___CalAttachmentFileSetProtectionAndQuarantineAttributes_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
  {
    v9 = 138412546;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_1DEBB1000, v6, OS_LOG_TYPE_ERROR, "Encountered an error setting protection/quarantine attributes with %@: %@", &v9, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];
  return 1;
}

@end