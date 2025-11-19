@interface MOEventBundleProcessorResult
- (MOEventBundleProcessorResult)initWithCoder:(id)a3;
- (id)init:(id)a3 sourceAppBundleIds:(id)a4 removedAppBundleIds:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOEventBundleProcessorResult

- (id)init:(id)a3 sourceAppBundleIds:(id)a4 removedAppBundleIds:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = MOEventBundleProcessorResult;
  v12 = [(MOEventBundleProcessorResult *)&v15 init];
  p_isa = &v12->super.isa;
  if (v12)
  {
    objc_storeStrong(&v12->_processedBundles, a3);
    objc_storeStrong(p_isa + 2, a4);
    objc_storeStrong(p_isa + 3, a5);
  }

  return p_isa;
}

- (void)encodeWithCoder:(id)a3
{
  processedBundles = self->_processedBundles;
  v5 = a3;
  [v5 encodeObject:processedBundles forKey:@"coderKeyMOEventBundleProcessorResultBundles"];
  [v5 encodeObject:self->_sourceAppBundleIds forKey:@"coderKeyMOEventBundleProcessorResultSourceBundleIDs"];
  [v5 encodeObject:self->_removedAppBundleIds forKey:@"coderKeyMOEventBundleProcessorResultSourceRemovedBundleIDs"];
}

- (MOEventBundleProcessorResult)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = MOEventBundleProcessorResult;
  v5 = [(MOEventBundleProcessorResult *)&v22 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"coderKeyMOEventBundleProcessorResultBundles"];
    processedBundles = v5->_processedBundles;
    v5->_processedBundles = v9;

    v11 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"coderKeyMOEventBundleProcessorResultSourceBundleIDs"];
    sourceAppBundleIds = v5->_sourceAppBundleIds;
    v5->_sourceAppBundleIds = v14;

    v16 = MEMORY[0x277CBEB98];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"coderKeyMOEventBundleProcessorResultSourceRemovedBundleIDs"];
    removedAppBundleIds = v5->_removedAppBundleIds;
    v5->_removedAppBundleIds = v19;
  }

  return v5;
}

@end