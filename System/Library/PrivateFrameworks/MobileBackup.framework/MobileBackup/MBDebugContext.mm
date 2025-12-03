@interface MBDebugContext
+ (id)defaultDebugContext;
- (BOOL)BOOLForName:(id)name;
- (BOOL)isFlagSet:(id)set;
- (MBDebugContext)init;
- (NSDictionary)dictionary;
- (id)description;
- (id)performSelectorForName:(id)name;
- (id)performSelectorForName:(id)name withObject:(id)object;
- (id)valueForName:(id)name;
- (int)intForName:(id)name;
- (int64_t)time;
- (void)dealloc;
- (void)removeValueForName:(id)name;
- (void)setDelegate:(id)delegate andSelector:(SEL)selector forName:(id)name;
- (void)setFlag:(id)flag;
- (void)setSimulatedDate:(id)date;
- (void)setValue:(id)value forName:(id)name;
@end

@implementation MBDebugContext

+ (id)defaultDebugContext
{
  v2 = objc_alloc_init(MBDebugContext);

  return v2;
}

- (MBDebugContext)init
{
  v11.receiver = self;
  v11.super_class = MBDebugContext;
  v2 = [(MBDebugContext *)&v11 init];
  if (v2)
  {
    v3 = [NSMutableDictionary alloc];
    v4 = CFPreferencesCopyValue(@"DebugContext", @"com.apple.MobileBackup", @"mobile", kCFPreferencesAnyHost);
    if (v4)
    {
      v5 = v4;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
LABEL_9:
        v2->_dictionary = [v3 initWithDictionary:{v6, v9, v10}];
        return v2;
      }

      v7 = MBGetDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v13 = @"com.apple.MobileBackup";
        v14 = 2112;
        v15 = @"DebugContext";
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Preference %@ %@ not a dictionary", buf, 0x16u);
        v9 = @"com.apple.MobileBackup";
        v10 = @"DebugContext";
        _MBLog();
      }

      CFRelease(v5);
    }

    v6 = &__NSDictionary0__struct;
    goto LABEL_9;
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MBDebugContext;
  [(MBDebugContext *)&v3 dealloc];
}

- (NSDictionary)dictionary
{
  v2 = [(NSMutableDictionary *)self->_dictionary copy];

  return v2;
}

- (int64_t)time
{
  simulatedDate = [(MBDebugContext *)self simulatedDate];
  if (simulatedDate)
  {
    [(NSDate *)simulatedDate timeIntervalSince1970];
    return v3;
  }

  else
  {

    return time(0);
  }
}

- (void)setSimulatedDate:(id)date
{
  if (date)
  {
    [(MBDebugContext *)self setValue:date forName:@"SimulatedSystemDate"];
  }

  else
  {
    [(MBDebugContext *)self removeValueForName:@"SimulatedSystemDate"];
  }
}

- (BOOL)isFlagSet:(id)set
{
  dictionary = self->_dictionary;
  objc_sync_enter(dictionary);
  LOBYTE(set) = [-[NSMutableDictionary objectForKeyedSubscript:](self->_dictionary objectForKeyedSubscript:{set), "BOOLValue"}];
  objc_sync_exit(dictionary);
  return set;
}

- (void)setFlag:(id)flag
{
  dictionary = self->_dictionary;
  objc_sync_enter(dictionary);
  [(NSMutableDictionary *)self->_dictionary setObject:&__kCFBooleanTrue forKeyedSubscript:flag];

  objc_sync_exit(dictionary);
}

- (void)setValue:(id)value forName:(id)name
{
  dictionary = self->_dictionary;
  objc_sync_enter(dictionary);
  [(NSMutableDictionary *)self->_dictionary setObject:value forKeyedSubscript:name];

  objc_sync_exit(dictionary);
}

- (void)removeValueForName:(id)name
{
  dictionary = self->_dictionary;
  objc_sync_enter(dictionary);
  [(NSMutableDictionary *)self->_dictionary removeObjectForKey:name];

  objc_sync_exit(dictionary);
}

- (id)valueForName:(id)name
{
  dictionary = self->_dictionary;
  objc_sync_enter(dictionary);
  v6 = [(NSMutableDictionary *)self->_dictionary objectForKeyedSubscript:name];
  objc_sync_exit(dictionary);
  return v6;
}

- (BOOL)BOOLForName:(id)name
{
  dictionary = self->_dictionary;
  objc_sync_enter(dictionary);
  LOBYTE(name) = [-[NSMutableDictionary objectForKeyedSubscript:](self->_dictionary objectForKeyedSubscript:{name), "BOOLValue"}];
  objc_sync_exit(dictionary);
  return name;
}

- (int)intForName:(id)name
{
  v3 = [(MBDebugContext *)self valueForName:name];

  return [v3 intValue];
}

- (void)setDelegate:(id)delegate andSelector:(SEL)selector forName:(id)name
{
  v7[0] = delegate;
  v7[1] = NSStringFromSelector(selector);
  [(MBDebugContext *)self setValue:[NSArray forName:"arrayWithObjects:count:" arrayWithObjects:v7 count:2], name];
}

- (id)performSelectorForName:(id)name
{
  result = [(MBDebugContext *)self valueForName:name];
  if (result)
  {
    v4 = result;
    v5 = [result objectAtIndexedSubscript:0];
    v6 = NSSelectorFromString([v4 objectAtIndexedSubscript:1]);

    return [v5 performSelector:v6];
  }

  return result;
}

- (id)performSelectorForName:(id)name withObject:(id)object
{
  result = [(MBDebugContext *)self valueForName:name];
  if (result)
  {
    v6 = result;
    v7 = [result objectAtIndexedSubscript:0];
    v8 = NSSelectorFromString([v6 objectAtIndexedSubscript:1]);

    return [v7 performSelector:v8 withObject:object];
  }

  return result;
}

- (id)description
{
  dictionary = self->_dictionary;
  objc_sync_enter(dictionary);
  v4 = self->_dictionary;
  v5 = MBStringWithDictionary();
  objc_sync_exit(dictionary);
  return v5;
}

@end