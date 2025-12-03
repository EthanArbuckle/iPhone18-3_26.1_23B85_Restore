@interface HFEventBuilder
+ (id)eventBuilderForEvent:(id)event;
- (HFEventBuilder)initWithEvent:(id)event;
- (id)buildNewEventsFromCurrentState;
- (id)compareToObject:(id)object;
- (id)comparisonKey;
- (id)naturalLanguageNameWithOptions:(id)options;
- (unint64_t)hash;
@end

@implementation HFEventBuilder

- (id)compareToObject:(id)object
{
  objectCopy = object;
  v5 = [[HFComparisonResult alloc] initWithObjectA:self objectB:objectCopy];

  return v5;
}

+ (id)eventBuilderForEvent:(id)event
{
  v13 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = off_277DEFCA8;
    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = off_277DEFF38;
    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = off_277DEFA18;
    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = off_277DEF688;
    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = off_277DF00F8;
    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = off_277DEF850;
    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = off_277DEF878;
LABEL_15:
    v5 = *v4;
    v6 = objc_opt_class();
    if (v6)
    {
      goto LABEL_19;
    }
  }

  v7 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v11 = 138412290;
    v12 = eventCopy;
    _os_log_error_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_ERROR, "No HFEventBuilder can handle the event: %@", &v11, 0xCu);
  }

  v6 = 0;
LABEL_19:
  v8 = [[v6 alloc] initWithEvent:eventCopy];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (HFEventBuilder)initWithEvent:(id)event
{
  v4.receiver = self;
  v4.super_class = HFEventBuilder;
  return [(HFEventBuilder *)&v4 init];
}

- (id)buildNewEventsFromCurrentState
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFEventBuilder.m" lineNumber:68 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFEventBuilder buildNewEventsFromCurrentState]", objc_opt_class()}];

  return 0;
}

- (id)naturalLanguageNameWithOptions:(id)options
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFEventBuilder.m" lineNumber:74 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFEventBuilder naturalLanguageNameWithOptions:]", objc_opt_class()}];

  return 0;
}

- (id)comparisonKey
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (unint64_t)hash
{
  v2 = objc_opt_class();

  return [v2 hash];
}

@end