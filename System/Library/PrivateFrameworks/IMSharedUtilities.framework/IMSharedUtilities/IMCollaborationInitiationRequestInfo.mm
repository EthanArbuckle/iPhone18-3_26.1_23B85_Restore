@interface IMCollaborationInitiationRequestInfo
- (IMCollaborationInitiationRequestInfo)initWithCKShare:(id)share containerSetupInfo:(id)info options:(id)options;
- (IMCollaborationInitiationRequestInfo)initWithCoder:(id)coder;
- (IMCollaborationInitiationRequestInfo)initWithURL:(id)l containerSetupInfo:(id)info options:(id)options metadata:(id)metadata;
- (IMCollaborationInitiationRequestInfo)initWithURL:(id)l options:(id)options metadata:(id)metadata;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IMCollaborationInitiationRequestInfo

- (IMCollaborationInitiationRequestInfo)initWithCKShare:(id)share containerSetupInfo:(id)info options:(id)options
{
  shareCopy = share;
  infoCopy = info;
  optionsCopy = options;
  v15.receiver = self;
  v15.super_class = IMCollaborationInitiationRequestInfo;
  v12 = [(IMCollaborationInitiationRequestInfo *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_share, share);
    objc_storeStrong(&v13->_containerSetupInfo, info);
    v13->_type = 2;
    objc_storeStrong(&v13->_options, options);
  }

  return v13;
}

- (IMCollaborationInitiationRequestInfo)initWithURL:(id)l containerSetupInfo:(id)info options:(id)options metadata:(id)metadata
{
  lCopy = l;
  infoCopy = info;
  optionsCopy = options;
  metadataCopy = metadata;
  v18.receiver = self;
  v18.super_class = IMCollaborationInitiationRequestInfo;
  v15 = [(IMCollaborationInitiationRequestInfo *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_url, l);
    objc_storeStrong(&v16->_containerSetupInfo, info);
    v16->_type = 1;
    objc_storeStrong(&v16->_options, options);
    objc_storeStrong(&v16->_metadata, metadata);
  }

  return v16;
}

- (IMCollaborationInitiationRequestInfo)initWithURL:(id)l options:(id)options metadata:(id)metadata
{
  lCopy = l;
  optionsCopy = options;
  metadataCopy = metadata;
  v15.receiver = self;
  v15.super_class = IMCollaborationInitiationRequestInfo;
  v12 = [(IMCollaborationInitiationRequestInfo *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_url, l);
    v13->_type = 3;
    objc_storeStrong(&v13->_options, options);
    objc_storeStrong(&v13->_metadata, metadata);
  }

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(IMCollaborationInitiationRequestInfo *)self url];
  v6 = NSStringFromSelector("url");
  [coderCopy encodeObject:v5 forKey:v6];

  share = [(IMCollaborationInitiationRequestInfo *)self share];
  v8 = NSStringFromSelector(sel_share);
  [coderCopy encodeObject:share forKey:v8];

  containerSetupInfo = [(IMCollaborationInitiationRequestInfo *)self containerSetupInfo];
  v10 = NSStringFromSelector(sel_containerSetupInfo);
  [coderCopy encodeObject:containerSetupInfo forKey:v10];

  type = [(IMCollaborationInitiationRequestInfo *)self type];
  v12 = NSStringFromSelector(sel_type);
  [coderCopy encodeInteger:type forKey:v12];

  options = [(IMCollaborationInitiationRequestInfo *)self options];
  v14 = NSStringFromSelector(sel_options);
  [coderCopy encodeObject:options forKey:v14];

  metadata = [(IMCollaborationInitiationRequestInfo *)self metadata];
  v15 = NSStringFromSelector(sel_metadata);
  [coderCopy encodeObject:metadata forKey:v15];
}

- (IMCollaborationInitiationRequestInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = IMCollaborationInitiationRequestInfo;
  v5 = [(IMCollaborationInitiationRequestInfo *)&v23 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector("url");
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    [(IMCollaborationInitiationRequestInfo *)v5 setUrl:v8];

    v9 = objc_opt_class();
    v10 = NSStringFromSelector(sel_share);
    v11 = [coderCopy decodeObjectOfClass:v9 forKey:v10];
    [(IMCollaborationInitiationRequestInfo *)v5 setShare:v11];

    v12 = objc_opt_class();
    v13 = NSStringFromSelector(sel_containerSetupInfo);
    v14 = [coderCopy decodeObjectOfClass:v12 forKey:v13];
    [(IMCollaborationInitiationRequestInfo *)v5 setContainerSetupInfo:v14];

    v15 = NSStringFromSelector(sel_type);
    -[IMCollaborationInitiationRequestInfo setType:](v5, "setType:", [coderCopy decodeIntegerForKey:v15]);

    v16 = objc_opt_class();
    v17 = NSStringFromSelector(sel_options);
    v18 = [coderCopy decodeObjectOfClass:v16 forKey:v17];
    [(IMCollaborationInitiationRequestInfo *)v5 setOptions:v18];

    v19 = objc_opt_class();
    v20 = NSStringFromSelector(sel_metadata);
    v21 = [coderCopy decodeObjectOfClass:v19 forKey:v20];
    [(IMCollaborationInitiationRequestInfo *)v5 setMetadata:v21];
  }

  return v5;
}

@end