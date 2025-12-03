@interface CATSessionMessageResume
- (CATSessionMessageResume)initWithCoder:(id)coder;
- (CATSessionMessageResume)initWithSessionUUID:(id)d;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CATSessionMessageResume

- (CATSessionMessageResume)initWithSessionUUID:(id)d
{
  dCopy = d;
  v6 = [(CATMessage *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sessionUUID, d);
  }

  return v7;
}

- (CATSessionMessageResume)initWithCoder:(id)coder
{
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = CATSessionMessageResume;
  v5 = [(CATMessage *)&v24 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"sessionUUID"];
    sessionUUID = v5->_sessionUUID;
    v5->_sessionUUID = v7;

    v23 = MEMORY[0x277CBEB98];
    v22 = objc_opt_class();
    v21 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = [v23 setWithObjects:{v22, v21, v9, v10, v11, v12, v13, v14, v15, v16, objc_opt_class(), 0}];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"clientUserInfo"];
    clientUserInfo = v5->_clientUserInfo;
    v5->_clientUserInfo = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CATSessionMessageResume;
  coderCopy = coder;
  [(CATMessage *)&v7 encodeWithCoder:coderCopy];
  v5 = [(CATSessionMessageResume *)self sessionUUID:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"sessionUUID"];

  clientUserInfo = [(CATSessionMessageResume *)self clientUserInfo];
  [coderCopy encodeObject:clientUserInfo forKey:@"clientUserInfo"];
}

@end