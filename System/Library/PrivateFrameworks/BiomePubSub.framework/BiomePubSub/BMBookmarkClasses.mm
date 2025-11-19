@interface BMBookmarkClasses
+ (id)sharedInstance;
- (BMBookmarkClasses)init;
- (id)allowedClassesForSecureCodingBMBookmark;
- (void)allowClassesForSecureCodingBMBookmark:(id)a3;
@end

@implementation BMBookmarkClasses

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[BMBookmarkClasses sharedInstance];
  }

  v3 = sharedInstance_bookmarkClasses;

  return v3;
}

- (id)allowedClassesForSecureCodingBMBookmark
{
  os_unfair_lock_lock(&self->_lock);
  if (!self->_addedBiomeStorageClasses)
  {
    v3 = NSClassFromString(&cfstr_Bmstorebookmar.isa);
    v4 = NSClassFromString(&cfstr_Bmstoreevent.isa);
    if (v3)
    {
      v5 = v4;
      if (v4)
      {
        [(NSMutableSet *)self->_allowed addObject:v3];
        [(NSMutableSet *)self->_allowed addObject:v5];
        self->_addedBiomeStorageClasses = 1;
      }
    }
  }

  if (!self->_addedBiomeStreamsClasses)
  {
    v6 = NSClassFromString(&cfstr_Bmeventsession.isa);
    if (v6)
    {
      [(NSMutableSet *)self->_allowed addObject:v6];
      self->_addedBiomeStreamsClasses = 1;
    }
  }

  if (!self->_addedCascadeSetsClasses)
  {
    v7 = NSClassFromString(&cfstr_Ccsetchangeboo.isa);
    if (v7)
    {
      [(NSMutableSet *)self->_allowed addObject:v7];
      self->_addedCascadeSetsClasses = 1;
    }
  }

  v8 = [(NSMutableSet *)self->_allowed copy];
  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

uint64_t __35__BMBookmarkClasses_sharedInstance__block_invoke()
{
  sharedInstance_bookmarkClasses = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (BMBookmarkClasses)init
{
  v11[14] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = BMBookmarkClasses;
  v2 = [(BMBookmarkClasses *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    *&v2->_addedBiomeStorageClasses = 0;
    v2->_addedCascadeSetsClasses = 0;
    v4 = MEMORY[0x1E695DFA8];
    v11[0] = objc_opt_class();
    v11[1] = objc_opt_class();
    v11[2] = objc_opt_class();
    v11[3] = objc_opt_class();
    v11[4] = objc_opt_class();
    v11[5] = objc_opt_class();
    v11[6] = objc_opt_class();
    v11[7] = objc_opt_class();
    v11[8] = objc_opt_class();
    v11[9] = objc_opt_class();
    v11[10] = objc_opt_class();
    v11[11] = objc_opt_class();
    v11[12] = objc_opt_class();
    v11[13] = objc_opt_class();
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:14];
    v6 = [v4 setWithArray:v5];
    allowed = v3->_allowed;
    v3->_allowed = v6;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v3;
}

- (void)allowClassesForSecureCodingBMBookmark:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_allowed addObjectsFromArray:v4];

  os_unfair_lock_unlock(&self->_lock);
}

@end