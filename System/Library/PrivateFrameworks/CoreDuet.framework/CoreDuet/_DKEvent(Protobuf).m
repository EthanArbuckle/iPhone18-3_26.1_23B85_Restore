@interface _DKEvent(Protobuf)
@end

@implementation _DKEvent(Protobuf)

- (void)toPBCodableUseStructuredMetadata:()Protobuf .cold.1(uint8_t *buf, uint64_t a2, void *a3)
{
  *buf = 138412290;
  *a3 = a2;
  _os_log_debug_impl(&dword_191750000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Failed to encode value for key %@", buf, 0xCu);
}

@end