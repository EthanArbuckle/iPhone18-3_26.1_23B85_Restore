@interface CDXPCCodecs
@end

@implementation CDXPCCodecs

uint64_t __20___CDXPCCodecs__log__block_invoke()
{
  v0 = os_log_create("com.apple.coreduet", "CDXPCCodecs");
  v1 = _log_log;
  _log_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void __35___CDXPCCodecs_eventTypeWithEvent___block_invoke()
{
  v0 = eventTypeWithEvent__eventTypeByMsgType;
  eventTypeWithEvent__eventTypeByMsgType = &unk_1F05EF7E0;
}

uint64_t __43___CDXPCCodecs_supportedClassesToUnarchive__block_invoke()
{
  v19 = MEMORY[0x1E695DFD8];
  v18 = objc_opt_class();
  v17 = objc_opt_class();
  v16 = objc_opt_class();
  v15 = objc_opt_class();
  v14 = objc_opt_class();
  v13 = objc_opt_class();
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v19 setWithObjects:{v18, v17, v16, v15, v14, v13, v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];
  v11 = supportedClassesToUnarchive_supportedClasses;
  supportedClassesToUnarchive_supportedClasses = v10;

  return MEMORY[0x1EEE66BB8](v10, v11);
}

@end