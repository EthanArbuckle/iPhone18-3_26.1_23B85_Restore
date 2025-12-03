@interface CSLPRFApplicationLibrary
+ (id)_withClassLock_libraryForLocation:(unint64_t)location;
+ (id)libraryForLocation:(unint64_t)location;
+ (id)sharedLibraryForLocation:(unint64_t)location;
@end

@implementation CSLPRFApplicationLibrary

+ (id)_withClassLock_libraryForLocation:(unint64_t)location
{
  v32 = *MEMORY[0x277D85DE8];
  if (location >= 4)
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"location < __locationCount"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v17 = NSStringFromSelector(a2);
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      *buf = 138544642;
      v21 = v17;
      v22 = 2114;
      v23 = v19;
      v24 = 2048;
      selfCopy = self;
      v26 = 2114;
      v27 = @"CSLPRFApplicationLibrary.m";
      v28 = 1024;
      v29 = 51;
      v30 = 2114;
      v31 = v16;
      _os_log_error_impl(&dword_22CE92000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v16 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x22CEAA144);
  }

  v4 = __sharedLibraries[location];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    if (location > 1)
    {
      v10 = [CSLPRFCompositeApplicationLibrary alloc];
      if (location == 2)
      {
        v11 = +[CSLPRFWatchApplicationLibrary libraryForWatchApplications];
        v12 = objc_alloc_init(CSLPRFBulletinBoardApplicationLibrary);
      }

      else
      {
        v11 = objc_alloc_init(CSLPRFLocalApplicationLibrary);
        v12 = +[CSLPRFWatchApplicationLibrary libraryForWatchApplications];
      }

      v13 = v12;
      v7 = [(CSLPRFCompositeApplicationLibrary *)v10 initWithPrimaryLibrary:v11 secondaryLibrary:v12];

      goto LABEL_5;
    }

    if (location)
    {
      v6 = objc_alloc_init(CSLPRFLocalApplicationLibrary);
    }

    else
    {
      v6 = +[CSLPRFWatchApplicationLibrary libraryForWatchApplications];
    }
  }

  v7 = v6;
LABEL_5:

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)libraryForLocation:(unint64_t)location
{
  v25 = *MEMORY[0x277D85DE8];
  if (location >= 4)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"location < __locationCount"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(a2);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138544642;
      v14 = v10;
      v15 = 2114;
      v16 = v12;
      v17 = 2048;
      selfCopy = self;
      v19 = 2114;
      v20 = @"CSLPRFApplicationLibrary.m";
      v21 = 1024;
      v22 = 39;
      v23 = 2114;
      v24 = v9;
      _os_log_error_impl(&dword_22CE92000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v9 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x22CEAA300);
  }

  os_unfair_lock_lock(&__lock);
  v5 = __sharedLibraries[location];
  if (!v5)
  {
    v5 = [self _withClassLock_libraryForLocation:location];
  }

  os_unfair_lock_unlock(&__lock);
  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)sharedLibraryForLocation:(unint64_t)location
{
  v27 = *MEMORY[0x277D85DE8];
  if (location >= 4)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"location < __locationCount"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromSelector(a2);
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138544642;
      v16 = v12;
      v17 = 2114;
      v18 = v14;
      v19 = 2048;
      selfCopy = self;
      v21 = 2114;
      v22 = @"CSLPRFApplicationLibrary.m";
      v23 = 1024;
      v24 = 27;
      v25 = 2114;
      v26 = v11;
      _os_log_error_impl(&dword_22CE92000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v11 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x22CEAA4D0);
  }

  os_unfair_lock_lock(&__lock);
  v5 = __sharedLibraries[location];
  if (!v5)
  {
    v6 = [self _withClassLock_libraryForLocation:location];
    v7 = __sharedLibraries[location];
    __sharedLibraries[location] = v6;

    v5 = v6;
  }

  os_unfair_lock_unlock(&__lock);
  v8 = *MEMORY[0x277D85DE8];

  return v5;
}

@end