@interface DMFFetchRestrictionsResultObject
- (DMFFetchRestrictionsResultObject)initWithCoder:(id)a3;
- (DMFFetchRestrictionsResultObject)initWithRestrictions:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFFetchRestrictionsResultObject

- (DMFFetchRestrictionsResultObject)initWithRestrictions:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = DMFFetchRestrictionsResultObject;
  v5 = [(CATTaskResultObject *)&v11 init];
  if (v5)
  {
    v6 = [v4 copy];
    globalRestrictions = v5->_globalRestrictions;
    v5->_globalRestrictions = v6;

    v8 = [v4 copy];
    restrictions = v5->_restrictions;
    v5->_restrictions = v8;
  }

  return v5;
}

- (DMFFetchRestrictionsResultObject)initWithCoder:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = DMFFetchRestrictionsResultObject;
  v5 = [(CATTaskResultObject *)&v35 initWithCoder:v4];
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
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"globalRestrictions"];
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
    v26 = [v4 decodeObjectOfClasses:v25 forKey:@"restrictions"];
    restrictions = v5->_restrictions;
    v5->_restrictions = v26;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = DMFFetchRestrictionsResultObject;
  v4 = a3;
  [(CATTaskResultObject *)&v7 encodeWithCoder:v4];
  v5 = [(DMFFetchRestrictionsResultObject *)self globalRestrictions:v7.receiver];
  [v4 encodeObject:v5 forKey:@"globalRestrictions"];

  v6 = [(DMFFetchRestrictionsResultObject *)self restrictions];
  [v4 encodeObject:v6 forKey:@"restrictions"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(DMFFetchRestrictionsResultObject *)self restrictions];
  v6 = [v3 stringWithFormat:@"<%@: %p %@>", v4, self, v5];

  return v6;
}

@end