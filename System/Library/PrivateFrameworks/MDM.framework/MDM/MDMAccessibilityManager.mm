@interface MDMAccessibilityManager
+ (id)sharedInstance;
- (BOOL)touchAccommodationsEnabled;
- (int64_t)textSize;
- (void)setTextSize:(int64_t)size;
@end

@implementation MDMAccessibilityManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[MDMAccessibilityManager sharedInstance];
  }

  v3 = sharedInstance__sharedInstance;

  return v3;
}

uint64_t __41__MDMAccessibilityManager_sharedInstance__block_invoke()
{
  sharedInstance__sharedInstance = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (BOOL)touchAccommodationsEnabled
{
  mEMORY[0x277CE7E20] = [MEMORY[0x277CE7E20] sharedInstance];
  touchAccommodationsEnabled = [mEMORY[0x277CE7E20] touchAccommodationsEnabled];

  return touchAccommodationsEnabled;
}

- (int64_t)textSize
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = -1;
  v2 = _AXSCopyPreferredContentSizeCategoryName();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__MDMAccessibilityManager_textSize__block_invoke;
  v6[3] = &unk_27982B8E0;
  v3 = v2;
  v7 = v3;
  v8 = &v9;
  [&unk_2868502F0 enumerateObjectsUsingBlock:v6];
  v4 = v10[3];

  _Block_object_dispose(&v9, 8);
  return v4;
}

uint64_t __35__MDMAccessibilityManager_textSize__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isEqualToString:*(a1 + 32)];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

- (void)setTextSize:(int64_t)size
{
  v15 = *MEMORY[0x277D85DE8];
  if ([(MDMAccessibilityManager *)self isValidTextSize:?])
  {
    v10 = [&unk_2868502F0 objectAtIndexedSubscript:size];
    _AXSSetPreferredContentSizeCategoryName();
    v4 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v5 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = v5;
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      *buf = 138543618;
      v12 = v8;
      v13 = 1024;
      sizeCopy = size;
      _os_log_impl(&dword_2561F5000, v6, OS_LOG_TYPE_ERROR, "%{public}@ text size is out of range (%d)", buf, 0x12u);
    }

    v9 = *MEMORY[0x277D85DE8];
  }
}

@end