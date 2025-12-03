@interface UNNotificationContent(BLTBackwardCompatible)
+ (void)blt_swizzleEncodeWithCoder;
- (void)_blt_encodedShouldAddToNotificationsList;
- (void)blt_encodeWithCoder:()BLTBackwardCompatible;
- (void)blt_preEncodeShouldAddToNotificationsList:()BLTBackwardCompatible;
@end

@implementation UNNotificationContent(BLTBackwardCompatible)

+ (void)blt_swizzleEncodeWithCoder
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__UNNotificationContent_BLTBackwardCompatible__blt_swizzleEncodeWithCoder__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (blt_swizzleEncodeWithCoder_onceToken_41 != -1)
  {
    dispatch_once(&blt_swizzleEncodeWithCoder_onceToken_41, block);
  }
}

- (void)blt_encodeWithCoder:()BLTBackwardCompatible
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [self blt_encodeWithCoder:v4];
  _blt_encodedShouldAddToNotificationsList = [self _blt_encodedShouldAddToNotificationsList];
  if (_blt_encodedShouldAddToNotificationsList)
  {
    v6 = blt_ids_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = 67109120;
      v8[1] = [_blt_encodedShouldAddToNotificationsList BOOLValue];
      _os_log_impl(&dword_241FB3000, v6, OS_LOG_TYPE_DEFAULT, "Encoding content shouldAddToNotificationsList: %{BOOL}u", v8, 8u);
    }

    [v4 encodeBool:objc_msgSend(_blt_encodedShouldAddToNotificationsList forKey:{"BOOLValue"), @"shouldAddToNotificationsList"}];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)blt_preEncodeShouldAddToNotificationsList:()BLTBackwardCompatible
{
  [MEMORY[0x277CE1FA0] blt_swizzleEncodeWithCoder];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  [self _blt_setEncodedShouldAddToNotificationsList:v5];
}

- (void)_blt_encodedShouldAddToNotificationsList
{
  v1 = objc_getAssociatedObject(self, sel__blt_encodedShouldAddToNotificationsList);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

@end