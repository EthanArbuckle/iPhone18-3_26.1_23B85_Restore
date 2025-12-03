@interface XRCapabilityRegistry
+ (void)initialize;
- (XRCapabilityRegistry)init;
- (XRCapabilityRegistry)initWithRanges:(id)ranges unimplementedRecoveries:(id)recoveries abandonedRecoveries:(id)abandonedRecoveries;
- (_NSRange)supportedVersionsForCapability:(id)capability;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)supportForCapability:(id)capability versions:(_NSRange)versions;
- (void)registerCapability:(id)capability versions:(_NSRange)versions;
@end

@implementation XRCapabilityRegistry

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    qword_27EE86798 = objc_opt_new();

    MEMORY[0x2821F96F8]();
  }
}

- (XRCapabilityRegistry)initWithRanges:(id)ranges unimplementedRecoveries:(id)recoveries abandonedRecoveries:(id)abandonedRecoveries
{
  rangesCopy = ranges;
  recoveriesCopy = recoveries;
  abandonedRecoveriesCopy = abandonedRecoveries;
  v15.receiver = self;
  v15.super_class = XRCapabilityRegistry;
  v12 = [(XRCapabilityRegistry *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_capabilityRanges, ranges);
    objc_storeStrong(&v13->_unimplementedRecoveries, recoveries);
    objc_storeStrong(&v13->_abandonedRecoveries, abandonedRecoveries);
  }

  return v13;
}

- (XRCapabilityRegistry)init
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v7 = objc_msgSend_initWithRanges_unimplementedRecoveries_abandonedRecoveries_(self, v6, v3, v4, v5);

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [XRCapabilityRegistry alloc];
  v9 = objc_msgSend_mutableCopy(self->_capabilityRanges, v5, v6, v7, v8);
  v14 = objc_msgSend_mutableCopy(self->_unimplementedRecoveries, v10, v11, v12, v13);
  v19 = objc_msgSend_mutableCopy(self->_abandonedRecoveries, v15, v16, v17, v18);
  v21 = objc_msgSend_initWithRanges_unimplementedRecoveries_abandonedRecoveries_(v4, v20, v9, v14, v19);

  return v21;
}

- (void)registerCapability:(id)capability versions:(_NSRange)versions
{
  length = versions.length;
  location = versions.location;
  v7 = MEMORY[0x277CCAE60];
  capabilityCopy = capability;
  v13 = objc_msgSend_valueWithRange_(v7, v9, location, length, v10);
  objc_msgSend_setObject_forKeyedSubscript_(self->_capabilityRanges, v11, v13, capabilityCopy, v12);
}

- (unint64_t)supportForCapability:(id)capability versions:(_NSRange)versions
{
  length = versions.length;
  location = versions.location;
  v6 = objc_msgSend_objectForKeyedSubscript_(self->_capabilityRanges, a2, capability, versions.location, versions.length);
  v11 = v6;
  if (v6)
  {
    v12 = objc_msgSend_rangeValue(v6, v7, v8, v9, v10);
    v14 = v13;
    v20.location = location;
    v20.length = length;
    v21.location = v12;
    v21.length = v14;
    v15 = NSIntersectionRange(v20, v21);
    v16 = 1;
    if (location + length <= v12 + v14)
    {
      v16 = 2;
    }

    if (v15.location == location && v15.length == length)
    {
      v18 = 0;
    }

    else
    {
      v18 = v16;
    }
  }

  else
  {
    v18 = 1;
  }

  return v18;
}

- (_NSRange)supportedVersionsForCapability:(id)capability
{
  v5 = objc_msgSend_objectForKeyedSubscript_(self->_capabilityRanges, a2, capability, v3, v4);
  v10 = v5;
  if (v5)
  {
    v11 = objc_msgSend_rangeValue(v5, v6, v7, v8, v9);
    v13 = v12;
  }

  else
  {
    v13 = 0;
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v14 = v11;
  v15 = v13;
  result.length = v15;
  result.location = v14;
  return result;
}

@end