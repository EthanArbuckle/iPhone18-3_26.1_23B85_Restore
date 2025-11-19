@interface LNConfirmationActionName
- (LNConfirmationActionName)initWithCoder:(id)a3;
- (LNConfirmationActionName)initWithType:(int64_t)a3 destructive:(BOOL)a4 acceptLabel:(id)a5 acceptAlternatives:(id)a6 denyLabel:(id)a7 denyAlternatives:(id)a8;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNConfirmationActionName

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[LNConfirmationActionName type](self forKey:{"type"), @"type"}];
  [v4 encodeBool:-[LNConfirmationActionName destructive](self forKey:{"destructive"), @"destructive"}];
  v5 = [(LNConfirmationActionName *)self acceptLabel];
  [v4 encodeObject:v5 forKey:@"acceptLabel"];

  v6 = [(LNConfirmationActionName *)self acceptAlternatives];
  [v4 encodeObject:v6 forKey:@"acceptAlternatives"];

  v7 = [(LNConfirmationActionName *)self denyLabel];
  [v4 encodeObject:v7 forKey:@"denyLabel"];

  v8 = [(LNConfirmationActionName *)self denyAlternatives];
  [v4 encodeObject:v8 forKey:@"denyAlternatives"];
}

- (LNConfirmationActionName)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"type"];
  v6 = [v4 decodeBoolForKey:@"destructive"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"acceptLabel"];
  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  v11 = [v4 decodeObjectOfClasses:v10 forKey:@"acceptAlternatives"];

  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"denyLabel"];
  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  v16 = [v4 decodeObjectOfClasses:v15 forKey:@"denyAlternatives"];

  v17 = 0;
  if (v11 && v16)
  {
    self = [(LNConfirmationActionName *)self initWithType:v5 destructive:v6 acceptLabel:v7 acceptAlternatives:v11 denyLabel:v12 denyAlternatives:v16];
    v17 = self;
  }

  return v17;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNConfirmationActionName *)self type];
  if ([(LNConfirmationActionName *)self destructive])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = [(LNConfirmationActionName *)self acceptLabel];
  v9 = [(LNConfirmationActionName *)self acceptAlternatives];
  v10 = [(LNConfirmationActionName *)self denyLabel];
  v11 = [(LNConfirmationActionName *)self denyAlternatives];
  v12 = [v3 stringWithFormat:@"<%@: %p, type: %ld, destructive: %@, acceptLabel: %@, acceptAlternatives: %@, denyLabel: %@, denyAlternatives: %@>", v5, self, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (LNConfirmationActionName)initWithType:(int64_t)a3 destructive:(BOOL)a4 acceptLabel:(id)a5 acceptAlternatives:(id)a6 denyLabel:(id)a7 denyAlternatives:(id)a8
{
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = v18;
  if (v16)
  {
    if (v18)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v32 = [MEMORY[0x1E696AAA8] currentHandler];
    [v32 handleFailureInMethod:a2 object:self file:@"LNConfirmationActionName.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"acceptAlternatives"}];

    if (v19)
    {
      goto LABEL_3;
    }
  }

  v33 = [MEMORY[0x1E696AAA8] currentHandler];
  [v33 handleFailureInMethod:a2 object:self file:@"LNConfirmationActionName.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"denyAlternatives"}];

LABEL_3:
  v34.receiver = self;
  v34.super_class = LNConfirmationActionName;
  v20 = [(LNConfirmationActionName *)&v34 init];
  v21 = v20;
  if (v20)
  {
    v20->_type = a3;
    v20->_destructive = a4;
    v22 = [v15 copy];
    acceptLabel = v21->_acceptLabel;
    v21->_acceptLabel = v22;

    v24 = [v16 copy];
    acceptAlternatives = v21->_acceptAlternatives;
    v21->_acceptAlternatives = v24;

    v26 = [v17 copy];
    denyLabel = v21->_denyLabel;
    v21->_denyLabel = v26;

    v28 = [v19 copy];
    denyAlternatives = v21->_denyAlternatives;
    v21->_denyAlternatives = v28;

    v30 = v21;
  }

  return v21;
}

@end