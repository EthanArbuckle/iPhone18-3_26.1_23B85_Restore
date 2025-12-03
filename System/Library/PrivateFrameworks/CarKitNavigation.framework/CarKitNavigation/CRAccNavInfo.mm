@interface CRAccNavInfo
- (CRAccNavInfo)initWithCoder:(id)coder;
- (CRAccNavInfo)initWithComponent:(id)component accNavInfo:(id)info;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRAccNavInfo

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  component = [(CRAccNavInfo *)self component];
  uuid = [component uuid];
  accNavInfo = [(CRAccNavInfo *)self accNavInfo];
  cr_dictionary = [accNavInfo cr_dictionary];
  v9 = [v3 stringWithFormat:@"<%@: %p> component=%@ accNavInfo={\n%@\n}", v4, self, uuid, cr_dictionary];

  return v9;
}

- (CRAccNavInfo)initWithComponent:(id)component accNavInfo:(id)info
{
  componentCopy = component;
  infoCopy = info;
  v12.receiver = self;
  v12.super_class = CRAccNavInfo;
  v8 = [(CRAccNavInfo *)&v12 init];
  if (v8)
  {
    v9 = [componentCopy copy];
    component = v8->_component;
    v8->_component = v9;

    objc_storeStrong(&v8->_accNavInfo, info);
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  component = [(CRAccNavInfo *)self component];
  v6 = NSStringFromSelector(sel_component);
  [coderCopy encodeObject:component forKey:v6];

  accNavInfo = [(CRAccNavInfo *)self accNavInfo];
  cr_dictionary = [accNavInfo cr_dictionary];
  v8 = NSStringFromSelector(sel_accNavInfo);
  [coderCopy encodeObject:cr_dictionary forKey:v8];
}

- (CRAccNavInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_component);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = MEMORY[0x277CBEB98];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v8 setWithObjects:{v9, v10, v11, objc_opt_class(), 0}];
  v13 = NSStringFromSelector(sel_accNavInfo);
  v14 = [coderCopy decodeObjectOfClasses:v12 forKey:v13];

  [objc_opt_class() ACCNavigationInfoClass];
  v15 = objc_opt_new();
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __30__CRAccNavInfo_initWithCoder___block_invoke;
  v19[3] = &unk_27853CF08;
  v20 = v15;
  v16 = v15;
  [v14 enumerateKeysAndObjectsUsingBlock:v19];
  v17 = [objc_alloc(objc_opt_class()) initWithComponent:v7 accNavInfo:v16];

  return v17;
}

void __30__CRAccNavInfo_initWithCoder___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [v4 cr_setInfo:objc_msgSend(a2 data:{"unsignedShortValue"), v5}];
}

@end