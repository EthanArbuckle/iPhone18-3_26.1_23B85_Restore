@interface MOEventBundleProcessorResult
- (MOEventBundleProcessorResult)initWithCoder:(id)coder;
- (id)init:(id)init sourceAppBundleIds:(id)ids removedAppBundleIds:(id)bundleIds;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOEventBundleProcessorResult

- (id)init:(id)init sourceAppBundleIds:(id)ids removedAppBundleIds:(id)bundleIds
{
  initCopy = init;
  idsCopy = ids;
  bundleIdsCopy = bundleIds;
  v15.receiver = self;
  v15.super_class = MOEventBundleProcessorResult;
  v12 = [(MOEventBundleProcessorResult *)&v15 init];
  p_isa = &v12->super.isa;
  if (v12)
  {
    objc_storeStrong(&v12->_processedBundles, init);
    objc_storeStrong(p_isa + 2, ids);
    objc_storeStrong(p_isa + 3, bundleIds);
  }

  return p_isa;
}

- (void)encodeWithCoder:(id)coder
{
  processedBundles = self->_processedBundles;
  coderCopy = coder;
  [coderCopy encodeObject:processedBundles forKey:@"coderKeyMOEventBundleProcessorResultBundles"];
  [coderCopy encodeObject:self->_sourceAppBundleIds forKey:@"coderKeyMOEventBundleProcessorResultSourceBundleIDs"];
  [coderCopy encodeObject:self->_removedAppBundleIds forKey:@"coderKeyMOEventBundleProcessorResultSourceRemovedBundleIDs"];
}

- (MOEventBundleProcessorResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = MOEventBundleProcessorResult;
  v5 = [(MOEventBundleProcessorResult *)&v22 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"coderKeyMOEventBundleProcessorResultBundles"];
    processedBundles = v5->_processedBundles;
    v5->_processedBundles = v9;

    v11 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"coderKeyMOEventBundleProcessorResultSourceBundleIDs"];
    sourceAppBundleIds = v5->_sourceAppBundleIds;
    v5->_sourceAppBundleIds = v14;

    v16 = MEMORY[0x277CBEB98];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"coderKeyMOEventBundleProcessorResultSourceRemovedBundleIDs"];
    removedAppBundleIds = v5->_removedAppBundleIds;
    v5->_removedAppBundleIds = v19;
  }

  return v5;
}

@end