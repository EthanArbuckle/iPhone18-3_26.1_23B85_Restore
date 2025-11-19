@interface HKHRDatabaseAnalysisSchedulerGatedActivityFactoryImpl
- (HKHRDatabaseAnalysisSchedulerGatedActivityFactoryImpl)initWithIdentifier:(id)a3 loggingCategory:(id)a4;
- (id)makeGatedActivityWithHandler:(id)a3;
@end

@implementation HKHRDatabaseAnalysisSchedulerGatedActivityFactoryImpl

- (HKHRDatabaseAnalysisSchedulerGatedActivityFactoryImpl)initWithIdentifier:(id)a3 loggingCategory:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HKHRDatabaseAnalysisSchedulerGatedActivityFactoryImpl;
  v9 = [(HKHRDatabaseAnalysisSchedulerGatedActivityFactoryImpl *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, a3);
    objc_storeStrong(&v10->_loggingCategory, a4);
  }

  return v10;
}

- (id)makeGatedActivityWithHandler:(id)a3
{
  v4 = a3;
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_BOOL(empty, *MEMORY[0x277D86370], 1);
  xpc_dictionary_set_string(empty, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
  v6 = [objc_alloc(MEMORY[0x277D10BE8]) initWithName:self->_identifier criteria:empty loggingCategory:self->_loggingCategory handler:v4];

  return v6;
}

@end