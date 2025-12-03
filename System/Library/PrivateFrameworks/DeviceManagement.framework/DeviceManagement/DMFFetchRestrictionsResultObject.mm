@interface DMFFetchRestrictionsResultObject
- (DMFFetchRestrictionsResultObject)initWithCoder:(id)coder;
- (DMFFetchRestrictionsResultObject)initWithRestrictions:(id)restrictions;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFFetchRestrictionsResultObject

- (DMFFetchRestrictionsResultObject)initWithRestrictions:(id)restrictions
{
  restrictionsCopy = restrictions;
  v11.receiver = self;
  v11.super_class = DMFFetchRestrictionsResultObject;
  v5 = [(CATTaskResultObject *)&v11 init];
  if (v5)
  {
    v6 = [restrictionsCopy copy];
    globalRestrictions = v5->_globalRestrictions;
    v5->_globalRestrictions = v6;

    v8 = [restrictionsCopy copy];
    restrictions = v5->_restrictions;
    v5->_restrictions = v8;
  }

  return v5;
}

- (DMFFetchRestrictionsResultObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v35.receiver = self;
  v35.super_class = DMFFetchRestrictionsResultObject;
  v5 = [(CATTaskResultObject *)&v35 initWithCoder:coderCopy];
  if (v5)
  {
    v33 = MEMORY[0x1E695DFD8];
    v31 = objc_opt_class();
    v29 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v33 setWithObjects:{v31, v29, v6, v7, v8, v9, v10, v11, v12, v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"globalRestrictions"];
    globalRestrictions = v5->_globalRestrictions;
    v5->_globalRestrictions = v15;

    v34 = MEMORY[0x1E695DFD8];
    v32 = objc_opt_class();
    v30 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v24 = objc_opt_class();
    v25 = [v34 setWithObjects:{v32, v30, v17, v18, v19, v20, v21, v22, v23, v24, objc_opt_class(), 0}];
    v26 = [coderCopy decodeObjectOfClasses:v25 forKey:@"restrictions"];
    restrictions = v5->_restrictions;
    v5->_restrictions = v26;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = DMFFetchRestrictionsResultObject;
  coderCopy = coder;
  [(CATTaskResultObject *)&v7 encodeWithCoder:coderCopy];
  v5 = [(DMFFetchRestrictionsResultObject *)self globalRestrictions:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"globalRestrictions"];

  restrictions = [(DMFFetchRestrictionsResultObject *)self restrictions];
  [coderCopy encodeObject:restrictions forKey:@"restrictions"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  restrictions = [(DMFFetchRestrictionsResultObject *)self restrictions];
  v6 = [v3 stringWithFormat:@"<%@: %p %@>", v4, self, restrictions];

  return v6;
}

@end