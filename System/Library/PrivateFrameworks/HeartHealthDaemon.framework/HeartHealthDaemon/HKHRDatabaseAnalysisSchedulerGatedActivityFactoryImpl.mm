@interface HKHRDatabaseAnalysisSchedulerGatedActivityFactoryImpl
- (HKHRDatabaseAnalysisSchedulerGatedActivityFactoryImpl)initWithIdentifier:(id)identifier loggingCategory:(id)category;
- (id)makeGatedActivityWithHandler:(id)handler;
@end

@implementation HKHRDatabaseAnalysisSchedulerGatedActivityFactoryImpl

- (HKHRDatabaseAnalysisSchedulerGatedActivityFactoryImpl)initWithIdentifier:(id)identifier loggingCategory:(id)category
{
  identifierCopy = identifier;
  categoryCopy = category;
  v12.receiver = self;
  v12.super_class = HKHRDatabaseAnalysisSchedulerGatedActivityFactoryImpl;
  v9 = [(HKHRDatabaseAnalysisSchedulerGatedActivityFactoryImpl *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, identifier);
    objc_storeStrong(&v10->_loggingCategory, category);
  }

  return v10;
}

- (id)makeGatedActivityWithHandler:(id)handler
{
  handlerCopy = handler;
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_BOOL(empty, *MEMORY[0x277D86370], 1);
  xpc_dictionary_set_string(empty, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
  v6 = [objc_alloc(MEMORY[0x277D10BE8]) initWithName:self->_identifier criteria:empty loggingCategory:self->_loggingCategory handler:handlerCopy];

  return v6;
}

@end