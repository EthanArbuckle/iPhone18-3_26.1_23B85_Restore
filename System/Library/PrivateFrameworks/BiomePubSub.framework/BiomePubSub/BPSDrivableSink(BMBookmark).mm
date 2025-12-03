@interface BPSDrivableSink(BMBookmark)
- (void)newBookmark;
@end

@implementation BPSDrivableSink(BMBookmark)

- (void)newBookmark
{
  v8 = *MEMORY[0x1E69E9840];
  status = [self status];
  subscription = [status subscription];
  v6 = 138412290;
  v7 = subscription;
  _os_log_error_impl(&dword_1C871B000, a2, OS_LOG_TYPE_ERROR, "Subscription %@ could not create bookmark", &v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

@end