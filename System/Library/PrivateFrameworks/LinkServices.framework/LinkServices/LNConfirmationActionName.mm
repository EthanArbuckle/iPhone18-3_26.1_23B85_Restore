@interface LNConfirmationActionName
- (LNConfirmationActionName)initWithCoder:(id)coder;
- (LNConfirmationActionName)initWithType:(int64_t)type destructive:(BOOL)destructive acceptLabel:(id)label acceptAlternatives:(id)alternatives denyLabel:(id)denyLabel denyAlternatives:(id)denyAlternatives;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNConfirmationActionName

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[LNConfirmationActionName type](self forKey:{"type"), @"type"}];
  [coderCopy encodeBool:-[LNConfirmationActionName destructive](self forKey:{"destructive"), @"destructive"}];
  acceptLabel = [(LNConfirmationActionName *)self acceptLabel];
  [coderCopy encodeObject:acceptLabel forKey:@"acceptLabel"];

  acceptAlternatives = [(LNConfirmationActionName *)self acceptAlternatives];
  [coderCopy encodeObject:acceptAlternatives forKey:@"acceptAlternatives"];

  denyLabel = [(LNConfirmationActionName *)self denyLabel];
  [coderCopy encodeObject:denyLabel forKey:@"denyLabel"];

  denyAlternatives = [(LNConfirmationActionName *)self denyAlternatives];
  [coderCopy encodeObject:denyAlternatives forKey:@"denyAlternatives"];
}

- (LNConfirmationActionName)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"type"];
  v6 = [coderCopy decodeBoolForKey:@"destructive"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"acceptLabel"];
  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"acceptAlternatives"];

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"denyLabel"];
  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"denyAlternatives"];

  selfCopy = 0;
  if (v11 && v16)
  {
    self = [(LNConfirmationActionName *)self initWithType:v5 destructive:v6 acceptLabel:v7 acceptAlternatives:v11 denyLabel:v12 denyAlternatives:v16];
    selfCopy = self;
  }

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  type = [(LNConfirmationActionName *)self type];
  if ([(LNConfirmationActionName *)self destructive])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  acceptLabel = [(LNConfirmationActionName *)self acceptLabel];
  acceptAlternatives = [(LNConfirmationActionName *)self acceptAlternatives];
  denyLabel = [(LNConfirmationActionName *)self denyLabel];
  denyAlternatives = [(LNConfirmationActionName *)self denyAlternatives];
  v12 = [v3 stringWithFormat:@"<%@: %p, type: %ld, destructive: %@, acceptLabel: %@, acceptAlternatives: %@, denyLabel: %@, denyAlternatives: %@>", v5, self, type, v7, acceptLabel, acceptAlternatives, denyLabel, denyAlternatives];

  return v12;
}

- (LNConfirmationActionName)initWithType:(int64_t)type destructive:(BOOL)destructive acceptLabel:(id)label acceptAlternatives:(id)alternatives denyLabel:(id)denyLabel denyAlternatives:(id)denyAlternatives
{
  labelCopy = label;
  alternativesCopy = alternatives;
  denyLabelCopy = denyLabel;
  denyAlternativesCopy = denyAlternatives;
  v19 = denyAlternativesCopy;
  if (alternativesCopy)
  {
    if (denyAlternativesCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNConfirmationActionName.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"acceptAlternatives"}];

    if (v19)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNConfirmationActionName.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"denyAlternatives"}];

LABEL_3:
  v34.receiver = self;
  v34.super_class = LNConfirmationActionName;
  v20 = [(LNConfirmationActionName *)&v34 init];
  v21 = v20;
  if (v20)
  {
    v20->_type = type;
    v20->_destructive = destructive;
    v22 = [labelCopy copy];
    acceptLabel = v21->_acceptLabel;
    v21->_acceptLabel = v22;

    v24 = [alternativesCopy copy];
    acceptAlternatives = v21->_acceptAlternatives;
    v21->_acceptAlternatives = v24;

    v26 = [denyLabelCopy copy];
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