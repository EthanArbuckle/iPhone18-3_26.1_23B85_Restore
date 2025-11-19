@interface MGGroupsActivity
- (MGGroupsActivity)initWithName:(id)a3;
- (id)description;
- (void)dealloc;
@end

@implementation MGGroupsActivity

- (MGGroupsActivity)initWithName:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MGGroupsActivity;
  v5 = [(MGGroupsActivity *)&v13 init];
  if (v5)
  {
    v6 = [v4 copy];
    name = v5->_name;
    v5->_name = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEAA8]);
    when = v5->_when;
    v5->_when = v8;

    v10 = MGLogForCategory(2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v15 = v5;
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&dword_25863A000, v10, OS_LOG_TYPE_DEFAULT, "%p starting %@", buf, 0x16u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)dealloc
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEAA8] now];
  v4 = [(MGGroupsActivity *)self when];
  [v3 timeIntervalSinceDate:v4];
  v6 = v5;

  v7 = MGLogForCategory(2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(MGGroupsActivity *)self name];
    *buf = 134218498;
    v12 = self;
    v13 = 2112;
    v14 = v8;
    v15 = 2048;
    v16 = v6;
    _os_log_impl(&dword_25863A000, v7, OS_LOG_TYPE_DEFAULT, "%p ending %@ (%g)", buf, 0x20u);
  }

  v10.receiver = self;
  v10.super_class = MGGroupsActivity;
  [(MGGroupsActivity *)&v10 dealloc];
  v9 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MGGroupsActivity *)self name];
  v7 = [(MGGroupsActivity *)self when];
  v8 = [v3 stringWithFormat:@"<%@: %p, %@ - %@>", v5, self, v6, v7];

  return v8;
}

@end