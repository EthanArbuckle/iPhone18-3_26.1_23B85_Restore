@interface FBScene(PaperBoard)
- (void)pb_update:()PaperBoard withCompletion:;
@end

@implementation FBScene(PaperBoard)

- (void)pb_update:()PaperBoard withCompletion:
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    [FBScene(PaperBoard) pb_update:a2 withCompletion:self];
  }

  v9 = v8;
  if ([self isActive])
  {
    [self performUpdate:v7 withCompletion:v9];
  }

  else
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __48__FBScene_PaperBoard__pb_update_withCompletion___block_invoke;
    v12[3] = &unk_278362808;
    v13 = v7;
    [self updateSettingsWithBlock:v12];
    if (v9)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __48__FBScene_PaperBoard__pb_update_withCompletion___block_invoke_2;
      v10[3] = &unk_278362668;
      v11 = v9;
      dispatch_async(MEMORY[0x277D85CD0], v10);
    }
  }
}

- (void)pb_update:()PaperBoard withCompletion:.cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"updater != nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"PBUIPosterSceneTypes.m";
    v16 = 1024;
    v17 = 118;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_21E67D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end