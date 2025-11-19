@interface IMCollaborationInitiationRequestInfo
- (IMCollaborationInitiationRequestInfo)initWithCKShare:(id)a3 containerSetupInfo:(id)a4 options:(id)a5;
- (IMCollaborationInitiationRequestInfo)initWithCoder:(id)a3;
- (IMCollaborationInitiationRequestInfo)initWithURL:(id)a3 containerSetupInfo:(id)a4 options:(id)a5 metadata:(id)a6;
- (IMCollaborationInitiationRequestInfo)initWithURL:(id)a3 options:(id)a4 metadata:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IMCollaborationInitiationRequestInfo

- (IMCollaborationInitiationRequestInfo)initWithCKShare:(id)a3 containerSetupInfo:(id)a4 options:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = IMCollaborationInitiationRequestInfo;
  v12 = [(IMCollaborationInitiationRequestInfo *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_share, a3);
    objc_storeStrong(&v13->_containerSetupInfo, a4);
    v13->_type = 2;
    objc_storeStrong(&v13->_options, a5);
  }

  return v13;
}

- (IMCollaborationInitiationRequestInfo)initWithURL:(id)a3 containerSetupInfo:(id)a4 options:(id)a5 metadata:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = IMCollaborationInitiationRequestInfo;
  v15 = [(IMCollaborationInitiationRequestInfo *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_url, a3);
    objc_storeStrong(&v16->_containerSetupInfo, a4);
    v16->_type = 1;
    objc_storeStrong(&v16->_options, a5);
    objc_storeStrong(&v16->_metadata, a6);
  }

  return v16;
}

- (IMCollaborationInitiationRequestInfo)initWithURL:(id)a3 options:(id)a4 metadata:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = IMCollaborationInitiationRequestInfo;
  v12 = [(IMCollaborationInitiationRequestInfo *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_url, a3);
    v13->_type = 3;
    objc_storeStrong(&v13->_options, a4);
    objc_storeStrong(&v13->_metadata, a5);
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(IMCollaborationInitiationRequestInfo *)self url];
  v6 = NSStringFromSelector("url");
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(IMCollaborationInitiationRequestInfo *)self share];
  v8 = NSStringFromSelector(sel_share);
  [v4 encodeObject:v7 forKey:v8];

  v9 = [(IMCollaborationInitiationRequestInfo *)self containerSetupInfo];
  v10 = NSStringFromSelector(sel_containerSetupInfo);
  [v4 encodeObject:v9 forKey:v10];

  v11 = [(IMCollaborationInitiationRequestInfo *)self type];
  v12 = NSStringFromSelector(sel_type);
  [v4 encodeInteger:v11 forKey:v12];

  v13 = [(IMCollaborationInitiationRequestInfo *)self options];
  v14 = NSStringFromSelector(sel_options);
  [v4 encodeObject:v13 forKey:v14];

  v16 = [(IMCollaborationInitiationRequestInfo *)self metadata];
  v15 = NSStringFromSelector(sel_metadata);
  [v4 encodeObject:v16 forKey:v15];
}

- (IMCollaborationInitiationRequestInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = IMCollaborationInitiationRequestInfo;
  v5 = [(IMCollaborationInitiationRequestInfo *)&v23 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector("url");
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    [(IMCollaborationInitiationRequestInfo *)v5 setUrl:v8];

    v9 = objc_opt_class();
    v10 = NSStringFromSelector(sel_share);
    v11 = [v4 decodeObjectOfClass:v9 forKey:v10];
    [(IMCollaborationInitiationRequestInfo *)v5 setShare:v11];

    v12 = objc_opt_class();
    v13 = NSStringFromSelector(sel_containerSetupInfo);
    v14 = [v4 decodeObjectOfClass:v12 forKey:v13];
    [(IMCollaborationInitiationRequestInfo *)v5 setContainerSetupInfo:v14];

    v15 = NSStringFromSelector(sel_type);
    -[IMCollaborationInitiationRequestInfo setType:](v5, "setType:", [v4 decodeIntegerForKey:v15]);

    v16 = objc_opt_class();
    v17 = NSStringFromSelector(sel_options);
    v18 = [v4 decodeObjectOfClass:v16 forKey:v17];
    [(IMCollaborationInitiationRequestInfo *)v5 setOptions:v18];

    v19 = objc_opt_class();
    v20 = NSStringFromSelector(sel_metadata);
    v21 = [v4 decodeObjectOfClass:v19 forKey:v20];
    [(IMCollaborationInitiationRequestInfo *)v5 setMetadata:v21];
  }

  return v5;
}

@end