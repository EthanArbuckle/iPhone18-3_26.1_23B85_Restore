@interface GDViewQuery
- (GDViewQuery)initWithAll;
- (GDViewQuery)initWithCoder:(id)coder;
- (GDViewQuery)initWithNames:(id)names includeDependencies:(BOOL)dependencies;
- (GDViewQuery)initWithSchedule:(id)schedule includeDependencies:(BOOL)dependencies;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GDViewQuery

- (GDViewQuery)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = GDViewQuery;
  v5 = [(GDViewQuery *)&v21 init];
  if (v5)
  {
    v6 = v5;
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = NSStringFromSelector(sel_names);
    v11 = [coderCopy decodeObjectOfClasses:v9 forKey:v10];

    v12 = objc_opt_class();
    v13 = NSStringFromSelector(sel_schedule);
    v14 = [coderCopy decodeObjectOfClass:v12 forKey:v13];

    v15 = NSStringFromSelector(sel_includeDependencies);
    v16 = [coderCopy decodeBoolForKey:v15];

    error = [coderCopy error];

    if (error)
    {
      v18 = 0;
    }

    else
    {
      if (v11)
      {
        initWithAll = [(GDViewQuery *)v6 initWithNames:v11 includeDependencies:v16];
      }

      else if (v14)
      {
        initWithAll = [(GDViewQuery *)v6 initWithSchedule:v14 includeDependencies:v16];
      }

      else
      {
        initWithAll = [(GDViewQuery *)v6 initWithAll];
      }

      v6 = initWithAll;
      v18 = v6;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)encodeWithCoder:(id)coder
{
  names = self->_names;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_names);
  [coderCopy encodeObject:names forKey:v6];

  schedule = self->_schedule;
  v8 = NSStringFromSelector(sel_schedule);
  [coderCopy encodeObject:schedule forKey:v8];

  includeDependencies = self->_includeDependencies;
  v10 = NSStringFromSelector(sel_includeDependencies);
  [coderCopy encodeBool:includeDependencies forKey:v10];
}

- (GDViewQuery)initWithAll
{
  v3.receiver = self;
  v3.super_class = GDViewQuery;
  return [(GDViewQuery *)&v3 init];
}

- (GDViewQuery)initWithSchedule:(id)schedule includeDependencies:(BOOL)dependencies
{
  scheduleCopy = schedule;
  v11.receiver = self;
  v11.super_class = GDViewQuery;
  v8 = [(GDViewQuery *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_schedule, schedule);
    v9->_includeDependencies = dependencies;
  }

  return v9;
}

- (GDViewQuery)initWithNames:(id)names includeDependencies:(BOOL)dependencies
{
  namesCopy = names;
  v11.receiver = self;
  v11.super_class = GDViewQuery;
  v7 = [(GDViewQuery *)&v11 init];
  if (v7)
  {
    v8 = [namesCopy copy];
    names = v7->_names;
    v7->_names = v8;

    v7->_includeDependencies = dependencies;
  }

  return v7;
}

@end