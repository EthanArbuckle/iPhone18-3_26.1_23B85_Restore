@interface MBDebugContext
+ (id)defaultDebugContext;
- (BOOL)BOOLForName:(id)a3;
- (BOOL)isFlagSet:(id)a3;
- (MBDebugContext)init;
- (NSDictionary)dictionary;
- (id)description;
- (id)performSelectorForName:(id)a3;
- (id)performSelectorForName:(id)a3 withObject:(id)a4;
- (id)valueForName:(id)a3;
- (int)intForName:(id)a3;
- (int64_t)time;
- (void)dealloc;
- (void)removeValueForName:(id)a3;
- (void)setDelegate:(id)a3 andSelector:(SEL)a4 forName:(id)a5;
- (void)setFlag:(id)a3;
- (void)setSimulatedDate:(id)a3;
- (void)setValue:(id)a3 forName:(id)a4;
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
  v2 = [(MBDebugContext *)self simulatedDate];
  if (v2)
  {
    [(NSDate *)v2 timeIntervalSince1970];
    return v3;
  }

  else
  {

    return time(0);
  }
}

- (void)setSimulatedDate:(id)a3
{
  if (a3)
  {
    [(MBDebugContext *)self setValue:a3 forName:@"SimulatedSystemDate"];
  }

  else
  {
    [(MBDebugContext *)self removeValueForName:@"SimulatedSystemDate"];
  }
}

- (BOOL)isFlagSet:(id)a3
{
  dictionary = self->_dictionary;
  objc_sync_enter(dictionary);
  LOBYTE(a3) = [-[NSMutableDictionary objectForKeyedSubscript:](self->_dictionary objectForKeyedSubscript:{a3), "BOOLValue"}];
  objc_sync_exit(dictionary);
  return a3;
}

- (void)setFlag:(id)a3
{
  dictionary = self->_dictionary;
  objc_sync_enter(dictionary);
  [(NSMutableDictionary *)self->_dictionary setObject:&__kCFBooleanTrue forKeyedSubscript:a3];

  objc_sync_exit(dictionary);
}

- (void)setValue:(id)a3 forName:(id)a4
{
  dictionary = self->_dictionary;
  objc_sync_enter(dictionary);
  [(NSMutableDictionary *)self->_dictionary setObject:a3 forKeyedSubscript:a4];

  objc_sync_exit(dictionary);
}

- (void)removeValueForName:(id)a3
{
  dictionary = self->_dictionary;
  objc_sync_enter(dictionary);
  [(NSMutableDictionary *)self->_dictionary removeObjectForKey:a3];

  objc_sync_exit(dictionary);
}

- (id)valueForName:(id)a3
{
  dictionary = self->_dictionary;
  objc_sync_enter(dictionary);
  v6 = [(NSMutableDictionary *)self->_dictionary objectForKeyedSubscript:a3];
  objc_sync_exit(dictionary);
  return v6;
}

- (BOOL)BOOLForName:(id)a3
{
  dictionary = self->_dictionary;
  objc_sync_enter(dictionary);
  LOBYTE(a3) = [-[NSMutableDictionary objectForKeyedSubscript:](self->_dictionary objectForKeyedSubscript:{a3), "BOOLValue"}];
  objc_sync_exit(dictionary);
  return a3;
}

- (int)intForName:(id)a3
{
  v3 = [(MBDebugContext *)self valueForName:a3];

  return [v3 intValue];
}

- (void)setDelegate:(id)a3 andSelector:(SEL)a4 forName:(id)a5
{
  v7[0] = a3;
  v7[1] = NSStringFromSelector(a4);
  [(MBDebugContext *)self setValue:[NSArray forName:"arrayWithObjects:count:" arrayWithObjects:v7 count:2], a5];
}

- (id)performSelectorForName:(id)a3
{
  result = [(MBDebugContext *)self valueForName:a3];
  if (result)
  {
    v4 = result;
    v5 = [result objectAtIndexedSubscript:0];
    v6 = NSSelectorFromString([v4 objectAtIndexedSubscript:1]);

    return [v5 performSelector:v6];
  }

  return result;
}

- (id)performSelectorForName:(id)a3 withObject:(id)a4
{
  result = [(MBDebugContext *)self valueForName:a3];
  if (result)
  {
    v6 = result;
    v7 = [result objectAtIndexedSubscript:0];
    v8 = NSSelectorFromString([v6 objectAtIndexedSubscript:1]);

    return [v7 performSelector:v8 withObject:a4];
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