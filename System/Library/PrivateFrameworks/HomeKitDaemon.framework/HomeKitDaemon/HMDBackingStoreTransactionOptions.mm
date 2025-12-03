@interface HMDBackingStoreTransactionOptions
+ (HMDBackingStoreTransactionOptions)defaultMetadataCloudOptions;
+ (id)logCategory;
+ (id)stringForHMDBackingStoreDestination:(unint64_t)destination;
+ (id)stringForHMDBackingStoreTransactionSource:(unint64_t)source;
- (BOOL)isEqual:(id)equal;
- (HMDBackingStoreTransactionOptions)initWithCoder:(id)coder;
- (HMDBackingStoreTransactionOptions)initWithSource:(unint64_t)source destination:(unint64_t)destination label:(id)label mustReplay:(BOOL)replay mustPush:(BOOL)push mustSaveArchiveAtomically:(BOOL)atomically cdTransactionAuthor:(unint64_t)author clientIdentifier:(id)self0;
- (NSString)description;
- (id)_description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDBackingStoreTransactionOptions

- (unint64_t)hash
{
  label = [(HMDBackingStoreTransactionOptions *)self label];
  v3 = [label hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6 && (v7 = -[HMDBackingStoreTransactionOptions source](self, "source"), v7 == [v6 source]) && (v8 = -[HMDBackingStoreTransactionOptions destination](self, "destination"), v8 == objc_msgSend(v6, "destination")))
  {
    label = [(HMDBackingStoreTransactionOptions *)self label];
    label2 = [v6 label];
    if ([label isEqualToString:label2] && (v11 = -[HMDBackingStoreTransactionOptions mustReplay](self, "mustReplay"), v11 == objc_msgSend(v6, "mustReplay")) && (v12 = -[HMDBackingStoreTransactionOptions mustPush](self, "mustPush"), v12 == objc_msgSend(v6, "mustPush")))
    {
      cdTransactionAuthor = [(HMDBackingStoreTransactionOptions *)self cdTransactionAuthor];
      v13 = cdTransactionAuthor == [v6 cdTransactionAuthor];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  _description = [(HMDBackingStoreTransactionOptions *)self _description];
  v4 = [v2 stringWithFormat:@"<options: %@>", _description];

  return v4;
}

- (id)_description
{
  v3 = MEMORY[0x277CCACA8];
  label = [(HMDBackingStoreTransactionOptions *)self label];
  v5 = [HMDBackingStoreTransactionOptions stringForHMDBackingStoreTransactionSource:[(HMDBackingStoreTransactionOptions *)self source]];
  v6 = [HMDBackingStoreTransactionOptions stringForHMDBackingStoreDestination:[(HMDBackingStoreTransactionOptions *)self destination]];
  if ([(HMDBackingStoreTransactionOptions *)self mustReplay])
  {
    v7 = "yes";
  }

  else
  {
    v7 = "no";
  }

  if ([(HMDBackingStoreTransactionOptions *)self mustPush])
  {
    v8 = "yes";
  }

  else
  {
    v8 = "no";
  }

  v9 = [v3 stringWithFormat:@"%@/%@/%@/mustReplay=%s/mustPush=%s", label, v5, v6, v7, v8];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[HMDBackingStoreTransactionOptions source](self forKey:{"source"), @"HM.source"}];
  [coderCopy encodeInteger:-[HMDBackingStoreTransactionOptions destination](self forKey:{"destination"), @"HM.destination"}];
  label = [(HMDBackingStoreTransactionOptions *)self label];
  [coderCopy encodeObject:label forKey:@"HM.label"];

  [coderCopy encodeInteger:-[HMDBackingStoreTransactionOptions mustReplay](self forKey:{"mustReplay"), @"HM.mustReplay"}];
  [coderCopy encodeBool:-[HMDBackingStoreTransactionOptions mustPush](self forKey:{"mustPush"), @"HM.mustPush"}];
}

- (HMDBackingStoreTransactionOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = -[HMDBackingStoreTransactionOptions initWithSource:destination:](self, "initWithSource:destination:", [coderCopy decodeIntegerForKey:@"HM.source"], objc_msgSend(coderCopy, "decodeIntegerForKey:", @"HM.destination"));
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.label"];
    label = v5->_label;
    v5->_label = v6;

    v5->_mustReplay = [coderCopy decodeIntegerForKey:@"HM.mustReplay"] != 0;
    v5->_mustPush = [coderCopy decodeBoolForKey:@"HM.mustPush"];
    v8 = v5;
  }

  return v5;
}

- (HMDBackingStoreTransactionOptions)initWithSource:(unint64_t)source destination:(unint64_t)destination label:(id)label mustReplay:(BOOL)replay mustPush:(BOOL)push mustSaveArchiveAtomically:(BOOL)atomically cdTransactionAuthor:(unint64_t)author clientIdentifier:(id)self0
{
  labelCopy = label;
  identifierCopy = identifier;
  v24.receiver = self;
  v24.super_class = HMDBackingStoreTransactionOptions;
  v18 = [(HMDBackingStoreTransactionOptions *)&v24 init];
  v19 = v18;
  if (!v18)
  {
    goto LABEL_4;
  }

  v18->_source = source;
  v18->_destination = destination;
  objc_storeStrong(&v18->_label, label);
  v19->_mustReplay = replay;
  v19->_mustPush = push;
  if (author)
  {
    v19->_cdTransactionAuthor = author;
    objc_storeStrong(&v19->_clientIdentifier, identifier);
    v20 = v19;
LABEL_4:

    return v19;
  }

  v22 = _HMFPreconditionFailure();
  return +[(HMDBackingStoreTransactionOptions *)v22];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_73070 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_73070, &__block_literal_global_73071);
  }

  v3 = logCategory__hmf_once_v2_73072;

  return v3;
}

void __48__HMDBackingStoreTransactionOptions_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_73072;
  logCategory__hmf_once_v2_73072 = v1;
}

+ (id)stringForHMDBackingStoreDestination:(unint64_t)destination
{
  string = [MEMORY[0x277CCAB68] string];
  v5 = string;
  if (destination)
  {
    [string appendString:@"V3"];
    destination &= ~1uLL;
  }

  if ((destination & 2) != 0)
  {
    if ([v5 length])
    {
      v6 = "/";
    }

    else
    {
      v6 = "";
    }

    [v5 appendFormat:@"%sV4", v6];
    destination &= ~2uLL;
  }

  if (destination)
  {
    if ([v5 length])
    {
      v7 = "/";
    }

    else
    {
      v7 = "";
    }

    [v5 appendFormat:@"%s<UNKNOWN 0x%lx>", v7, destination];
  }

  if ([v5 length])
  {
    v8 = v5;
  }

  else
  {
    v8 = @"<NoCloud>";
  }

  return v8;
}

+ (id)stringForHMDBackingStoreTransactionSource:(unint64_t)source
{
  if (source >= 5)
  {
    source = [MEMORY[0x277CCACA8] stringWithFormat:@"<UNKNOWN %lu>", source];
  }

  else
  {
    source = off_278675708[source];
  }

  return source;
}

+ (HMDBackingStoreTransactionOptions)defaultMetadataCloudOptions
{
  v2 = [[HMDBackingStoreTransactionOptions alloc] initWithSource:4 destination:3 label:@"MetadataUpdate" mustReplay:0 mustPush:0];

  return v2;
}

@end